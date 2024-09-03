<%@page import="java.util.HashMap"%>
<%@page import="common.Person"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Map<String, Person> maps = new HashMap<>();
maps.put("배우1", new Person("이수일", 30));
maps.put("배우2", new Person("심순애", 28));
application.setAttribute("maps", maps);
%>

</body>
</html>