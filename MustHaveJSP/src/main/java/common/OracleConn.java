package common;

import java.sql.Connection;
import java.sql.DriverManager;

public class OracleConn {
	public Connection con;
	
	public OracleConn() {
		try {
			//jdbc드라일버를 로드
			Class.forName("oracle.jdbc.OracleDriver");			
			//db연결
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String id  = "musthave";
			String pwd = "1234";
			con = DriverManager.getConnection(url, id, pwd);
			System.out.println("DB연결성공");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	public void close() {
		try{
			if(con != null) {con.close();}
			System.out.println("DB자원해제");					
		} catch(Exception e) {
			e.printStackTrace();			
		}
	}
}
