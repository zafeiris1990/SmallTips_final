<%-- 
    Document   : logout
    Created on : 19 Δεκ 2013, 9:43:34 μμ
    Author     : Jim
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
session.setAttribute("username", null);
session.invalidate();
response.sendRedirect("index.jsp");
%>
