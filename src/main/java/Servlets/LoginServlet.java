/*
 * package Servlets; import com.gamezone.util.DBconnection; import
 * javax.servlet.ServletException; import javax.servlet.annotation.WebServlet;
 * import javax.servlet.http.*;
 * 
 * import Dao.UserDao; import Models.UserModel;
 * 
 * 
 * import java.io.IOException; import java.io.PrintWriter; import
 * java.sql.SQLException;
 * 
 * @WebServlet("/user-login") public class LoginServlet extends HttpServlet {
 * private static final long serialVersionUID = 1L;
 * 
 * protected void doPost(HttpServletRequest request, HttpServletResponse
 * response) throws ServletException, IOException {
 * response.setContentType("text/html;charset=UTF-8"); try (PrintWriter out =
 * response.getWriter()) { String email = request.getParameter("login-email");
 * String password = request.getParameter("login-password");
 * 
 * UserDao userDao = new UserDao(DBconnection.getConnection()); UserModel user =
 * userDao.userLogin(email, password); if (user != null) {
 * request.getSession().setAttribute("auth", user);
 * response.sendRedirect("index.jsp"); } else {
 * out.println("<h3>There is no user</h3>"); } } catch (ClassNotFoundException |
 * SQLException e) { e.printStackTrace(); } } }
 */