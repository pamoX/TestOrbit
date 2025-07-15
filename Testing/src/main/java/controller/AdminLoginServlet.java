package controller;



import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet(name = "admin-login", urlPatterns = { "/admin-login" })



public class AdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminLoginServlet() {
        super();
      
    }

	//polymo
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email = request.getParameter("email");
		String password = request.getParameter("password"); 
		

		boolean isValid = AdminController.validateAdmin(email, password); 
		
		if (isValid) {
			request.getRequestDispatcher("/manage-exam.jsp").forward(request, response);
		} else {
			System.out.println("user doesn't exist");
			request.getRequestDispatcher("/admin-login.jsp").forward(request, response);

		}
		
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/admin-login.jsp").forward(req, resp);
	}

}
