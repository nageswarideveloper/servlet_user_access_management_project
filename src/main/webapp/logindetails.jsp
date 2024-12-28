<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LoginDetails Page</title>
<style>
    /* General Styles */
    body {
        font-family: 'Arial', sans-serif;
        background-color: #f5f5f5;
        margin: 0;
        padding: 0;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        background-image: linear-gradient(to right, #ff7e5f, #feb47b);
    }

    .container {
        background-color: #fff;
        border-radius: 12px;
        box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
        padding: 40px;
        width: 90%;
        max-width: 1000px;
        text-align: center;
    }

    h2 {
        color: #ff7e5f;
        font-size: 32px;
        margin-bottom: 20px;
        font-weight: 700;
        letter-spacing: 1px;
    }

    /* Table Styles */
    table {
        width: 100%;
        border-collapse: collapse;
        margin-top: 30px;
        border-radius: 12px;
        overflow: hidden;
        background-color: #fff;
    }

    th, td {
        padding: 15px;
        text-align: center;
        font-size: 18px;
        transition: background-color 0.3s ease;
        border-bottom: 2px solid #ddd;
    }

    th {
        background-color: #ff7e5f;
        color: white;
        font-size: 20px;
    }

    td {
        background-color: #fff3e2;
        color: #333;
    }

    /* Zebra Stripe Effect */
    tr:nth-child(even) td {
        background-color: #ffe1d1;
    }

    /* Hover Effects for Table Rows */
    tr:hover td {
        background-color: #f9e3d5;
        cursor: pointer;
    }

    /* Button Styles */
    button {
        background-color: #ff7e5f;
        color: white;
        font-size: 18px;
        padding: 12px 30px;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        margin-top: 30px;
    }

    button:hover {
        background-color: #feb47b;
    }

    /* Optional Input Fields Styling (for any form enhancements) */
    input[type="text"], input[type="password"], input[type="email"] {
        padding: 12px;
        width: 100%;
        border-radius: 8px;
        border: 1px solid #ddd;
        margin: 10px 0;
        box-sizing: border-box;
        font-size: 16px;
    }

    /* Subtle Table Load Animation */
    @keyframes fadeIn {
        from {
            opacity: 0;
        }
        to {
            opacity: 1;
        }
    }

    table {
        animation: fadeIn 1s ease-in-out;
    }
</style>
</head>
<body>

<div class="container">
    <h2>Login Details</h2>
    <table>
        <%
        ResultSet rs = (ResultSet) request.getAttribute("rs");
        %>

        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Email</th>
            <th>Password</th>
        </tr>
        <tr>
            <td><%= rs.getInt(1) %></td>
            <td><%= rs.getString(2) %></td>
            <td><%= rs.getString(3) %></td>
            <td><%= rs.getString(4) %></td>
        </tr>
    </table>

   
</div>

</body>
</html>
