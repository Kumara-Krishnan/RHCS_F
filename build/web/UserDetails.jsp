<%-- 
    Document   : UserDetails
    Created on : 04-Apr-2015, 08:04:55
    Author     : kumara krishnan
--%>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
    String name = "";
    int age = 0;
    int bp = 0;
    int sugar = 0;
    int height = 0;
    int weight = 0;
    long phone = 0;
    String sex = "";
    String bloodgrp = "";
    String password = "";
    String address = "";
    String email = "";
    Cookie c[] = request.getCookies();
    for (Cookie d : c) {
        System.out.println(d.getName());
        if (d.getName().equals("user")) {
            email = d.getValue();
        }
    }

    //performs data fetch from registration db
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://127.11.163.130:3306/app", "adminBSfktw2", "D71pQxHI8nmP");
        Statement s;
        ResultSet rs;
        String pass = null;
        s = con.createStatement();
        rs = s.executeQuery("select * from registration where email='" + email + "';");
        while (rs.next()) {
            email = rs.getString("email");
            name = rs.getString("name");
            age = rs.getInt("age");
            sex = rs.getString("sex");
            bloodgrp = rs.getString("bloodgroup");
            bp = rs.getInt("bp");
            sugar = rs.getInt("sugar");
            phone = rs.getLong("phone");
            height = rs.getInt("height");
            weight = rs.getInt("weight");
            password = rs.getString("password");
            address = rs.getString("address");
        }
    } catch (Exception ex) {
        //catch exception
    }
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up</title>
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
                <a class="navbar-brand" href="Home.jsp">RHCS</a>
            </div>
            <div class="navbar-collapse collapse navbar-inverse-collapse">
                <ul class="nav navbar-nav">
                    <li ><a  href="Home.jsp">Home</a></li>
                    <li><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="Emergency.jsp">Emergency</a></li>
                    <li class="active"><a href="UserDetails.jsp"><%=email%></a></li>
                    <li><a href="Announcements.jsp">Announcements</a></li>
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




        <form class="form-horizontal" id="commentForm" style="width: 50%" method="POST" action="Update.do">
            <fieldset>
                <legend>User Details</legend>
                <div class="form-group">
                    <label for="inputName" class="col-lg-2 control-label">Name</label>
                    <div class="col-lg-10">
                        <input type="text" name="name" disabled="true" value="<%=name%>" class="form-control" id="cname" minlength="2" required="true" placeholder="Name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputAge" class="col-lg-2 control-label">Age</label>
                    <div class="col-lg-10">
                        <input type="text" name="age" value="<%=age%>" class="form-control" id="inputAge" required="true" placeholder="Age">
                    </div>
                </div>
                <div class="form-group">
                    <label class="col-lg-2 control-label">Gender</label>
                    <div class="col-lg-10">
                        <input type="text" name="sex" value="<%=sex%>" disabled="true" class="form-control" id="inputSex" required="true" placeholder="Sex">   
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputBloodGroup" class="col-lg-2 control-label">Blood Group</label>
                    <div class="col-lg-10">
                        <input type="text" name="bloodgrp" value="<%=bloodgrp%>" class="form-control" id="inputBloodGroup" placeholder="Eg: O+,AB-">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputBP" class="col-lg-2 control-label">Blood Pressure</label>
                    <div class="col-lg-10">
                        <input type="text" name="bp" value="<%=bp%>" class="form-control" id="inputBP" placeholder="180/70">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputSL" class="col-lg-2 control-label">Sugar Level</label>
                    <div class="col-lg-10">
                        <input type="text" name="sugar" value="<%=sugar%>" class="form-control" id="inputSL" placeholder="Sugar Level">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputHeight" class="col-lg-2 control-label">Height</label>
                    <div class="col-lg-10">
                        <input type="number" name="height" value="<%=height%>" class="form-control" id="inputHeight" placeholder="Height in cm">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputWeight" class="col-lg-2 control-label">Weight</label>
                    <div class="col-lg-10">
                        <input type="number" name="weight" value="<%=weight%>" class="form-control" id="inputWeight" placeholder="Weight in kg">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPhone" class="col-lg-2 control-label">Phone</label>
                    <div class="col-lg-10">
                        <input type="number" name="phone" value="<%=phone%>" class="form-control" id="inputPhone" placeholder="Eg: 9876543210">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputuname" class="col-lg-2 control-label">User I.D</label>
                    <div class="col-lg-10">
                        <input type="email" name="email" disabled="true" value="<%=email%>" class="form-control" id="cemail" required="true" placeholder="example@abc.com">
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword" class="col-lg-2 control-label">Password</label>
                    <div class="col-lg-10">
                        <input type="password" name="password" value="<%=password%>" class="form-control" id="inputPassword" placeholder="">
                    </div>
                </div>

                <div class="form-group">
                    <label for="textArea" class="col-lg-2 control-label">Address</label>
                    <div class="col-lg-10">
                        <input type="text" name="address" value="<%=address%>" class="form-control" id="inputAddress" placeholder="address" />
                        <span class="help-block">Additional Comments</span>
                    </div>
                </div>


                <div class="form-group">
                    <div class="col-lg-10 col-lg-offset-2">
                        <button type="submit" class="btn btn-primary">Update</button>
                    </div>
                </div>


            </fieldset>
        </form>    












        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="rescources/js/jquery.validate.js" type="text/javascript"></script>
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

        <script>
            $().ready(function () {
                // validate the comment form when it is submitted
                $("#commentForm").validate();

            });
        </script>
    </body>
</html>
