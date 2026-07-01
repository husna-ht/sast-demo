<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Register – SAST Demo App</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"/>
</head>
<body>
<div class="container">
    <div class="card">
        <h2>Create Account</h2>

        <c:if test="${not empty errorMsg}">
            <div class="alert alert-error">${errorMsg}</div>
        </c:if>

        <form action="<c:url value='/register'/>" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username"
                       value="${user.username}"
                       placeholder="Choose a username" required/>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email"
                       value="${user.email}"
                       placeholder="Enter your email" required/>
            </div>
            <div class="form-group">
                <label for="password">Password </label>
                <input type="password" id="password" name="password"
                       placeholder="Create a password" required minlength="6"/>
            </div>
            <button type="submit" class="btn btn-primary">Register</button>
        </form>

        <p class="link-text">Already have an account?
            <a href="<c:url value='/login'/>">Login here</a>
        </p>
    </div>
</div>
</body>
</html>
