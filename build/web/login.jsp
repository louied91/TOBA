<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->

<html>
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
                ${message}
		<form action="Login" method="post" id="theForm">
			<fieldset>
				<div><label for="username">Username:</label><input type="text" name="username" id="username" required></div>
				<div><label for="password">Password:</label><input type="password" name="password" id="password" required></div>
				<div><input type="submit" value="login" id="submit"></div>
                                <li><a href="password_reset.jsp">Reset Password</a></li>
			</fieldset>
		</form>
	</div>
    </body>
</html>