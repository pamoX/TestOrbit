package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

//give root path
@WebServlet("/")
//inheritance  
public class EMScontroller extends HttpServlet{
	
	
	// Create an instance of the data access object (DAO) for database operations
	
	
	//information hiding
	dbConnect dao = new dbConnect();

	
	//polymo - do get
	// interface - httpservlet req ,res
	public void doGet(HttpServletRequest req,HttpServletResponse res) throws IOException, ServletException {
		
		String act = req.getServletPath();
		
		
		// Switch to handle paths
		switch(act) {
		
		//paths for grading 
		case "/ResultSheet":
			System.out.println("Submit id" +act);
			checkLogin(req,res);
			break;
			
		case "/GradeDetails":
			showGradeDetails(req,res);
			break;
			
		case "/submitGrade":
			insertGrade(req,res);
			break;
			
		case "/gUpdate"	:
			showUpdateForm(req,res);
			break;
			
		case "/updateGrade"	:
			updateGrade(req,res);
			break;
			
		case "/deleteGrade" :
			deleteGrade(req,res);
			break;
			
		case "/LecturerLogout" :
			logoutLecturer(req,res);
			break;
			
		
			//path for exam schedule			
		case "/dashboard":
			showDashboard(req,res);
			break;	
			
		case"/insertexams_schedule":
			insertexams_schedule(req,res);
			break;	
		case"/pupdate":
			showUpdatedForm(req,res);
			break;
			
		case"/updateexams_schedule":
			updateexams_schedule(req,res);
			break;
		case"/deleteExam":
			deleteexams_schedule(req,res);
			break;		
			
			
			// path for student enroll			
		case"/EDashbord":
			showEDashbord(req,res);
			break;	
		case"/insertStudent":
			insertStudent(req,res);
			break;	
		case"/eUpdate":
			showUpdatesForm(req,res);
			break;
			
		case"/updateStudent":
			updateStudent(req,res);
			break;	
		case"/deleteStudent":
			deleteStudent(req,res);
			break;	
			
			// default path			
		default	:
			showGradeDetails(req,res);
			break;
			
			
		}
		
	}

	//CRUD operation implementation for grading

	//delete grade
	private void deleteGrade(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int id =Integer.parseInt(req.getParameter("id"));
		
		dao.deleteGrade(id);
		
		System.out.println("Successfully Deleted");
		
		res.sendRedirect("GradeDetails");
		
	}
	
	
	//update grade
		private void updateGrade(HttpServletRequest req, HttpServletResponse res) throws IOException {
			int id =Integer.parseInt(req.getParameter("id"));
			String studentId= req.getParameter("student-id");
			String module= req.getParameter("module");
			String exam= req.getParameter("exam");
			float marks = Float.parseFloat(req.getParameter("marks"));
			String grade= req.getParameter("grade");
			String comments= req.getParameter("comments");
			
			
			//abstract
			Result updatedResult = new Result(id,studentId, module,exam,marks,grade,comments);
			
			boolean check=dao.updateOldResult(updatedResult);
			
			if(check) {
				res.sendRedirect("GradeDetails");
			}else {
				System.out.println("Update failed");
			}
		}
		
		
		//display update grade form
		private void showUpdateForm(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			int id =Integer.parseInt(req.getParameter("id"));
			
			Result oldResult = dao.selectOldResult(id);
			
			RequestDispatcher rd= req.getRequestDispatcher("gUpdate.jsp");
			req.setAttribute("gd", oldResult);
			rd.forward(req, res);
		
		}
		
		
		//insert grade
		private void insertGrade(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
			String studentId= req.getParameter("student-id");
			String module= req.getParameter("module");
			String exam= req.getParameter("exam");
			float marks = Float.parseFloat(req.getParameter("marks"));
			String grade= req.getParameter("grade");
			String comments= req.getParameter("comments");
			
			
			Result gd = new Result(studentId, module,exam,marks,grade,comments);
			
			dao.addNewGrade(gd);
			
			System.out.println("Grade added to system successfully");
			res.sendRedirect("GradeDetails");
		}
		
		
		//display grade details dashboard
		private void showGradeDetails(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
				List<Result> resultList = new ArrayList<>();
				
				resultList = dao.getAllResults();
				req.setAttribute("Rslt", resultList);
				RequestDispatcher rd = req.getRequestDispatcher("GradeDetails.jsp");
				rd.forward(req, res);	
			
		}
		
		//CRUD operation implementation for exam schedule
		
	//delete exam schedule
	private void deleteexams_schedule(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int id=Integer.parseInt(req.getParameter("id"));
		
		dao.deleteexams_schedule(id);
		
		System.out.println("User deleted");
		res.sendRedirect("dashboard");
		
	}
	
	
	//update exam schedule
		private void updateexams_schedule(HttpServletRequest req, HttpServletResponse res) throws IOException {
			int id=Integer.parseInt(req.getParameter("id"));
			String Exam_Name=req.getParameter("exam_Name");
			String Date=req.getParameter("date");
			String Time=req.getParameter("time");
			String Discription=req.getParameter("discription");
			
			
			
			exams_schedule updatedexam_schedule=new exams_schedule(id,Exam_Name,Date,Time,Discription);
			
			boolean check=dao.updateOldexam_schedule(updatedexam_schedule);
			if(check) {
				res.sendRedirect("dashboard");
			}else {
				System.out.println("Failed to Update");
			}
		}
		
		
		//display update exam schedule form
		private void showUpdatedForm(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			int id=Integer.parseInt(req.getParameter("id"));
			
			exams_schedule oldexams_schedule=dao.selectOldexams_schedule(id);
			
			RequestDispatcher rd=req.getRequestDispatcher("pupdate.jsp");
			req.setAttribute("ex", oldexams_schedule);
			rd.forward(req, res);
			
		}
		
		
		//insert exam schedule
		private void insertexams_schedule(HttpServletRequest req, HttpServletResponse res) throws IOException {
			String Exam_Name=req.getParameter("exam_Name");
			String Date=req.getParameter("date");
			String Time=req.getParameter("time");
			String Discription=req.getParameter("discription");
			
			exams_schedule ex=new exams_schedule(Exam_Name,Date,Time,Discription);
			
			dao.addExam(ex);
			
			System.out.println("Exams added to system");
			res.sendRedirect("dashboard");
			
		}

		
		//display exam schedule dashboard
		private void showDashboard(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
			List<exams_schedule>Elist=new ArrayList<>();
			
			Elist=dao.getAllexams_schedule();
			req.setAttribute("pts",Elist);
			RequestDispatcher rd=req.getRequestDispatcher("dashboard.jsp");
			rd.forward(req, res);
			
		}
	
		//CRUD operation implementation for student enrollment
		
	//delete student
	private void deleteStudent(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		dao.deleteStudent(id);
		
		System.out.println("Student Details are Deleted!!");
		res.sendRedirect("EDashbord");
	}
	
	//update student details
	private void updateStudent(HttpServletRequest req, HttpServletResponse res) throws IOException {
		int id= Integer.parseInt(req.getParameter("sid"));
		String studentID=req.getParameter("StdID");
		String firstName=req.getParameter("firstname");
		String lastName=req.getParameter("lastname");
		String dOB=req.getParameter("DOB");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		String phoneNumber=req.getParameter("phoneNo");
		String email=req.getParameter("email");
		String course=req.getParameter("course");
		
		//abstract
		Student updateStudent=new Student(id,studentID,firstName,lastName,dOB,gender,address,phoneNumber,email,course);
		
		boolean check=dao.updateOldStudent(updateStudent);
		
		if(check) {
			res.sendRedirect("EDashbord");
		}else {
			System.out.println("Failed to Update!!");
		}
		
	}
	
	//display update student form
	private void showUpdatesForm(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		int id= Integer.parseInt(req.getParameter("id"));
		
		Student oldStudent= dao.selectOldStudent(id);
		RequestDispatcher rd= req.getRequestDispatcher("EUpdate.jsp");
		
		req.setAttribute("st", oldStudent);
		rd.forward(req, res);
		
		
	}

	//insert student
	private void insertStudent(HttpServletRequest req, HttpServletResponse res) throws IOException {
		String studentID=req.getParameter("StdID");
		String firstName=req.getParameter("firstname");
		String lastName=req.getParameter("lastname");
		String dOB=req.getParameter("DOB");
		String gender=req.getParameter("gender");
		String address=req.getParameter("address");
		String phoneNumber=req.getParameter("phoneNo");
		String email=req.getParameter("email");
		String course=req.getParameter("course");
		
		Student st=new Student(studentID,firstName,lastName,dOB,gender,address,phoneNumber,email,course);
		
		dao.addNewStudent(st);
		
		System.out.println("Student added to the System");
		res.sendRedirect("EDashbord");
				
	}
	
	//display student dashboard
	private void showEDashbord(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		List<Student>slist=new ArrayList<>();
		
		slist= dao.getAllStudents();
		
		req.setAttribute("sts",slist);
		RequestDispatcher rd= req.getRequestDispatcher("EDashbord.jsp");
		rd.forward(req, res);
		
	}
	
	//validate details for login username password
	private void checkLogin(HttpServletRequest req, HttpServletResponse res) throws IOException {
		
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		
		
		System.out.println(username);
		
		//validate lecturer login
		if(dao.LecturerCheck(username,password)) {
			
			//session
		HttpSession session=req.getSession();
		session.setAttribute("Lecturer", username);
			
		//redirect to grade dashboard
			System.out.println("Login success");
			res.sendRedirect("GradeDetails");
		}
		
		
		else if(dao.lecturerCheck(username,password)) {
			
			//session
			HttpSession session=req.getSession();
			session.setAttribute("Lecturer", username);
			
			//redirect to exam dashboard
			System.out.println("Login success");
			res.sendRedirect("dashboard");
		
		}
		
		// validate student login
		else if(dao.loginCheck(username,password)) {
			
			//session
			HttpSession session=req.getSession();
			session.setAttribute("Lecturer", username);
			
			//redirect to student dashboard
			System.out.println("Login Success!!");
			res.sendRedirect("EDashbord");
			
		}
		
		
		//redirect to login page
		else {
			System.out.println("incorrect username password");
			res.sendRedirect("LecturerLogin.jsp");
		}
		
	}
	
	//method implementation for log out	
		private void logoutLecturer(HttpServletRequest req, HttpServletResponse res) throws IOException {
			HttpSession s=req.getSession();
			s.removeAttribute("Lecturer");
			s.invalidate();
			
			res.sendRedirect("LecturerLogin.jsp");
		}
	
}
