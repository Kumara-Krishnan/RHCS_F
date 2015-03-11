<%-- 
    Document   : Diagnosis
    Created on : Feb 18, 2015, 11:05:44 AM
    Author     : Kabilan
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

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
    <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css" media="screen"/>
    <script src="rescources/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="rescources/js/bootswatch.js" type="text/javascript"></script>
    <script src="rescources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script> 
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
</head>



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
            <li class="active" ><a href="Diag.jsp">Diagnosis</a></li>
            <li><a href="#">Emergency</a></li>
            <li><a href="Reg.jsp">Register</a></li>
            <li><a href="announce.jsp">Announcements</a></li>
            <li><a href="data.jsp">Data View</a></li>
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
<form name="input" action="Diagnosis.do">


    <ul class="nav nav-tabs">
        <li class="active"><a href="#head" data-toggle="tab">Head</a></li>
        <li><a href="#chest" data-toggle="tab">Chest</a></li>
        <li><a href="#back" data-toggle="tab">Back</a></li>
        <li><a href="#legs" data-toggle="tab">Legs</a></li>



    </ul>


    <div id="myTabContent" class="tab-content">
        <div class="tab-pane fade active in" id="head">
            <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="forehead1">
                        <h4 class="panel-title">
                            <a style="list-style: none" data-toggle="collapse" data-parent="#accordion" href="#forehead" aria-expanded="true" aria-controls="collapseOne">
                                Forehead
                            </a>
                        </h4>
                    </div>
                    <div id="forehead" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div  id="ckgrp1" class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input id="a" name="a" type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input id="b" name="b" type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input id="c" name="c" type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="backhead1">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#backhead" aria-expanded="false" aria-controls="collapseTwo">
                                Backhead
                            </a>
                        </h4>
                    </div>
                    <div id="backhead" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#neck" aria-expanded="false" aria-controls="collapseThree">
                                Neck
                            </a>
                        </h4>
                    </div>
                    <div id="neck" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
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
                                Forehead
                            </a>
                        </h4>
                    </div>
                    <div id="forehead11" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input onchange="click1()" type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="backhead1">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion2" href="#backhead11" aria-expanded="false" aria-controls="collapseTwo">
                                Backhead
                            </a>
                        </h4>
                    </div>
                    <div id="backhead11" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
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
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
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
                                Forehead
                            </a>
                        </h4>
                    </div>
                    <div id="forehead22" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input onchange="click1()" type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="backhead1">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#backhead22" aria-expanded="false" aria-controls="collapseTwo">
                                Backhead
                            </a>
                        </h4>
                    </div>
                    <div id="backhead22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading" role="tab" id="headingThree">
                        <h4 class="panel-title">
                            <a class="collapsed" data-toggle="collapse" data-parent="#accordion3" href="#neck22" aria-expanded="false" aria-controls="collapseThree">
                                Neck
                            </a>
                        </h4>
                    </div>
                    <div id="neck22" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                        <div class="panel-body">
                            <div class="btn-group" data-toggle="buttons">
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Head Ache
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Dizziness
                                </label>
                                <label class="btn btn-primary">
                                    <input type="checkbox" autocomplete="off"> Nausea
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tab-pane fade" id="legs">
            <p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy art party before they sold out master cleanse gluten-free squid scenester freegan cosby sweater. Fanny pack portland seitan DIY, art party locavore wolf cliche high life echo park Austin. Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out farm-to-table VHS viral locavore cosby sweater.</p>
        </div>
    </div>
    <input type="submit" value="diagnose">



</form>



<script src="rescources/js/bootstrap.min.js" type="text/javascript"></script>
<script src="rescources/js/bootswatch.js" type="text/javascript"></script>
<script src="rescources/js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script> 


