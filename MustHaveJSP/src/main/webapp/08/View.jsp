<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	out.print(num);

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원제게시판 - 상세보기(View)</h2>
<form name="writeFrm">
<input type="text" name="num" value="<%=num %>"/>
<table border="1" width="90%">
	<tr>
		<td width="10%">번호</td>
		<td width="40%"></td>
		<td width="10%">작성자</td>
		<td width="40%"></td>
	</tr>
	<tr>
		<td>작성일</td>
		<td></td>
		<td>조회수</td>
		<td></td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="3"></td>
	</tr>
	<tr>
		<td>내용</td>
		<td colspan="3"></td>
	</tr>
	<tr>
		<td colspan="4" align="center">
			<button type="button" onclick="">수정하기</button>
			<button type="button" onclick="">삭제하기</button>
			<button type="button" onclick="">목록보기</button>		
		</td>
	</tr>

</table>

</form>


</body>
</html>