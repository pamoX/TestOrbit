package controller;







import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class AdminController {
	public static boolean validateAdmin(String email, String password) {
		Connection con = DatabaseConnection.initializeDatabase();
		try {
			Statement stm = con.createStatement();
			String sql = "select * from Admin where email ='" + email + "';";
			ResultSet rs = stm.executeQuery(sql);
			System.out.println(sql);

			if (rs.next()) {
				String pwd = rs.getString(2);
				if (pwd.equals(password)) {
					return true;
				} else {
					return false;
				}
			} else {
				return false;
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;
	}

	public static boolean addExam(Exam exam) {
		Connection con = DatabaseConnection.initializeDatabase();
		try {
			Statement stm = con.createStatement();
			String sql = "insert into exams(exam_name, subject, exam_date, duration) values ('" + exam.getName() + "','"
					+ exam.getSubject() + "','" + exam.getDate() + "','" + exam.getDuration() + "');";
			System.out.println(sql);
			int rows = stm.executeUpdate(sql);

			if (rows > 0) {
				return true; 
			} else {
				return false; 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false; 
		
		
	}
	public static ArrayList<Question> getQuestions() {
		ArrayList<Question> questions = new ArrayList<Question>(); 
		Connection con = DatabaseConnection.initializeDatabase();
		try {
			Statement stm = con.createStatement();
			String sql = "select * from questions";
			System.out.println(sql);
			ResultSet rs = stm.executeQuery(sql);

			while(rs.next()) {
				int id = rs.getInt(1); 
				int examId = rs.getInt(2); 
				String qText = rs.getString(3);
				String optionA = rs.getString(4);
				String optionB = rs.getString(5);
				String optionC = rs.getString(6);
				String optionD = rs.getString(7);
				String correct = rs.getString(8); 
				System.out.println(id);
				questions.add(new Question(id, examId, qText, optionA, optionB, optionC, optionC, correct));
			}
			rs.close();			
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
		}
		return questions; 
		
	}
	
	public static boolean deleteQuestion(int id) {
		Connection con = DatabaseConnection.initializeDatabase();
		try {
			Statement stm = con.createStatement();
			String sql = "delete from questions where question_id = " + id ;
			System.out.println(sql);
			int rows = stm.executeUpdate(sql);
			
			if (rows > 0 ) {
				return true;
			} else {
				return false; 
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
		}
		return false; 
	}
	
	public static Question getQuestion(int id) {
		Question  question = null; 
		Connection con = DatabaseConnection.initializeDatabase();
		try {
			Statement stm = con.createStatement();
			String sql = "select * from questions where question_id = " + id;
			System.out.println(sql);
			ResultSet rs = stm.executeQuery(sql);

			if(rs.next()) {
				int examId = rs.getInt(2); 
				String qText = rs.getString(3);
				String optionA = rs.getString(4);
				String optionB = rs.getString(5);
				String optionC = rs.getString(6);
				String optionD = rs.getString(7);
				String correct = rs.getString(8); 
				System.out.println(id);
				question = new Question(id, examId, qText, optionA, optionB, optionC, optionC, correct);
			}
			rs.close();			
			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
		}
		return question; 
	}
	
	public static boolean updateQuestion(Question question) {
		Connection con = DatabaseConnection.initializeDatabase();
		int rows = 0;
		try {
			Statement stm = con.createStatement();
			String sql = "UPDATE questions SET exam_id = ?, question_text = ?, option_a = ?, option_b = ?, option_c = ?, option_d = ?, correct_option = ? WHERE question_id = ?";
            PreparedStatement stmt = con.prepareStatement(sql);

            // Set parameters
            stmt.setInt(1, question.getExamId());
            stmt.setString(2, question.getQuestionText());
            stmt.setString(3, question.getOptionA());
            stmt.setString(4, question.getOptionB());
            stmt.setString(5, question.getOptionC());
            stmt.setString(6, question.getOptionD());
            stmt.setString(7, question.getCorrectOption());
            stmt.setInt(8, question.getId());
            
            // Execute update
            rows = stmt.executeUpdate();

			stm.close();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			DatabaseConnection.closeConnection(con);
		}
        if (rows > 0) {
        	return true; 
        } 
		return false; 
	}




}