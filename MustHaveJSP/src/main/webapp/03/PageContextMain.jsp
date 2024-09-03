<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
pageContext.setAttribute("pageInteger", 1000);
pageContext.setAttribute("pageString", "페이지 영역의 문자열");
pageContext.setAttribute("pagePerson", new Person("한석봉", 99));
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p><%= pageContext.getAttribute("pageInteger")%></p>
<p><%= pageContext.getAttribute("pageString")%></p>
<%
Person person = (Person)pageContext.getAttribute("pagePerson");
out.print("이름:"+person.getName()+",나이:"+ person.getAge());
%><br/>

<%@ include file="PageInclude.jsp" %>

<a href="PageLocation.jsp">PageLocation이동</a>

</body>
</html>