<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
ArrayList<String> lists = new ArrayList<>();
lists.add("리스트");
lists.add("컬렉션");
session.setAttribute("lists", lists);
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="SessionLocation.jsp"> SessionLocation.jsp로 이동</a>

</body>
</html>