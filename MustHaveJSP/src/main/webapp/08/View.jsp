<%@page import="model1.board.BoardDTO"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	out.print(num);
	//DAO생성 DB연결
	BoardDAO dao = new BoardDAO(application);
	//조회수증가
	dao.updateVisitCount(num);
	
	//게시물 가져오기
	BoardDTO dto = dao.selectView(num);	
	
	//DB 연결끊기
	dao.close();

%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
function deletePost(){
	//정말삭제할래? 메지시
	var confirmed = confirm("정말로 삭세하시겠습니가?");
	//삭제 처릴할 경로 지정
	if(confirmed){
		var form = document.writeFrm;
		form.method = "post";
		form.action = "DeleteProcess.jsp";
		form.submit();		
	}
}
</script>
</head>
<body>
<jsp:include page="../common/Link.jsp" />
<h2>회원제게시판 - 상세보기(View)</h2>
<form name="writeFrm">
<input type="text" name="num" value="<%=num %>"/>
<table border="1" width="90%">
	<tr>
		<td width="10%">번호</td>
		<td width="40%"><%=dto.getNum() %></td>
		<td width="10%">작성자</td>
		<td width="40%"><%=dto.getName() %></td>
	</tr>
	<tr>
		<td>작성일</td>
		<td><%=dto.getPostdate() %></td>
		<td>조회수</td>
		<td><%=dto.getVisitcount() %></td>
	</tr>
	<tr>
		<td>제목</td>
		<td colspan="3"><%=dto.getTitle() %></td>
	</tr>
	<tr>
		<td>내용</td>
		<td colspan="3"><%=dto.getContent().replace("\r\n","<br/>") %></td>
	</tr>
	<tr>
		<td colspan="4" align="center">
		<%
		//세션id   작성자id비교
		if(session.getAttribute("UserId") != null &&
			session.getAttribute("UserId").toString().equals(dto.getId()) )
		{			
		
		%>
		
			<button type="button" onclick="">수정하기</button>
			<button type="button" onclick="deletePost();">삭제하기</button>
		<%
		}
		
		%>	
			
			<button type="button" onclick="">목록보기</button>		
		</td>
	</tr>

</table>

</form>


</body>
</html>