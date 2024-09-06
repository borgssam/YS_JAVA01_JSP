<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>이름: <%= request.getParameter("param1") %></p>
<p>주소: <%= request.getParameter("param2") %></p>
<p>특징: <%= request.getParameter("param3") %></p>
</body>
</html>