<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
 
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->


<html>
    
 <c:import url="/includes/header.html" />
    <head>
        <title>TOBA </title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="styles/main.css" type="text/css"/>
    </head>
    <body>
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
        <div id='content'>
                <form action="NewCustomer" method="post" id="theForm">
			<fieldset>                                                 
				<div><label for="firstName">First Name:</label><input type="text" name="firstName" id="firstName"></div>
				<div><label for="lastName">Last Name:</label><input type="text" name="lastName" id="lastName"></div>
                                <div><label for="phone">Phone:</label><input type="text" name="phone" id="phone"></div>
                                <div><label for="address">Address:</label><input type="text" name="address" id="address"></div>
                                <div><label for="city">City:</label><input type="text" name="city" id="city"></div>
                                <div><label for="state">State:</label><input type="text" name="state" id="state"></div>
                                <div><label for="zipCode">Zip Code: </label><input type="text" name="zipCode" id="zipCode"></div>
                                <div><label for="email">Email:    </label><input type="text" name="email" id="email"></div>
				<div><input type="submit" value="register" id="submit"></div>       
			</fieldset>
		</form>
	</div>
    </body>
</html>
<c:import url="/includes/footer.jsp" />
