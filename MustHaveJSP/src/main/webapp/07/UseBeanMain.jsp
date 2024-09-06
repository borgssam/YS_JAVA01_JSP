<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>자바빈즈생성하기</h2>
<jsp:useBean id="person" class="common.Person" scope="request"/>
<jsp:setProperty  name="person" property="name" value="임꺽정"/>
<jsp:setProperty  name="person" property="age" value="41"/>

<p>이름:<jsp:getProperty name="person" property="name"/></p>
<p>나이:<jsp:getProperty name="person" property="age"/></p>
---------------------------
<%
	Person p = new Person();
	p.setName("홍길동");
	p.setAge(20);	
%>
<p>이름:<%= p.getName() %>></p>
<p>나이:<%= p.getAge() %>></p>

</body>
</html>