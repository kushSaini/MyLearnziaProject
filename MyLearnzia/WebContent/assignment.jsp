<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.learnzia.dao.*,com.learnzia.model.*,java.util.*" %>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Assignment View</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="apple-touch-icon" sizes="76x76" href="DesignData/img/apple-icon.png">
    <link rel="icon" type="image/png" href="DesignData/img/favicon.ico">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<link rel="icon" type="image/png"
	href="assignment_table/images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="assignment_table/vendor/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/vendor/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/vendor/select2/select2.min.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/vendor/perfect-scrollbar/perfect-scrollbar.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/css/util.css">
<link rel="stylesheet" type="text/css"
	href="assignment_table/css/main1.css">
	   <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,200" rel="stylesheet" />
	    <link href="DesignData/css/bootstrap.min.css" rel="stylesheet" />
    <link href="DesignData/css/light-bootstrap-dashboard.css " rel="stylesheet" />
    <link href="DesignData/css/demo.css" rel="stylesheet" />
    <link rel="stylesheet" type="text/css" href="global.css"/>
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
	<div class="limiter">
	
		<div class="container-table100">
		<div align="center">
						<h1>** Assignments **</h1>
							</div>
			<div class="wrap-table100">
				<div class="table100 ver1">

					<div class="wrap-table100-nextcols js-pscroll">
						<div class="table100-nextcols">
						<table>

								<thead>
									<tr class="row100 head">
										<th class="cell100 column2">Assignment Id</th>
										<th class="cell100 column3">Module</th>
										<th class="cell100 column4">Topic</th>
										<th class="cell100 column5">Question</th>
										<th class="cell100 column6">End Date</th>
										<th class="cell100 column7"></th>

									</tr>
								</thead>



								<tbody>
									<%
										AssignmentDAOImpl dao = new AssignmentDAOImpl();
										List<Assignment> li = dao.selectAssignment();
										for (int i = 0; i < li.size(); i++) {
									%>
									<tr class="row100 body">
										<td class="cell100 column2"><%=li.get(i).getId()%></td>
										<td class="cell100 column3"><%=li.get(i).getModule()%></td>
										<td class="cell100 column4"><%=li.get(i).getTopic()%></td>
										<td class="cell100 column5"><textarea rows="5" cols="42"
												readonly><%=li.get(i).getQuestion()%> </textarea></td>
										<td class="cell100 column6"><%=li.get(i).getEnddate()%></td>
										<td class="cell100 column7"><a class="login101-form-btn"
											href="https://script.google.com/macros/s/AKfycby91N2mOQ7IRXccOoCfu_AHZM23NqqY19k13nK3c0Dp/dev">Upload
												</a></td>
									</tr>
									<%
										}
									%>
								</tbody>
							</table>
						</div>
					</div>
				</div>
				
					<div class="container-login100-form-btn">
						<a class="login100-form-btn" href="assignmentInsert.jsp" role="button">Insert</a>
					</div>
			</div>
		</div>
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
        </div>
    </div>


	<!--===============================================================================================-->
	<script src="assignment_table/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="assignment_table/vendor/bootstrap/js/popper.js"></script>
	<script src="assignment_table/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="assignment_table/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script
		src="assignment_table/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
	<script>
		$('.js-pscroll').each(function(){
			var ps = new PerfectScrollbar(this);

			$(window).on('resize', function(){
				ps.update();
			})

			$(this).on('ps-x-reach-start', function(){
				$(this).parent().find('.table100-firstcol').removeClass('shadow-table100-firstcol');
			});

			$(this).on('ps-scroll-x', function(){
				$(this).parent().find('.table100-firstcol').addClass('shadow-table100-firstcol');
			});

		});

		
		
		
	</script>
	<!--===============================================================================================-->
	<script src="assignment_table/js/main.js"></script>

</body>
</html>