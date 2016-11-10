<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TOBA</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  
        <header role="banner">
            <h1>Titan Online Banking Application (TOBA)</h1>
        </header>
    
        
        <nav>
            <ul>
                <li><a href="index.jsp">Home</a></li>
                <li><a href="login.jsp">Login</a></li>
                <li><a href="New_customer.jsp">New Customer?</a></li>
                <li><a href="account_activity.jsp">Account Activity</a></li>
            </ul>
	</nav>
      <c:choose>
        <c:when test="${not empty user}">
            <p>Hello <c:out value='${user.firstName}'/></p>
        </c:when>
        <c:otherwise>
            <p>Please Log In</p>
        </c:otherwise>
     </c:choose>
    </body>
</html>
