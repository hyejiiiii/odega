
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>

<%
	request.setCharacterEncoding("UTF-8");

	String user_id = request.getParameter("user_id");
	String user_pw = request.getParameter("user_pw");
	String user_name = request.getParameter("user_name");
	String nickname = request.getParameter("nickname");
	String birth= request.getParameter("birth");

	
	// 1.변수선언
	String url ="jdbc:oracle:thin:@192.168.219.123:1521/orcl";
	String user = "team01";
	String pw = "team";
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String sql = "insert into users values(?, ?, ?, ?, ?)";
	
	try{
		// 1. 드라이버 로드
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		// 2. conn 생성
		conn = DriverManager.getConnection(url, user, pw);
		
		// 3. pstmt 생성
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, user_id);
		pstmt.setString(2, user_pw);
		pstmt.setString(3, user_name);
		pstmt.setString(4, nickname);
		pstmt.setString(5, birth);
		
		
		// 4. sql문 실행
		int result = pstmt.executeUpdate();
		
		if(result == 1){ // 성공
			response.sendRedirect("join_succes.jsp");
		
		} else{ // 실패
			response.sendRedirect("join_fail.jsp");
		}
		
	} catch(Exception e){
		e.printStackTrace();
	} finally{
		try{
			if(conn != null) conn.close();
			if(pstmt != null) pstmt.close();
		} catch(Exception e){
			e.printStackTrace();
		}
	}
%>
    </body>
    
</html>