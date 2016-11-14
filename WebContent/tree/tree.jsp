<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
    import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    <%
    String driver = "org.gjt.mm.mysql.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/bingsu12";
    String id = "bingsu12";
    String pwd = "0911";
    String test = "test";
    try {
        Class.forName(driver);
        System.out.println("드라이버 로딩성공");
       } catch (ClassNotFoundException cne) {
        System.out.println("드라이버 못찾음");
       }
    
    try {
        Connection con = null;
        Statement stat = null;
        ResultSet rs = null;
        
        con = DriverManager.getConnection(dbUrl, id, pwd);
        stat = con.createStatement();
        
        String query = "SELECT * FROM member"; 

        rs = stat.executeQuery(query); 

        // 현재 존재하는 DB 종류를 알아오는 쿼리 
       
		int i =0;
		int x =0;
        while(rs.next()){
        	if(rs.getString("id").equals("idtest1")){
        		i++;%>
        		<div id="sr_<%=i %>"><%=rs.getString("id") %></div>
        	<%}else{x++;%>
        		<div id="jasr_<%=x %>"><%=rs.getString("id") %></div>	
        	<%}
        	System.out.println(rs.getString("id"));
        }
       
 
    } catch (SQLException sqex) {
        System.out.println("SQLException: " + sqex.getMessage());
        System.out.println("SQLState: " + sqex.getSQLState());
    }


%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>