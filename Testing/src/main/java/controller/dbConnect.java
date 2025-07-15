package controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class dbConnect {

	public Connection dbConnection() {
		Connection con = null;
		
	//database connection details
		 String url ="jdbc:mysql://localhost:3306/online_examination_management";
		 String user = "root";
		 String pass = "19961202";
		 
		 try {
				
			// Load MySQL JDBC Driver
			Class.forName("com.mysql.cj.jdbc.Driver");
				
			 // Create a connection to the database
				 con = DriverManager.getConnection(url, user, pass);
				
		 }
			catch (Exception e) {
				System.out.println("Database connection is not success!!!");
			}
		
		return con;
	}
	
	
	//grading
	
	// Lecturer login check from 'lecturerlogin' table
	public boolean LecturerCheck(String username,String password) {
		
		Connection con = dbConnection();
		try {
		String query = "SELECT * FROM lecturerlogin where username=? AND password=?";
		
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1,username);
		ps.setString(2,password);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return true;
			
		}
		}catch(Exception e) {
			
		}
		return false;
	}
	
	
	// Retrieve all student results from 'grading' table
		public List<Result> getAllResults() {
			
			List<Result> resultList = new ArrayList<>();
			
		
			Connection con = dbConnection();
			
			
			String query = "SELECT * FROM grading";
			
			try {
				PreparedStatement ps = con.prepareStatement(query);
				ResultSet rs = ps.executeQuery();
				
				 // Extract data from the result set
				while(rs.next()) {
					int id = rs.getInt("id");
					String stuID = rs.getString("studentId");
					String module = rs.getString("module");
					String exam = rs.getString("exam");
					float marks = rs.getFloat("marks");
					String grade = rs.getString("grade");
					String comments = rs.getString("comments");
					
					 // Add to list
					resultList.add(new Result(id,stuID,module,exam,marks,grade,comments));
					
				}
			}catch(Exception e) {
				
			}
			
			return resultList;
			
			
		}
		
		
		// Insert new grade into the 'grading' table
		public void addNewGrade(Result gd) {
			try {
			Connection con = dbConnection();
			
			//insert query for grading
			String sql = "INSERT INTO grading(studentId,module,exam,marks,grade,comments) VALUES(?,?,?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			
			ps.setString(1, gd.getStudentId());
			ps.setString(2, gd.getModule());
			ps.setString(3, gd.getExam());
			ps.setFloat(4, gd.getMarks());
			ps.setString(5, gd.getGrade());
			ps.setString(6, gd.getComments());
			
			System.out.println(ps);
			
			ps.executeUpdate();
			}catch(Exception e) {
				
			}
			
		}
		
		
		// retrieve  inserted grade details 
		public Result selectOldResult(int id) {
			
			Connection con = dbConnection();
			
			//set a initial value to null
			Result oldResult= null;
			
			try {
			
				//select query for grading
				String sql= "SELECT * FROM grading WHERE id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				ps.setInt(1, id);
				
				System.out.println(ps);
				
				ResultSet rs=ps.executeQuery();	
				
	//get details from db
				while(rs.next()) {
					String studentId = rs.getString("studentId");
					String module = rs.getString("module");
					String exam = rs.getString("exam");
					float marks = rs.getFloat("marks");
					String grade = rs.getString("grade");
					String comments = rs.getString("comments");
					
					oldResult = new Result(id,studentId,module,exam,marks,grade,comments);
				}
				
			}catch(Exception e) {
				
			}
			
			return oldResult;
		}

		//method implementation for updated results
		public boolean updateOldResult(Result updatedResult) {
			boolean gupdate=false;
			Connection con = dbConnection();
			
			try {
				
				//update query for grading
				String sql = "UPDATE grading SET studentId=?,module=?,exam=?,marks=?,grade=?,comments=? WHERE id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				
				
				ps.setString(1, updatedResult.getStudentId());
				ps.setString(2, updatedResult.getModule());
				ps.setString(3, updatedResult.getExam());
				ps.setFloat(4, updatedResult.getMarks());
				ps.setString(5, updatedResult.getGrade());
				ps.setString(6, updatedResult.getComments());
				
				ps.setInt(7, updatedResult.getId());
				gupdate = ps.executeUpdate() >0;
				
				
				
			}catch(Exception e) {
				
			}
			return gupdate;
			
		}
		
		
		//delete grade
		public void deleteGrade(int id) {
			Connection con = dbConnection();
			
			try {
				
				// delete grade from database
				String query = "DELETE FROM grading WHERE id=? ";
				
				PreparedStatement ps = con.prepareStatement(query);
				ps.setInt(1, id);
				
				ps.executeUpdate();
				
				System.out.println("Delete success");
			}catch(Exception e){
				
			}
			
		}
		
	//exam_schedule
	
	// Lecturer login check from 'lecturer' table
	public boolean lecturerCheck(String username, String password){
		Connection con=dbConnection();
		
		try {
			String query="SELECT * FROM lecturer WHERE username=? AND password=?";
			PreparedStatement ps=con.prepareStatement(query);
			ps.setString(1,username);
			ps.setString(2,password); 
			
			ResultSet rs=ps.executeQuery();
			
			if(rs.next()) {
				return true;
			}
		}catch(Exception e) {
			
		}
		return false;
		
	}
	
	
	// Retrieve all exams schedule from 'exams_schedule' table
		public List<exams_schedule> getAllexams_schedule() {
			List<exams_schedule> Elist=new ArrayList<>();
			Connection con = dbConnection();
		
			String query="SELECT * FROM exams_schedule";
			try {
				
				PreparedStatement ps=con.prepareStatement(query);
				ResultSet rs=ps.executeQuery();
				
				// Extract data from the result set
				while(rs.next()) {
					int id=rs.getInt("id");
					String exam_Name=rs.getString("Exam_Name");
					String date=rs.getString("Date");
					String time=rs.getString("Time");
					String discription=rs.getString("Discription");
					
					// Add to list
					Elist.add(new exams_schedule(id,exam_Name,date,time,discription));
				}
			}catch(Exception e) {
				
			}
			
			return Elist;
			
		}
		
		
		 // Insert a new exam schedule into the 'exams_schedule' table
		public void addExam(exams_schedule ex) {
			try {
				Connection con=dbConnection();
				
				//insert query for exams_schedule
				String sql="INSERT INTO exams_schedule(Exam_Name,Date,Time,Discription) VALUES(?,?,?,?)";
				PreparedStatement ps=con.prepareStatement(sql);
				ps.setString(1,ex.getExam_Name());
				ps.setString(2,ex.getDate());
				ps.setString(3,ex.getTime());
				ps.setString(4,ex.getDiscription());
				
				System.out.println(ps);
				
				//execute query
				
				ps.executeUpdate();
			}catch(Exception e) {
				
			}
		}
		
		
		// retrieve  inserted exam schedule details 
				public exams_schedule selectOldexams_schedule(int id) {
					Connection con=dbConnection();
					
					exams_schedule oldexams_schedule=null;

					
					try {
						
						//select query for exams_schedule
						String sql="SELECT * FROM exams_schedule WHERE id=?";
						PreparedStatement ps=con.prepareStatement(sql);
						ps.setInt(1, id);
						
						System.out.println(ps);
						
						ResultSet rs=ps.executeQuery();
						
						//get details from database
						
						while(rs.next()) {
							String exam_Name=rs.getString("Exam_Name");
							String date=rs.getString("Date");
							String time=rs.getString("Time");
							String discription=rs.getString("Discription");
							
							oldexams_schedule=new exams_schedule(id,exam_Name,date,time,discription);
						}
						
						
					}catch(Exception e) {
						
					}
					
					return oldexams_schedule;
					
				}

				//method implement for updated exams
				public boolean updateOldexam_schedule(exams_schedule updatedexam_schedule) {
					 boolean pupdate=false; 
					Connection con=dbConnection();
				     
				    
				     try {
				    	 
				    	 //update query for exams_schedule
				    	 String sql="UPDATE exams_schedule SET Exam_Name=?,Date=?,Time=?,Discription=? WHERE id=?";
				         PreparedStatement ps=con.prepareStatement(sql);
				         
				        
				         ps.setString(1, updatedexam_schedule.getExam_Name());
				         ps.setString(2, updatedexam_schedule.getDate());
				         ps.setString(3, updatedexam_schedule.getTime());
				         ps.setString(4, updatedexam_schedule.getDiscription());
				   
				         ps.setInt(5, updatedexam_schedule.getId());
				         
				         pupdate= ps.executeUpdate() > 0;
				         
				         
				     }catch(Exception e) {
				    	 
				     } 
					return pupdate;
				}
				
				
				// delete exam schedule
				public void deleteexams_schedule(int id) {
					Connection con=dbConnection();
					
					try {
						
						// delete exam schedule 
						String query="DELETE FROM exams_schedule WHERE id=?";
						PreparedStatement ps=con.prepareStatement(query);
						
						ps.setInt(1,id);
						
						ps.executeUpdate();
						
						System.out.println("Delete success");
					}catch(Exception e) {
						
					}
					
				}
	
	//student enrollment		
	
	 // Student login check from 'logstd' table
	public boolean loginCheck(String username, String password) {
		
		Connection con = dbConnection();
		
		try {
		String query = "select * from logstd where username=? and password=? ";//prepared statment
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1,username);
		ps.setString(2,password);
		
		ResultSet rs = ps.executeQuery();
		
		if(rs.next()) {
			return true;
		}
		
		}catch(Exception e){
			
		}
		return false;		
		
	}
	
	 // Retrieve all students from 'stdenrol' table
	public List<Student> getAllStudents() {
		List<Student>slist = new ArrayList<>();
		Connection con=dbConnection();
		
		String query="SELECT * FROM stdenrol";
		
		try {
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs= ps.executeQuery();
			
			while(rs.next()) {
				
				int id=rs.getInt("id");
				String studentID = rs.getString("StudentID");
				String firstName = rs.getString("FirstName");
				String lastName=rs.getString("LastName");
				String dOB=rs.getString("DOB");
				String gender=rs.getString("Gender");
				String address=rs.getString("Address");
				String phoneNumber=rs.getString("PhoneNumber");
				String email=rs.getString("Email");
				String course=rs.getString("Course");
				
				 // Add to list
				slist.add(new Student(id,studentID,firstName,lastName,dOB,gender,address,phoneNumber,email,course));
			}
			
		}catch(Exception e){
			 e.printStackTrace(); 
		}
		
		return slist;
		
	}
	
	 // Insert new student record into the 'stdenrol' table
	public void addNewStudent(Student st) {
		
		try {
			
			Connection con=dbConnection();
			
			//insert query for stdenrol
			String sql="INSERT INTO stdenrol(StudentID,FirstName,LastName,DOB,Gender,Address,PhoneNumber,Email,Course) VALUES (?,?,?,?,?,?,?,?,?)";
			
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setString(1, st.getStudentID());
			ps.setString(2, st.getFirstName());
			ps.setString(3, st.getLastName());
			ps.setString(4, st.getDOB());
			ps.setString(5, st.getGender());
			ps.setString(6, st.getAddress());
			ps.setString(7, st.getPhoneNumber());
			ps.setString(8, st.getEmail());
			ps.setString(9, st.getCourse());
			
			System.out.println(ps);
			
			//execute query
			ps.executeUpdate();
		}catch(Exception e) {
			
		}
		
	}
	
	//retrieve student details
		public Student selectOldStudent(int id) {
			
			Connection con=dbConnection();
			Student oldStudent=null;
			
			try {
				
				//select query for stdenrol
				String sql="SELECT * FROM stdenrol WHERE id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setInt(1, id);
				
				System.out.println(ps);
				
				ResultSet rs =ps.executeQuery();
				
				while(rs.next()) {
					String studentID = rs.getString("StudentID");
					String firstName = rs.getString("FirstName");
					String lastName=rs.getString("LastName");
					String dOB=rs.getString("DOB");
					String gender=rs.getString("Gender");
					String address=rs.getString("Address");
					String phoneNumber=rs.getString("PhoneNumber");
					String email=rs.getString("Email");
					String course=rs.getString("Course");
					
				
					oldStudent=new Student(id,studentID,firstName,lastName,dOB,gender,address,phoneNumber,email,course);
				}
				
			}catch(Exception e) {
				
			}
			
			
			return oldStudent;
		}

	//update student details
		public boolean updateOldStudent(Student updateStudent) {
			
			boolean supdate=false;
			Connection con=dbConnection();
			try {
				
				String sql="UPDATE stdenrol SET StudentID=?,FirstName=?,LastName=?,DOB=?,Gender=?,Address=?,PhoneNumber=?,Email=?,Course=? WHERE id=?";
				PreparedStatement ps = con.prepareStatement(sql);
				
				ps.setString(1, updateStudent.getStudentID());
				ps.setString(2, updateStudent.getFirstName());
				ps.setString(3, updateStudent.getLastName());
				ps.setString(4, updateStudent.getDOB());
				ps.setString(5, updateStudent.getGender());
				ps.setString(6, updateStudent.getAddress());
				ps.setString(7, updateStudent.getPhoneNumber());
				ps.setString(8, updateStudent.getEmail());
				ps.setString(9, updateStudent.getCourse());
				
				ps.setInt(10, updateStudent.getId());
				
				
				
				supdate=ps.executeUpdate()>0;
				
			}catch(Exception e) {
				
				
			}
			
			return supdate;
			
		}
	   
	// delete student
	public void deleteStudent(int id) {
		Connection con=dbConnection();
		
		try {
			
			// delete student form database
			String query="DELETE FROM stdenrol WHERE id=?";
			PreparedStatement ps = con.prepareStatement(query);
			
			ps.setInt(1, id);
			ps.executeUpdate();
			
			System.out.println("Delete Success!!");
			
		}catch(Exception e) {
			
		}
	}
}
