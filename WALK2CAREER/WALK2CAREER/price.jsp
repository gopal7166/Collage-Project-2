<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style type="text/css">



.columns {
    float: left;
    width: 31.3%;
    padding: 8px;
    margin-left:7px;
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



</style>
</head>
<body>
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
  </ul>
</div>
</body>
</html>