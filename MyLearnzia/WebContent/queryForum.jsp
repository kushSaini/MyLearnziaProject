<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="DesignData/img/apple-icon.png">
<link rel="icon" type="image/png" href="DesignData/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link href="DesignData/css/bootstrap.min.css" rel="stylesheet" />
<link href="DesignData/css/light-bootstrap-dashboard.css?v=2.0.0 "
	rel="stylesheet" />
<link href="DesignData/css/demo.css" rel="stylesheet" />

<!-- for button -->
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700'
	rel='stylesheet' type='text/css'>
<!-- End of button -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<!-- STYLE.CSS -->
<link rel="stylesheet" href="style.css">
<!-- FONTS -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Lobster">
<!-- FOR DASHBOARD-->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
<link href="outlineDashboard.html" rel="import" />
<title>Query-Forum</title>
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
					<a href="javascript:;" class="simple-text "> <b> My
							Learnzia</b>
					</a>
				</div>
				<ul class="nav">
					<li class="nav-item active"><a class="nav-link"
						href="dashboardView.jsp"> <i
							class="nc-icon nc-icon nc-paper-2"></i>
							<p>Dashboard</p>
					</a></li>
					<li><a class="nav-link" href="assignment.jsp"> <i
							class="nc-icon nc-map-big"></i>
							<p>Assignment</p>
					</a></li>
					<li><a class="nav-link" href="sessions.jsp"> <i
							class="nc-icon nc-chat-round"></i>
							<p>Sessions</p>
					</a></li>
					<li><a class="nav-link" href="queryForum.jsp"> <i
							class="nc-icon nc-bulb-63"></i>
							<p>Query-Forum</p>
					</a></li>
					<li><a class="nav-link" href="calender.jsp"> <i
							class="nc-icon nc-grid-45"></i>
							<p>Calender</p>
					</a></li>
					<li><a class="nav-link" href="email.jsp"> <i
							class="nc-icon nc-email-85"></i>
							<p>My Mail</p>
					</a></li>
					<li><a class="nav-link" href="contacts.jsp"> <i
							class="nc-icon nc-badge"></i>
							<p>iContacts</p>
					</a></li>
					<li><a class="nav-link" href="feedbackView.jsp"> <i
							class="nc-icon nc-satisfied"></i>
							<p>Feedback</p>
					</a></li>
				</ul>
				<br>
				<div class="col-md-5 col-lg-7">
					<button type="button" class="btn btn-default btn-warning"
						data-toggle="modal" data-target="#staticBackdrop">
						<b>Thought Of The Day</b>
					</button>
				</div>
			</div>
		</div>
		<div class="modal fade" id="staticBackdrop" data-backdrop="static"
			data-keyboard="false" tabindex="-1" role="dialog"
			aria-labelledby="staticBackdropLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">
							<b>THOUGHT OF THE DAY : )</b>
						</h5>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<hr size="6" color="black">
					<div class="modal-body wrap-input2">
						<b>" <%=thought %> "
						</b>
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

					<button href="" class="navbar-toggler navbar-toggler-right"
						type="button" data-toggle="collapse"
						aria-controls="navigation-index" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span> <span
							class="navbar-toggler-bar burger-lines"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navigation"></div>
				</div>
			</nav>
			<br>
			<div class="welcome" align='center'>
				<form action="InsertQueryController" method="POST">

					<div class="bgover" style="position: absolute; top: 10%">
						<!-- <div class="heading">QUERY FORUM</div> -->
						<div class="w3-container w3-lobster" align='center'>
							<h1 class="w3-xxxlarge" align='center'>QUERY FORUM</h1>
						</div>
						<div class='container' align='center'>

							<h2>Query is for which Module ?</h2>

							<div class="dropdown">
								<input list="modules" name="queryLang">
								<datalist id="modules">
									<option value="Maven">Maven</option>
									<option value="Jenkins">Jenkins</option>
									<option value="Jira">Jira</option>
									<option value="GitHub">GitHub</option>
								</datalist>

							</div>

							<!--
        <div class="form-group purple-border">
          <textarea class="form-control" id="queryLang" rows="1" placeholder="C, C++, PYTHON, JAVA..."></textarea>
        </div>
        -->

							<h2>Ask your query..!!</h2>


							<div class="col-xs-2">
								<div class="form-group shadow-textarea">
									<textarea class="form-control" name="queryName" cols="80"
										rows="4" placeholder="Write something here..."></textarea>
								</div>
							</div>


							<!-- Button -->
							<div id="button">
								<input type='submit' class="bttn red" />

							</div>
</form>
							<form action="DisplayQueryController" method="GET">
								<div id="button">
									<input type="submit" class="bttn red"
										value="Display All Queries" />
								</div>
							</form>

							<!-- END OF BUTTON -->
						</div>
					</div>
					<!-- whole container -->
				

			</div>
			<!--/////////////////////////////////////////// PARTICLES.JS ////////////////////////////////////////////////////////////-->
			<div id="particles-js"></div>
			<!-- Particles.js -->
			<script
				src="https://cdn.jsdelivr.net/npm/particles.js@2.0.0/particles.min.js"></script>
			<script type="text/javascript" src="particles.min.js"></script>
			<script type="text/javascript" src="particles.js"></script>
			<script type="text/javascript" src="app.js"></script>
			<!--<script>
        particlesJS.load('particles-js','particles.json',function(){
            console.log('particles.json loaded...');
        });
        
    </script>
    -->
			<!--END OF PARTICLES.JS -->

		</div>
		<!-- End Navbar -->
		<div class="content">
			<div class="container-fluid">
				<div class="section"></div>
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
</body>
<!--   Core JS Files   -->
<script src="DesignData/js/core/jquery.3.2.1.min.js"
	type="text/javascript"></script>
<script src="DesignData/js/core/popper.min.js" type="text/javascript"></script>
<script src="DesignData/js/core/bootstrap.min.js" type="text/javascript"></script>
<!--  Plugin for Switches, full documentation here: http://www.jque.re/plugins/version3/bootstrap.switch/ -->
<script src="DesignData/js/plugins/bootstrap-switch.js"></script>
<!--  Google Maps Plugin    -->
<script type="text/javascript"
	src="https://maps.googleapis.com/maps/api/js?key=YOUR_KEY_HERE"></script>
<!--  Chartist Plugin  -->
<script src="DesignData/js/plugins/chartist.min.js"></script>
<!--  Notifications Plugin    -->
<script src="DesignData/js/plugins/bootstrap-notify.js"></script>
<!-- Control Center for Light Bootstrap Dashboard: scripts for the example pages etc -->
<script src="DesignData/js/light-bootstrap-dashboard.js?v=2.0.0 "
	type="text/javascript"></script>
<!-- Light Bootstrap Dashboard DEMO methods, don't include it in your project! -->
<script src="DesignData/js/demo.js"></script>
</html>