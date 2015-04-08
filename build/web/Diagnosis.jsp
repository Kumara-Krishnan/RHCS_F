<%-- 
    Document   : Diagnosis
    Created on : Feb 18, 2015, 11:05:44 AM
    Author     : Kabilan
--%>
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
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="rescources/js/code.jquery.com_jquery-1.10.2.js" type="text/javascript"></script>
        <link rel="stylesheet" href="//code.jquery.com/ui/1.11.2/themes/smoothness/jquery-ui.css">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/> 
        <script src="rescources/js/netdna.bootstrapcdn.com_bootstrap_3.0.0_js_bootstrap.js" type="text/javascript"></script>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/> 
        <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
        <script src="http://code.jquery.com/ui/1.11.2/jquery-ui.js"></script>
        <link rel="stylesheet" href="/resources/demos/style.css">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Diagnosis</title>
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
                    <li><a href="login.jsp">Login</a></li>
                    <li class="active" ><a href="Diagnosis.jsp">Diagnosis</a></li>
                    <li><a href="#">Emergency</a></li>
                    <li><a href="UserDetails.jsp"><%=email%></a></li>
                    <li><a href="announce.jsp">Announcements</a></li>
                    <li><a href="data.jsp">Data View</a></li>
                </ul>
                <form class="navbar-form navbar-left">
                    <input type="text" class="form-control col-lg-8" placeholder="Search">
                </form>

                <ul class="nav navbar-nav navbar-right">
                    <form class="navbar-form navbar-left">
                        <button type="button" id="loading-example-btn" data-loading-text="Loading..." class="btn btn-primary">Log Out</button>

                    </form>

                </ul>
            </div>
        </div>
        <form name="input" action="Diagnosis.do" method="GET">


            <ul class="nav nav-tabs">
                <li class="active"><a href="#head" data-toggle="tab">Head</a></li>
                <li><a href="#chest" data-toggle="tab">Body</a></li>
                <li><a href="#back" data-toggle="tab">Back</a></li>



            </ul>


            <div id="myTabContent" class="tab-content">
                <div class="tab-pane fade active in" id="head">
                    <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="forehead1">
                                <h4 class="panel-title">
                                    <a style="list-style: none" data-toggle="collapse" data-parent="#accordion" href="#forehead" aria-expanded="true" aria-controls="collapseOne">
                                        Eyes
                                    </a>
                                </h4>
                            </div>
                            <div id="forehead" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div  id="ckgrp1" class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input id="a" name="a" type="checkbox" autocomplete="off"> Irritation
                                        </label>
                                        <label class="btn btn-primary">
                                            <input id="b" name="b" type="checkbox" autocomplete="off"> Temporary Blindness
                                        </label>
                                        <label class="btn btn-primary">
                                            <input id="c" name="c" type="checkbox" autocomplete="off"> Yellowish Eyes
                                        </label>
                                        <label class="btn btn-primary">
                                            <input id="c" name="d" type="checkbox" autocomplete="off"> Cataract
                                        </label>          
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="backhead1">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#backhead" aria-expanded="false" aria-controls="collapseTwo">
                                        Nose
                                    </a>
                                </h4>
                            </div>
                            <div id="backhead" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="e" autocomplete="off"> Running Nose
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="f" autocomplete="off"> Clogged Nose
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="g" autocomplete="off"> Nosebleeds
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="h" autocomplete="off"> Bacterial Infection
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#neck" aria-expanded="false" aria-controls="collapseThree">
                                        Mouth
                                    </a>
                                </h4>
                            </div>
                            <div id="neck" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="i" autocomplete="off"> Sore Throat
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="j" autocomplete="off"> Cough
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="k" autocomplete="off"> Dry Cough
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="l" autocomplete="off"> Tastelessness
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="m" autocomplete="off"> Vomiting
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="chest">
                    <div class="panel-group" id="accordion2" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="forehead1">
                                <h4 class="panel-title">
                                    <a style="list-style: none" data-toggle="collapse" data-parent="#accordion2" href="#forehead11" aria-expanded="true" aria-controls="collapseOne">
                                        Fever
                                    </a>
                                </h4>
                            </div>
                            <div id="forehead11" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="n" autocomplete="off"> Head Ache
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="o" autocomplete="off"> Shivering
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="p" autocomplete="off"> Vomiting
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="backhead1">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#backhead11" aria-expanded="false" aria-controls="collapseTwo">
                                        Lungs
                                    </a>
                                </h4>
                            </div>
                            <div id="backhead11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="q" autocomplete="off"> Asthma
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="r" autocomplete="off"> Breathlessness
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="s" autocomplete="off"> Wheezing
                                        </label>

                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#neck11" aria-expanded="false" aria-controls="collapseThree">
                                        Neck
                                    </a>
                                </h4>
                            </div>
                            <div id="neck11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="t" autocomplete="off"> Head Ache
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="u" autocomplete="off"> Dizziness
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="v" autocomplete="off"> Nausea
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tab-pane fade" id="back">
                    <div class="panel-group" id="accordion3" role="tablist" aria-multiselectable="true">
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="forehead1">
                                <h4 class="panel-title">
                                    <a style="list-style: none" data-toggle="collapse" data-parent="#accordion3" href="#forehead22" aria-expanded="true" aria-controls="collapseOne">
                                        Upper Back
                                    </a>
                                </h4>
                            </div>
                            <div id="forehead22" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input onchange="click1()" name="w" type="checkbox" autocomplete="off"> Neck Pain
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="x" autocomplete="off"> Shoulder Pain
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="y" autocomplete="off"> Sprain
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="backhead1">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#backhead22" aria-expanded="false" aria-controls="collapseTwo">
                                        Lower Back
                                    </a>
                                </h4>
                            </div>
                            <div id="backhead22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="z" autocomplete="off"> Compression
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="aa" autocomplete="off"> Muscle Pain
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="ab" autocomplete="off"> Sprain
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" role="tab" id="headingThree">
                                <h4 class="panel-title">
                                    <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#neck22" aria-expanded="false" aria-controls="collapseThree">
                                        Hip
                                    </a>
                                </h4>
                            </div>
                            <div id="neck22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                <div class="panel-body">
                                    <div class="btn-group" data-toggle="buttons">
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="ac" autocomplete="off"> Joint Pain
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="ad" autocomplete="off"> Dislocation
                                        </label>
                                        <label class="btn btn-primary">
                                            <input type="checkbox" name="ae" autocomplete="off"> Sprain
                                        </label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="btn-group">
            <div class="btn btn-primary">
                <input  type="submit" style="background-color: #2780e3; border: none;" value="diagnose">
            </div></div>


    </form>
</body>
</html>