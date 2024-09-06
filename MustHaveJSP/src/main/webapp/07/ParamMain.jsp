<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String pValue = "아기공룡";
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:forward page="ParamForward.jsp?param1=둘리" >
	<jsp:param name="param2" value="도봉구 쌍문동" />
	<jsp:param name="param3" value="<%=pValue %>" />
</jsp:forward>


</body>
</html>