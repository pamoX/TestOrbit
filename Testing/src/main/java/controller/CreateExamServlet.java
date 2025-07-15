package controller;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.sql.Connection;
import java.sql.PreparedStatement;


import controller.DatabaseConnection;

@WebServlet("/createExam")  // URL pattern for this servlet
public class CreateExamServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Retrieving form data from the JSP page
        String examName = request.getParameter("examName");
        String subject = request.getParameter("subject");
        String date = request.getParameter("examDate");
        int duration = Integer.parseInt(request.getParameter("duration"));

        Connection conn = null;
        PreparedStatement stmt = null;

        try {
            // Establishing database connection
            conn = DatabaseConnection.initializeDatabase();

            // SQL insert statement to insert exam details into the database
            String sql = "INSERT INTO exams (exam_name, subject, exam_date, duration) VALUES (?, ?, ?, ?)";
            stmt = conn.prepareStatement(sql);

            // Setting the parameters for the SQL query
            stmt.setString(1, examName);
            stmt.setString(2, subject);
            stmt.setString(3, date);
            stmt.setInt(4, duration);

            // Executing the query
            stmt.executeUpdate();

            // Redirecting to success JSP page
            response.sendRedirect("examCreated.jsp");

        } catch (Exception e) {
            // Handling any SQL or connection errors
            e.printStackTrace();

            // Redirecting to error JSP page if something goes wrong
            response.sendRedirect("error.jsp");

        } finally {
            // Closing database connection and statement
            DatabaseConnection.closeConnection(conn);
            if (stmt != null) {
                try {
                    stmt.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
        }
    }
}
