<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <link rel="apple-touch-icon" sizes="76x76" href="DesignData/img/apple-icon.png">
    <link rel="icon" type="image/png" href="DesignData/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <title>My Mail</title>
    <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
        name='viewport' />
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
    <link href="DesignData/css/bootstrap.min.css" rel="stylesheet" />
    <link href="DesignData/css/light-bootstrap-dashboard.css?v=2.0.0 " rel="stylesheet" />
    <link href="DesignData/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="global.css" />
    <link rel="stylesheet" type="text/css" href="EmailDesign/vendor/animate/animate.css">
	<link rel="stylesheet" type="text/css" href="EmailDesign/vendor/css-hamburgers/hamburgers.min.css">
	<link rel="stylesheet" type="text/css" href="EmailDesign/vendor/select2/select2.min.css">
	<link rel="stylesheet" type="text/css" href="EmailDesign/css/util.css">
	<link rel="stylesheet" type="text/css" href="EmailDesign/css/main.css">
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

                    <button href="" class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
                        aria-controls="navigation-index" aria-expanded="false" aria-label="Toggle navigation">
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
                                <a class="nav-link dropdown-toggle" href="http://example.com"
                                    id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true"
                                    aria-expanded="false">
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

            <div class="contact1">
                <div class="container-contact1">
                    <div class="contact1-pic js-tilt" data-tilt>
                        <img src="EmailDesign/images/img-01.png" alt="IMG">
                    </div>
        
                    <form class="contact1-form validate-form"  action="EmailController"  method="post">
                    
                        <span class="contact1-form-title">
                            Email Portal
                        </span>
        
                        <div class="wrap-input1 validate-input" data-validate = "Name is required">
                            <input class="input1" type="text" name="name" placeholder="Name">
                            <span class="shadow-input1"></span>
                        </div>
        
                        <div class="wrap-input1 validate-input" data-validate = "Valid email is required: ex@abc.xyz">
                            <input class="input1" type="text" name="email" placeholder="Recipient Email">
                            <span class="shadow-input1"></span>
                        </div>
        
                        <div class="wrap-input1 validate-input" data-validate = "Subject is required">
                            <input class="input1" type="text" name="subject" placeholder="Subject">
                            <span class="shadow-input1"></span>
                        </div>
        
                        <div class="wrap-input1 validate-input" data-validate = "Message is required">
                            <textarea class="input1" name="message" placeholder="Message(Please follow email ettiquettes and attach your name and signature.)"></textarea>
                            <span class="shadow-input1"></span>
                        </div>
        
                        <div class="container-contact1-form-btn">
                            <button class="contact1-form-btn">
                                <span>
                                    Send Email
                                    <i class="fa fa-long-arrow-right" aria-hidden="true"></i>
                                </span>
                            </button>
                        </div>
                    </form>
                </div>
            </div>
            <!-- End Navbar -->
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
        </div>
    </div>
    
	<script src="EmailDesign/vendor/jquery/jquery-3.2.1.min.js"></script>

	<script src="EmailDesign/vendor/bootstrap/js/popper.js"></script>
	<script src="EmailDesign/vendor/bootstrap/js/bootstrap.min.js"></script>

	<script src="EmailDesign/vendor/select2/select2.min.js"></script>

	<script src="EmailDesign/vendor/tilt/tilt.jquery.min.js"></script>
	<script >
		$('.js-tilt').tilt({
			scale: 1.1
		})
	</script>

<script async src="https://www.googletagmanager.com/gtag/EmailDesign/js?id=UA-23581568-13"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'UA-23581568-13');
</script>


	<script src="EmailDesign/js/main.js"></script>
</body>

<!--   Core JS Files   -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
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