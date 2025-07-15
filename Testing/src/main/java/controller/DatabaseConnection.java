package controller;

import java.sql.Connection;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.DriverManager;

public class DatabaseConnection {


	    public static Connection initializeDatabase() {
	        Connection conn = null;
	        try {
	            // Database URL, Username, and Password
	        	 String url ="jdbc:mysql://localhost:3306/online_examination_management";
	    		 String user = "root";
	    		 String pass = "19961202";

	            // Load the MySQL JDBC Driver
	            Class.forName("com.mysql.cj.jdbc.Driver");

	            // Establish the connection
	            conn = DriverManager.getConnection(url, user, pass);

	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	        return conn;
	    }

	    // Utility method to close the connection
	    public static void closeConnection(Connection conn) {
	        try {
	            if (conn != null) {
	                conn.close();
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
	    }
	}


