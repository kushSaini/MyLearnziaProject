<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="DesignData/img/apple-icon.png">
    <link rel="icon" type="image/png" href="DesignData/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>Jenkins (MyLearnzia)</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link href="DesignData/css/bootstrap.min.css" rel="stylesheet" />
    <link href="DesignData/css/light-bootstrap-dashboard.css " rel="stylesheet" />
    <link href="DesignData/css/demo.css" rel="stylesheet" />
</head>
<body>
    <%
	response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
	response.setHeader("Pragma", "no-cache");
	response.setHeader("Expires", "0");
	String name=(String)session.getAttribute("Name");
	String thought=(String)session.getAttribute("thought");
	if(session.getAttribute("Name")==null)
		response.sendRedirect("index.html");
%>
    <div class="wrapper">
        <div class="sidebar" data-image="DesignData/img/sidebar-5.jpg">
            <div class="sidebar-wrapper">
                <div class="logo">
                    <a href="javascript:;" class="simple-text ">
                     <b> My Learnzia</b>
                    </a>
                </div>
                <ul class="nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="dashboardView.jsp">
                            <i class="nc-icon nc-icon nc-paper-2"></i>
                            <p>Dashboard</p>
                        </a>
                    </li>
                     <li>
                        <a class="nav-link" href="assignment.jsp">
                            <i class="nc-icon nc-map-big"></i>
                            <p>Assignment</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="sessions.jsp">
                            <i class="nc-icon nc-chat-round"></i>
                            <p>Sessions</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="queryForum.jsp">
                            <i class="nc-icon nc-bulb-63"></i>
                            <p>Query-Forum</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="calender.jsp">
                            <i class="nc-icon nc-grid-45"></i>
                            <p>Calender</p>
                        </a>
                    </li>
  					   <li>
                        <a class="nav-link" href="email.jsp">
                            <i class="nc-icon nc-email-85"></i>
                            <p>My Mail</p>
                        </a>
                    </li>
                    <li>
                        <a class="nav-link" href="contacts.jsp">
                            <i class="nc-icon nc-badge"></i>
                            <p>iContacts</p>
                        </a>
                    </li>
                       <li>
                        <a class="nav-link" href="feedbackView.jsp">
                            <i class="nc-icon nc-satisfied"></i>
                            <p>Feedback</p>
                        </a>
                    </li>
                </ul><br>
                <div class="col-md-5 col-lg-7">
                <button type="button" class="btn btn-default btn-warning" data-toggle="modal" data-target="#staticBackdrop">
                   <b>Thought Of The Day</b>
                  </button>
                </div>
            </div>
        </div>
        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" role="dialog" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="staticBackdropLabel"><b>THOUGHT OF THE DAY : )</b></h5>
          <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
          </button>
        </div>
        <hr size="6" color="black">
        <div class="modal-body wrap-input2">
        <b>" <%=thought %> "</b>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Close</button>
        </div>
      </div>
    </div>
  </div>
        <div class="main-panel">
            <!-- Navbar -->
            <nav class="navbar navbar-expand-lg " color-on-scroll="500">
                <div class="container-fluid">
                    
                    <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                        <span class="navbar-toggler-bar burger-lines"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navigation">
                        <ul class="nav navbar-nav mr-auto">
                            <span><b>Welcome !! <%=name %></b></span>
                        </ul>
                        <ul class="navbar-nav ml-auto">
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="http://example.com" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <span class="no-icon"><b>User Profile</b></span>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                                   
                                    <a class="dropdown-item" href="LogoutServ">Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav><br>
                <div class="ml-5 mt-5">
                <iframe src="https://docs.google.com/presentation/d/19UFgixnNlq4CRbS6lSRvAcE2qbqIXOHacFTaFpmJ_dQ/embed?start=false&loop=false&delayms=3000" frameborder="0" width="960" height="749" allowfullscreen="true" mozallowfullscreen="true" webkitallowfullscreen="true"></iframe>
                    <br><h2><b>Jenkins</b></h2><hr size="4" color="black">
                <h3>About Jenkins</h3><br><br>
                <p><b>
               Jenkins to the rescue! As a Continuous Integration tool, Jenkins allows seamless, ongoing development, 
               testing, and deployment of newly created code. Continuous Integration is a process wherein 
               developers commit changes to source code from a shared repository, and all the changes to the source code 
               are built continuously. This can occur multiple times daily. Each commit is continuously monitored by the 
               CI Server, increasing the efficiency of code builds and verification. This removes the testers' burdens, 
               permitting quicker integration and fewer wasted resources.<br>
                <br>
                * Jenkins is a platform-agnostic, self-contained Java-based program, ready to run with packages for Windows, Mac OS, and Unix-like operating systems.<br>
				* Jenkins is easily set up and configured using its web interface, featuring error checks and a built-in help function.<br>
				* There are hundreds of plugins available in the Update Center, integrating with every tool in the CI and CD toolchain.<br>
				* Jenkins can be extended by means of its plugin architecture, providing nearly endless possibilities for what it can do.<br>
				* Jenkins can easily distribute work across multiple machines for faster builds, tests, and deployments across multiple platforms.
		
                </b></p><br><br>
                <h4><b>Presentation Credit :</b> Shivani Shrivastava ,Divyansh Naithani....others</h4>
                </div>
                <div class="content">
                    <div class="container-fluid">
                        <div class="section">
                        </div>
                    </div>
                </div>
                <footer class="footer">
                    <div class="container-fluid">
                        <nav>
                            <p class="copyright text-center">
                                ©
                                <script>
                                    document.write(new Date().getFullYear())
                                </script>
                                <a href="#">My Learnzia</a>, we create Best For You
                            </p>
                        </nav>
                    </div>
                </footer>
            </body>
                <!--   Core JS Files   -->
<script src="DesignData/js/core/jquery.3.2.1.min.js" type="text/javascript"></script>
<script src="DesignData/js/core/popper.min.js" type="text/javascript"></script>
<script src="DesignData/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="DesignData/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="DesignData/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="DesignData/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="DesignData/js/light-bootstrap-dashboard.js?v=2.0.0 " type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="DesignData/js/demo.js"></script>
</html>