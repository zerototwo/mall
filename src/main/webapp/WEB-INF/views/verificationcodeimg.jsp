
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%@page import="com.zhang.ssmschoolshop.util.verificate.Verificate" %>
<%--<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>--%>
<%@page contentType="image/jpeg"%>
<jsp:useBean id="image" scope="page" class="com.zhang.ssmschoolshop.util.verificate.Verificate" />
<%
    String str = image.getCertPic(0, 0, response.getOutputStream());

    session.setAttribute("certCode", str);
    out.clear();
    out = pageContext.pushBody();
%>

<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>
