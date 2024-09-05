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
<h2>도서목록</h2>
<%
	OracleConn jdbc = new OracleConn();

	String sql = "SELECT num, title, content, writer, pub_year FROM book";
	Statement stmt = jdbc.con.createStatement();
	
	ResultSet rs = stmt.executeQuery(sql);

%>
<table border="1">
<thead>
	<tr>
		<th>제목</th><th>내용</th><th>저자</th><th>출판년도</th>
	</tr>
</thead>
<tbody>
<%
while(rs.next()){
	int num   = rs.getInt("num");
	String title = rs.getString("title");
	String content = rs.getString("content");
	String writer = rs.getString("writer");
	int pub_year   = rs.getInt("pub_year");
%>	
	<tr>
		<td><a href="./BookDetail.jsp?num=<%=num%>"><%=title %></a></td>
		<td><%=content %></td>
		<td><%=writer %></td>
		<td><%=pub_year %></td>
	</tr>
<%
}
%>	
</tbody>
</table>

<%
	jdbc.close();
%>
<br/>
<a href="./BookInput.jsp">추가</a>
</body>
</html>