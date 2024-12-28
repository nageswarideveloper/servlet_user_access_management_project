<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Signup Page</title>
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

    /* Heading Styling */
    h1 {
        font-size: 36px;
        font-weight: bold;
        margin-bottom: 40px;
        text-transform: uppercase;
        letter-spacing: 2px;
        color: #fff;
    }

    /* Form Container */
    form {
        background-color: rgba(255, 255, 255, 0.8);
        padding: 30px;
        border-radius: 10px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        width: 100%;
        max-width: 400px;
        text-align: left;
    }

    /* Input Fields */
    input {
        width: 100%;
        padding: 12px;
        margin: 15px 0;
        border-radius: 4px;
        border: 1px solid #ccc;
        font-size: 16px;
        color: #333;
        transition: border-color 0.3s ease;
    }

    input:focus {
        border-color: #4CAF50;
        outline: none;
    }

    /* Button Styling */
    button {
        width: 100%;
        padding: 15px;
        font-size: 18px;
        font-weight: bold;
        background-color: #4CAF50;
        color: white;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease-in-out;
    }

    button:hover {
        background-color: #45a049;
        transform: translateY(-5px);
    }

    button:active {
        background-color: #388e3c;
        transform: translateY(0);
    }

    /* Focus on Button */
    button:focus {
        outline: none;
    }

</style>
</head>
<body>
    <h1>Signup Page</h1>
    <form action="signin" method="POST">
        <input type="text" name="id" placeholder="Enter ID" required>
        <input type="text" name="username" placeholder="Enter username" required>
        <input type="email" name="email" placeholder="Enter email" required>
        <input type="password" name="password" placeholder="Enter password" required>
        <button type="submit">Signin</button>
    </form>
</body>
</html>
