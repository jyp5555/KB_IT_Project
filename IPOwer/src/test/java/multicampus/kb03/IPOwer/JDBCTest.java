package multicampus.kb03.IPOwer;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;

import multicampus.kb03.IPOwer.dao.NewsFileDao;

public class JDBCTest {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try(Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE",
				"spring100",
				"spring")){
			System.out.println(con);
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	@Test
	public void testInsert() {
		try {
			NewsFileDao dao = new NewsFileDao();
			dao.insert();
			
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
//	@Test
//	public void testSelectByTitle() {
//		try {
//			NewsFileDao dao = new NewsFileDao();
//			dao.insert();
//			dao.selectByTitle("title");
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//	}
//	@Test
//	public void testSelect() {
//		try {
//			NewsFileDao dao = new NewsFileDao();
//			System.out.println( dao.selectAll());
//		}catch(Exception e) {
//			e.printStackTrace();
//		}
//		
//	}
	
	
}
