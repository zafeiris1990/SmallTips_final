<%-- 
    Document   : index
    Created on : 18 Δεκ 2013, 6:05:16 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/index.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Small Tips</title>    
    </head>
    
    <body background="images/images.jpg">
    
        <div id="created">
                <h3> Created by Dimitris Zafiris</h3>
        </div>
       
       <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
           <h1><a href="index.jsp">Small Tips</a></h1>
           </FONT>
       </div>
        
        <div id="view_categories">
                <FONT COLOR="#FFFFFF">
                <h1><u>Read our tips</u></h1>
                </FONT>
            </div>
                <div id="view_internetCat"
                 <h3>Internet:</h3><br>
                 <a href="viewInternetTips.jsp"><img id="con" src="images/internet.jpg" width="150" height="120"></a>
            </div>
            <div id="view_hardwareCat"
                 <h3>Hardware:</h3><br>
                 <a href="viewHardwareTips.jsp"><img id="con" src="images/hardware.jpg" width="150" height="120"></a>
            </div>
            <div id="view_softwareCat"
                 <h3>Software:</h3><br>
                 <a href="viewSoftwareTips.jsp"><img id="con" src="images/software.jpg" width="150" height="120"></a>
            </div>
        
<%
    if ((session.getAttribute("username") == null) || (session.getAttribute("username") == "")) {
%>
        
        <div id="register">
            <a href="register.jsp" ><h3>Register now!</h3></a> 
        </div>

        <div id="login">
        <form method="post" action="Log">
            <left>
            <table border="1" width="30%" cellpadding="3">
                <thead>
                    <tr>
                        <th colspan="2">Login</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>User Name</td>
                        <td><input type="text" name="username" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Login" /></td>
                    </tr>
                </tbody>
            </table>
            </left>
        </form>
        </div>
        
            <%} else {
            %>

            <div id="welcome">
            <FONT COLOR="#505050">
            <h3>Welcome <u><%=session.getAttribute("username")%></u></h3>
            </FONT>
            </div>
            
            <div id="logout">
                 <a href='logout.jsp'>Log out</a>
            </div>
                 
            <div id="write_categories">
                <FONT COLOR="#FFFFFF">
                <h1><u>Post your tip</u></h1>
                </FONT>
            </div>    
            <div id="write_internetCat"
                 <h3>Internet:</h3><br>
                 <a href="internetCat.jsp"><img id="con" src="images/write_internet.jpg" width="150" height="120"></a>
            </div>
            <div id="write_hardwareCat"
                 <h3>Hardware:</h3><br>
                 <a href="hardwareCat.jsp"><img id="con" src="images/write_hardware.jpg" width="150" height="120"></a>
            </div>
            <div id="write_softwareCat"
                 <h3>Software:</h3><br>
                 <a href="softwareCat.jsp"><img id="con" src="images/write_software.jpg" width="150" height="120"></a>
            </div>
            
<script LANGUAGE="JavaScript">
function GetCookie (user) { 
var arg = user + "="; 
var alen = arg.length; 
var clen = document.cookie.length; 
var i = 0; 
while (i < clen) {
var j = i + alen;   
if (document.cookie.substring(i, j) == arg)     
return getCookieVal (j);   
i = document.cookie.indexOf(" ", i) + 1;   
if (i == 0) break;  
} 
return null;
}
function SetCookie (user, value) { 
var argv = SetCookie.arguments; 
var argc = SetCookie.arguments.length; 
var expires = (argc > 2) ? argv[2] : null; 
var path = (argc > 3) ? argv[3] : null; 
var domain = (argc > 4) ? argv[4] : null; 
var secure = (argc > 5) ? argv[5] : false; 
document.cookie = user + "=" + escape (value) +
((expires == null) ? "" : ("; expires=" + expires.toGMTString())) +
((path == null) ? "" : ("; path=" + path)) + 
((domain == null) ? "" : ("; domain=" + domain)) +   
((secure == true) ? "; secure" : "");
}
function DeleteCookie (user) { 
var exp = new Date(); 
exp.setTime (exp.getTime() - 1);  
var cval = GetCookie (user); 
document.cookie = user + "=" + cval + "; expires=" + exp.toGMTString();
}
var expDays = 365;
var exp = new Date();
exp.setTime(exp.getTime() + (expDays*24*60*60*1000));
function timer(){
var counter = GetCookie('counter')
if(counter == null) {
SetCookie('counter','1')
return 1
}
else {
var newcounter = parseInt(counter) + 1;
DeleteCookie('counter')
SetCookie('counter',newcounter,exp)
return counter
   }
}
function getCookieVal(offset) {
var endstr = document.cookie.indexOf (";", offset);
if (endstr == -1)
endstr = document.cookie.length;
return unescape(document.cookie.substring(offset, endstr));
}
</script>

<div id="cookie">
<script LANGUAGE="JavaScript">

document.write("  You have logged in in this computer <b>" + timer() + "</b> times this year.");

</script> 
</div>
            
            
           <%
                }
            %>
          
    </body>
</html>