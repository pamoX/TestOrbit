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
<title>Insert Grade </title>

<style>
    @charset "UTF-8";
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
    }

    /* Responsive Design */
    @media (max-width: 768px) {
        .header-content {
            flex-direction: column;
            align-items: flex-start;
            padding: 20px;
        }

        .container {
            margin: 20px;
            padding: 15px;
        }

        button {
            width: 100%; /* Full-width buttons on small screens */
            margin-top: 10px; 
        }
    }

    /* Search Bar Styling */
    .search-bar {
        display: flex; 
        align-items: center; 
        justify-content: flex-end; /* Align search bar to the right */
        margin-left: auto; 
    }

    .search-bar input {
        padding: 10px; 
        border: 1px solid #ccc; 
        border-radius: 4px; 
        margin-right: 5px; 
        flex: 1; /* Allow input to grow */
        min-width: 200px; 
    }

    .search-bar button {
        padding: 10px 15px; 
        background-color: #5cb85c; 
        color: white; 
        border: none; 
        border-radius: 4px;
        cursor: pointer; 
        transition: background-color 0.3s; 
        padding-right:50px;
        margin-right:50px;
    }

    .search-bar button:hover {
        background-color: #4cae4c; /* Darker green on hover */
    }

    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
    }

    .background_cont {
        background-image: url('../images/gback.jpg'); 
        background-size: cover; 
        background-position: center; 
        background-repeat: no-repeat; 
    }

    .container {
        max-width: 600px;
        margin: 50px auto;
        padding: 20px;
        background-color: rgba(255, 255, 255, 0.8);
        box-shadow: 0 2px 10px rgba(0, 0, 0, 0.8);
        border-radius: 20px;
    }

    h1 {
        text-align: center;
        color: #333;
    }

    label {
        display: block;
        margin: 15px 0 5px;
    }

    input[type="text"],
    textarea {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    .button-container {
       margin-top: 20px; 
    }

    button {
        background-color: #5cb85c; 
        color: white;
        padding: 10px 15px; 
        border: none; 
        border-radius: 4px; 
        cursor: pointer; 
        flex: 1; /* Allow buttons to grow equally */
        margin: 0 5px; 
        transition: background-color 0.3s, transform 0.2s; /* Smooth transitions */
    }

    button:hover {
        background-color: #4cae4c; 
    }
    
    
    
    .btn-primary {
   
    background-color: #007bff; /* Blue background */
    color: white; /* White text */
}

/* Hover effects */
.btn-primary:hover {
    background-color: #0056b3; /* Darker blue on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

.btn-sm {
 
    font-size: 12px; /* Smaller font size */
    padding: 6px 10px; /* Adjust padding for small buttons */
}
  

    select {
        width: 100%;
        padding: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
        margin-bottom: 15px; 
        font-size: 16px; 
    }
</style>



</head>
<body>

<header>
        <div class="header-content">
            <h1>TestOrbit</h1>
            
           
             
               <form class="search-bar" >
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
    
   
  
<div class = "background_cont">


<div class="container">

        <h1>Grade Submission Form</h1>
        
        <div class = "text-start">
    		<a href= "GradeDetails" class="btn btn-primary btn-sm mx-2">Back to Dashboard</a>
    		
    	</div>
        
       <form action="submitGrade">

            <label for="student-id">Student ID:</label>
            <input type="text" id="student-id" name="student-id" required>
            
 
    <label for="module">Module:</label>
    <select id="module" name="module" required>
        <option value="" disabled selected>Select a module</option>
        <option value="IWT">IWT</option>
        <option value="OOC">OOC</option>
        <option value="ISDM">ISDM</option>
        <option value="English">English</option>
    </select>
    
    
    			<label for="exam">Exam:</label>
    <select id="exam" name="exam" required>
        <option value="" disabled selected>Select an exam</option>
        <option value="MID">MID</option>
        <option value="Final Exam">Final Exam</option>
        <option value="Quiz 1">Quiz 1</option>
        <option value="Quiz 2">Quiz 2</option>
    </select>
    
    
    <label for="marks"> Marks:</label>
            <input type="text" id="marks" name="marks" required>
            
             <label for="grade"> Grade:</label>
            <input type="text" id="grade" name="grade" required>

            <label for="comments">Comments:</label>
            <textarea id="comments" name="comments" rows="3" required></textarea>

	<div class="button-container">
         <button type="submit" name="action" value="submit ">Submit</button>
    		
    		
    </div>        
        </form>
        
      
    </div>
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
