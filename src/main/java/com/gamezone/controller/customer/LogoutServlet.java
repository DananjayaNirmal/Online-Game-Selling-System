/*
 * package Servlets;
 * 
 * 
 * import javax.servlet.ServletException; import
 * javax.servlet.annotation.WebServlet; import javax.servlet.http.*; import
 * java.io.IOException; import java.io.PrintWriter;
 * 
 * @WebServlet("/log-out") public class LogoutServlet extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 * protected void doGet(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * response.setContentType("text/html;charset=UTF-8"); try (PrintWriter out =
 * response.getWriter()) { if (request.getSession().getAttribute("auth") !=
 * null) { request.getSession().removeAttribute("auth");
 * response.sendRedirect("login.jsp"); } else {
 * response.sendRedirect("index.jsp"); } } }
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException { doGet(request, response); }
 * }
 */

