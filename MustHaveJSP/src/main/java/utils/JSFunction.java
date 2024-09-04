package utils;

import jakarta.servlet.jsp.JspWriter;

public class JSFunction extends CookieManager {
	//메시지알람창 -> 페이지 이동
	public static void alertLocation(String msg, String url, JspWriter out)
	{
		try {
			String script ="";
			script += "<script>";
			script += "alert('"+msg+"');";
			script += "location.href='"+url+"';";
			script += "</script>";	
			out.println(script);
		} catch(Exception e) {
			
		}
	}
		
	//메시지알람창 -> 이전페이지
	public static void alertBack(String msg, JspWriter out) {
		try {
			String script ="";
			script += "<script>";
			script += "alert('"+msg+"');";
			script += "history.back();";						
			script += "</script>";	
			out.println(script);
		} catch(Exception e) {
			
		}
	}
}
