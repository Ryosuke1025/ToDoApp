<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*, java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
Class.forName("com.mysql.jdbc.Driver"); 
Connection db =DriverManager.getConnection("jdbc:mysql://localhost/stu0729?user=stu0729&password=stu0729");
String str_id = request.getParameter("id");
PreparedStatement ps = db.prepareStatement("DELETE FROM events WHERE id ="+Integer.parseInt(str_id));
ps.executeUpdate();
%>
 
<HTML>
<HEAD>
<META CHARSET="UTF-8" />
<TITLE>INSERT</TITLE>
</HEAD>
<BODY>
<% out.print("削除");%><BR>
</BODY>
</HTML>
 
<%
ps.close();
db.close();
%>