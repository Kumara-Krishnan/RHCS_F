<%-- 
    Document   : Result
    Created on : 19-Feb-2015, 02:13:00
    Author     : kumara krishnan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session = request.getSession(false);
    if (session == null) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
        return;
    }
    String status = (String) session.getAttribute("status");
    if (status == null || !status.equals("valid")) {
        request.getRequestDispatcher("login.jsp").forward(request, response);
        return;
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
