<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>RequestForward.jsp</h2>
<%
Person pPerson = (Person)(request.getAttribute("requestPerson"));
%>

<p>String 객체 : <%= request.getAttribute("requestString") %></p>
<p>Person 객체 : <%= pPerson.getName() %>, <%= pPerson.getAge() %></p>
<%
out.println(request.getParameter("paramHan"));
out.println(request.getParameter("paramEng"));
%>
</body>
</html>