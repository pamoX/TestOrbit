<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



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
<title>Student Enrollment Details</title>

<style>
   
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
    
    /* Main container styling */
main {
    margin-top: 2%;
}

/* Table styling */
.table {
    width: 100%; /* Full width */
    border-collapse: collapse; /* Merge table borders */
    margin-top: 20px; /* Space above the table */
}

/* Table header styling */
.table-dark {
    background-color: #343a40; /* Dark background for header */
    color: white; /* White text color */
}

/* Table cell styling */
.table th, .table td {
    padding: 12px; /* Padding inside cells */
    text-align: left; /* Left align text */
    border-bottom: 1px solid #dee2e6; /* Light border below each row */
}

/* Hover effect for rows */
.table tbody tr:hover {
    background-color: #f1f1f1; /* Light gray background on hover */
}

/* Button styling */
.btn {
    margin: 0 5px; /* Space between buttons */
}

/* Responsive table */
@media (max-width: 768px) {
    .table {
        font-size: 14px; /* Smaller font size on smaller screens */
    }
}


.container h3{
    text-align: center;
}
    
    
/* Button base styling */
.btn {
    padding: 8px 12px; 
    border: none;
    border-radius: 4px; 
    cursor: pointer; 
    text-decoration: none; 
    font-size: 14px; 
    transition: background-color 0.3s, transform 0.2s; 
}


.btn-primary {
    background-color: #007bff; /* Blue background */
    color: white; 
}

/* Hover effects */
.btn-primary:hover {
    background-color: #0056b3; /* Darker blue on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}


/* Success button (Update) */
.btn-success {
    background-color: #28a745; /* Green background */
    color: white; 
}

/* Danger button (Delete) */
.btn-danger {
    background-color: #dc3545; /* Red background */
    color: white; /* White text */
}

/* Hover effects */
.btn-success:hover {
    background-color: #218838; /* Darker green on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

.btn-danger:hover {
    background-color: #c82333; /* Darker red on hover */
    transform: scale(1.05); /* Slightly enlarge on hover */
}

/* Small buttons */
.btn-sm {
    font-size: 12px; /* Smaller font size */
    padding: 6px 10px; /* Adjust padding for small buttons */
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
    
    <main style="margin-top:2%" class="mx-5">
    
    <div class ="row">
    	<div class ="container">
    	<h3 class="text-start mx-2">Welcome to student details page</h3>
    	
    	</div>
    	
    	<div class = "text-start">
    		<a href= "Enrol.jsp" class="btn btn-primary btn-sm mx-2">Add new enrollment</a>
    		
    	</div>
    	
    	<table class="table mt-2">
    
    	<thead class="table-dark">
    	<tr>
    			<th>id</th>
                <th>Student ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>DOB</th>
                <th>Gender</th>
                <th>Address</th>
                <th>Phone Number</th>
                <th>Email</th>
                <th>Course</th>
                <th>Action</th>
    		</tr>
    	</thead>
    	
    	<tbody>
    	<c:forEach var="sts" items="${sts}">
    <tr>
        <td><c:out value="${sts.id}"></c:out></td>
        <td><c:out value="${sts.studentID}"></c:out></td>
        <td><c:out value="${sts.firstName}"></c:out></td>
        <td><c:out value="${sts.lastName}"></c:out></td>
        <td><c:out value="${sts.DOB}"></c:out></td>
        <td><c:out value="${sts.gender}"></c:out></td>
        <td><c:out value="${sts.address}"></c:out></td>
        <td><c:out value="${sts.phoneNumber}"></c:out></td>
        <td><c:out value="${sts.email}"></c:out></td>
        <td><c:out value="${sts.course}"></c:out></td>
        <td>
          <a href = "eUpdate?id=<c:out value='${sts.id}'/>" class="btn btn-success btn-sm">Update</a>
    		<a href = "deleteStudent?id=<c:out value='${sts.id}'/>" class="btn btn-danger btn-sm">Delete</a>
        </td>
    </tr>
</c:forEach>

    	
    	
    	
    	
    	</tbody>
    	
    	
    	</table>
    	
    </div>
    
    
    
    
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