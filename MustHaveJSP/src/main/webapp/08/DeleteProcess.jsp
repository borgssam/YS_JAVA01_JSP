<%@page import="utils.JSFunction"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String num = request.getParameter("num");


BoardDAO dao = new BoardDAO(application);
int delResult = dao.deletePost(num);
dao.close();

if(delResult == 1){
	//성공하면 목록페이지로
	JSFunction.alertLocation("삭제성공", "List.jsp", out);	
} else {
	JSFunction.alertBack("삭제실패",out);	
}
%>
