<%@page import="schedule.ScheduleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="cpath" value="${pageContext.request.contextPath }"/>
<% request.setCharacterEncoding("UTF-8"); %>
<c:set var="dao" value="<%=new ScheduleDAO() %>"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>day07-schedule</title>
<style>
	#root {
		height: 500px;
		display: flex;
		flex-direction: column;
		justify-content: flex-start;
		align-items: center;
	}
	#root > ul {
		padding-left: 150px;
	}
	h1 {
		text-align: center;
	}
	nav {
		display: flex;
		justify-content: center;
		align-content: center;
	}
	nav > ul {
		list-style: none;
		
		display: flex;
		justify-content: space-between;
		padding-left: 0px;
		
		font-size: 20px;
		font-weight: bold;
	}
	nav > ul > li {
		margin: 0 20px 0 20px;
	}
	a {
		text-decoration: none;
		color: inherit;
	}
	legend {
	font-size: 25px;
	font-weight: bold;
	}
	fieldset {
		width: 450px;
		display: flex;
		flex-direction: column;
		justify-content: center;
	}
	input {
		cursor: pointer;
	       width: 450px;
	       height: 40px;
	}
	input[type="submit"] {
		width: 457px;
		background-color: silver;
	}
</style>
</head>
<body>
	<h1><a href="${cpath }">스케줄 관리</a></h1>
	
	<nav>
		<ul>
			<li><a href="${cpath }/list.jsp">목록</a></li>
			<li><a href="${cpath }/add.jsp">추가</a></li>
		</ul>
	</nav>
	<hr>
