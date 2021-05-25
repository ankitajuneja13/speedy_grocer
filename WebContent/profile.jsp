<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Speedy Grocer-User Profile</title>
<link rel="icon" href="pimages/sg.png" sizes="32x32" type="image/png">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Grocery Store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
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
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script>
<!-- start-smoth-scrolling -->
<%String attempt=request.getParameter("update");
if(attempt!=null&&attempt.equals("true")){%>
<script type="text/javascript">
alert("Profile Updated");
</script>
<%} %>
</head>
	
<body>
<!-- header -->
	<jsp:include page="header1.jsp"></jsp:include>
<!-- script-for sticky-nav -->
	<script>
	$(document).ready(function() {
		 var navoffeset=$(".agileits_header").offset().top;
		 $(window).scroll(function(){
			var scrollpos=$(window).scrollTop(); 
			if(scrollpos >=navoffeset){
				$(".agileits_header").addClass("fixed");
			}else{
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
				<li>Profile</li>
			</ul>
		</div>
	</div>
<!-- //products-breadcrumb -->
<!-- banner -->
	<div class="banner">
	<div class="w3l_banner_nav_left">
	<img src="pimages/profile.png" alt="" height="400" width="400">
	</div>
	<div class="w3l_banner_nav_right">
	<div class="w3_login" id="1">
	
			<h3>Profile</h3>
			<div class="w3_login_module">
			<div class="col-md-3 w3_footer_grid" ></div>
			
	
	<div class="col-md-3 w3_footer_grid" >
				
				<ul class="w3_footer_grid_list">
					<li>User Name</li>
					<li>User Email</li>
					<li>contact Number</li>
				    <li>Address</li>
				    <button type="button" onclick="changestyle()">Update Profile</button>
				</ul>
			</div>
			<div class="col-md-3 w3_footer_grid" >
				
				<ul class="w3_footer_grid_list">
				<%JDBC j=new JDBC(); 
				int i=(Integer)session.getAttribute("id");
				System.out.println("profile "+i);
				String sql="select * from `customer` where `cs_id`="+i;
				ResultSet rs=j.executeQuery(sql);
						while(rs.next()){%>
					<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(2) %></li>
					<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(4) %></li>
					<li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(3) %></li>
				    <li>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<%=rs.getString(5) %></li>
				    
				</ul>
			</div>
			</div></div>
<div class="w3_login" id="2">
	
			<h3>Account Information</h3>
			<div class="w3_login_module">
			<div class="module form-module">
			
					
					<form action="Profile" method="get">
					
					  <input type="text" name="Username" value =<%=rs.getString(2) %>  required=" ">
					  <input type="email" name="Email" value = <%=rs.getString(4) %> required=" ">
					  <input type="text" name="Phone" value = <%=rs.getString(3) %> required=" ">
				      <input type="text" name="Addr" value = <%=rs.getString(5) %> required=" ">
					 
					  <input type="submit" value="Save Changes">
					</form><%} %>
				  </div>
			</div></div>
			
			<div class="clearfix"></div>
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
$(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).stop( true, true ).slideUp("fast");
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
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
<!-- //here ends scrolling icon -->

</body>
</html>
<script type="text/javascript">
function changestyle()
{
	

	document.getElementById("1").style.display = "none";
	document.getElementById("2").style.display = "block";
	}
</script>