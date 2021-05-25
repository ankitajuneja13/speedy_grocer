<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
    <title>Speedy Grocer-Contact Us</title>
    <link rel="icon" href="pimages/sg.png" sizes="32x32" type="image/png">
    <!-- for-mobile-apps -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript">
        addEventListener("load", function() {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
    </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //font-awesome icons -->
    <!-- js -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!-- //js -->
    <link href='//fonts.googleapis.com/css?family=Ubuntu:400,300,300italic,400italic,500,500italic,700,700italic' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
    <!-- start-smoth-scrolling -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event) {
                event.preventDefault();
                $('html,body').animate({
                    scrollTop: $(this.hash).offset().top
                }, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->
    <%String attempt=request.getParameter("attempt");
if(attempt!=null&&attempt.equals("true")){%>
        <script type="text/javascript">
            alert("Messege send!!!");
        </script>

        <%} %>
</head>

<body>
    <!-- header -->

    <jsp:include page="header1.jsp"></jsp:include>

    <!-- script-for sticky-nav -->
    <script>
        $(document).ready(function() {
            var navoffeset = $(".agileits_header").offset().top;
            $(window).scroll(function() {
                var scrollpos = $(window).scrollTop();
                if (scrollpos >= navoffeset) {
                    $(".agileits_header").addClass("fixed");
                } else {
                    $(".agileits_header").removeClass("fixed");
                }
            });

        });
    </script>
    <!-- //script-for sticky-nav -->
    <jsp:include page="header2.jsp"></jsp:include>

    <!-- //header -->
    <!-- products-breadcrumb -->
    <div class="products-breadcrumb">
        <div class="container">
            <ul>
                <li><i class="fa fa-home" aria-hidden="true"></i><a href="index.jsp">Home</a><span>|</span></li>
                <li>Mail Us</li>
            </ul>
        </div>
    </div>
    <!-- //products-breadcrumb -->
    <!-- banner -->
    <div class="banner">
        <div class="w3l_banner_nav_left">
            <nav class="navbar nav_bottom">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header nav_2">
                    <button type="button" class="navbar-toggle collapsed navbar-toggle1" data-toggle="collapse" data-target="#bs-megadropdown-tabs">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <jsp:include page="categorymenu.jsp"></jsp:include>
                <!-- /.navbar-collapse -->
            </nav>
        </div>
        <div class="w3l_banner_nav_right">
            <!-- mail -->
            <div class="mail">
                <h3>Mail Us</h3>
                <div class="agileinfo_mail_grids">
                    <div class="col-md-4 agileinfo_mail_grid_left">
                        <ul>
                            <li><i class="fa fa-home" aria-hidden="true"></i></li>
                            <li>address<span>CGC College of Engineering</span></li>
                        </ul>
                        <ul>
                            <li><i class="fa fa-envelope" aria-hidden="true"></i></li>
                            <li>email<span><a href="mailto:mohit.gupta30000@gmail.com">mohit.gupta30000@gmail.com</a></span></li>
                        </ul>
                        <ul>
                            <li><i class="fa fa-phone" aria-hidden="true"></i></li>
                            <li>call to us<span>9529929045</span></li>
                        </ul>
                    </div>
                    <div class="col-md-8 agileinfo_mail_grid_right">
                        <form action="Message" method="Get">
                            <div class="col-md-6 wthree_contact_left_grid">
                                <input type="text" name="Name" placeholder="Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name*';}" required="">
                                <input type="email" name="Email" placeholder="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email*';}" required="">
                            </div>
                            <div class="col-md-6 wthree_contact_left_grid">
                                <input type="text" name="Telephone" placeholder="Telephone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Telephone*';}" required="">
                                <input type="text" name="Subject" placeholder="Subject" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Subject*';}" required="">
                            </div>
                            <div class="clearfix"> </div>
                            <textarea name="Message" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Message...';}" required="">Message...</textarea>
                            <input type="submit" value="Submit">
                            <input type="reset" value="Clear">
                        </form>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!-- //mail -->
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //banner -->


    <!-- footer -->
    <jsp:include page="footer.jsp"></jsp:include>
    <!-- //footer -->
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <script>
        $(document).ready(function() {
            $(".dropdown").hover(
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideDown("fast");
                    $(this).toggleClass('open');
                },
                function() {
                    $('.dropdown-menu', this).stop(true, true).slideUp("fast");
                    $(this).toggleClass('open');
                }
            );
        });
    </script>
    <!-- here stars scrolling icon -->
    <script type="text/javascript">
        $(document).ready(function() {
            /*
            	var defaults = {
            	containerID: 'toTop', // fading element id
            	containerHoverID: 'toTopHover', // fading element hover id
            	scrollSpeed: 1200,
            	easingType: 'linear'
            	};
            */

            $().UItoTop({
                easingType: 'easeOutQuart'
            });

        });
    </script>
    <!-- //here ends scrolling icon -->
</body>

</html>