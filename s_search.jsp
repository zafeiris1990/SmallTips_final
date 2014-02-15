<%-- 
    Document   : s_search
    Created on : 15 Φεβ 2014, 12:49:09 πμ
    Author     : Jim
--%>

<link rel="stylesheet" type="text/css" href="css/softwareCat.css">
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<%@ page import="java.io.*" %> 
<%  request.setCharacterEncoding("UTF-8");
     
    String search = request.getParameter("s_search");
    search = search.replace("\'","\'\'");
    
  Class.forName("com.mysql.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db?useUnicode=true&characterEncoding=UTF-8","root","******");
    Statement st = con.createStatement();

ResultSet rs = null;

Class.forName("com.mysql.jdbc.Driver").newInstance();


String QueryString = "SELECT * from s_posts WHERE s_post LIKE '%" + search + "%'";
rs = st.executeQuery(QueryString);
%>
<body background="images/hardware_background.jpg">
        <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
                  <h1><a href="index.jsp">Small Tips</a></h1>
           </FONT>
       </div>
    <div id="Header">
        <h1><b><a href="viewSoftwareTips.jsp">Software</a></b></h1>
    </div>  

<div id="homePage">
        <a href="index.jsp">Go back to Home page</a>.
</div>

<%
    if ((session.getAttribute("username") != null) ) {
%>
<div id="welcome">
    <FONT COLOR="#000000">
        <h3>Welcome <u><%=session.getAttribute("username")%></u></h3>
    </FONT>
</div>
    <% }
    %>
    
<form action="s_search.jsp" method="get"><input type="text" name="s_search" placeholder="search....." required=""></form>
    
<TABLE cellpadding="25" border="1" style="background-color: #FFFFFF;">
<TR>
<TH><h3>Username</h3></TH>
<TH><h3>Tip</h3></TH>
<%
    if ((session.getAttribute("username") != null)){
%>
<TH><h3>Rate</h3></TH>
<%}
 %>
</TR>

<%
while (rs.next()) {
    
%>
<TR>
<TD><%=rs.getString(2)%></TD>
<TD><%=rs.getString(3)%></TD>
<%
    if ((session.getAttribute("username") != null)){
%>
<TD><%=rs.getInt(4)%></TD>
</TR>
<% 
    }
} %>
<%
// close all the connections.
rs.close();
st.close();
con.close();
%>


</TABLE>
</font>
</body>
</html>
