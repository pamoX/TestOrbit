
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<style>
* {
	margin: 0;
	box-sizing: border-box;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

.container {
	max-width: 600px;
	margin: auto;
	text-align: center;
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
	color: #333;
}

.button {
	display: inline-block;
	padding: 10px 20px;
	margin: 10px;
	border: none;
	border-radius: 5px;
	background-color: #007BFF;
	color: white;
	text-decoration: none;
	font-size: 16px;
	transition: background-color 0.3s;
}

.button:hover {
	background-color: #0056b3;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f4f4f4;
	margin: 0;
	padding: 20px;
}

.admin-login-container * {
	box-sizing: border-box;
}

.admin-login-container {
	max-width: 400px;
	margin: auto;
	background: white;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
	text-align: center;
}

h1 {
	color: #333;
}

.form-group {
	margin: 15px 0;
	text-align: left;
}

label {
	display: block;
	margin-bottom: 5px;
}

.admin-login-input {
	width: 100%;
	padding: 10px;
	border: 1px solid #ccc;
	border-radius: 5px;
}

.admin-login-button {
	display: inline-block;
	padding: 10px 20px;
	margin-top: 10px;
	border: none;
	border-radius: 5px;
	background-color: #007BFF;
	color: white;
	text-decoration: none;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.admin-login-button:hover {
	background-color: #0056b3;
}

.error-message {
	color: red;
	margin-top: 10px;
}

.add-exam-container {
	max-width: 500px;
	margin: auto;
	background: white;
	padding: 30px;
	border-radius: 10px;
	box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
	text-align: center;
}

.exam-title {
	color: #333;
	margin-bottom: 20px;
}

.form-group {
	margin: 15px 0;
	text-align: left;
}

.exam-label {
	display: block;
	margin-bottom: 8px;
	font-weight: bold;
	color: #555; /* Optional: change the label color */
}

.exam-input {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 8px;
	font-size: 16px;
	transition: border-color 0.3s;
}

.exam-input:focus {
	border-color: #007BFF;
	outline: none;
}

.exam-submit-button, .exam-back-button {
	display: inline-block;
	padding: 12px 20px;
	margin-top: 10px;
	border: none;
	border-radius: 8px;
	background-color: #007BFF;
	color: white;
	font-size: 16px;
	cursor: pointer;
	transition: background-color 0.3s;
	text-decoration: none;
}

.exam-submit-button:hover, .exam-back-button:hover {
	background-color: #0056b3;
}

.exam-back-button {
	background-color: #6c757d;
}

.exam-back-button:hover {
	background-color: #5a6268;
}

.question-dashboard-container {
     margin: 0 auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

.question-dashboard-title {
    text-align: center;
    margin-bottom: 30px;
    color: #333;
    font-size: 24px;
}

.question-dashboard-table {
    width: 100%;
    border-collapse: collapse;
    border-radius: 8px;
    overflow: hidden;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

.question-dashboard-header {
    background-color: #007BFF;
    color: white;
    padding: 12px;
    text-align: left;
    font-weight: bold;
}

.question-dashboard-row {
    border-bottom: 1px solid #ddd;
}

.question-dashboard-cell {
    padding: 12px;
    background-color: #f9f9f9;
    transition: background-color 0.3s;
}

.question-dashboard-cell:hover {
    background-color: #f1f1f1;
}

.question-dashboard-update-btn,
.question-dashboard-delete-btn {
    padding: 8px 12px;
    margin: 0 5px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s;
}

.question-dashboard-update-btn {
    background-color: #28a745;
    color: white;
}

.question-dashboard-delete-btn {
    background-color: #dc3545;
    color: white;
}

.question-dashboard-update-btn:hover {
    background-color: #218838;
}

.question-dashboard-delete-btn:hover {
    background-color: #c82333;
}

.question-update-container {
    max-width: 600px;
    margin: 0 auto;
    background: white;
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
}

.question-update-title {
    text-align: center;
    margin-bottom: 20px;
    color: #333;
    font-size: 24px;
}

.question-update-form {
    display: flex;
    flex-direction: column;
}

.question-update-field {
    margin-bottom: 15px;
}

.question-update-label {
    margin-bottom: 5px;
    font-weight: bold;
}

.question-update-input,
.question-update-textarea {
    width: 100%;
    padding: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    transition: border-color 0.3s;
}

.question-update-input:focus,
.question-update-textarea:focus {
    border-color: #007BFF;
    outline: none;
}

.question-update-textarea {
    height: 100px;
}

.question-update-submit-btn {
    padding: 10px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s;
}

.question-update-submit-btn:hover {
    background-color: #0056b3;
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
  * {
    margin: 0;
    box-sizing: border-box;
}

html, body {
    height: 100%;
    font-family: Arial, sans-serif;
    background-color: #f4f4f4;
}

body {
    display: flex;
    flex-direction: column;
    justify-content: space-between; /* Ensures footer stays at the bottom */
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: auto;
    text-align: center;
    background: white;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
}

h1 {
    color: #333;
}

.footer-content {
    text-align: center;
    padding: 20px;
    background: linear-gradient(50deg, blue, #32CD32);
    color: white;
    width: 100%;
    position: relative;
    bottom: 0;
}

.footer-content a {
    color: white;
    text-decoration: none;
}

.footer-content a:hover {
    text-decoration: underline;
}

/* Stretch the content to take up the full height before the footer */
main {
    flex-grow: 1;
}
  

</style>
</head>
<body>
    <div class="header-content">
        <h1>TestOrbit</h1>
        <form class="search-bar">
            <input type="text" placeholder="Search..." name="query">
            <button type="submit">Search</button>
        </form>
        <nav>
            <ul>
                <li><a href="Home.jsp">Home</a></li>
                <li><a href="ContactUs.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </div>

    <main>
        <div class="admin-login-container">
            <h1>Admin Login</h1>
            <form action="admin-login" method="post">
                <div class="form-group">
                    <label for="email">email:</label>
                    <input type="text" id="email" name="email" class="admin-login-input" required>
                </div>
                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" class="admin-login-input" required>
                </div>
                <button type="submit" class="admin-login-button">Login</button>
            </form>
            <p class="error-message" id="error-message"></p>
        </div>
    </main>

    <footer>
        <div class="footer-content">
            <p>&copy; 2024 Exam Enrollment System. All rights reserved.</p>
            <p>
                Contact us at <a href="mailto:support@examorbit.com">support@examorbit.com</a>
            </p>
            <a href="terms.jsp">Terms and Conditions</a> | <a href="privacy.jsp">Privacy
                Policy</a>
        </div>
    </footer>
</body>

</body>
</html>
