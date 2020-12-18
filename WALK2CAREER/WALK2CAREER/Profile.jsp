<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ page import="com.info.service.*"%>
    <jsp:useBean id="stu" class="com.info.model.Student"/>

<!DOCTYPE html> 
<html lang="en">
<head>
  <title>My Account</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    
    

    
    
  </style>
</head>
<body>

<%
String email = request.getParameter("email");
stu.setEmail(email);
EmployeeService.feachvalue(stu);

%> 





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
    
      <form class="navbar-form navbar-left" role="search" style="margin-left:200px;">
        <div class="form-group input-group">
          <input type="text" class="form-control" placeholder="Search..">
          <span class="input-group-btn">
            <button class="btn btn-default" type="button">
              <span class="glyphicon glyphicon-search"></span>
            </button>
          </span>        
        </div>
      </form>
      
   
      
      
      <div class="collapse navbar-collapse" id="myNavbar" style="float:right;">
      <ul class="nav navbar-nav">
        
        <li class="active"><form action ="MyAccount.jsp">
        
           
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
                  
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
        </li>
        
        <li><a href="#">Messages</a></li>
        <li> <a href="upgrade.jsp" class="a3" >Upgrade</a></li>
           <li> <a href="index.jsp"  class="a3">Logout</a></li> 
           
      </ul>
      
    </div>
  </div>
</nav>
 

<h1>NAME: &nbsp; <%=stu.getName() %></h1>

<h1>E-MAIL: &nbsp; <%=stu.getEmail() %></h1>

<h1>MOBILE: &nbsp; <%=stu.getMobile() %></h1>
<br>  

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>




</body>
</html>
