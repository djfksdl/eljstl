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
		int i = (int)request.getAttribute("num"); //문자열을 바꾸는건 Integer.parsInt고, 이건 int로 형변환 해줘야함(attribute에는 Object로 저장이 되니까 원래 형으로 바꿔줘야함.)
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
	no=${requestScope.userVo.no }<br><!-- 이 단어(no)가 있으면 getNo()으로 바꿔서 작동됨. 그래서 Vo에 이 getter없으면 못씀. 오류남 -->
	name=${requestScope.userVo.name}<br>
	email=${requestScope.userVo.email}<br>
	password=${requestScope.userVo.password }<br>
	gender=${requestScope.userVo.gender}<br>
	<br>
	i=${requestScope.num}<br><!-- 근데 얘는 getter가 없다. 주소면 getter찾아가는데 기본 자료형이면 그 값을 넣는다.-->
	str=${requestScope.str}<br><!--  얘는 일반만 쓰고 뒤에 get어쩌고를 쓰지않음. 아마 toString으로 코드가 되어있을것.주소까지만 쓴다.  -->
	<!-- vo로 불러온애는 getter를 찾아서 쓴다. -->
	
	
</body>
</html>