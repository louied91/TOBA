<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title> TOBA Banking Transfer Page</title>
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>   
    <body>
        <h1>Transfer Funds</h1>
        <p>Enter the amount to transfer</p>
        <form action="transfer" method="post">
            <input type="hidden" name="action" value="add">
            <label class="pad_top">Username:</label>
            <input type="userName" name="userName" value="$(user.userName"
                   required><br>
            <label class="pad_top">First Name:</label>
            <input type="firstName" name="firstName" value="$(user.firstName"
                   required><br>
            <label class="pad_top">Last Name:</label>
            <input type="lastName" name="lastName" value="$(user.lastName"
                   required><br>
            <label>&nbsp;</label>
            <input type="submit" value="Transfer Now" class="margin_left">
        </form>
    </body>
</html>



<%--    
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${sqlStatement == null}">
        <c:set var="sqlStatement" value="select * from User" />
    </c:if>
    
    <h1>The SQL Gateway</h1>
    <p> Enter an SQL statement and click the Execute button.</p>
    
    <p><b>SQL statement:</b></p>
    <form action="sqlGateway" method="post">
        <textarea name ="sqlStatement" cols="60" rows="8">${sqlStatement}</textarea>
        <input type="submit" value="Execute">
    </form>
    
        <p><b>SQL result:</b></p>
        ${sqlResult}  --%>