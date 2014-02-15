<%-- 
    Document   : internetCat
    Created on : 4 Ιαν 2014, 8:19:42 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<%
    if ((session.getAttribute("username") != null) ) {
%>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/softwareCat.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Software Category</title>
    </head>
    <body background="images/software_background.jpg" >
        
      <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
                  <h1><a href="index.jsp">Small Tips</a></h1>
           </FONT>
      </div>
      <div id="Header">
        <h1><b>Software</b></h1>
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
        
        <br>
         <div id="software_post">
        <form action="addSoftwareTips.jsp" method="post">
        <p>Add your tip here... </p><br>
        <textarea name="s_post" placeholder="Type your text here..." cols="25" rows="5" required/></textarea><br>
        <input type="submit" value="Sumbit"/>
        </form>
       </div>
        
        
    </body>
</html>
<%}
    else{
        response.sendRedirect("index.jsp");
    }
%>