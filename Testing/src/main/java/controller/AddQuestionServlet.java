package controller;





import java.io.IOException;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/add-question")
public class AddQuestionServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
        int examId = Integer.parseInt(request.getParameter("exam_id"));
        String questionText = request.getParameter("question_text");
        String optionA = request.getParameter("option_a");
        String optionB = request.getParameter("option_b");
        String optionC = request.getParameter("option_c");
        String optionD = request.getParameter("option_d");
        String correctOption = request.getParameter("correct_option");
        
        // Database connection
       
        String sql = "INSERT INTO questions (exam_id, question_text, option_a, option_b, option_c, option_d, correct_option) VALUES (?, ?, ?, ?, ?, ?, ?)";
        System.out.println(sql);
        Connection conn = DatabaseConnection.initializeDatabase();
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);

            // Set parameters
            stmt.setInt(1, examId);
            stmt.setString(2, questionText);
            stmt.setString(3, optionA);
            stmt.setString(4, optionB);
            stmt.setString(5, optionC);
            stmt.setString(6, optionD);
            stmt.setString(7, correctOption);
            
            // Execute update
            stmt.executeUpdate();
            
            // Redirect or display success message
            response.sendRedirect("addquestion.jsp");
        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR, "Error saving question.");
        } finally {
			DatabaseConnection.closeConnection(conn);
		}
    }
}