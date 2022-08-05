<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE HTML>
<HTML><HEAD>
<META CHARSET="UTF-8">
<TITLE>入力画面</TITLE>
</HEAD>
<BODY>
<FORM ACTION="A6_2-out.jsp" METHOD="Post">
入力画面<BR>
<TABLE>
<TR><TD>イベント名</TD><TD><INPUT TYPE="text" NAME="event"></TD></TR>
<TR><TD>年月日</TD><TD><INPUT TYPE="text" NAME="year"></TD><TD><INPUT TYPE="text" NAME="month"></TD><TD><INPUT TYPE="text" NAME="date"></TD></TR>
<TR><TD>場所</TD><TD><INPUT TYPE="text" NAME="place"></TD></TR>
</TABLE>
<INPUT TYPE="submit" VALUE="追加"><BR>
</FORM>
</BODY>
</HTML>