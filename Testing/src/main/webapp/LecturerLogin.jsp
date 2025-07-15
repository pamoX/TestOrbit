<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Lecturer Login</title>
    <style>
        @charset "UTF-8";
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            flex-direction: column;
            min-height: 100vh; /* Full height of the viewport */
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
            margin-top: auto; /* Push footer to bottom */
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

        /* Container Styling */
        .container {
            max-width: 600px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.8);
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.8);
            border-radius: 20px;
            flex: 1; /* Allow container to grow */
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

	/* Password Input Styling */
input[type="password"] {
    width: 100%;
    padding: 10px;
    border: 2px solid #ccc; /* Neutral border color */
    border-radius: 8px; /* Rounded corners */
    box-sizing: border-box;
    font-size: 16px; /* Text size */
    background-color: #f9f9f9; /* Light background */
    transition: background-color 0.3s ease-in-out;
    margin-bottom: 20px; /* Space below the input */
}

input[type="password"]:focus {
    background-color: #fff; /* Bright background on focus */
    outline: none; /* Remove the default outline */
    border-color: #ccc; /* Keep the border color consistent */
}

		


        .button-container {
            display: flex; 
            justify-content: space-between;
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

        select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-bottom: 15px; 
            font-size: 16px; 
        }

        /* Background styling */
        .background_cont {
            flex: 1; /* Allow background container to grow */
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

<div class="background_cont">
    <div class="container">
        <h1> Login</h1>
        <form action="ResultSheet">
            <label for="username">Username:</label>
            <input type="text" id="username" name="username" required>
            
           <label for="password">Password:</label> 
			<input type="password" id="password" name="password" required>
            
            <div class="button-container">
                <button type="submit" name="action" value="submit">Submit</button>
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
