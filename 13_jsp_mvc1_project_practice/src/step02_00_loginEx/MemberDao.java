package step02_00_loginEx;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class MemberDao {
	
	private MemberDao() {}
	private static MemberDao instance = new MemberDao();
	public static MemberDao getInstance() {
		return instance;
	}
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void getConnection () {
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/login_ex?serverTimezone=UTC", "root", "root");	
		} catch (Exception e) {
			e.printStackTrace();
		}
	
	}
	
	public void getClose () {
		
		try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
		try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
		
	}
	
	
	
	

}
