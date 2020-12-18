<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="myerror1.jsp"%>
 
 <%@ page import="com.info.service.*"%>
    <jsp:useBean id="stu" class="com.info.model.Student"/>   
    
<!DOCTYPE html >
<html>
<head>
  <title>GATE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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
  
  <div style="background-color:#4dc6ff;height:100px;color:red">
 <i style="margin-left:50px;font-size:400%;">W2C</i>
 </div>
 
  <button class="tablinks1" onclick="openCity(event, 'lectures')" id="defaultOpen">LECTURES</button>
  <button class="tablinks1" onclick="openCity(event, 'notes')">NOTES</button>
  <button class="tablinks1" onclick="openCity(event, 'practice')">PRACTICE</button>
  <button class="tablinks1" onclick="openCity(event, 'doubt')">DOUBT</button>
  <button class="tablinks1" onclick="openCity(event, 'test')">TEST</button>
  

</div>


<div id="lectures"  class="tabcontent1">

<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;width:80%;float:right;">
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
    <li class="active" ><a data-toggle="pill" href="#soft1">Software</a></li>
    <li><a data-toggle="pill" href="#data1">Database</a></li>
    <li><a data-toggle="pill" href="#os1">Operating System</a></li>
    <li><a data-toggle="pill" href="#auto1">Automata</a></li>
    <li><a data-toggle="pill" href="#cd1">Compiler Design</a></li>
    <li><a data-toggle="pill" href="#cn1">Computer Network</a></li>
    <li><a data-toggle="pill" href="#dld1">Digital Logic</a></li>
    <li><a data-toggle="pill" href="#co1">Computer Organization</a></li>
    <li><a data-toggle="pill" href="#ds1">Data Structure</a></li>
    <li><a data-toggle="pill" href="#algo1">Algorithm</a></li>
    <li><a data-toggle="pill" href="#dm1">Discrete Mathematics</a></li>
    <li><a data-toggle="pill" href="#ex1">Extra</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="soft1" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>Software</h1>
</div>

<div id="data1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Database</h1>
</div>

<div id="os1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Operating System</h1>

</div>

<div id="auto1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Automata</h1>
</div>

<div id="cd1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Compiler Design</h1>
</div>

<div id="cn1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Network</h1>
</div>

<div id="dld1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Digital Logic</h1>
</div>

<div id="co1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Organization</h1>
</div>
<div id="ds1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Data Structures</h1>
</div>
<div id="algo1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Algorithm</h1>
</div>

<div id="dm1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Discrete Mathematics</h1>
</div>

<div id="ex1" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>extra</h1>
</div>

</div>

</div>


<div id="notes" class="tabcontent1">
<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;width:80%;float:right;">
  <h2>NOTES</h2>
    <div style="float:right;margin-top:-50px">
      
        <form action ="MyAccount.jsp">
        <input type="hidden" name="email" value=<%=stu.getEmail()%>>   
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
     </div> 
      
  
</header>


<nav class="navbar navbar-inverse"  style="width:80%;float:right;">
  <ul class="nav navbar-nav"  >
    <li class="active" ><a data-toggle="pill" href="#soft2">Software</a></li>
    <li><a data-toggle="pill" href="#data2">Database</a></li>
    <li><a data-toggle="pill" href="#os2">Operating System</a></li>
    <li><a data-toggle="pill" href="#auto2">Automata</a></li>
    <li><a data-toggle="pill" href="#cd2">Compiler Design</a></li>
    <li><a data-toggle="pill" href="#cn2">Computer Network</a></li>
    <li><a data-toggle="pill" href="#dld2">Digital Logic</a></li>
    <li><a data-toggle="pill" href="#co2">Computer Organization</a></li>
    <li><a data-toggle="pill" href="#ds2">Data Structure</a></li>
    <li><a data-toggle="pill" href="#algo2">Algorithm</a></li>
    <li><a data-toggle="pill" href="#dm2">Discrete Mathematics</a></li>
    <li><a data-toggle="pill" href="#ex2">Extra</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="soft2" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>Software</h1>
</div>

<div id="data2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
 <h1>Database</h1>
</div>

<div id="os2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Operating System</h1>

</div>

<div id="auto2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Automata</h1>
</div>

<div id="cd2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Compiler Design</h1>
</div>

<div id="cn2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Network</h1>
</div>

<div id="dld2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Digital Logic</h1>
</div>

<div id="co2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Organization</h1>
</div>
<div id="ds2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Data Structures</h1>
</div>
<div id="algo2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Algorithm</h1>
</div>

<div id="dm2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Discrete Mathematics</h1>
</div>

<div id="ex2" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
 <h1>extra</h1>
</div>


</div>

</div>

<div id="practice" class="tabcontent1">
<header  class="container-fluid" style="background-color:#F44336;color:#fff;height:100px;width:80%;float:right;">
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
    <li class="active" ><a data-toggle="pill" href="#soft3">Software</a></li>
    <li><a data-toggle="pill" href="#data3">Database</a></li>
    <li><a data-toggle="pill" href="#os3">Operating System</a></li>
    <li><a data-toggle="pill" href="#auto3">Automata</a></li>
    <li><a data-toggle="pill" href="#cd3">Compiler Design</a></li>
    <li><a data-toggle="pill" href="#cn3">Computer Network</a></li>
    <li><a data-toggle="pill" href="#dld3">Digital Logic</a></li>
    <li><a data-toggle="pill" href="#co3">Computer Organization</a></li>
    <li><a data-toggle="pill" href="#ds3">Data Structure</a></li>
    <li><a data-toggle="pill" href="#algo3">Algorithm</a></li>
    <li><a data-toggle="pill" href="#dm3">Discrete Mathematics</a></li>
    <li><a data-toggle="pill" href="#ex3">Extra</a></li>
       
</ul>
</nav>
<div class="tab-content">
<div id="soft3" class="tab-pane fade in active" style="height:1000px;width:80%;float:right;">
  <h1>Software</h1>
</div>

<div id="data3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Database</h1>
</div>

<div id="os3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Operating System</h1>

</div>

<div id="auto3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Automata</h1>
</div>

<div id="cd3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Compiler Design</h1>
</div>

<div id="cn3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Network</h1>
</div>

<div id="dld3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Digital Logic</h1>
</div>

<div id="co3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Computer Organization</h1>
</div>
<div id="ds3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Data Structures</h1>
</div>
<div id="algo3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
 <h1>Algorithm</h1>
</div>

<div id="dm3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>Discrete Mathematics</h1>
</div>

<div id="ex3" class="tab-pane fade" style="height:1000px;width:80%;float:right;">
  <h1>extra</h1>
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


<div class="tab-content">

</div>

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


<div class="tab-content">

</div>

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
