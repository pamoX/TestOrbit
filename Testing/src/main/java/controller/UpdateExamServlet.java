package controller;



import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/updateExamServlet")
public class UpdateExamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String examID = request.getParameter("examID");
        String newExamDate = request.getParameter("examDate");
        String newDuration = request.getParameter("duration");

        Connection conn = DatabaseConnection.initializeDatabase();

        try {
            String query = "UPDATE exams SET examDate = ?, duration = ? WHERE examID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, newExamDate);
            ps.setString(2, newDuration);
            ps.setString(3, examID);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                response.getWriter().write("Exam updated successfully!");
            } else {
                response.getWriter().write("Failed to update exam!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error updating exam details!");
        } finally {
            DatabaseConnection.closeConnection(conn);
        }
    }
}
