<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% include file = "includetime.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시어</title>
</head>
<body>
	<%
		// 오늘날자 찍기
		// 내장 객체 중 out : 출력객체
		out.println("오늘날자출력 : ");
		out.println("<br>");
		out.println("오늘날짜출력 : " + tomorrow);
	
	%>

</body>
</html>