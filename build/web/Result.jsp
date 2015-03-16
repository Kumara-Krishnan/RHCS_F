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
        <title>Result</title>
        <script>
            (function (i, s, o, g, r, a, m) {
                i['GoogleAnalyticsObject'] = r;
                i[r] = i[r] || function () {
                    (i[r].q = i[r].q || []).push(arguments)
                }, i[r].l = 1 * new Date();
                a = s.createElement(o),
                        m = s.getElementsByTagName(o)[0];
                a.async = 1;
                a.src = g;
                m.parentNode.insertBefore(a, m)
            })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

            ga('create', 'UA-60757234-1', 'auto');
            ga('send', 'pageview');

        </script>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
