package controller;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;


@WebServlet("/deleteExamServlet")
public class DeleteExamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String examID = request.getParameter("examID");

        Connection conn = DatabaseConnection.initializeDatabase();

        try {
            String query = "DELETE FROM exams WHERE examID = ?";
            PreparedStatement ps = conn.prepareStatement(query);
            ps.setString(1, examID);

            int rowsAffected = ps.executeUpdate();
            if (rowsAffected > 0) {
                response.getWriter().write("Exam deleted successfully!");
            } else {
                response.getWriter().write("Failed to delete exam!");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.getWriter().write("Error deleting exam!");
        } finally {
            DatabaseConnection.closeConnection(conn);
        }
    }
}
