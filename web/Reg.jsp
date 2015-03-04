<%-- 
    Document   : Reg.jsp
    Created on : Aug 29, 2014, 6:50:39 PM
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
      <li ><a  href="Home.jsp">Home</a></li>
      <li><a href="Login.jsp">Login</a></li>
      <li><a href="Diagnosis.jsp">Diagnosis</a></li>
      <li><a href="#">Emergency</a></li>
      <li class="active"><a href="Reg.jsp">Register</a></li>
      <li><a href="#">Announcements</a></li>
      <li><a href="#">Data View</a></li>
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
        
     
    
        
  <form class="form-horizontal" style="width: 50%" action="Register.do">
  <fieldset>
    <legend>Registration Form</legend>
    <div class="form-group">
      <label for="inputName" class="col-lg-2 control-label">Name</label>
      <div class="col-lg-10">
          <input type="text" name="name" value="${param.name}" class="form-control" id="inputName" placeholder="Name">
      </div>
    </div>
    <div class="form-group">
      <label for="inputAge" class="col-lg-2 control-label">Age</label>
      <div class="col-lg-10">
        <input type="text" name="age" value="${param.age}" class="form-control" id="inputAge" placeholder="Age">
      </div>
    </div>
    <div class="form-group">
      <label class="col-lg-2 control-label">Gender</label>
      <div class="col-lg-10">
        <div class="radio">
          <label>
            <input type="radio" name="sex" id="optionsRadios1" value="Male" checked="true">
            Male
          </label>
        </div>
        <div class="radio">
          <label>
            <input type="radio" name="sex" id="optionsRadios2" value="Female">
            Female
          </label>
        </div>
      </div>
    </div>
    <div class="form-group">
      <label for="inputBloodGroup" class="col-lg-2 control-label">Blood Group</label>
      <div class="col-lg-10">
        <input type="text" name="bloodgrp" value="${param.bloodgrp}" class="form-control" id="inputBloodGroup" placeholder="Eg: O+,AB-">
      </div>
    </div>
    <div class="form-group">
      <label for="inputBP" class="col-lg-2 control-label">Blood Pressure</label>
      <div class="col-lg-10">
        <input type="text" name="bp" value="${param.bp}" class="form-control" id="inputBP" placeholder="180/70">
      </div>
    </div>
    <div class="form-group">
      <label for="inputSL" class="col-lg-2 control-label">Sugar Level</label>
      <div class="col-lg-10">
        <input type="text" name="sugar" value="${param.sugar}" class="form-control" id="inputSL" placeholder="Sugar Level">
      </div>
    </div>
    <div class="form-group">
      <label for="inputHeight" class="col-lg-2 control-label">Height</label>
      <div class="col-lg-10">
        <input type="number" name="height" value="${param.height}" class="form-control" id="inputHeight" placeholder="Height in cm">
      </div>
    </div>
    <div class="form-group">
      <label for="inputWeight" class="col-lg-2 control-label">Weight</label>
      <div class="col-lg-10">
        <input type="number" name="weight" value="${param.weight}" class="form-control" id="inputWeight" placeholder="Weight in kg">
      </div>
    </div>
    <div class="form-group">
      <label for="inputPhone" class="col-lg-2 control-label">Phone</label>
      <div class="col-lg-10">
          <input type="number" name="phone" value="${param.phone}" class="form-control" id="inputPhone" placeholder="Eg: 9876543210">
      </div>
    </div>
    <div class="form-group">
        <label for="inputuname" class="col-lg-2 control-label">User I.D</label>
        <div class="col-lg-10">
            <input type="email" name="email" value="${param.email}" class="form-control"id="userId" placeholder="example@abc.com">
        </div>
    </div>
    <div class="form-group">
      <label for="inputPassword" class="col-lg-2 control-label">Password</label>
      <div class="col-lg-10">
        <input type="password" name="password" value="${param.password}" class="form-control" id="inputPassword" placeholder="">
      </div>
    </div>
    
    <div class="form-group">
      <label for="textArea" class="col-lg-2 control-label">Address</label>
      <div class="col-lg-10">
          <input type="text" name="address" value="${param.address}" class="form-control" id="inputAddress" placeholder="address" />
          <span class="help-block">Additional Comments</span>
      </div>
    </div>
    
   
    <div class="form-group">
      <div class="col-lg-10 col-lg-offset-2">
        <button class="btn btn-default">Cancel</button>
        <button type="submit" class="btn btn-primary">Submit</button>
      </div>
    </div>
    
    
      </fieldset>
</form>    
        
        
        
        
        
        
        
        
        
        
        
        
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