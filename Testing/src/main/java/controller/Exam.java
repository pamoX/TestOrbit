package controller;


public class Exam {
	private int id; 
	private String name; 
	private String subject; 
	private String Date; 
	private int Duration;
	
	//constructor
	public Exam() {
		super();
		this.id = 0;
		this.name = "";
		this.subject = "";
		Date = "";
		Duration = 0;
	}
	
	//overloaded constructor
	public Exam(int id, String name, String subject, String date, int duration) {
		super();
		this.id = id;
		this.name = name;
		this.subject = subject;
		Date = date;
		Duration = duration;
	}
	
	//getters setters
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getDate() {
		return Date;
	}
	public void setDate(String date) {
		Date = date;
	}
	public int getDuration() {
		return Duration;
	}
	public void setDuration(int duration) {
		Duration = duration;
	}
	
	
}


