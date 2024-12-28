<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome Page</title>
<style>
    /* Body Styling */
    body {
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #6E7DFF, #4C5BF5);
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        margin: 0;
        text-align: center;
    }

    /* Header Styling */
    h1 {
        font-size: 36px;
        font-weight: bold;
        margin-bottom: 40px;
        text-transform: uppercase;
        letter-spacing: 2px;
    }

    /* Link Styling (removing default link styles) */
    a {
        text-decoration: none;
        margin: 10px;
    }

    /* Button Styling */
    button {
        padding: 15px 30px;
        font-size: 18px;
        font-weight: bold;
        background-color: #28a745;
        color: white;
        border: none;
        border-radius: 50px;
        cursor: pointer;
        transition: all 0.3s ease-in-out;
        width: 200px;
        margin: 10px;
    }

    button:hover {
        background-color: #218838;
        transform: translateY(-5px);
    }

    button:active {
        background-color: #1e7e34;
        transform: translateY(0);
    }

    button:focus {
        outline: none;
    }

</style>
</head>
<body>

    <h1>Welcome To User Access Management System</h1>
    <a href="signup.jsp"><button>Signup</button></a><br>
    <a href="login.jsp"><button>Login</button></a>

</body>
</html>
