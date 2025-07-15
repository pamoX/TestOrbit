package controller;



import java.io.IOException;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class AddExamServlet
 */
@WebServlet(name = "add-exam", urlPatterns = { "/add-exam" })
public class AddExamServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/add-exam.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("exam_name");
		String subject = request.getParameter("subject"); 
		String exam = request.getParameter("exam_date");
		Integer duration = Integer.parseInt(request.getParameter("duration")) ;
		
		Exam newExam = new Exam(0, name, subject, exam, duration);
		
		boolean isAdded = AdminController.addExam(newExam);
		if (isAdded) {
			System.out.println("done");
		} else {
			System.out.println("exam details are wrong");
		}
		doGet(request, response);
	}

}
