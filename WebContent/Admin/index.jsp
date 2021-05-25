<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
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
<link rel="icon" href="/speedy_grocer/WebContent/Admin/images/sg.png" sizes="32x32" type="images/png">
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
		<div class="main-content">
			<!-- header-starts -->
			<jsp:include page="header.jsp"></jsp:include>
			
					<!-- //header-ends -->
			<div id="page-wrapper">
				<div class="graphs">
					<div class="col_3">
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-mail-forward"></i>
								<div class="stats">
								<%JDBC j1=new JDBC();
								String sq="select count(o_id) from `order`";
								ResultSet r=j1.executeQuery(sq);
								while(r.next()){
								%>
								  <h5><%=r.getInt(1) %></h5><%} %>
								  <div class="grow">
									<p>Total Orders</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-users"></i>
								<div class="stats">
								<%JDBC j2=new JDBC();
								String sq2="select count(cs_id) from `customer`";
								ResultSet r2=j2.executeQuery(sq2);
								while(r2.next()){
								%>
								  <h5><%=r2.getInt(1) %></h5><%} %>
								  <div class="grow grow1">
									<p>Happy Customer</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="col-md-3 widget widget1">
							<div class="r3_counter_box">
								<i class="fa fa-eye"></i>
								<div class="stats">
								<%JDBC j3=new JDBC();
								String sq3="select count(o_id) from `order` where o_date=curdate()";
								ResultSet r3=j3.executeQuery(sq3);
								while(r3.next()){
								%>
								  <h5><%=r3.getInt(1) %></h5><%} %>
								  <div class="grow grow3">
									<p>Today Order</p>
								  </div>
								</div>
							</div>
						 </div>
						 <div class="col-md-3 widget">
							<div class="r3_counter_box">
								<i class="fa fa-usd"></i>
								<div class="stats">
								<%JDBC j4=new JDBC();
								String sq4="select sum(o_gt) from `order` ";
								ResultSet r4=j4.executeQuery(sq4);
								while(r4.next()){
								%>
								  <h5><%=r4.getFloat(1) %></h5><%} %>
								  <div class="grow grow2">
									<p>Total Revenue</p>
								  </div>
								</div>
							</div>
						</div>
						<div class="clearfix"> </div>
					</div>
		<div class="col_1">
			<div class="col-md-6">
				<div class="activity_box">
					<h3>Inbox</h3>
					<div class="scrollbar scrollbar1" id="style-2">
					<%JDBC j=new JDBC();
							String sql="select * from customer_message";
							ResultSet rs=j.executeQuery(sql);
							while(rs.next()){
							%>
						<div class="activity-row">
							
							<div class="col-xs-7 activity-desc">
							
								<h5><span><%=rs.getString(2) %></span></h5>
								<p><%=rs.getString(3) %></p>
							</div>
							<div class="col-xs-2 activity-desc1"><h6><%=rs.getDate(4) %></h6></div>
							<div class="clearfix"> </div>
						</div>
						<%} %>	
					</div>
				</div>
			</div>
			
			<div class="col-md-6">
				<div class="activity_box activity_box2">
					<h3>todo</h3>
					<div class="scrollbar" id="style-2">
						<div class="activity-row activity-row1">
							<div class="single-bottom">
								<ul><%JDBC j5=new JDBC();
								String sql5="select * from to_do";
								ResultSet rs5=j5.executeQuery(sql5);
								while(rs5.next()){%>
									<li>
										
										<label for="brand"><span></span> <%=rs5.getString(2) %></label>
									<div class="col-xs-2 activity-desc1"><a href="../ToDoDelete?id=<%=rs5.getInt(1) %>">done</a></div>	
									
									</li>
									
									<%} %>
										
									
								</ul>
							</div>
						</div>
					</div>
					<form action="../ToDo" method="get">
						<input type="text" name="to_do" value="Enter your text" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter your text';}" required="">
						<input type="submit" value="Submit" required=""/>		
					</form>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
			
		</div>
				</div>
			<!--body wrapper start-->
			</div>
			 <!--body wrapper end-->
		</div>
        <!--footer section start-->
			
			
			
			
			        <!--footer section end-->

      <!-- main content end-->
   </section>
  
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
</body>
</html>