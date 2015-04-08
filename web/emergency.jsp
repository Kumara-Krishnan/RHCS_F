<%-- 
    Document   : emergency
    Created on : Apr 7, 2015, 1:44:58 PM
    Author     : Kabilan Senapathy
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
  <meta charset="utf-8">
  <meta name="description" content="WebRTC code samples">
  <meta name="viewport" content="width=device-width, user-scalable=yes, initial-scale=1, maximum-scale=1">
  <meta itemprop="description" content="Client-side WebRTC code samples">
  <meta itemprop="image" content="../../../images/webrtc-icon-192x192.png">
  <meta itemprop="name" content="WebRTC code samples">
  <meta name="mobile-web-app-capable" content="yes">
  <meta id="theme-color" name="theme-color" content="#ffffff">

  <base target="_blank">

  <title>Peer connection</title>

  <link rel="icon" sizes="192x192" href="../../../images/webrtc-icon-192x192.png">
  <link href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet" type="text/css">
  <link rel="stylesheet" href="../../../css/main.css" />
  <link rel="stylesheet" href="css/main.css" />

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
      <li class="active" ><a  href="Home.jsp">Home</a></li>
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
       <form class="navbar-form navbar-left">
      <button type="button" id="loading-example-btn" data-loading-text="Loading..." class="btn btn-primary">Log Out</button>
  
    </form>
     
    </ul>
  </div>
</div>
        
     
  <div id="container">

    <h1><a href="//webrtc.github.io/samples/" title="WebRTC samples homepage">EMERGENCY</a> <span> CONNECTION ESTABLISHED</span></h1>

    <video style="width: 40%;" id="localVideo" autoplay muted></video>
    
    <video style="width: 40%;margin-left: 1%;" id="remoteVideo" autoplay></video>
    

    <div>
        <button class="btn btn-success btn-lg" id="startButton">Start</button>
       <button class="btn btn-primary btn-lg" id="callButton">Call</button>
      <button class="btn btn-danger btn-lg" id="hangupButton">Hang Up</button><br>
    </div>

    


   

  </div>

  <script src="rescources/js/adapter.js"></script>
  <script src="rescources/js/main.js"></script>
  <script src="../../../js/lib/ga.js"></script>
</body>
</html>

