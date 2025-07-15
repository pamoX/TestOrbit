package controller;



//encap
public class exams_schedule {
		
		int id;
		String Exam_Name;
		String Date;
		String Time;
		String Discription;
		
		//getters setters implementation
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getExam_Name() {
			return Exam_Name;
		}
		public void setExam_Name(String exam_Name) {
			Exam_Name = exam_Name;
		}
		public String getDate() {
			return Date;
		}
		public void setDate(String date) {
			Date = date;
		}
		public String getTime() {
			return Time;
		}
		public void setTime(String time) {
			Time = time;
		}
		public String getDiscription() {
			return Discription;
		}
		public void setDiscription(String discription) {
			Discription = discription;
		}
		
		
		//overloaded constructor
		public exams_schedule(int id, String exam_Name, String date, String time, String discription) {
			super();
			this.id = id;
			Exam_Name = exam_Name;
			Date = date;
			Time = time;
			Discription = discription;
		}
		//for  update method constructor implementation
		public exams_schedule( String exam_Name, String date, String time, String discription) {
			super();
			
			Exam_Name = exam_Name;
			Date = date;
			Time = time;
			Discription = discription;
		}
		
		//string constructor
		@Override
		public String toString() {
			return "exams_schedule [id=" + id + ", Exam_Name=" + Exam_Name + ", Date=" + Date + ", Time=" + Time
					+ ", Discription=" + Discription + "]";
		}
		
		


}