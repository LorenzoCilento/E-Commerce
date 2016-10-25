<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<jsp:useBean id="user" class="model.bean.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

Record:<br>
<jsp:getProperty property="username" name="user"/>
<jsp:getProperty property="password" name="user"/>

welcome, ${param.name }

<a href="second.jsp"> ciao </a>


</body>
</html>