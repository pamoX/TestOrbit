<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Homepage</title>
    <style>
    @charset "UTF-8";
    body {
        font-family: Arial, sans-serif;
        margin: 0;
        padding: 0;
        display: flex;
        flex-direction: column;
        min-height: 100vh; /* Make sure the body takes up the full height */
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

    /* Main Content Styling */
    main {
        flex: 1; /* Allow main content to grow */
        padding: 20px;
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


	h1{
		text-align:center;
	}
	
	h2{
		text-align:center;
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
    
    <main>
        <h1>Welcome to TestOrbit</h1>
        <p>Welcome to TestOrbit, your ultimate destination for all exam preparation needs! Whether you're a student gearing up for finals, a professional pursuing certification, or anyone striving to excel in your academic or career endeavors, TestOrbit is here to support you.</p>
        <p>Keep track of all the exams you have taken and review your performance history. Instantly access detailed results for each exam, including scores, feedback, and areas for improvement. At TestOrbit, we believe in empowering you to achieve your goals with confidence. Join our community today and take the first step towards exam success!</p>
        <h2>Happy studying, The TestOrbit Team!</h2>
    </main>
    
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
