<%@page import="common.Person"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<h4>인크루드 페이지</h4>

<p><%= pageContext.getAttribute("pageInteger")%></p>
<p><%= pageContext.getAttribute("pageString")%></p>
<%
Person person2 = (Person)pageContext.getAttribute("pagePerson");
out.print("이름:"+person2.getName()+",나이:"+ person2.getAge());
%><br/>

<h4>-----------------------</h4>    