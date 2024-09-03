<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
request.setAttribute("requestString", "request 영역의 문자열");
request.setAttribute("requestPerson", new Person("안중근", 31));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>RequestMain.jsp</h2>
	<h2>request 영역의 속성값 삭제하기</h2>
	<%
/* 	request.removeAttribute("requestString");
	request.removeAttribute("requestPerson"); */
	%>
	
	<h2>request 영역의 속성값 읽기</h2>
	<%
	Person rPerson = (Person)request.getAttribute("requestPerson");
	%>
	
	<p>String 객체 : <%= request.getAttribute("requestString") %></p>
	<p>Person 객체 : <%= rPerson.getName() %>, <%= rPerson.getAge() %></p>
	
	<h2>포워드</h2>
	<%
	request.getRequestDispatcher("RequestForward.jsp?paramHan=한글&paramEng=English").forward(request,response);
	%>
	




</body>
</html>