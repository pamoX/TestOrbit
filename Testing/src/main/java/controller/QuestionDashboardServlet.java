package controller;


import java.io.IOException;
import java.util.ArrayList;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "question-dashboard", urlPatterns = { "/question-dashboard" })

//inheritance
public class QuestionDashboardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	//polymo
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Question> questions = AdminController.getQuestions(); 
		request.setAttribute("questions", questions);
		request.getRequestDispatcher("/question-dashboard.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
