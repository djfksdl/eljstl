<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>el-jstl</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>request.attribute</h3>

	<h4>스크립틀릿 사용</h4>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%
		UserVo userVo = (UserVo)request.getAttribute("userVo");//오만가지 다 불러오기 때문에 형변환 해줌
		int i = (int)request.getAttribute("num"); //문자열을 바꾸는건 Integer.parsInt고, 이건 int로 바꿔줘야함.>> 차이점??
		String str = (String)request.getAttribute("str");
	%>
	
	no=<%=userVo.getNo() %><br>
	name=<%=userVo.getName() %><br>
	email=<%=userVo.getEmail() %><br>
	password=<%=userVo.getPassword() %><br>
	gender=<%=userVo.getGender() %><br>
	<br>
	i=<%=i %><br>
	<br>
	str=<%=str %>
	
	<h4>el 사용</h4>
	no=${requestScope.userVo.no }<br><!-- 이 단어(no)가 있으면 getNo()으로 바꿔서 작동됨. 그래서 Vo에 이 getter없으면 못씀.  -->
	name=${requestScope.userVo.name}<br>
	email=${requestScope.userVo.email}<br>
	password=${requestScope.userVo.password }<br>
	gender=${requestScope.userVo.gender}<br>
	<br>
	i=${requestScope.num}<br>
	str=${requestScope.str}<br>
	
	
</body>
</html>