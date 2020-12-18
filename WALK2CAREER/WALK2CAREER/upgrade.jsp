<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Upgrade</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>

.affix {
      top: 0;
      width: 100%;
      -webkit-transition: all .5s ease-in-out;
      transition: all .5s ease-in-out;
  }
  .affix-top {
      position: static;
      top: -35px;
  }
  .affix + .container-fluid {
      padding-top: 70px;
  }




* {
    box-sizing: border-box;
}

.columns {
    float: left;
    width: 33.3%;
    padding: 8px;
}

.price {
    list-style-type: none;
    border: 1px solid #eee;
    margin: 0;
    padding: 0;
    -webkit-transition: 0.3s;
    transition: 0.3s;
}

.price:hover {
    box-shadow: 0 8px 12px 0 rgba(0,0,0,0.2)
}

.price .header {
    background-color: #111;
    color: white;
    font-size: 25px;
}

.price li {
    border-bottom: 1px solid #eee;
    padding: 20px;
    text-align: center;
}

.price .grey {
    background-color: #eee;
    font-size: 20px;
}

.button {
    background-color: #4CAF50;
    border: none;
    color: white;
    padding: 10px 25px;
    text-align: center;
    text-decoration: none;
    font-size: 18px;
}

@media only screen and (max-width: 600px) {
    .columns {
        width: 100%;
    }
}



a.a3 {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

a.a3:hover {background-color: #f1f1f1}




.dropdown {
    position: relative;
    display: inline-block;
    float:right;
   margin-right:-14px;
   
}

.dropdown-content {
    display: none;
    position: absolute;
    
    background-color: #f9f9f9;
    min-width: 0px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    right:0;
}


.dropdown:hover .dropdown-content {
    display: block;
}



</style>

</head>
<body>


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">W2C</a>
    </div>
    
      <div class="collapse navbar-collapse" id="myNavbar" style="float:right;">
      <ul class="nav navbar-nav">
        <li class="active"><a href="Profile.jsp"><span class="glyphicon glyphicon-user"></span> My Account</a></li>
        
      </ul>
      
    </div>
    
      
      
      
      
  </div>
</nav>




  
<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:gray">B.TECH</li>
    <li class="grey">Free</li>
    <li> Lectures</li>
    <li>Notes</li>
    <li>previous year paper</li>
    
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" style="background-color:brown">PLACEMENT</li>
    <li class="grey">5000/year</li>
    <li>Lectures</li>
    <li>Notes</li>
    <li>Practice</li>
    <li>Doubt Solving</li>
    <li>Test Series</li>
    <li class="grey"><a href="placement.jsp" class="button">Apply</a></li>
  </ul>
</div>

<div class="columns">
  <ul class="price">
    <li class="header" >GATE</li>
    <li class="grey">50000/year</li>
    <li>Lectures</li>
    <li>Notes</li>
    <li>Practice</li>
    <li>Doubt Solving</li>
    <li>Test series</li>
    <li class="grey"><a href="gate.jsp" class="button">Apply</a></li>
  </ul>
</div>

</body>
</html>