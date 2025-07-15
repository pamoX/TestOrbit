package controller;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet(name = "update-question", urlPatterns = { "/update-question" })
public class UpdateQuestionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("id"));
		Question question = AdminController.getQuestion(id); 
		request.setAttribute("question", question);
		request.getRequestDispatcher("/update-question.jsp").forward(request, response);
		return; 
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Integer id = Integer.parseInt(request.getParameter("question_id"));
		Integer Examid = Integer.parseInt(request.getParameter("exam_id"));
		String text = request.getParameter("question_text");
		String optionA = request.getParameter("option_a");
		String optionB = request.getParameter("option_b");
		String optionC = request.getParameter("option_c");
		String optionD = request.getParameter("option_d");
		String correctOption = request.getParameter("correct_option");
		
		System.out.println(id);
		Question question = new Question(id, Examid, text, optionA, optionB, optionC, optionD, correctOption); 
		boolean isUpdate = AdminController.updateQuestion(question);
		
		if (isUpdate) {
			response.sendRedirect("question-dashboard");
		} else {
			response.sendRedirect("update-question?id=" + id);
		}

	}

}
