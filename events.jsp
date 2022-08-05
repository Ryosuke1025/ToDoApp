<%@ page contentType="text/html; charset=UTF-8"
	import="java.io.*, java.util.*"
    import="java.sql.*" 
%>

<%
//JDBCドライバの登録
Class.forName("com.mysql.jdbc.Driver"); 
//コネクションオブジェクトを取得
Connection db =DriverManager.getConnection("jdbc:mysql://localhost/stu0729?user=stu0729&password=stu0729");
//SQLコマンド文字列を作成
PreparedStatement ps = db.prepareStatement("SELECT * FROM events");
//問い合わせを実行し、リザルトセットオブジェクトを取得
ResultSet rs= ps.executeQuery();
%>

<!DOCTYPE HTML>
<HTML>
<HEAD>
<META CHARSET="UTF-8" />
<TITLE>eventsの表示</TITLE>
</HEAD>
<BODY>
<H1>イベント一覧</H1>
<button type=“button” onclick="location.href='http://dius01.ksc.kwansei.ac.jp/network/students22/stu0729/report/A6_2-in.jsp'">追加</button>
<button type=“button” onclick="location.href='http://dius01.ksc.kwansei.ac.jp/network/students22/stu0729/report/A6_3-in.jsp'">削除</button>
<TABLE BORDER="1">
<TR>
 <TH>ID</TH>
 <TH>イベント</TH>
 <TH>日程</TH>
 <TH>開催地</TH>
</TR>
<% while(rs.next()){ %>
<TR>
 <%
    String id = rs.getString("id");
    String event_name = rs.getString("event_name");
    String event_date = rs.getString("event_date");
    String city = rs.getString("city");
    String arr[] = event_date.split("-");
    int year = Integer.parseInt(arr[0]);
    int month = Integer.parseInt(arr[1]);
    int day = Integer.parseInt(arr[2]);
    Calendar day1 = new GregorianCalendar();
    Calendar day2=new GregorianCalendar(year, month-1, day);
    long days = (day2.getTimeInMillis() - day1.getTimeInMillis())/1000/60/60/24;
    
    if(days<0){
        out.println("<TD><FONT COLOR=\"red\">" + id + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"red\">" + event_name + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"red\">" + event_date + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"red\">" + city + "</FONT></TD>");
    }else{
        out.println("<TD><FONT COLOR=\"blue\">" + id + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"blue\">" + event_name + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"blue\">" + event_date + "</FONT></TD>");
        out.println("<TD><FONT COLOR=\"blue\">" + city + "</FONT></TD>");
    }
%>
</TR>
<% } %>
</TABLE>
</BODY>
</HTML>
 
<%
rs.close();
ps.close();
db.close();
%>