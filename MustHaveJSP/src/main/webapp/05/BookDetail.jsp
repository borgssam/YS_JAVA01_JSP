<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.OracleConn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>도서상세보기</h2>
<%
String loginErr = request.getParameter("loginErr");
if (loginErr != null) {
	out.println("도서삭제실패");
}
%>
<%
	String num_param = request.getParameter("num");
	OracleConn jdbc = new OracleConn();

	String sql = "SELECT num, title, content, writer, pub_year FROM book ";
	sql += " WHERE num = " + num_param; 
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);
	if(rs != null){
		rs.next();
		int num = rs.getInt("num");
		String title = rs.getString("title");
		String content = rs.getString("content");
		String writer = rs.getString("writer");
		int pub_year = rs.getInt("pub_year");				
%>
제목 : <%=title %> <br/>
내용 : <%=content %> <br/>
저자 : <%=writer %> <br/>
출판년도: <%=pub_year %> <br/>
<form action="./BookProcess.jsp" method="post">
<input type="text" name="work_mode" value="DEL"/>
<input type="text" name="book_num" value="<%=num%>"/>
<input type="submit" value="삭제"/>
</form>
<% 		
	}
%>
</body>
</html>