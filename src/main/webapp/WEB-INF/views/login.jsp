<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Login – SAST Demo App</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"/>
</head>
<body>
<div class="container">
    <div class="card">
        <h2>Sign In</h2>

        <c:if test="${not empty errorMsg}">
            <div class="alert alert-error">${errorMsg}</div>
        </c:if>
        <c:if test="${not empty logoutMsg}">
            <div class="alert alert-success">${logoutMsg}</div>
        </c:if>
        <c:if test="${not empty successMsg}">
            <div class="alert alert-success">${successMsg}</div>
        </c:if>

        <form action="<c:url value='/login'/>" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username"
                       placeholder="Enter username" required autofocus/>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password"
                       placeholder="Enter password" required/>
            </div>
            <button type="submit" class="btn btn-primary">Login</button>
        </form>

        <p class="link-text">Don't have an account?
            <a href="<c:url value='/register'/>">Register here</a>
        </p>
    </div>
</div>
</body>
</html>
