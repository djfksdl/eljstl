<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>el-jstl</h1>
	<h2>el</h2>
	<h3>반복문</h3>
	
	<h4>스크립틀릿 for문</h4>
	<%@ page import="java.util.List" %>
	<%@ page import="com.javaex.vo.UserVo" %>
	<%
		List<UserVo> userList = (List<UserVo>)request.getAttribute("userList");
	%>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			
		<%
			for(int i=0; i<userList.size(); i++){
		%>
				<tr>
					<td><%=userList.get(i).getNo()%></td>
					<td><%=userList.get(i).getName()%></td>
					<td><%=userList.get(i).getEmail()%></td>
					<td><%=userList.get(i).getPassword()%></td>
					<td><%=userList.get(i).getGender()%></td>
				</tr>
		<%		
			}
		%>
		
		
		</tbody>
	</table>

	<br><br>
	
	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
			
		<%
		/*향상된 for문- 끝까지돌릴때 많이씀. 그래서 몇번째가 필요없다*/
		/*UserVo는 내가 돌 자료형이고 vo는 내가 지어준 이름임*/
			for(UserVo vo : userList){
		%>
				<tr>
					<td><%=vo.getNo()%></td>
					<td><%=vo.getName()%></td>
					<td><%=vo.getEmail()%></td>
					<td><%=vo.getPassword()%></td>
					<td><%=vo.getGender()%></td>
				</tr>
		<%		
			}
		%>
		
		</tbody>
	</table>


	<h4>jstl for문</h4>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
			</tr>
		</thead>
		<tbody>
		
		<!-- 향상된 for문과 같지만 var에서는 내가 돌 값인데 자료형을 써주는게 아닌 키값을 적어주면 되서 내가 정한 이름 아무거나 써도됨!주소는 알아서 담아줌 -->
		<c:forEach items="${requestScope.userList}" var="userVo">
			<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name}</td>
				<td>${userVo.email}</td>
				<td>${userVo.password}</td>
				<td>${userVo.gender}</td>
			</tr>
		</c:forEach>
		
		</tbody>
	</table>

	<br><br>

	<h4>jstl for문(begin end) </h4>

	<table border="1">
		<thead>
			<tr>
				<th>번호</th>
				<th>이름</th>
				<th>이메일</th>
				<th>패스워드</th>
				<th>성별</th>
				<th>status.index</th>
				<th>status.count</th>
			</tr>
		</thead>
		<tbody>
		
		<c:forEach items="${requestScope.userList}" var="userVo" begin="0" end="20" step="1" varStatus="status">
			<tr>
				<td>${userVo.no}</td>
				<td>${userVo.name}</td>
				<td>${userVo.email}</td>
				<td>${userVo.password}</td>
				<td>${userVo.gender}</td>
				<td>${status.index}</td>
				<td>${status.count}</td>
			</tr>
		</c:forEach>
		
		</tbody>
	</table>





	<br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>