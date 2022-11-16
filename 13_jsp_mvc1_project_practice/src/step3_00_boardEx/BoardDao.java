package step3_00_boardEx;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BoardDao {
	
	
	private BoardDao() {}
	private static BoardDao Instance = new BoardDao();
	public static BoardDao getInstance() {
		return Instance;
	}
	
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public void getConnection() {
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/step3_board_ex?serverTimezone=UTC","root","root");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
	}
	
	
	public void getClose() {
		if (rs != null) try { rs.close(); } catch (SQLException e) { e.printStackTrace(); }
		if (pstmt != null) try { pstmt.close(); } catch (SQLException e) { e.printStackTrace(); }
		if (conn != null) try { conn.close(); } catch (SQLException e) { e.printStackTrace(); }
	}
	
	public void insertBoard(BoardDto boardDto) {
		
		try {
			getConnection();
			String sql = "INSERT INTO BOARD (WRITER,EMAIL,SUBJECT,PASSWORD,REG_DATE,READ_COUNT,CONTETN)";
				   sql += "VALUES (? , ? , ? , ? . NOW() , ? , ?)";	 
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardDto.getWriter());
			pstmt.setString(2, boardDto.getEmail());
			pstmt.setString(3, boardDto.getSubject());
			pstmt.setString(4, boardDto.getPassword());
			pstmt.setInt(6, boardDto.getReadCount());
			pstmt.setString(7, boardDto.getContent());
			pstmt.executeUpdate();
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			getClose();
		}
		
	}
	
	
	public ArrayList<BoardDto> getAllboard() {
		
		ArrayList<BoardDto> boardList = new ArrayList<BoardDto>();
		
		
		try {
			
			getConnection();
			pstmt = conn.prepareStatement("SELECT * FROM MEMBER");
			rs = pstmt.executeQuery();
			
			while (rs.next()) {
				BoardDto temp = new BoardDto();
				temp.setNum(rs.getInt("NUM"));
				temp.setWriter(rs.getString("WRITER"));
				temp.setEmail(rs.getString("EMAIL"));
				temp.setSubject(rs.getString("SUBJECT"));
				temp.setPassword(rs.getString("PASSWORD"));
				temp.setReadCount(rs.getInt("READ_COUNT"));
				temp.setContent(rs.getString("CONTENT"));
				
				boardList.add(temp);
			}
			
			return boardList;
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			
			
		}
		
		
		
		
		return boardList;
		
	}

	
}
