<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c"        uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Dashboard – SAST Demo App</title>
    <link rel="stylesheet" href="<c:url value='/resources/css/style.css'/>"/>
</head>
<body>
<nav class="navbar">
    <span class="nav-brand">SAST Demo App</span>
    <div class="nav-links">
        <span>Welcome, <strong>${username}</strong></span>
        <form action="<c:url value='/logout'/>" method="post" style="display:inline;">
            <button type="submit" class="btn btn-logout">Logout</button>
        </form>
    </div>
</nav>

<div class="container">
    <div class="card dashboard-card">
        <h2>Dashboard</h2>
        <p>You are successfully logged in as <strong>${username}</strong>.</p>

            <div class="alert alert-info">
                You are logged : <strong>User</strong>.
            </div>

        <hr/>
    </div>
</div>
</body>
</html>
