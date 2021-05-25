<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.dto.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE HTML>
<html>
<head>
<title>Speedy Grocer</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Easy Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
 <!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!----webfonts--->
<link href='//fonts.googleapis.com/css?family=Cabin:400,400italic,500,500italic,600,600italic,700,700italic' rel='stylesheet' type='text/css'>
<!---//webfonts---> 
 <!-- Meters graphs -->
<script src="js/jquery-1.10.2.min.js"></script>
<!-- Placed js at the end of the document so the pages load faster -->

</head> 
   
 <body class="sticky-header left-side-collapsed"  onload="initMap()">
    <section>
    <!-- left side start-->
		<jsp:include page="menu.jsp"></jsp:include>
    <!-- left side end-->
    
    <!-- main content start-->
		<div class="main-content main-content4">
			<!-- header-starts -->
			<jsp:include page="header.jsp"></jsp:include>
				<!-- //header-ends -->
			<div id="page-wrapper">
				<div class="graphs">
					<h3 class="blank1">Category</h3>
					 
					 <div class="xs form" id="form1"  >
<form action="../confirmupdate" method="get">
<%System.out.println("Form");
CategoryDTO d =(CategoryDTO)session.getAttribute("catdto");%>
  <div class="form-group">
  <label for="Id">Id:</label>
    <input type="hidden" class="form-control" id="id" name="catId" value = <%=d.getCid() %>>
    <br>
    <label for="Category"> Category:</label>
    <input type="text" class="form-control" id="category" name="cate" value=<%=d.getCname() %>>
    <br>
    <label for="Status">Status:</label>
    <input type="text" class="form-control" id="status" name="st" value = <%=d.getCstatus() %>>
    <br>
    
      </div><button type="submit" class="btn btn-default">Update</button>
  
</form>
</div>
					
					 
					</div>
				</div>
			</div>
		<!--footer section start-->
			
        <!--footer section end-->
	</section>
	
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>

