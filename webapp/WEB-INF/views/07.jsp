<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//pageContext.setAttribute("name","pageScope.name");
	//request.setAttribute("name", "requestScope.name");
	//session.setAttribute("name","sessionScope.name");
	application.setAttribute("name","applicationScope.name"); //이거 왜 안됨?
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el-jstl</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>scope변수의 사용범위</h3>

	${name}
	
	
</body>
</html>