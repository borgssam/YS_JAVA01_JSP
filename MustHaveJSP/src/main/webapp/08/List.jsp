<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원제 게시판</title>
</head>
<body>

<h2>목록보기(List)</h2>

<form method="get">
	<table border="1" width="90%">
		<tr>
			<td align ="center">
				<select name="searcField">
					<option value = "title"> 제목 </option>
					<option value = "content"> 내용 </option>		
				</select>
				<input type="text" name="serachWord"/>
				<input type="submit" value="검색하기"/>
			</td>
		</tr>
	</table>
</form>
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
<tr>
<td colspan="5" align="center">등록된 게시물이 없습니다.</td>
</tr>
<tr>
	<td>1</td>
	<td>노인고바다</td>
	<td>헤밍웨이</td>
	<td>2</td>
	<td>2024-09-09</td>
</tr>
</tbody>
</table>

<table border="1" width="90%">
<tr align="right"><td ><button type="button" onclick="">글쓰기</button> </td></tr>
</table>
</body>
</html>