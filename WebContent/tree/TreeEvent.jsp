<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"
	import="java.lang.*, java.util.*, java.sql.*, javax.sql.*, javax.naming.*, 
	java.io.FileInputStream, java.io.FileNotFoundException, java.io.IOException"
%>
<% response.setContentType("text/html; charset=euckr"); %>
<style type="text/css">
		.main_table{display:table-row;text-align:center;font-size:11;}
		.main_table_td{display:table-cell;border:1 solid black;text-align:center;font-size:11;background:#FAE1AF;}
		.table{display:table-row;text-align:center;font-size:11;}
		.table_sr_td{display:table-cell;border:1 solid black;text-align:center;font-size:11;background:#FAE1AF;}
		.table_jasr_td{display:table-cell;border:1 solid black;text-align:center;font-size:11;background:#FAF4C0;}
		.table_td{display:table-cell;border:1 solid black;text-align:center;font-size:11;background:#FAF4C0;}
		.table2{display:table-row;text-align:center;font-size:11;}
</style>

<script src="http://code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
		alert("a");
		//몇번째 SR DIV인지 판별
		var sr = this.id.substring(3,4);
		//sr div 인지 판별
		var sr_name = this.id.substring(0,2);
		
		if(sr_name == 'SR'){
			for(var i=1; i<10; i++){
				if(sr==i && sr !=''){
					$("#JASR_ST_"+i).show();
				}else if(sr!=i && sr !=''){
					$("#JASR_ST_"+i).hide();
				}
			}
		}
	}); 
</script>


<% 
	//Connection conn = null;
	//PreparedStatement pstmt = null;
	//ResultSet rs = null;
	Connection conn = null;
    Statement pstmt = null;
    ResultSet rs = null;
	String driver = "org.gjt.mm.mysql.Driver";
    String dbUrl = "jdbc:mysql://localhost:3306/bingsu12";
    String id = "bingsu12";
    String pwd = "0911";
    String test = "test";
	try{
		Class.forName(driver);
	//	Context ctx = new InitialContext();
	//	Context envContext = (Context)ctx.lookup("java:/comp/env");
	//	DataSource ds = (DataSource)envContext.lookup("jdbc/mssql");
	//	conn = ds.getConnection();
		
	//	Properties xml = new Properties();
	//	FileInputStream fis = null;
		
        
        conn = DriverManager.getConnection(dbUrl, id, pwd);
        pstmt = conn.createStatement();
        
        String query = "select gubun,main,seq,srname from treeevent order by seq"; 

        rs = pstmt.executeQuery(query); 
        /*
		try{
			fis = new FileInputStream("");
			xml.loadFromXML(fis);
			fis.close();
		}catch(IOException e){
				e.printStackTrace();
		}finally{
			
		}
		String sql = xml.getProperty("test");
		pstmt = conn.prepareStatement(sql);
		rs = pstmt.excuteQuery();
		*/
%>
	<div class="main_table">
		<div class="main_table_td" style="width:100">SR번호</div>
		<div class="main_table_td" style="width:500">SR이름</div>
		<div class="main_table_td" style="width:100">단계</div>
		<div class="main_table_td" style="width:100">테스트현황</div>
		<% 
			int srsum = 0;
			int jasrsum = 0;
			while(rs.next()){
			if(rs.getString("gubun").equals("SR")){ srsum++;
		%>
	</div>
	<div class="table">
		<div id="SR_<%=srsum%>" class="table_sr_td" style="width:100"><%=rs.getString("main")%></div>
		<div class="table_td" style="width:500"><%=rs.getString("srname")%></div>
		<div class="table_td" style="width:100">자SR개발</div>
		<div class="table_td" style="width:100">실행중</div>
	</div>
	<div id="JASR_ST_<%=srsum%>" style="display:none">
		
		<div class="table_td" style="width:100; background:#FAE1AF">자SR번호</div>
		<div class="table_td" style="width:300; background:#FAE1AF">자SR이름</div>
		<div class="table_td" style="width:98; background:#FAE1AF">테스트단계</div>
		<div class="table_td" style="width:98; background:#FAE1AF">단위테스트</div>
		<div class="table_td" style="width:100; background:#FAE1AF">통합테스트</div>
		<div class="table_td" style="width:100; background:#FAE1AF">인수테스트</div>
	</div>
<%
			}else if(rs.getString("gubun").equals("JASR")){ jasrsum++; %>
			<div class="table2" id="JASR_<%=jasrsum%>">
				<div class="table_jasr_td" style="width:100"><%=rs.getString("main") %></div>
				<div class="table_jasr_td" style="width:300"><%=rs.getString("srname") %></div>
				<div class="table_jasr_td" style="width:98">1</div>
				<div class="table_jasr_td" style="width:31">2</div>
				<div class="table_jasr_td" style="width:31">3</div>
				<div class="table_jasr_td" style="width:32">4</div>
				<div class="table_jasr_td" style="width:32">5</div>
				<div class="table_jasr_td" style="width:32">6</div>
				<div class="table_jasr_td" style="width:32">7</div>
				<div class="table_jasr_td" style="width:32">8</div>
				<div class="table_jasr_td" style="width:32">9</div>
				<div class="table_jasr_td" style="width:32">10</div>
				
			</div>	
			<%
				}
			}
}catch(Exception e){
	out.println(e.getMessage());
}finally{
	try{
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e){
		rs = null;
		pstmt = null;
		conn = null;
	}
}

%>




























