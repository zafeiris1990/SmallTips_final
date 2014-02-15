<%-- 
    Document   : register
    Created on : 19 Δεκ 2013, 2:49:34 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" type="text/css" href="css/register.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    
    <body background="images/images.jpg">
        
      <div id ="smallTips">
           <FONT COLOR="#FFFFFF">
                <h1><a href="index.jsp">Small Tips</a></h1>
           </FONT>
      </div>
        
         <div id="homePage">
            <a href="index.jsp">Go back to Home page</a>.
         </div>
        
        <form method="post" action="Reg">
            <center>
         <FONT COLOR="#FFFFFF">
            <table border="5" width="30%" cellpadding="10">
                <thead>
                    <tr>
                        <th colspan="2">Please fill this form.</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Your First Name(optional)</td>
                        <td><input type="text" name="firstName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Your Last Name(optional)</td>
                        <td><input type="text" name="lastName" value="" /></td>
                    </tr>
                    <tr>
                        <td>Username</td>
                        <td><input type="text" name="username" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="password" value="" required=""/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input type="email" name="email" value="" required="" placeholder="name@example.examlpe"/></td>
                    </tr>
                    <tr>
                        <td><input type="reset" value="Reset" /></td>
                        <td><input type="submit" value="Submit" /></td>    
                 
                   
                </tbody>
            </table>
            </center>
         </FONT>
        </form>
        <br>
                 <FONT COLOR="#FFFFFF"> <center>
                    <h3>If you have an account: <a href="index.jsp">Login Here</a></h3></center>
                 </FONT>
    </body>
</html>