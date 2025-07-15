<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Contact Us</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
.header-content{      
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

        .contact-info, .form-section {
            display: flex;
            justify-content: space-between;
            margin-top: 30px;
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
           
        }
        .contact-info div, .form-section div {
            flex: 1;
            margin: 10px;
             
        }
        .contact-info div h3 {
            margin-bottom: 10px;
        }
        .contact-info div p {
            margin-bottom: 5px;
        }
        .map {
            width: 100%;
            height: 300px;
            background-color: #ddd;
            margin-top: 30px;
            border-radius: 8px;
            overflow: hidden;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .form-group input, .form-group textarea {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }
        .form-group textarea {
            resize: vertical;
        }
        .submit-btn {
            background-color: #007BFF;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            font-size: 16px;
            cursor: pointer;
        }
        .submit-btn:hover {
            background-color: #0056b3;
        }
        footer {
            margin-top: 30px;
            padding: 20px;
           
            color: white;
            text-align: center;
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
                <li><a href="Home.jsp">Home</a></li>
                   <li><a href="LecturerLogin.jsp">Login</a></li>
                   <li><a href="admin-login.jsp">Questions</a></li>
                   <li><a href="Exam.jsp">Exam</a></li>
                   <li><a href="ContactUs.jsp">Contact Us</a></li>
            </ul>
        </nav>
    </div>
</header>
	 

    <div class="container">

        <!-- Contact Information Section -->
        <div class="contact-info">
            <div>
                <h3>Our Address</h3>
                <p>1234 Kandy Street</p>
                <p>City, State 56789</p>
            </div>
            <div>
                <h3>Call Us</h3>
                <p>Phone: +123 456 7890</p>
                <p>Fax: +123 456 7891</p>
            </div>
            <div>
                <h3>Email Us</h3>
                <p>Email: info@examorbit.com</p>
                <p>Support: support@examorbit.com</p>
            </div>
        </div>

        <!-- Contact Form Section -->
        <div class="form-section">
            <div>
                <h2>Send Us a Message</h2>
                <form action="/submit-form" method="post">
                    <div class="form-group">
                        <label for="name">Your Name</label>
                        <input type="text" id="name" name="name" required>
                    </div>
                    <div class="form-group">
                        <label for="email">Your Email</label>
                        <input type="email" id="email" name="email" required>
                    </div>
                    <div class="form-group">
                        <label for="message">Your Message</label>
                        <textarea id="message" name="message" rows="6" required></textarea>
                    </div>
                    <button type="submit" class="submit-btn">Send Message</button>
                </form>
            </div>
        </div>

        <!-- Map Section -->
        <div class="map">
            <!-- You can embed a real map here using an iframe from Google Maps -->
            <iframe
                src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15843.368478574345!2d80.74298738500134!3d7.305501800000001!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ae33ff344473d01%3A0x58949ac156c35d0e!2sPallekele!5e0!3m2!1sen!2slk!4v1632488459206!5m2!1sen!2slk"
                width="100%" height="100%" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
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