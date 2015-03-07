<%-- 
    Document   : Home
    Created on : Aug 29, 2014, 5:56:24 PM
    Author     : Kabilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>

        <script src="rescources/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="rescources/js/bootswatch.js" type="text/javascript"></script>
        <script src="rescources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
    </head>
    <body>
        <!-- Live Chat -->

        <script type="text/javascript" defer="defer" src="https://mylivechat.com/chatinline.aspx?hccid=15109069"></script>
        <!-- Live Chat -->
        <!-- Facebook Script -->
        <div id="fb-root"></div>
        <script>(function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id))
                    return;
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));</script>

        <script>
            window.fbAsyncInit = function () {
                FB.init({
                    appId: '340049302862934',
                    xfbml: true,
                    version: 'v2.2'
                });
            };

            (function (d, s, id) {
                var js, fjs = d.getElementsByTagName(s)[0];
                if (d.getElementById(id)) {
                    return;
                }
                js = d.createElement(s);
                js.id = id;
                js.src = "//connect.facebook.net/en_US/sdk.js";
                fjs.parentNode.insertBefore(js, fjs);
            }(document, 'script', 'facebook-jssdk'));
        </script>
        <!-- Facebook Script -->

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
                    <li class="active" ><a  href="Home.jsp">Home</a></li>
                    <li><a href="login.jsp">Login</a></li>
                    <li><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="#">Emergency</a></li>
                    <li><a href="Reg.jsp">Register</a></li>
                    <li><a href="announce.jsp">Announcements</a></li>
                    <li><a href="data.jsp">Data View</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" value="${param.email}" placeholder="Search">
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <form class="navbar-form navbar-left">
                        <button type="button" id="loading-example-btn" data-loading-text="Loading..." class="btn btn-primary">Log Out</button>

                    </form>

                </ul>
            </div>
        </div>




        <div  class="jumbotron">
            <div  style="margin-left: 1%">
                <h1 style="color:crimson;">Rural Health Care System</h1>
                <p>The nature by itself is a highly complex arrangement of certain basic patterns like fibonacci, fractals, spirals, etc., Though these patterns have been identified and categorized, understanding their behavior has been a highly complex and challenging task. This system such natural patterns occuring in a natural medical anomaly are used to identify the disease that could affect a human being.<br>The system keeps track of new patterns and their geographical origin and issues a timely warning if a new epidemic outbreak is being detected. </p>
                <blockquote>
                    <p><strong><em>It has become appallingly obvious that our technology has exceeded our humanity.</em></strong></p>
                    <small>Albert Einstein<cite title="Source Title"> on Technological Advancements</cite></small>
                </blockquote>
                <!-- Facebook -->
                <div
                    class="fb-like"
                    data-share="true"
                    data-width="450"
                    data-show-faces="true">
                </div>

                <div class="fb-comments" data-href="http://developers.facebook.com/docs/plugins/comments/" data-numposts="5" data-colorscheme="light"></div>
                <div class="fb-like-box" data-href="https://www.facebook.com/landsandlands" data-colorscheme="light" data-show-faces="true" data-header="true" data-stream="false" data-show-border="true"></div>
                <!-- Facebook -->
                <p id="demo">Click the button to get your position:</p>

                <p><a  class="btn btn-primary btn-lg">Start</a>
                    <a class="btn btn-success btn-lg"  onclick="getLocation()">Track Location</a></p>

                <div id="mapholder"></div>

                <script>
                    var x = document.getElementById("demo");
                    function getLocation() {
                        if (navigator.geolocation) {
                            navigator.geolocation.getCurrentPosition(showPosition, showError);
                        } else {
                            x.innerHTML = "Geolocation is not supported by this browser.";
                        }
                    }
                    function showPosition(position) {
                        var latlon = position.coords.latitude + "," + position.coords.longitude;
                        var img_url = "http://maps.googleapis.com/maps/api/staticmap?center="
                                + latlon + "&zoom=14&size=400x300&sensor=false";
                        document.getElementById("mapholder").innerHTML = "<img src='" + img_url + "'>";
                    }
                    function showError(error) {
                        switch (error.code) {
                            case error.PERMISSION_DENIED:
                                x.innerHTML = "User denied the request for Geolocation."
                                break;
                            case error.POSITION_UNAVAILABLE:
                                x.innerHTML = "Location information is unavailable."
                                break;
                            case error.TIMEOUT:
                                x.innerHTML = "The request to get user location timed out."
                                break;
                            case error.UNKNOWN_ERROR:
                                x.innerHTML = "An unknown error occurred."
                                break;
                        }
                    }
                </script>


                <div class="alert alert-dismissable alert-warning">
                    <button type="button" class="close" data-dismiss="alert">×</button>
                    <h4>Important Announcement</h4>
                    <p><strong>EBOLA</strong> new disease outbreak in Africa. Treatment and cure unavailable. Precautions : <a href="#">Click Here</a></p>
                </div>        
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
    </body>
</html>