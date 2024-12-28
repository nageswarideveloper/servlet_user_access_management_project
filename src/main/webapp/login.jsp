<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style>
    /* Body Styling */
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(135deg, #6E7DFF, #4C5BF5); /* Gradient background */
        color: white;
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        height: 100vh;
        margin: 0;
        text-align: center;
    }

    /* Heading Styling */
    h1 {
        font-size: 36px;
        font-weight: 700;
        margin-bottom: 40px;
        text-transform: uppercase;
        letter-spacing: 2px;
        color: #fff;
    }

    /* Form Container */
    form {
        background-color: rgba(255, 255, 255, 0.85); /* Light translucent background */
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1); /* Subtle shadow */
        width: 100%;
        max-width: 400px;
        text-align: left;
    }

    /* Input Fields */
    input {
        width: 100%;
        padding: 15px;
        margin: 15px 0;
        border-radius: 8px;
        border: 1px solid #ccc;
        font-size: 16px;
        color: #333;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
        background-color: #f9f9f9;
    }

    input:focus {
        border-color: #4CAF50;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.5); /* Green focus effect */
        outline: none;
    }

    /* Button Styling */
    button {
        width: 100%;
        padding: 15px;
        font-size: 18px;
        font-weight: 600;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease-in-out;
    }

    button:hover {
        background-color: #45a049;
        transform: translateY(-4px); /* Slight lift on hover */
    }

    button:active {
        background-color: #388e3c;
        transform: translateY(0); /* Button depresses when clicked */
    }

    button:focus {
        outline: none;
    }

</style>
</head>
<body>

    <h1>Login Page</h1>
    <form action="login" method="POST">
        <input type="email" name="email" placeholder="Enter email" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <button type="submit">Login</button>
    </form>

</body>
</html>
