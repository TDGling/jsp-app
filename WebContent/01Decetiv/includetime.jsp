<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%  page import = "java.time.LocaLDateTime"%>
<% 
	// 현재 날자
	LocalDate today = LocalDate.now();
	// 현제 날짜 시간 + 1일 > 내일날자
	LocalDateTime tomorrow =LocalDateTime.now().plusDays(1);
%>