package com.gamezone.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.gamezone.dao.gameDao;
import com.gamezone.model.gameModel;

@WebServlet("/uploadGameServlet")
@MultipartConfig(
    fileSizeThreshold = 1024 * 1024 * 1,  // 1 MB
    maxFileSize = 1024 * 1024 * 10,       // 10 MB
    maxRequestSize = 1024 * 1024 * 15     // 15 MB
)
public class uploadGameServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Get form fields
        String gamename = request.getParameter("gamename");
        String gametype = request.getParameter("gametype");
        double gameprice = Double.parseDouble(request.getParameter("gameprice"));
        String gamedescription = request.getParameter("gamedescription");
        String status = request.getParameter("status"); // Always 'pending'

        // Get the uploaded file part
        Part filePart = request.getPart("gameimage");
        String fileName = getFileName(filePart);

        // Define the upload path
        String uploadPath = getServletContext().getRealPath("") + File.separator + "uploads";
        File uploadDir = new File(uploadPath);
        if (!uploadDir.exists()) uploadDir.mkdir();

        // Save file to disk
        String filePath = uploadPath + File.separator + fileName;
        filePart.write(filePath);

        // Create game model with the uploaded information
        gameModel game = new gameModel(0, gamename, gametype, gameprice, filePath, gamedescription, status);

        // Insert game into the database
        boolean success = gameDao.insertGame(game);

        // Response based on success or failure
        if (success) {
            response.getWriter().println("<script>alert('Game uploaded successfully!'); window.location='uploadGame.jsp';</script>");
        } else {
            response.getWriter().println("<script>alert('Failed to upload game!'); window.location='uploadGame.jsp';</script>");
        }
    }

    // Helper method to extract file name from Part header
    private String getFileName(Part part) {
        for (String content : part.getHeader("content-disposition").split(";")) {
            if (content.trim().startsWith("filename")) {
                return content.substring(content.indexOf("=") + 2, content.length() - 1);
            }
        }
        return null;
    }
}



