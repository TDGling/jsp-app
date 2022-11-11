<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="javax.naming.spi.DirStateFactory.Result"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결 체크하</title>
</head>
<body>
	<%
		try{
	
		// DB와 견결하려먼 해당 DB의 jar파일이 DB폴더의
		// lib 폴더안에 위치해 있어야한다.
		// MySQL 설치폴더 
		// C:\Program Files\Apache Software Foundation\Tomcat 9.0\lib
		// mysql - connectpr.jar 파일 이것! 확인
		
		// 1. DB 연결 문자열값 만들기
		String DB_URL = "jdbc://localhost:3307/mydb"
		// 형식 > jdbc:db시스템종류 : //db아이피/db이름
		// MySQL > jdbc:mysql :// localhost:3306/mydb
		
		// 2. DB 아이디 계정
		String DB_USER = "root";
		
		// 3. DB 비밀번호 :  root는 최초에 비밀번호가 없음
		String DB_PWD = "";
		
		// 4. 연결객체 선언
		Connection conn = null;
		
		// 5. 쿼리문 저장객
		PreparedStatement pstmt = null;
		
		// 6. 결과저장 객체
		ResultSet rs = null;
		
		//  7. 쿼리문작성 할
		
		// 8. DB 종류 클래스 등록하기 > 해당 연결 드라이브 로
		Class.forName("com.mysql.jdbc.Driver");
		
		// 9. DB  연결하기
		conn = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
		
		// 10. 성공메시지 띄우기
		out.println("DB연결 성공하였습니다.");
		
		}
		catch(Exception e){
			
			e.printStackTrace(); 
			// 추적된 에러메시지 찍
		}
		
		
		
	%>
</body>
</html>