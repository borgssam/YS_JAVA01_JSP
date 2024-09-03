<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
BBBB
<%
String strId = request.getParameter("id");
out.println("아이디 : "+strId);
%>
<br/>
<%
String strPWD = request.getParameter("pwd");
out.println("비밀번호 : "+strPWD);
%>
<br/>
<%
String week = request.getParameter("week");
out.println("요일 : "+week);
%>
<br/>


</body>
</html>