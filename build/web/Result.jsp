<%-- 
    Document   : Result
    Created on : 19-Feb-2015, 02:13:00
    Author     : kumara krishnan
--%>

<%@page import="controllers.Output"%>
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
        String disease="";
        String advice="";
    Cookie c[] = request.getCookies();
    for (Cookie f : c) {
        System.out.println(f.getName());
        if (f.getName().equals("user")) {
            email = f.getValue();
        }
        if(f.getName().equals("dis")){
            disease=f.getValue();
        }
        if(f.getName().equals("adv")){
            advice=f.getValue();
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
        <title>Diagnosis Result</title>
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
    <body>


        <div class="navbar navbar-inverse">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-inverse-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="Home.jsp">RHCS</a>
            </div>
            <div class="navbar-collapse collapse navbar-inverse-collapse">
                <ul class="nav navbar-nav">
                    <li><a  href="Home.jsp">Home</a></li>
                    <li><a href="Login.jsp">Login</a></li>
                    <li><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="Emergency.jsp">Emergency</a></li>
                    <li><a href="UserDetails.jsp"><%=email%></a></li>
                    <li><a href="Announcements.jsp">Announcements</a></li>
                    <li><a href="Data.jsp">Data View</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="Search">
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>

        </div>
        <div style="padding:5px;" class="jumbotron col-md-5 col-lg-offset-1">
        
            <h3>Diagnosis Result</h3>
            <label><h3>You have been diagnosed with <%=Output.disease%> <br>Contact a general physician for medical advice.</h3><br><a href="emergency.jsp"  class="btn btn-warning btn-lg">Emergency</a></label>
            <br><h2>Video Conference With Physician.</h2><br>  <button class="btn btn-success btn-lg" id="startButton">Start</button>
      <button class="btn btn-primary btn-lg" id="callButton">Call</button>
      <button class="btn btn-danger btn-lg" id="hangupButton">Hang Up</button><br>
    <video style="width: 40%;" id="localVideo" autoplay muted></video>
    
    <video style="width: 40%;margin-left: 1%;" id="remoteVideo" autoplay></video>
    </div>
    

   
        </div>
<div style="padding:5px;" class="jumbotron col-md-3 col-lg-offset-1">
        <fieldset>
            <legend>Medical Advice</legend>
            <label>Please follow these instructions carefully:
                <ul>
                    
                </ul>
               Recommended Medication
                <ul>
                    <li><%=Output.advice%></li>
                </ul></label>
        </fieldset>
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
        <script src="rescources/js/adapter.js"></script>
  <script src="rescources/js/main.js"></script>
  <script src="../../../js/lib/ga.js"></script>
    </body>
</html>
