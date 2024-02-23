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
	<h3>데이터행</h3>
	
	<!-- ${no} -->
	정수형: ${10}<br><!-- el의 예시 {}는 안보인다. -->
	실수형: ${7.5}<br>
	문자형: ${"정우성"} ${'정우성'}<br><!-- 그냥 {정우성}으로 하면 오류나는 이유: 변수인지, 글자인지 알지 못해서 ""를 안쓰면 변수로 알음. 자료형 맞지않아서 오류남 -->
	논리형: ${true} ${false}<br>
	null: ${null}
</body>
</html>