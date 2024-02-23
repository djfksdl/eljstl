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
	<h3>연산자</h3>
	
	<h4>산술연산자</h4>
	${ 5 }+${ 2 }
	${ 5+2 }
	\${5+2}-->${5+2} <!-- ${ 5 }+${ 2 } --><br>
	\${5-2}-->${5-2}<br>
	\${5*2}-->${5*2}<br>
	<br>
	\${ 5/2 }-->${5/2}<br>
	\${ 5 div 2 }-->${5 div 2}<br>
	
	\${ 5%2 }-->${5%2}<br>
	\${ 5 mod 2 }-->${5 mod 2}<br>
	
	<h4>관계 연산자</h4>
	\${5>2} --> ${5>2}<br>
	\${5 gt 2} --> ${5 gt 2}<br>
	<br>
	\${5<2} --> ${5<2}<br>
	\${5 lt 2} --> ${5 lt 2}<br>
	<br>
	\${5>=2} --> ${5>=2}<br>
	\${5 ge 2} --> ${5 ge 2}<br>
	<br>
	\${5<=2} --> ${5<=2}<br>
	\${5 le 2} --> ${5 le 2}<br>	
	<br>
	\${5==2} --> ${5==2}<br>
	\${5 eq 2} --> ${5 eq 2}<br>	
	<br>
	\${5!=2} --> ${5!=2}<br>
	\${5 ne 2} --> ${5 ne 2}<br>	
	<br>
	
	<h4>삼항연산자</h4>
	\${ 5>=2 ? 5 : 2} --> ${ 5>=2 ? 5 : 2}<br> 
	\${ 5<=2 ? 5 : 2} --> ${ 5<=2 ? 5 : 2}<br> 
	
	<h4>논리연산자</h4>
	<!-- ture && true = true (&& and) -->
	\${5>2 && 2<10} --> ${5>2 && 2<10}<br>
	
	<!-- ture && fasle = false(&& and)-->
	\${5>2 && 2>10} --> ${5>2 and 2<10}<br>
	
	<!-- ture || fasle = true(|| or)-->
	\${5>2 || 2>10} --> ${5>2 or 2<10}<br>

	<!-- ture || fasle = true(|| or)-->
	\${5>2 || 2>10} --> ${5>2 or 2<10}<br>
	
	<!-- !ture || fasle = true(|| or)-->
	\${!(5>2)} --> ${!(5>2)}<br>
	<br>
	
	<h4>null검사</h4>
	\${str}-->${str}<br>
	\${str == null} --> ${str==null}<br>
	\${empty str} -->${empty str}<br>
	\${empty reqVal} -->${empty reqVal}<br> <!-- 비어있냐고 물어보는건데 Controller에 값을 넣어줬기 떄문에 false라고 나온다. -->
	\${reqVal} -->${reqVal}<br>
	

</body>
</html>