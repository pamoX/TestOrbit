<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Exam Page</title>

<style>
body {
	font-family: Arial, sans-serif;
	margin: 20px;
	line-height: 1.6;
}

h1, h2, h3 {
	color: #333;
}

.instructions {
	background-color: #f9f9f9;
	padding: 10px;
	border-left: 4px solid #007BFF;
	margin-bottom: 20px;
}

.question {
	margin: 15px 0;
}

.answer-space {
	border: 1px solid #ccc;
	padding: 10px;
	margin-top: 10px;
	background-color: #f9f9f9;
}

.answer-space.large {
	height: 150px;
}

.answer-space.medium {
	height: 100px;
}

   /* Header Styling */
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

    /* Footer Styling */
    .footer-content {
        text-align: center;
        padding: 20px;
        background: linear-gradient(50deg, blue, #32CD32); 
        opacity: 0.9; 
        color: white;
        margin-top: auto; /* Push the footer to the bottom */
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
                   <li><a href="Home.jsp">Home</a></li>
                   <li><a href="LecturerLogin.jsp">Login</a></li>
                   <li><a href="admin-login.jsp">Questions</a></li>
                   <li><a href="Exam.jsp">Exam</a></li>
                   <li><a href="ContactUs.jsp">Contact Us</a></li>
                     
                </ul>
            </nav>
        </div>       		
    </header>



	<h1>Exam Title: Mathematics Test</h1>
	<p>
		<strong>Subject:</strong> Mathematics
	</p>
	<p>
		<strong>Exam Date:</strong> 11 October 2024
	</p>
	<p>
		<strong>Duration:</strong> 2 hours
	</p>

	<div class="instructions">
		<h2>Instructions</h2>
		<ul>
			<li>Read all questions carefully.</li>
			<li>Answer all questions in the space provided.</li>
			<li>Show all workings for calculation-based questions.</li>
		</ul>
	</div>

	<h2>Part A: Multiple Choice Questions (MCQs)</h2>
	<div class="question">
		<p>1. What is 5 + 3?</p>
		<label><input type="radio" name="q1"> a) 6</label><br> <label><input
			type="radio" name="q1"> b) 7</label><br> <label><input
			type="radio" name="q1"> c) 8</label><br> <label><input
			type="radio" name="q1"> d) 9</label>
	</div>
	<div class="question">
		<p>2. Which is a prime number?</p>
		<label><input type="radio" name="q2"> a) 4</label><br> <label><input
			type="radio" name="q2"> b) 5</label><br> <label><input
			type="radio" name="q2"> c) 6</label><br> <label><input
			type="radio" name="q2"> d) 8</label>
	</div>

	<h2>Part B: Short Answer Questions</h2>
	<div class="question">
		<p>1. Solve: 7x - 5 = 9</p>
		<div class="answer-space medium"></div>
	</div>
	<div class="question">
		<p>2. What is the area of a circle with radius 4cm?</p>
		<div class="answer-space medium"></div>
	</div>

	<h2>Part C: Long Answer/Essay Questions</h2>
	<div class="question">
		<p>1. Explain the Pythagorean theorem and give a real-life
			application.</p>
		<div class="answer-space large"></div>
	</div>
	
 <footer>
        <div class="footer-content">
            <p>&copy; 2024 Exam Management System. All rights reserved.</p>
            <p>Contact us at <a href="mailto:support@exameorbit.com">support@examorbit.com</a></p>
            <a href="Terms and Conditions.html">Terms and Conditions</a>
            <a href="Privacy policy.html">Privacy Policy</a>
        </div>
    </footer>	
	

</body>
</html>