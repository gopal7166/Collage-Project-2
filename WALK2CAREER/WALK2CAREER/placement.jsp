<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="myerror1.jsp"%>

<%@ page import="com.info.service.*"%>
    <jsp:useBean id="stu" class="com.info.model.Student"/>

<!DOCTYPE html >
<html>
<head>
  <title>PLACEMENT</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
.affix {
      top: 0;
      width: 100%;
     margin-left:253px;
  }
  .affix + .container-fluid {
      padding-top: 70px;
  }


.tab1 {
    float: left;
    border: 1px solid #ccc;
    background-color: #f1f1f1;
    width: 18%;
    height: 100%;
    overflow-y: auto;
    min-width:15%;
    max-width:20%;
}

.tablinks1 {
    display: block;
    background-color: inherit;
    color: black;
    padding: 20px 70px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
    height:60px;
}

.tablinks1:hover {
    background-color: #ddd;
}

.tablinks1.active {
    background-color: black;
    color:white;
}




.tabcontent1 {
   
    border: 0px solid #ccc;
    width: 100%;
    border-left: none;
    height: 300%;
    min-width:80%;
    max-width:100%;
    
}




  </style>
</head>
<body>

<%

String email = request.getParameter("email");
stu.setEmail(email);
EmployeeService.feachvalue(stu);


%> 



<div class="tab1" style="position:fixed;width:20% ">
 
 <div style="background-color:#4dc6ff;height:50px;color:red">
 <i style="margin-left:80px;font-size:200%;">W2C</i>
 </div>
  <button class="tablinks1" onclick="openCity(event, 'lectures')" id="defaultOpen">LECTURES</button>
  <button class="tablinks1" onclick="openCity(event, 'notes')">NOTES</button>
  <button class="tablinks1" onclick="openCity(event, 'practice')">PRACTICE</button>
  <button class="tablinks1" onclick="openCity(event, 'doubt')">DOUBT</button>
  <button class="tablinks1" onclick="openCity(event, 'test')">TEST</button>
  

</div>


<div id="lectures"  class="tabcontent1">
<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:80px;width:80%;float:right;">
  <h2>LECTURES</h2>
    
<div style="float:right;margin-top:-50px">
      
       <form action ="MyAccount.jsp">
        
           
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
                  
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
        
     </div> 
        
</header>


<nav class="navbar navbar-inverse"  style="width:80%;float:right;">
  <ul class="nav navbar-nav"  >
    <li class="active" ><a data-toggle="pill" href="#appti1">APPTITUDE</a></li>
    <li><a data-toggle="pill" href="#reas1">REASONING</a></li>
    <li><a data-toggle="pill" href="#hr1">INTERVIEW</a></li>
    <li><a data-toggle="pill" href="#gd1">GROUP DISCUSSION</a></li>
    <li><a data-toggle="pill" href="#va1">VERBAL ABILITY</a></li>
    <li><a data-toggle="pill" href="#gk1">G.K</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="appti1" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>APPTITUDE</h1>
</div>

<div id="reas1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>REASSIONING</h1>
</div>

<div id="hr1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>INTERVIEW</h1>
  <div class="video-grid">
 <iframe src="https://www.youtube.com/embed/5Z3uzFtFNcQ" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/5c-7kkF-GXA" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/CrIgBbODc9A" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/bYC4Nkf1KH4" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/JXtr3GbDYHY" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/gVUYeYN4Tvk" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/857yXtPwEl0" allowfullscreen></iframe>

 </div>
  

  










</div>
<div id="gd1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GD</h1>
</div>

<div id="va1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>VA</h1>
</div>

<div id="gk1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GK</h1>


  <div class="video-grid">
 <iframe src="https://www.youtube.com/embed/YoNB3QjJNTs" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/htEXmRHjf5s" allowfullscreen></iframe>

 </div>

</div>
</div>
</div>


<div id="notes" class="tabcontent1">
<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:80px;width:80%;float:right;">
  <h2>NOTES</h2>
    
  <div style="float:right;margin-top:-50px">
      
        <form action ="MyAccount.jsp">
        
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
     </div> 
      
</header>


<nav class="navbar navbar-inverse"  style="width:80%;float:right;">
  <ul class="nav navbar-nav"  >
    <li class="active" ><a data-toggle="pill" href="#appti2">APPTITUDE</a></li>
    <li><a data-toggle="pill" href="#reas2">REASONING</a></li>
    <li><a data-toggle="pill" href="#hr2">INTERVIEW</a></li>
    <li><a data-toggle="pill" href="#gd2">GROUP DISCUSSION</a></li>
    <li><a data-toggle="pill" href="#va2">VERBAL ABILITY</a></li>
    <li><a data-toggle="pill" href="#gk2">G.K</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="appti2" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>APPTITUDE</h1>
</div>

<div id="reas2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>REASSIONING</h1>
</div>

<div id="hr2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>HR</h1>

</div>

<div id="gd2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GD</h1>
</div>

<div id="va2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>VA</h1>
</div>

<div id="gk2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GK</h1>
</div>
</div>

</div>



<div id="practice" class="tabcontent1">
<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:80px;width:80%;float:right;">
  <h2>PRACTICE</h2>
    
  <div style="float:right;margin-top:-50px">
      
        <form action ="MyAccount.jsp">
        <input type="hidden" name="email" value=<%=stu.getEmail()%>>
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
     </div> 
      
</header>


<nav class="navbar navbar-inverse"  style="width:80%;float:right;">
  <ul class="nav navbar-nav"  >
    <li class="active" ><a data-toggle="pill" href="#appti3">APPTITUDE</a></li>
    <li><a data-toggle="pill" href="#reas3">REASONING</a></li>
    <li><a data-toggle="pill" href="#hr3">INTERVIEW</a></li>
    <li><a data-toggle="pill" href="#gd3">GROUP DISCUSSION</a></li>
    <li><a data-toggle="pill" href="#va3">VERBAL ABILITY</a></li>
    <li><a data-toggle="pill" href="#gk3">G.K</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="appti3" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>APPTITUDE</h1>
</div>

<div id="reas3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>REASSIONING</h1>
</div>

<div id="hr3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>HR</h1>

</div>

<div id="gd3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GD</h1>
</div>

<div id="va3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>VA</h1>
</div>

<div id="gk3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>GK</h1>
</div>
</div>

</div>



<div id="doubt"  class="tabcontent1">

<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;width:80%;float:right;">
  <h2>DOUBT</h2>
<div style="float:right;margin-top:-50px">
      
        <form action ="MyAccount.jsp">
        <input type="hidden" name="email" value=<%=stu.getEmail()%>>   
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
        
     </div> 
          
  
</header>



</div>


<div id="test"  class="tabcontent1">

<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;width:80%;float:right;">
  <h2>TEST</h2>
<div style="float:right;margin-top:-50px">
      
        <form action ="MyAccount.jsp">
        <input type="hidden" name="email" value=<%=stu.getEmail()%>>   
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
     </div> 
          
  
</header>



</div>




<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent1");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks1");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace(" active", "");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>

<script>
$(document).ready(function(){
    /* affix the navbar after scroll below header */
    $(".navbar").affix({offset: {top: $("header").outerHeight(true)} });
});
</script>



</body>
</html>
