package controller;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet(name = "delete-question", urlPatterns = { "/delete-question" })
public class DeleteQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		boolean isDeleted = AdminController.deleteQuestion(id);
		
		if (isDeleted) {
			System.out.println("deleted");
		} else {
			System.out.println("error while deleteing");
		}
		response.sendRedirect("question-dashboard");
	}

}
