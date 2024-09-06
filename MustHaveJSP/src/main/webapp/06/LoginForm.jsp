<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인폼</title>
</head>
<body>
<h2>로그인페이지</h2>

<script>
function validateForm(form){
	if(!form.user_id.value){
		alert("아이디를 입력하세요");
		return false;
	}
	if(!form.user_pw.value){
		alert("비밀번호를 입력하세요");
		return false;
	}
}
</script>

<form action="LoginProcess.jsp" method="post" name="loginFrm"
   onsubmit="return validateForm(this);">
   아이디 : <input type = "text" name="user_id" /><br/>
   패스워드 : <input type = "text" name="user_pw"/><br/>
   <input type="submit" value = "로그인"/>
</form>   

</body>
</html>