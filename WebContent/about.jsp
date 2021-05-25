<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>

<head>
    <title>Speedy Grocer-About us</title>
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
                <li>About Us</li>
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
            <!-- about -->
            <div class="privacy about">
                <h3>About Us</h3>
                <p class="animi">Speedy grocer online food and grocery store.You will find everything you are looking for. Right from fresh Fruits and Vegetables, Spices and Seasonings to Packaged products, Beverages we have it all. Choose from a wide range of options
                    in every category, exclusively handpicked to help you find the best quality available at the lowest prices. </p>
                <div class="agile_about_grids">
                    <div class="col-md-6 agile_about_grid_right">
                        <img src="pimages/a1.jpg" alt=" " class="img-responsive" />
                    </div>
                    <div class="col-md-6 agile_about_grid_left">
                        <ol>
                            <li>Best Products</li>
                            <li>Best quality</li>
                            <li>On time delivery</li>
                            <li>Best Price</li>
                        </ol>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
            <!-- //about -->
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //banner -->
    <!-- team -->
    <div class="team">
        <div class="container">
            <h3>Meet Our Amazing Team</h3>
            <div class="agileits_team_grids">

                <div class="col-md-3 agileits_team_grid">
                    <img src="https://guptamohit004.me/img/mohit.jpg" alt=" " class="img-responsive" height="230" width="140" />
                    <h4>Mohit Gupta Upneja</h4>
                    <p>Developer</p>

                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
    <!-- //team -->

    <!-- //newsletter -->
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