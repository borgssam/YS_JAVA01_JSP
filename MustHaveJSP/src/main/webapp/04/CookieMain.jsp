<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>쿠키설정</p>
<%
Cookie cookie = new Cookie("myCookie", "쿠키맛나요"); 
cookie.setPath(request.getContextPath());
cookie.setMaxAge(3600); /* //1시간 */
response.addCookie(cookie);
response.addCookie(cookie);
%>


<p>쿠키설정확인</p>
<%
Cookie[] cookies = request.getCookies();
if(cookies != null){
	for(Cookie c : cookies){
		String cookieName = c.getName();
		String cookieValue = c.getValue();
        //String cookieValue= java.net.URLDecoder.decode(c.getValue(), "UTF-8");
        
		
/* 		out.println(String.format("%s : %s<br/>", cookieName, cookieValue)); */
        out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
	}
}
%>
</body>
</html>