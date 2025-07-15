<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
 <%
   	if(session.getAttribute("Lecturer")==null){
   		response.sendRedirect("Home.jsp");
   	}
   %> 	
	
	
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Enrollment Form</title>

<style>
body {
	font-family: 'Arial', sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
}

.header-content {
	display: flex;
	justify-content: space-between;
	align-items: center;
	padding: 20px 40px;
	background: linear-gradient(50deg, blue, #32CD32);
	color: white;
	box-shadow: blue;
}

.header-content h1 {
	font-family: 'Poppins', sans-serif;
	font-size: 32px;
	margin: 0;
	letter-spacing: 2px;
	color: black;
	text-transform: uppercase;
	cursor: null;
	transition: transform 0.3s ease;
}

.header-content nav ul {
	list-style-type: none;
	display: flex;
	gap: 20px;
	margin: 0;
	padding: 0;
}

.header-content nav ul li a {
	color: white;
	text-decoration: none;
	font-size: 18px;
	text-transform: uppercase;
	padding: 8px 0;
	transition: color 0.3s ease;
}

.header-content nav ul li a:hover {
	color: #FFD700; /* Gold hover color */
	border-bottom: 2px solid #FFD700;
}

.container {
	max-width: 600px;
	margin: auto;
	background: #fff;
	padding: 20px;
	border-radius: 10px;
	box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
}

h2 {
	text-align: center;
	color: #333;
}

.form-group {
	margin-bottom: 15px;
}

label {
	display: block;
	margin-bottom: 5px;
	color: #333;
}

input, select, textarea {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

button {
	display: block;
	width: 100%;
	padding: 10px;
	background-color: blue;
	color: white;
	border: none;
	border-radius: 5px;
	font-size: 16px;
	cursor: pointer;
}

button:hover {
	background-color: green;
}

footer {
	
	color: #fff;
	padding: 20px 0;
	text-align: center;
	margin-top: 50px;
}

.footer-content {
	text-align: center;
	padding: 20px;
	background: linear-gradient(50deg, blue, #32CD32);
	opacity: 0.9;
	color: white;
}


/* Search Bar Styling */
    .search-bar {
        display: flex; /* Use flexbox for alignment */
        align-items: center; /* Center items vertically */
        justify-content: flex-end; /* Align search bar to the right */
        margin-left: auto; /* Push the search bar to the right */
    }

    .search-bar input {
        padding: 10px; /* Increase padding for a better look */
        border: 1px solid #ccc; /* Light border */
        border-radius: 4px; /* Rounded corners */
        margin-right: 5px; /* Space between input and button */
        flex: 1; /* Allow input to grow */
        min-width: 200px; /* Minimum width for the input */
    }

    .search-bar button {
        padding: 10px 15px; /* Consistent padding */
        background-color: #5cb85c; /* Button color */
        color: white; /* White text */
        border: none; /* No border */
        border-radius: 4px; /* Rounded corners */
        cursor: pointer; /* Pointer cursor */
        transition: background-color 0.3s; /* Smooth transition */
        padding-right:50px;
        margin-right:50px;
    }

    .search-bar button:hover {
        background-color: #4cae4c; /* Darker green on hover */
    }




</style>



</head>
<body>


	<header>
		<div class="header-content">
			<h1>TestOrbit</h1>
			
			
			<form class="search-bar">
                <input type="text" placeholder="Search..." name="query">
                <button type="submit">Search</button>
            </form>
			<nav>
				<ul>
					  <li><a href="LecturerLogout">Logout</a></li>
				</ul>
			</nav>
		</div>
	</header>
	<br>
	<br>
	 <div class = "text-start">
    		<a href= "EDashbord" class="btn btn-primary btn-sm mx-2">Back to Dashboard</a>
    		
    	</div>
	
	<div class="container">
		<h2>Student Enrollment Form</h2>
		<form action="insertStudent" >

			<div class="form-group">
				<label for="StudentID">Student ID:</label> 
				<input type="text"id="StudentID" name="StdID" required>
			</div>

			<div class="form-group">
				<label for="FirstName">First Name:</label> 
				<input type="text" id="FirstName" name="firstname" required>
			</div>

			<div class="form-group">
				<label for="LastName">Last Name:</label> 
				<input type="text"id="LastName" name="lastname" required>
			</div>

			<div class="form-group">
				<label for="DOB">Date of Birth:</label> <input type="date" id="DOB"
					name="DOB" required>
			</div>

			<div class="form-group">
				<label for="Gender">Gender:</label> 
				<select id="Gender"	name="gender" required>
					<option value="">--Select Gender--</option>
					<option value="male">Male</option>
					<option value="female">Female</option>
					<option value="other">Other</option>
				</select>
			</div>

			<div class="form-group">
				<label for="Address">Address:</label>
				<textarea id="Address" name="address" rows="4" required></textarea>
			</div>

			<div class="form-group">
				<label for="PhoneNo">Phone Number:</label>
				<input type="text" id="PhoneNo" name="phoneNo" required>
			</div>

			<div class="form-group">
				<label for="Email">Email:</label> 
				<input type="Email" id="Email" name="email" required>
			</div>

			<div class="form-group">
				<label for="Course">Course of Enrollment:</label> <select id="Course"
					name="course" required>
					<option value="">--Select Course--</option>
					<option value="computer-science">Computer Science</option>
					<option value="business-management">Business Management</option>
					<option value="engineering">Engineering</option>
					<option value="medicine">Medicine</option>
				</select>
			</div>

			<button type="submit" value="insert Student">Enroll Student</button>
			
		</form>
	</div>

	<footer>
		<div class="footer-content">
			<p>&copy; 2024 Exam Management System. All rights reserved.</p>
			<p>
				Contact us at <a href="mailto:support@exameorbit.com">support@examorbit.com</a>
			</p>

			<a href="Terms and Conditions.html">Terms and Conditions</a> <a
				href="Privacy policy.html">Privacy Policy</a>

		</div>

	</footer>


</body>
</html>
