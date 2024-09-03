<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form method="post" action="B.jsp">
<input type="text" name="id"/>
<input type="text" name="pwd"/><br/>
<!-- 라이오버튼 -->
요일<br/>
<input type="radio" name="week" value="sun" />일
<input type="radio" name="week" value="mon" />월
<input type="radio" name="week" value="tue" />화
<input type="radio" name="week" value="wed" />수
<input type="radio" name="week" value="thu" />목
<input type="radio" name="week" value="fri" />금
<input type="radio" name="week" value="sat" />토
<br />
<!-- 체크박스 -->
<!-- 선택박스 -->
<input type="submit" value="전송"/>
</form>

</body>
</html>