<%-- 
    Document   : announce
    Created on : Jan 2, 2015, 8:38:56 PM
    Author     : Kabilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    session = request.getSession(false);
    if (session == null) {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
        return;
    }
    String status = (String) session.getAttribute("status");
    if (status == null || !status.equals("valid")) {
        request.getRequestDispatcher("Login.jsp").forward(request, response);
        return;
    }
    String email = "";
    Cookie c[] = request.getCookies();
    for (Cookie d : c) {
        System.out.println(d.getName());
        if (d.getName().equals("user")) {
            email = d.getValue();
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Feeds</title>
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


        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">RHCS</a>
            </div>
            <div class="navbar-collapse collapse navbar-inverse-collapse">
                <ul class="nav navbar-nav">
                    <li><a  href="Home.jsp">Home</a></li>
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="Emergency.jsp">Emergency</a></li>
                    <li><a href="UserDetails.jsp"><%=email%></a></li>
                    <li class="active"><a href="Announcements.jsp">Announcements</a></li>
                    <li><a href="Data.jsp">Data View</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="Search">
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <form class="navbar-form navbar-left" action="LogOut.do">
                        <input type="submit" id="loading-example-btn" data-loading-text="Loading..." class="btn btn-primary" value="Log Out"/>

                    </form>

                </ul>
            </div>
        </div>
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script>
        <script>
            $(document).ready(function () {
                $("a.dropdown-toggle").click(function (ev) {
                    $("a.dropdown-toggle").dropdown("toggle");
                    return false;
                });
                $("ul.dropdown-menu a").click(function (ev) {
                    $("a.dropdown-toggle").dropdown("toggle");
                    return false;
                });
            });
        </script>  


        <div class="list-group">
            <script language="JavaScript" src="http://www.feedroll.com/rssviewer/feed2js.php?src=http%3A%2F%2Fwww.who.int%2Ffeeds%2Fentity%2Fcsr%2Fdon%2Fen%2Frss.xml&chan=y&desc=1&au=y&date=y&utf=y"  charset="UTF-8" type="text/javascript"></script>
        </div>


    </body>
</html>
