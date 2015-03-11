<%-- 
    Document   : login
    Created on : Feb 14, 2015, 9:23:32 PM
    Author     : Kabilan
--%>

<%@page isErrorPage="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Error</title>
    </head>
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
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="#">Emergency</a></li>
                    <li><a href="Reg.jsp">Register</a></li>
                    <li><a href="announce.jsp">Announcements</a></li>
                    <li><a href="data.jsp">Data View</a></li>
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
        <fieldset>
            <legend>Oops :( Something went wrong... Please try again...</legend>
        </fieldset>



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
    </body>
</html>
