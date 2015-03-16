<%-- 
    Document   : data
    Created on : Jan 30, 2015, 10:07:17 PM
    Author     : Kabilan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="rescources/css/bootstrap.css" type="text/css"/>
        <link href="rescources/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
       <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Home</title>
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
      <li><a href="Diag.jsp">Diagnosis</a></li>
      <li><a href="Emergency.jsp">Emergency</a></li>
      <li><a href="Reg.jsp">Register</a></li>
      <li><a href="Announcements.jsp">Announcements</a></li>
      <li class="active"><a href="Data.jsp">Data View</a></li>
    </ul>
    <form class="navbar-form navbar-left">
      <input type="text" class="form-control col-lg-8" placeholder="Search">
    </form>
  
   <ul class="nav navbar-nav navbar-right">
       <form class="navbar-form navbar-left">
      <button type="button" id="loading-example-btn" data-loading-text="Loading..." class="btn btn-primary">Log Out</button>
  
    </form>
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
        
        
        
        
        <div class="panel panel-primary">
  <div class="panel-heading">
    <h3 class="panel-title">Pie Chart</h3>
  </div>
  <div class="panel-body">
    <a href="pie1.do" class="btn btn-primary btn-lg">Disease vs Population</a>
  </div>
</div>       
        
            <div class="panel panel-success">
  <div class="panel-heading">
    <h3 class="panel-title">Geo Chart</h3>
  </div>
  <div class="panel-body">
    <a href="geo.jsp" class="btn btn-primary btn-lg">Area and Affected Population</a>
  </div>
</div>       
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
<script src="http://code.jquery.com/jquery-1.10.2.js"></script>
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.js"></script>
    <script>
      $(document).ready(function() {
          $("a.dropdown-toggle").click(function(ev) {
              $("a.dropdown-toggle").dropdown("toggle");
              return false;
          });
          $("ul.dropdown-menu a").click(function(ev) {
              $("a.dropdown-toggle").dropdown("toggle");
              return false;
          });
      });
    </script>  
    </body>
</html>