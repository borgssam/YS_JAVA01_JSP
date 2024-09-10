<%@page import="model1.board.BoardDTO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="model1.board.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//dao 게시판목록가져오기

//게시판 dao생성해서 db접속
BoardDAO dao = new BoardDAO(application);

//검색조건 map에 보관
String searchField = request.getParameter("searchField");
String searchWord  = request.getParameter("searchWord");

Map<String, Object> param = new HashMap<>();
if(searchWord != null){
	param.put("searchField", searchField);
	param.put("searchWord", searchWord);	
}

// 검색조건에 따른 게시판 목록 수 읽기
int totalCount = dao.selectCount(param);
out.print("검색결과:"+totalCount);
// 검색조건에 따른 게시판 목록 데이터 읽기
List<BoardDTO> boardLists = dao.selectList(param);

// db접속해제
%>    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
</head>
<body>

<!-- 메뉴 -->
<jsp:include page="../common/Link.jsp" />
<h2>목록보기(List)</h2>

<!-- 검색 -->
<form method="get">
	<table border="1" width="90%">
		<tr>
			<td align ="center">
				<select name="searchField">
					<option value = "title"> 제목 </option>
					<option value = "content"> 내용 </option>		
				</select>
				<input type="text" name="searchWord"/>
				<input type="submit" value="검색하기"/>
			</td>
		</tr>
	</table>
</form>
<!-- 목록 -->
<table border="1" width="90%">
<thead>
<tr>
<th width="10%">번호</th>
<th width="50%">제목</th>
<th width="15%">작성자</th>
<th width="10%">조회수</th>
<th width="15%">작성일</th>
</tr>
</thead>
<tbody>
<%
if(boardLists.isEmpty()) {		
%>
<tr>
<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
</tr>
<%
} else {
	int vitualNum = totalCount+1;
	for(BoardDTO dto: boardLists){
		vitualNum--;
%>
<tr>
	<td><%=vitualNum %></td>
	<td><%= dto.getTitle() %></td>
	<td><%= dto.getName() %></td>
	<td><%= dto.getVisitcount() %></td>
	<td><%= dto.getPostdate() %></td>
</tr>
<%
	}
}
%>


</tbody>
</table>

<table border="1" width="90%">
<tr align="right"><td ><button type="button" onclick="">글쓰기</button> </td></tr>
</table>
</body>
</html>