package controller;



import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.cj.protocol.Resultset;
@WebServlet("/readExam")
public class ReadExamServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int examId = Integer.parseInt(request.getParameter("examId"));
        Exam exam = null;

        try (Connection conn = DatabaseConnection.initializeDatabase()) {
            String sql = "SELECT * FROM exams WHERE exam_id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, examId);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                exam = new Exam(); // Create an instance of your Exam class
                exam.setId(rs.getInt("exam_id"));
                exam.setName(rs.getString("exam_name"));
                exam.setSubject(rs.getString("subject"));
                exam.setDate(rs.getString("exam_date"));
                exam.setDuration(rs.getInt("duration"));
            }

            request.setAttribute("exam", exam);
            request.getRequestDispatcher("viewExam.jsp").forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("error.jsp");
        }
    }
}
