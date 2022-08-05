<%@ page contentType="text/html; charset=UTF-8"
	import="java.sql.*, java.util.*" %>
<%
request.setCharacterEncoding("UTF-8");
//JDBCドライバの登録
Class.forName("com.mysql.jdbc.Driver"); 
//コネクションオブジェクトを取得
Connection db =DriverManager.getConnection("jdbc:mysql://localhost/stu0729?user=stu0729&password=stu0729");
String str_event = request.getParameter("event");
String str_year = request.getParameter("year");
String str_month = request.getParameter("month");
String str_date = request.getParameter("date");
String str_place = request.getParameter("place");
String str_day = str_year+"-"+str_month+"-"+str_date;
PreparedStatement ps = db.prepareStatement("INSERT INTO events(event_name, event_date, city) VALUES('"+str_event+"','"+str_day+"','"+str_place+"')");
ps.executeUpdate();
%>
 <HTML>
<HEAD>
<META CHARSET="UTF-8" />
<TITLE>INSERT</TITLE>
</HEAD>
<BODY>
追加しました<BR>
<a href="http://dius01.ksc.kwansei.ac.jp/network/students22/stu0729/report/events.jsp" target="_blank">トップページはこちら</a>
</BODY>
</HTML>
 <%
ps.close();
db.close();
%>