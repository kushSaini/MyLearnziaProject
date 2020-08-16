<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Insert Assignment</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800,800i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="css/main.css" rel="stylesheet" media="all">
</head>

 <body>
    <div class="page-wrapper bg-gra-03 p-t-45 p-b-51">
        <div class="wrapper wrapper--w790">
            <div class="card card-5">
                <div class="card-heading">
                    <h2 class="title">Assignment</h2>
                </div>
                
                <div class="card-body">
                    <form name="Practice" method="post" action="AssignmentController">
                    <div class="form-row">
                    <div class="name">ID no</div>
                        <div class="value">
                            <div class="input-group">
                                <input class="input--style-5" type="number" name="id">
                            </div>
                        </div>
                    </div>
                        <div class="form-row m-b-55">
                           <div class="name">Questions</div>
                            <div class="value">
                                <div class="row row-space">
                                    <div class="col-2">
                                        <div class="input-group-desc">
                                            <textarea class="input--style-5" name="question" cols="49" rows="7" placeholder="Type here..."></textarea>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="name">Module</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="module">
                                    </div>
                                </div>
                            </div>
                        <div class="form-row">
                            <div class="name">Topic</div>
                                <div class="value">
                                    <div class="input-group">
                                        <input class="input--style-5" type="text" name="topic">
                                    </div>
                                </div>
                            </div>
                        <div class="form-row">
                            <div class="name">End Date</div>
                                <div class="value">
                                    <div class="col-9">
                                        <div class="rs-select2 js-select-simple select--no-search">
                                        <input class="input--style-5" type="text" name="enddate" placeholder="dd/mm/yyyy">
                                        </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <input class="btn btn--radius-2 btn--red" type="submit" value="Submit">
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
   </div>

    <!-- Jquery JS-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>

    <!-- Main JS-->
    <script src="js/global.js"></script>

</body>

</html>
<!-- end document-->