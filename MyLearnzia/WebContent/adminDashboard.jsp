<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"
	import="com.learnzia.dao.*,com.learnzia.model.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<link rel="apple-touch-icon" sizes="76x76"
	href="DesignData/img/apple-icon.png">
<link rel="icon" type="image/png" href="DesignData/img/favicon.ico">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>My Learnzia Dashboard</title>
<meta
	content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no'
	name='viewport' />
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200"
	rel="stylesheet" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css" />
<link href="DesignData/css/bootstrap.min.css" rel="stylesheet" />
<link href="DesignData/css/light-bootstrap-dashboard.css "
	rel="stylesheet" />
<link href="DesignData/css/demo.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="global.css" />
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
						id="navigation">
						<ul class="nav navbar-nav mr-auto">
							<span><b>Welcome !! <%=name %></b></span>
						</ul>
						<ul class="navbar-nav ml-auto">
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" href="http://example.com"
								id="navbarDropdownMenuLink" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false"> <span
									class="no-icon"><b>User Profile</b></span>
							</a>
								<div class="dropdown-menu"
									aria-labelledby="navbarDropdownMenuLink">

									<a class="dropdown-item" href="LogoutServ">Logout</a>
								</div></li>
						</ul>
					</div>
				</div>
			</nav>
			<br>
			<p class="font-weight-bold ">Users Panel</p>
			<hr size="2" color="black">

			<a href="insertUser.jsp" class="btn btn-danger btn-round"><b>Create
					New User</b></a> <a href="deleteUser.jsp" class="btn btn-danger btn-round"><b>Delete
					User</b></a> <a href="DisplayUsersController" class="btn btn-danger btn-round"><b>View All Users</b></a> <br>
			<br>
			<p class="font-weight-bold ">Tools and Modules</p>
			<hr size="2" color="black">
			<div class="card-group col-sm-10">
				<div class="card ml-3 text-center " style="width: 20rem;">
					<img src="DesignData/img/maven.jpeg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="font-weight-bold">
							Maven (Java) <span class="badge badge-secondary">New</span>
						</p>
						<br>
						<p class="card-text">Apache Maven is a software project
							management and comprehension tool. Based on the concept of a
							project object model (POM), Maven can manage a project's build,
							reporting and documentation from a central piece of information.</p>
						<a href="mavenModule.jsp" class="btn btn-primary btn-round">Click
							here</a>
					</div>
				</div>
				<div class="card ml-3 text-center" style="width: 20rem;">
					<img src="DesignData/img/jenkins.jpg" class="card-img-top"
						alt="...">
					<div class="card-body">
						<p class="font-weight-bold">
							Jenkins <span class="badge badge-secondary">New</span>
						</p>
						<br>
						<p class="card-text">Jenkins is an open source automation tool
							written in Java with plugins built for Continuous Integration
							purpose.</p>
						<a href="jenkinsModule.jsp" class="btn btn-primary btn-round">Click
							here</a>
					</div>
				</div>
			</div>
			<div class="card-group col-sm-10">
				<div class="card ml-3 text-center" style="width: 20rem;">
					<img src="DesignData/img/jira-logo.png" class="card-img-top"
						alt="...">
					<div class="card-body">
						<p class="font-weight-bold">
							JIRA <span class="badge badge-secondary">New</span>
						</p>
						<br>
						<p class="card-text">JIRA is a tool developed by Australian
							Company Atlassian. It is used for bug tracking, issue tracking,
							and project management. The name "JIRA" is actually inherited
							from the Japanese word "Gojira" which means "Godzilla". The basic
							use of this tool is to track issue and bugs related to your
							software and Mobile apps.</p>
						<a href="jiraModule.jsp" class="btn btn-primary btn-round">Click
							here</a>
					</div>
				</div>
				<div class="card ml-3 text-center" style="width: 20rem;">
					<img src="DesignData/img/github.jpg" class="card-img-top" alt="...">
					<div class="card-body">
						<p class="font-weight-bold">
							GitHub <span class="badge badge-secondary">New</span>
						</p>
						<br>
						<p class="card-text">GitHub is a Git repository hosting
							service, but it adds many of its own features. While Git is a
							command line tool, GitHub provides a Web-based graphical
							interface. It also provides access control and several
							collaboration features, such as a wikis and basic task management
							tools for every project.</p>
						<a href="githubModule.jsp" class="btn btn-primary btn-round">Click
							here</a>
					</div>
				</div>
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
							�
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

	<div class="fixed-plugin">
		<div class="dropdown show-dropdown">
			<a href="#" data-toggle="dropdown"> <i class="fa fa-cog fa-2x">
			</i>
			</a>

			<ul class="dropdown-menu">
				<li class="header-title">Sidebar Style</li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger">
						<p>Background Image</p> <label class="switch"> <input
							type="checkbox" data-toggle="switch" checked=""
							data-on-color="primary" data-off-color="primary"><span
							class="toggle"></span>
					</label>
						<div class="clearfix"></div>
				</a></li>
				<li class="adjustments-line"><a href="javascript:void(0)"
					class="switch-trigger background-color">
						<p>Filters</p>
						<div class="pull-right">
							<span class="badge filter badge-black" data-color="black"></span>
							<span class="badge filter badge-azure" data-color="azure"></span>
							<span class="badge filter badge-green" data-color="green"></span>
							<span class="badge filter badge-orange" data-color="orange"></span>
							<span class="badge filter badge-red" data-color="red"></span> <span
								class="badge filter badge-purple active" data-color="purple"></span>
						</div>
						<div class="clearfix"></div>
				</a></li>
				<li class="header-title">Sidebar Images</li>

				<li class="active"><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="DesignData/img/sidebar-6.jpg" alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="DesignData/img/sidebar-3.jpg" alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="DesignData/img/sidebar-4.jpg" alt="" />
				</a></li>
				<li><a class="img-holder switch-trigger"
					href="javascript:void(0)"> <img
						src="DesignData/img/sidebar-5.jpg" alt="" />
				</a></li>
			</ul>
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
<script type="text/javascript">
    $(document).ready(function() {
        // Javascript method's body can be found in assets/js/demos.js
        demo.initDashboardPageCharts();
        demo.showNotification();
    });
</script>
</html>
