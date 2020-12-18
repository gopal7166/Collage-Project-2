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
String email;
if(request.getAttribute("email")==null)
{

	email = request.getParameter("email");
	stu.setEmail(email);
	EmployeeService.feachvalue(stu);

	
}
else
{
email=(String)request.getAttribute("email");
stu.setEmail(email);
EmployeeService.feachvalue(stu);

}

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
        
           <input type="hidden" name="name" value=<%=stu.getName()%>>
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
           <input type="hidden" name="mobile" value=<%=stu.getMobile()%>>       
        <button type="submit"  style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form></li>
        <li><a href="#">Messages</a></li>
        <li> <a href="upgrade.jsp" class="a3" >Upgrade</a></li>
           <li> <a href="index.jsp"  class="a3">Logout</a></li> 
           
      </ul>
      
    </div>
  </div>
</nav>
  
<div class="container text-center">    
  <div class="row">
    <div class="col-sm-3 well">
    
     <%  
String str=(String)request.getAttribute("Message");
if(str==null)
{
}
else
{
%>
<%=str %>
<% 
}
%>


    
      <div class="well">
        <p><form action ="Profile.jsp">
     
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>        
        <button type="submit">My Profile</button></form></p>
        
  
 
  <button type="button" class="btn btn-default btn-lg" id="myBtn"><img src=<%=stu.getProfile() %> class="img-circle" height="65" width="65" alt="Upload Photo"></button>

<br>
<%=stu.getName() %>




  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
        
        </div>
        <div class="modal-body" style="padding:40px 50px;">
           <form method="post" action="uploadServlet" enctype="multipart/form-data">
            <input type="hidden" name="email" value=<%= stu.getEmail() %>>
            <table >
                <tr>
                   
                    <td><input type="file" name="photo" size="10"/></td>
                </tr>
                
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>

        </div>
      
      
    </div>
  </div> 
</div>

      </div>
      <div class="well">
        <p><a href="#">Interests</a></p>
        <p>
          <span class="label label-default">News</span>
          <span class="label label-primary">W3Schools</span>
          <span class="label label-success">Labels</span>
          <span class="label label-info">Football</span>
          <span class="label label-warning">Gaming</span>
          <span class="label label-danger">Friends</span>
        </p>
      </div>
      <div class="alert alert-success fade in">
        <a href="#" class="close" data-dismiss="alert" aria-label="close">Ã—</a>
        <p><strong>Ey!</strong></p>
        People are looking at your profile. Find out who.
      </div>
      <p><form action ="btech.jsp">
        
         
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
                
        <button type="submit">B.TECH</button></form></p>
      <p><form action ="placement.jsp">
        
           
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
                 
        <button type="submit">PLACEMENT</button></form></p>
      <p><form action ="gate.jsp">
        
          
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
              
        <button type="submit">GATE</button></form></p>
    </div>
    <div class="col-sm-7">
    
      <div class="row">
        <div class="col-sm-12">
          <div class="panel panel-default text-left">
            <div class="panel-body">
              <p contenteditable="true">Status: Feeling Blue</p>
              <button type="button" class="btn btn-default btn-sm">
                <span class="glyphicon glyphicon-thumbs-up"></span> Like
              </button>     
            </div>
          </div>
        </div>
      </div>
      
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>John</p>
           <img src="bird.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Bo</p>
           <img src="bandmember.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Jane</p>
           <img src="bandmember.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>
      <div class="row">
        <div class="col-sm-3">
          <div class="well">
           <p>Anja</p>
           <img src="bird.jpg" class="img-circle" height="55" width="55" alt="Avatar">
          </div>
        </div>
        <div class="col-sm-9">
          <div class="well">
            <p>Just Forgot that I had to mention something about someone to someone about how I forgot something, but now I forgot it. Ahh, forget it! Or wait. I remember.... no I don't.</p>
          </div>
        </div>
      </div>     
    </div>
    <div class="col-sm-2 well">
      <div class="thumbnail">
        <p>Upcoming Events:</p>
        <img src="paris.jpg" alt="Paris" width="400" height="300">
        <p><strong>Paris</strong></p>
        <p>Fri. 27 November 2015</p>
        <button class="btn btn-primary">Info</button>
      </div>      
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  </div>
</div>

<footer class="container-fluid text-center">
  <p>Footer Text</p>
</footer>


<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>


</body>
</html>
