package controller;


//encap
public class Result {
	
	 int id;
	 String studentId;
	 String module;
	 String exam;
	 float marks;
	 String grade;
	 String comments;
	 
	 //getters setters implementation
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentId() {
		return studentId;
	}
	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	public String getModule() {
		return module;
	}
	public void setModule(String module) {
		this.module = module;
	}
	public String getExam() {
		return exam;
	}
	public void setExam(String exam) {
		this.exam = exam;
	}
	public float getMarks() {
		return marks;
	}
	public void setMarks(float marks) {
		this.marks = marks;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	
	//overloaded constructor
	public Result(int id, String studentId, String module, String exam, float marks, String grade, String comments) {
		super();
		this.id = id;
		this.studentId = studentId;
		this.module = module;
		this.exam = exam;
		this.marks = marks;
		this.grade = grade;
		this.comments = comments;
	}
	
	
	//for  update method constructor implementation
	public Result(String studentId, String module, String exam, float marks, String grade, String comments) {
		super();
		this.studentId = studentId;
		this.module = module;
		this.exam = exam;
		this.marks = marks;
		this.grade = grade;
		this.comments = comments;
	}
	
	
	//string constructor
	@Override
	public String toString() {
		return "Result [id=" + id + ", studentId=" + studentId + ", module=" + module + ", exam=" + exam + ", marks="
				+ marks + ", grade=" + grade + ", comments=" + comments + "]";
	}
	
	
	

}
