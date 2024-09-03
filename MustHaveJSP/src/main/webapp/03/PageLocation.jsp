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
<h4>로케이션 페이지</h4>

<p><%= pageContext.getAttribute("pageInteger")%></p>
<p><%= pageContext.getAttribute("pageString")%></p>
<%
Person person2 = (Person)pageContext.getAttribute("pagePerson");
out.print("이름:"+person2.getName()+",나이:"+ person2.getAge());
%><br/>
</body>
</html>