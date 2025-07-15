package controller;


//encap
public class Student {
	
	int id;
	String StudentID;
	String FirstName;
	String LastName;
	String DOB;
	String Gender;
	String Address;
	String PhoneNumber;
	String Email;
	String Course;
	
	//implementation of getters setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudentID() {
		return StudentID;
	}
	public void setStudentID(String studentID) {
		StudentID = studentID;
	}
	public String getFirstName() {
		return FirstName;
	}
	public void setFirstName(String firstName) {
		FirstName = firstName;
	}
	public String getLastName() {
		return LastName;
	}
	public void setLastName(String lastName) {
		LastName = lastName;
	}
	public String getDOB() {
		return DOB;
	}
	public void setDOB(String dOB) {
		DOB = dOB;
	}
	public String getGender() {
		return Gender;
	}
	public void setGender(String gender) {
		Gender = gender;
	}
	public String getAddress() {
		return Address;
	}
	public void setAddress(String address) {
		Address = address;
	}
	public String getPhoneNumber() {
		return PhoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getCourse() {
		return Course;
	}
	public void setCourse(String course) {
		Course = course;
	}
	
	// implementation of constructor for update
	public Student(String studentID, String firstName, String lastName, String dOB, String gender, String address,
			String phoneNumber, String email, String course) {
		super();
		StudentID = studentID;
		FirstName = firstName;
		LastName = lastName;
		DOB = dOB;
		Gender = gender;
		Address = address;
		PhoneNumber = phoneNumber;
		Email = email;
		Course = course;
	}
	
	//superclass generate
	public Student() {
		super();
		
	}
	
	//constructor
	public Student(int id, String studentID, String firstName, String lastName, String dOB, String gender,
			String address, String phoneNumber, String email, String course) {
		super();
		this.id = id;
		StudentID = studentID;
		FirstName = firstName;
		LastName = lastName;
		DOB = dOB;
		Gender = gender;
		Address = address;
		PhoneNumber = phoneNumber;
		Email = email;
		Course = course;
	}
	
	//string constructor
	@Override
	public String toString() {
		return "Student [id=" + id + ", StudentID=" + StudentID + ", FirstName=" + FirstName + ", LastName=" + LastName
				+ ", DOB=" + DOB + ", Gender=" + Gender + ", Address=" + Address + ", PhoneNumber=" + PhoneNumber
				+ ", Email=" + Email + ", Course=" + Course + "]";
	}
	
	
	
	
	
	
}