<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Page</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">

    <style>
        .login-container {
            padding-top: 100px;
        }

        .login-form {
            width: 300px;
            margin: auto;
        }

        .login-img {
            height: 250px;
            margin-bottom: 20px;
        }

        .login-button {
            background-color: blue;
            color: white;
            font-size: 15px;
            width: 100%;
        }
    </style>
</head>
<body>
<div class="container login-container">
    <img src='../img/sample.jpg' class="login-img">
    <form class="login-form" method="post" action="loginOk">
        <div class="form-group">
            <label for="userid">User ID:</label>
            <input type='text' class="form-control" name='userid' id="userid" />
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type='password' class="form-control" name='password' id="password" />
        </div>
        <button type='submit' class="btn login-button">Login</button>
    </form>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>