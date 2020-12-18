<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="com.info.service.*"%>
    <jsp:useBean id="stu" class="com.info.model.Student"/>


<!DOCTYPE html>
<html lang="en">
<head>
  <title>B.TECH</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 450px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
    /* Set black background color, white text and some padding */
    footer {
      background-color: #555;
      color: white;
      padding: 15px;
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 767px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
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

/* Style the buttons inside the tab */
.tablinks1 {
    display: block;
    background-color: inherit;
    color: #357ec8;
    padding: 22px 16px;
    width: 100%;
    border: none;
    outline: none;
    text-align: left;
    cursor: pointer;
    transition: 0.3s;
    font-size: 17px;
    max-width:100%;
}

/* Change background color of buttons on hover */
.tablinks1:hover {
    background-color: #ddd;
}

.tablinks1.active {
    background-color: #357ec8;
    color:white;
}


/* Style the tab content */
.tabcontent1 {
   
    border: 0px solid #ccc;
    width: 75%;
    border-left: none;
    height: 300%;
    min-width:80%;
    max-width:100%;
    margin-left:100px
}








  </style>
</head>
<body>

<%
String email = request.getParameter("email");
stu.setEmail(email);
EmployeeService.feachvalue(stu);

%> 




<nav class="navbar navbar-inverse navbar-fixed-top">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">W2C</a>
    </div>    
    
    
    <div class="collapse navbar-collapse" id="myNavbar" style="float:right;">
      <ul class="nav navbar-nav">
        <li class="active"><form action ="MyAccount.jsp">
        
           
           <input type="hidden" name="email" value=<%=stu.getEmail()%>>
                  
        <button type="submit" style="margin-top:12px;"><span class="glyphicon glyphicon-user"></span> My Account</button>
        </form>
        </li>
      </ul>
      
    </div>
    
    
    
     </div> 
</nav>
<br><br>

  
<div class="container-fluid text-center" style="margin-top:10px;">    
  <div class="row content">
    <div class="tab1" style="position:fixed;">
 
 
  <button class="tablinks1" onclick="openCity(event, 'math1')" id="defaultOpen">Math-1</button>
  <button class="tablinks1" onclick="openCity(event, 'math2')">Math-2</button>
  <button class="tablinks1" onclick="openCity(event, 'math3')" >Math-3</button>
  <button class="tablinks1" onclick="openCity(event, 'physics1')">Physics-1</button>
  <button class="tablinks1" onclick="openCity(event, 'physics2')">Physics-2</button>
  <button class="tablinks1" onclick="openCity(event, 'electrical')">Electrical</button>
  <button class="tablinks1" onclick="openCity(event, 'computersystem')">Computer System / C</button>
  <button class="tablinks1" onclick="openCity(event, 'chemistry')"> Chemistry</button>
  <button class="tablinks1" onclick="openCity(event, 'Mechanical')">Element of Mechanical Engg</button>
  <button class="tablinks1" onclick="openCity(event, 'professional')">Professional Communication</button>
  <button class="tablinks1" onclick="openCity(event, 'basicelectronics')"> Basic Electronics</button>
  <button class="tablinks1" onclick="openCity(event, 'dld')">Digital Logic Design</button>
  <button class="tablinks1" onclick="openCity(event, 'datastructures')">Data Structures</button>
  <button class="tablinks1" onclick="openCity(event, 'discretemath')">Discrete Mathematics</button>
  <button class="tablinks1" onclick="openCity(event, 'psychology')"> Industrial Psychology</button>
  <button class="tablinks1" onclick="openCity(event, 'cbnst')"> CBNST</button>  
  <button class="tablinks1" onclick="openCity(event, 'hmpe')"> Human Values </button>
  <button class="tablinks1" onclick="openCity(event, 'soft')">Soft Computing</button>
  <button class="tablinks1" onclick="openCity(event, 'sociology')">Industrial Sociology</button>
  <button class="tablinks1" onclick="openCity(event, 'itac')">Information Theory and Coding</button>
  <button class="tablinks1" onclick="openCity(event, 'os')">Operating System</button>
  <button class="tablinks1" onclick="openCity(event, 'automata')"> Automata</button>
  <button class="tablinks1" onclick="openCity(event, 'maa')"> Multimedia and Animation</button>
  <button class="tablinks1" onclick="openCity(event, 'algorithm')">Algorithm</button>
  <button class="tablinks1" onclick="openCity(event, 'database')">Database</button>
  <button class="tablinks1" onclick="openCity(event, 'ppl')">PPL</button>
  <button class="tablinks1" onclick="openCity(event, 'web')">Web Technology</button>
  <button class="tablinks1" onclick="openCity(event, 'ins')">Information System</button>
  <button class="tablinks1" onclick="openCity(event, 'economics')">Engineering Economics</button>
  <button class="tablinks1" onclick="openCity(event, 'cn')">Computer Networks</button>
  <button class="tablinks1" onclick="openCity(event, 'se')">Software Engineering</button>
  <button class="tablinks1" onclick="openCity(event, 'cd')">Compiler Design</button>
  <button class="tablinks1" onclick="openCity(event, 'xxx')">department</button>
  <button class="tablinks1" onclick="openCity(event, 'dataware')"> Data Warehousing & Mining</button>
  <button class="tablinks1" onclick="openCity(event, 'imanagement')"> Industrial Management</button>
  <button class="tablinks1" onclick="openCity(event, 'cans')" >Cryptography & Network Security</button>
  <button class="tablinks1" onclick="openCity(event, 'arti')">Artificial Intelligence</button>
  <button class="tablinks1" onclick="openCity(event, 'spm')">Software Project Manag.</button>
  <button class="tablinks1" onclick="openCity(event, 'staa')">Software Testing & Audit</button>
  <button class="tablinks1" onclick="openCity(event, 'distributed')">Distributed System</button>
  <button class="tablinks1" onclick="openCity(event, 'mobile')">Mobile Computing</button>
  <button class="tablinks1" onclick="openCity(event, 'ncer')">Non Conventional Energy Resources </button>
  <button class="tablinks1" onclick="openCity(event, 'rts')">Real Time System</button>
  <button class="tablinks1" onclick="openCity(event, 'datacompress')">Data Compression</button>


</div>
<br>
       
<div id="math1" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu1">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu2">Notes</a></li>
    <li><a data-toggle="pill" href="#menu3">Papers</a></li>
  </ul>
  
<div class="tab-content" >
   
    <div id="menu1" class="tab-pane fade in active">
      <h3>Lectures</h3>
      
      <div>
     
    <div class="video-grid">
 <iframe src="https://www.youtube.com/embed/eZjtTKZLY34/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/ZV-5fWCfpNI/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05&index/2" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/dROZBAw0W8c/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05&index/3" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/OwytSvuptOY/index/4/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/0v0f4uB7Mkg/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05&index/5" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/WkMms384zNM/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05&index/6" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/mf-ffWavCzM/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05&index/7" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/8T6qK6ymfqw/index/8/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/ned6pzJc6dQ/index/9/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/56tJMjg2kfY/index/10/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/8JMNp1TTvyI/index/11/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/-Jl9IAWt72I/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05/index/12" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/yogopXy-fbY/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05/index/13" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/1kNnCKhVVdE/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05/index/14" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/WFH21Ym-q90/index/15/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>

 </div>

    </div>
       
    
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="math2" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu4">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu5">Notes</a></li>
    <li><a data-toggle="pill" href="#menu6">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu4" class="tab-pane fade in active">
      <h3>Lectures</h3>
       <div class="video-grid">
 <iframe src="https://www.youtube.com/embed/K_CBtprlBxo/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/a6MFa1z5rcs/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/2" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/sn6wFBVbxsc/index/3/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/nkWNNrGNyRU/index/4/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/drcnHGZqZhw/index/5/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/3y9UWt-EY-w/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/6" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/zFo2I0tDjmU/index/7/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/jWIYtxwFgew/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/8" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/_FoVyiKUXm0/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/vLWIE9gFbKs/index/10/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/8JMNp1TTvyI/index/11/list/PLIJPu8Yf-4u3xDNWaVO8r2VqPuQDIqd05" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/5UcBn39C8cI/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/11" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/RTF-vgJzXbU/index/12/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/XCVCZKP0g3o/index/13/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/EwYKDTnQ_IE/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/15" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/P2lgB78rUWY/index/16/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/n8CdNtNqdfE/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/17" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/KgKm-vpEAg0/index/18/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/gS0woCe8kW4/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/19" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/W3EeVsjns28/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/20" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/-tskZtwYMRg/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/21" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/wMDfcVRoejA/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/22" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/_hXqpJD2blE/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/23" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/oNPeoJg5BX8/index/24/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/5ACyHO_4aak/index/25/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/Dy5368JawAM/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/26" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/phBm-Ks79vQ/index/27/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/h1MrAcd0Pz4/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/28" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/HGk13tS4LMw/index/29/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/Jx4PR7wTDhg/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/30" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/pnXZd2H9lEA/index/31/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/5jXjl3aRhgM/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/32" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/bwAgHDn0P-Y/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/33" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/MeVRj-DgzjM/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/34" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/Zs-tUx8hvwY/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/35" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/j0XvyzcbcU4/index/36/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/tXvRTvyFgvM/index/37/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/eOCVHrO5kKg/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/38" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/SCHZlDnSliU/index/39/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/T6T-Zo5BNhE/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi/index/40" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/Gk-qv_rGvrs/index/41/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/xOS9QdbKTwM/index/42/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/PzpLKKLe0xc/index/43/list/PLIJPu8Yf-4u1rI2rJJqMx6MkhYxdNQsDi" allowfullscreen></iframe>

 </div>

 </div>
    <div id="menu5" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu6" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
  
</div>

<div id="math3" class="tabcontent1" >

 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu7">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu8">Notes</a></li>
    <li><a data-toggle="pill" href="#menu9">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu7" class="tab-pane fade in active">
      <h3>Lectures</h3>

 <div class="video-grid">
 <iframe src="https://www.youtube.com/embed/AzroLr1XS5E/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/fs4KpMkEUQE/index/2/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/HCeDvuAerAw&list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/3" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/gvcbuyS3OIM/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/4" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/ZUy3xPRU_2Q/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/5" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/lBlq6t9MLOg/index/6/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/sWz7wG2IyZU/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/7" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/23ortl7mi2o/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/8" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/1c_ioSurlD0/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/upuVXgF75G4/index/10/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/C2OfwVd_WEY/index/11/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/KIfDG7Xm-nw/index/12/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/MrZxniqiN8s/index/13/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/E767TaIRRW8/index/14/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9" allowfullscreen></iframe>
<iframe src="https://www.youtube.com/embed/AsqDHj501Q8/list/PLdM-WZokR4tZiptYSMpCAaBcdM4vvVug9/index/15" allowfullscreen></iframe>

 </div>

    </div>
    <div id="menu8" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu9" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>


<div id="physics1" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu10">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu11">Notes</a></li>
    <li><a data-toggle="pill" href="#menu12">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu10" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu11" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu12" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="physics2" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu13">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu14">Notes</a></li>
    <li><a data-toggle="pill" href="#menu15">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu13" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu14" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu15" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>


<div id="electrical" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu16">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu17">Notes</a></li>
    <li><a data-toggle="pill" href="#menu18">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu16" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu17" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu18" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="computersystem" class="tabcontent1" >
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu19">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu20">Notes</a></li>
    <li><a data-toggle="pill" href="#menu21">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu19" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu20" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu21" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>
  
<div id="chemistry" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#men22">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu23">Notes</a></li>
    <li><a data-toggle="pill" href="#menu24">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu22" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu23" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu24" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>


<div id="Mechanical" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu25">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu26">Notes</a></li>
    <li><a data-toggle="pill" href="#menu27">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu25" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu26" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu27" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  


<div id="professional" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu31">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu32">Notes</a></li>
    <li><a data-toggle="pill" href="#menu33">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu31" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu32" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu33" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="basicelectronics" class="tabcontent1" >
 
 <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu34">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu35">Notes</a></li>
    <li><a data-toggle="pill" href="#menu36">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu34" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu35" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu36" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  


<div id="dld" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu37">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu38">Notes</a></li>
    <li><a data-toggle="pill" href="#menu39">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu37" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu38" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu39" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="datastructures" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu40">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu41">Notes</a></li>
    <li><a data-toggle="pill" href="#menu42">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu40" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu41" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu42" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="discretemath" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu43">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu44">Notes</a></li>
    <li><a data-toggle="pill" href="#menu45">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu1" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu3" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div> 
 
<div id="psychology" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu46">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu47">Notes</a></li>
    <li><a data-toggle="pill" href="#menu48">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu46" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu47" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu48" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="cbnst" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu49">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu50">Notes</a></li>
    <li><a data-toggle="pill" href="#menu51">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu49" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu50" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu51" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="hmpe" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu52">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu53">Notes</a></li>
    <li><a data-toggle="pill" href="#menu54">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu52" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu53" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu54" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  
<div id="soft" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu55">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu56">Notes</a></li>
    <li><a data-toggle="pill" href="#menu57">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu55" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu56" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu57" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="sociology" class="tabcontent1" >
 
   <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu58">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu59">Notes</a></li>
    <li><a data-toggle="pill" href="#menu60">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu58" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu59" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu60" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>
<div id="itac" class="tabcontent1" >
 
   <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu61">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu62">Notes</a></li>
    <li><a data-toggle="pill" href="#menu63">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu61" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu62" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu63" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="os" class="tabcontent1" >
 
   <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu64">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu65">Notes</a></li>
    <li><a data-toggle="pill" href="#menu66">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu64" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu65" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu66" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>
  
<div id="automata" class="tabcontent1" >
 
   <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu67">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu68">Notes</a></li>
    <li><a data-toggle="pill" href="#menu69">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu67" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu68" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu69" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
 
</div>  

<div id="maa" class="tabcontent1" >
 
   <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu70">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu71">Notes</a></li>
    <li><a data-toggle="pill" href="#menu72">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu70" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu71" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu72" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="algorithm" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu73">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu74">Notes</a></li>
    <li><a data-toggle="pill" href="#menu75">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu73" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu74" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu75" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="database" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu76">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu77">Notes</a></li>
    <li><a data-toggle="pill" href="#menu78">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu76" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu77" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu78" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="ppl" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu79">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu80">Notes</a></li>
    <li><a data-toggle="pill" href="#menu81">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu79" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu80" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu81" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="web" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu82">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu83">Notes</a></li>
    <li><a data-toggle="pill" href="#menu84">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu82" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu83" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu84" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="ins" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu85">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu86">Notes</a></li>
    <li><a data-toggle="pill" href="#menu87">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu85" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu86" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu87" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
 
<div id="economics" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu88">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu89">Notes</a></li>
    <li><a data-toggle="pill" href="#menu90">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu88" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu89" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu90" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="cn" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu91">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu92">Notes</a></li>
    <li><a data-toggle="pill" href="#menu93">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu91" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu92" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu93" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="se" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu94">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu95">Notes</a></li>
    <li><a data-toggle="pill" href="#menu96">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu94" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu95" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu96" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="cd" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu97">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu98">Notes</a></li>
    <li><a data-toggle="pill" href="#menu99">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu97" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu98" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu99" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="xxx" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu100">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu101">Notes</a></li>
    <li><a data-toggle="pill" href="#menu102">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu100" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu101" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu102" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="dataware" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu103">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu104">Notes</a></li>
    <li><a data-toggle="pill" href="#menu105">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu103" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu104" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu105" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="imanagement" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu106">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu107">Notes</a></li>
    <li><a data-toggle="pill" href="#menu108">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu106" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu107" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu108" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>  

<div id="cans" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu109">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu110">Notes</a></li>
    <li><a data-toggle="pill" href="#menu111">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu109" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu110" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu111" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="arti" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu112">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu113">Notes</a></li>
    <li><a data-toggle="pill" href="#menu114">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu112" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu113" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu114" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="spm" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu115">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu116">Notes</a></li>
    <li><a data-toggle="pill" href="#menu117">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu115" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu116" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu117" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="staa" class="tabcontent1" >
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu118">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu119">Notes</a></li>
    <li><a data-toggle="pill" href="#menu120">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu118" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu119" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu120" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>
  
<div id="distributed" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu121">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu122">Notes</a></li>
    <li><a data-toggle="pill" href="#menu123">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu121" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu122" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu123" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="mobile" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu124">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu125">Notes</a></li>
    <li><a data-toggle="pill" href="#menu126">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu124" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu125" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu126" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>

<div id="ncer" class="tabcontent1" >
 
  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu127">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu128">Notes</a></li>
    <li><a data-toggle="pill" href="#menu129">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu127" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu128" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu129" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>

<div id="rts" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu130">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu131">Notes</a></li>
    <li><a data-toggle="pill" href="#menu132">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu130" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu131" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu132" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div>
</div>  

<div id="datacompress" class="tabcontent1" >

  <div class="container" style="width:75%;">
  <ul class="nav nav-pills">
    <li class="active"><a data-toggle="pill" href="#menu133">Lectures</a></li>
    <li><a data-toggle="pill" href="#menu134">Notes</a></li>
    <li><a data-toggle="pill" href="#menu135">Papers</a></li>
  </ul>
  
  <div class="tab-content" >
   
    <div id="menu133" class="tab-pane fade in active">
      <h3>Lectures</h3>
      <p>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
    </div>
    <div id="menu134" class="tab-pane fade">
      <h3>Notes</h3>
      <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
    </div>
    <div id="menu135" class="tab-pane fade">
      <h3>Papers</h3>
      <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
    </div>
  </div>
</div> 
</div>  
    


 <div class="col-sm-2 sidenav" style="float:right;margin-top:-1370px;height:700px;">
      <div class="well">
        <p>ADS</p>
      </div>
      <div class="well">
        <p>ADS</p>
      </div>
    </div>
  
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



</body>
</html>
