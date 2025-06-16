<%@page import="java.security.interfaces.RSAKey"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%@ page import="java.sql.*"%>
<%@ page import="java.text.*"%>

<!DOCTYPE html>
<html>
<head> 
<meta charset="utf-8"> 
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<title>Changli Mall-Personal Registration</title> 
<script src="${pageContext.request.contextPath}/js/jquery.js"></script> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/login.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap/css/bootstrap.min.css"> 
<script src="${pageContext.request.contextPath}/css/bootstrap/js/bootstrap.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/sort.js"></script> 
<script src="${pageContext.request.contextPath}/js/holder.js"></script> 
<script src="${pageContext.request.contextPath}/js/jquery.validate.min.js"></script> 
<script src="${pageContext.request.contextPath}/js/validate.js"></script>
</head>

<body>
<div id="main" class="container"> 
<div id="header"> 
<%@ include file="header.jsp"%> 
</div> 
<div class="login"> 
<div class="row"> 
<div class="col-md-6"> 
<img src="${pageContext.request.contextPath}/image/register.png" width="450" ​​height="600" alt="" style="margin-left: 40px;"> 
</div> 
<div class="col-md-5 form-register"> 
<div> 
<!-- <h2 class="login-h2">Login</h2> --> 
<form class="form-horizontal" id="form" action="${pageContext.request.contextPath}/registerresult" 
method="post"> 
<div class="form-group"> 
<!-- <label for="inputName" class="col-sm-2 control-label">Nickname</label> --> 
<div class="col-sm-10"> 
<input type="text" class="form-control" id="username" 
name="username" placeholder="nickname"> 
</div> 
</div> 
<div class="form-group"> 
<!-- <label for="inputPassword" class="col-sm-2 control-label">Password</label> --> 
<div class="col-sm-10"> 
<input type="password" class="form-control" id="password" 
name="password" placeholder="password"> 
</div> 
</div> 
<div class="form-group"> 
<!-- <label for="confirmPassword" class="col-sm-2 control-label">Confirm Password</label> -->
<div class="col-sm-10">
<input type="password" class="form-control"
id="confirmPassword" name="confirmPassword" placeholder="Confirm Password">
</div>
</div>
<div class="form-group">
<!-- <label for="inputTel" class="col-sm-2 control-label">Contact Information</label> -->
<div class="col-sm-10">
<input type="text" class="form-control" id="email"
name="email" placeholder="Email">
</div>
</div>
<div class="form-group">
<!-- <label for="inputTel" class="col-sm-2 control-label">Contact Information</label> -->
<div class="col-sm-10">
<input type="text" class="form-control" id="telephone" 
name="telephone" placeholder="Contact information"> 
</div> 
</div> 

<div class="form-group"> 
<div class="col-sm-10"> 
<input type="hidden" name="flag" id="flag" value="1"> <input 
type="submit" class="btn btn-primary form-control" value="Register"> 
<div class="error"> 
${errorMsg} 
</div> 
</div> 
</div> 
</form> 
</div> 
</div> 
</div> 

</div>
</div>
</body>
</html>
