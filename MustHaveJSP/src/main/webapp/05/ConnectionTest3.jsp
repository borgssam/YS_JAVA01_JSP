<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="common.JDBConnect"%>
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
JDBConnect jdbc = new JDBConnect(application);

String sql = "SELECT id,pass,name,regidate FROM member";
Statement stmt = jdbc.con.createStatement();

ResultSet rs = stmt.executeQuery(sql);
%>
<table border="1">
	<thead>
	<tr>
	<th>아이디</th>
	<th>비번</th>
	<th>이름</th>
	<th>등록일</th>
	</tr>
	</thead>
	<tbody>
<% 
while(rs.next()) {
	String uid = rs.getString(1);
	String pw = rs.getString(2);
	String name = rs.getString("name");
	java.sql.Date regidate  = rs.getDate("regidate");
%>	
	<tr>
	<td><%= uid %></td>
	<td><%= pw %></td>
	<td><%= name %></td>
	<td><%= regidate %></td>
	</tr>
<%
}
%>		
	</tbody>	
</table>

<%
jdbc.close();
%>

</body>
</html>