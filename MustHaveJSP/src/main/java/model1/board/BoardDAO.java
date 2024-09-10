package model1.board;

import java.util.Map;

import common.JDBConnect;
import jakarta.servlet.ServletContext;

public class BoardDAO extends JDBConnect {

	public BoardDAO(ServletContext application) {
		super(application);
		// TODO Auto-generated constructor stub
	}
	
	//검색조건에 맞는 데이터수
	public int selectCount(Map<String,Object> map) {
		int totalCount = 0;
		
		String query = "SELECT count(num) FROM board ";
		if (map.get("searchWord") != null) {
			query += " WHERE " + map.get("searchField") + " " +
		             " LIKE '%" + map.get("searchWord")+"%' ";    
		}
		
		try {
			
			stmt = con.createStatement();
			rs   = stmt.executeQuery(query);
			rs.next();
			totalCount = rs.getInt(1);
			
		} catch(Exception e) {
			System.out.println("게시물 수를 구하는 중 예외발생");
			e.printStackTrace();
		}		
		
		return totalCount;
	}
	
	//검색조건에 맞는 데이터목록
	

}
