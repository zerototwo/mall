<%@ page contentType="text/html;charset=UTF-8" language="java" %> 
<!DOCTYPE html> 
<html lang="en"> 

<head> 
<meta charset="utf-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>Admin Login</title> 
<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700' rel='stylesheet' 
type='text/css'> 
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet"> 
<link href="${pageContext.request.contextPath}/css/templatemo-style.css" rel="stylesheet"> 
<style type="text/css"> 
.button { 
clear: both; 
margin: 10px auto; 
text-align: center; 
font-size: 20px; 
padding: 10px 0; 
line-height: 25px; 
color: #666; 
border-top: #ddd 1px solid; 
} 

.button a { 
margin: 0 7px; 
color: #666; 
} 

.button a:hover { 
color: #000; 
text-decoration: none; 
} 
</style> 
</head> 

<body class="light-gray-bg"> 
<div class="templatemo-content-widget templatemo-login-widget white-bg"> 
<header class="text-center"> 
<div class="square"></div> 
<h1>Admin Login</h1> 
</header> 
<form action="${pageContext.request.contextPath}/admin/confirmLogin" class="templatemo-login-form" 
method="post"> 
<div class="form-group"> 
<div class="input-group"> 
<div class="input-group-addon"><i class="fa fa-user fa-fw"></i></div> 
<input type="text" class="form-control" placeholder="Username" name="adminname"> 
</div> 
</div> 
<div class="form-group"> 
<div class="input-group"> 
<div class="input-group-addon"><i class="fa fa-key fa-fw"></i></div> 
<input type="password" class="form-control" placeholder="Password" name="password"> 
</div> 
</div> 
<div class="form-group"> 
<div class="checkbox squaredTwo"> 
<input type="checkbox" id="c1" name="cc" /> 
<%--<label for="c1"><span></span>Remember password</label>--%> 
<span class="error-msg">${errorMsg}</span> 
</div> 
</div> 
<div class="form-group"> 
<button type="submit" class="templatemo-blue-button width-100">Login</button> 
</div> 
</form> 
</div> 

<div class="button">Welcome, Admin!</div> 
</body> 

</html>
