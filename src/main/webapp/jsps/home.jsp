<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>S2 Software Training Centre - Home Page</title>
    <link rel="icon" href="images/mithunlogo.jpg" type="image/jpeg">

    <!-- Internal CSS -->
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h1, h3 {
            margin: 10px 0;
        }
        hr {
            margin: 20px 0;
        }
        .contact {
            text-align: center;
            margin: 20px 0;
        }
        .contact img {
            width: 100px;
            margin-bottom: 10px;
        }
        .contact span {
            font-weight: bold;
            display: block;
            margin-top: 10px;
        }
        p {
            margin: 10px 0;
        }
        a {
            color: #007BFF;
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>

    <h1>DevOps on AWS</h1>
    <h1>Jenkins Web Application Scenarios</h1>
    <hr>

    <h3>Server Side IP Address</h3>
    <%
        String ip = "";
        InetAddress inetAddress = InetAddress.getLocalHost();
        ip = inetAddress.getHostAddress();
        out.println("Server Host Name: " + inetAddress.getHostName() + "<br>");
        out.println("Server IP Address: " + ip);
    %>
    <hr>

    <h3>Client Side IP Address</h3>
    <%
        out.println("Client IP Address: " + request.getRemoteAddr() + "<br>");
        out.println("Client Host Name: " + request.getRemoteHost());
    %>
    <hr>

    <div class="contact">
        <img src="images/mithunlogo.jpg" alt="S2 Logo">
        <span>
            S2 Software Training Centre<br>
            Pune, Above ICICI Bank, Beside Meghana Foods,<br>
            Bangalore<br>
            +91-9309430036<br>
            <a href="mailto:s2@gmail.com">Mail to Mithun Technologies</a>
        </span>
    </div>
    <hr>

    <p>Service: <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    <hr>

    <p>S2 Software - Consultant, Training, Development Center.</p>
    <p><small>Copyrights 2022 by <a href="http://devops.com/">S2 Software Training Centre, Pune</a></small></p>

</body>
</html>
