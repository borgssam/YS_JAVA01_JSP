<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>도서입력</h2>
<%
String loginErr = request.getParameter("loginErr");
if (loginErr != null) {
	out.println("도서입력실패");
}
%>
<br/>
<form action="BookProcess.jsp" method="post">
작업모드 : <input type="text" name="work_mode" value="ADD"/> <br/>
제&nbsp; &nbsp; &nbsp; 목 : <input type="text" name="book_title" /> <br/>
내&nbsp; &nbsp; &nbsp; 용 : <input type="text" name="book_content" /> <br/>
저&nbsp; &nbsp; &nbsp; 자 : <input type="text" name="book_writer" /> <br/>
출판년도 : <input type="text" name="book_pub_year" /> <br/>
<input type="submit" value="저장"/>
</form>
<a href="./BookList.jsp">목록</a>
</body>
</html>