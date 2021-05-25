<%@ page language="java" import="com.speedygrocer.dto.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<!DOCTYPE html>
<html>
<head>
<title>Speedy Grocer-Shopping cart</title>
<link rel="icon" href="pimages/sg.png" sizes="32x32" type="image/png">
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shopping Cart Widget Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //for-mobile-apps -->
<link href="css/cartstyle.css" rel="stylesheet" type="text/css" media="all" />
<link href='//fonts.googleapis.com/css?family=Signika:400,300,600,700' rel='stylesheet' type='text/css'>
<script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
<script>$(document).ready(function(c) {
	$('.alert-close').on('click', function(c){
		$('.message').fadeOut('slow', function(c){
	  		$('.message').remove();
		});
		
	});	  
});

</script>
<script>$(document).ready(function(c) {
	$('.alert-close1').on('click', function(c){
		$('.message1').fadeOut('slow', function(c){
	  		$('.message1').remove();
		});
	});	  
});
</script>
<script>$(document).ready(function(c) {
	$('.alert-close2').on('click', function(c){
		$('.message2').fadeOut('slow', function(c){
	  		$('.message2').remove();
		});
	});	  
});
</script>
<style>
.button {
    background-color: #F05555;
    border: none;
}
</style>
</head>
<body>
	<!-- main -->
		<div class="main">
			<h1>SPEEDY GROCER</h1>
			<div class="main-grid1">
			<ul><div align="left" >
					<button  class="button" onclick="goBack()"><img src="pimages/arrow1.png"></button>
				<div align="center">	<li><h3 align="center">Your Shopping Cart</h3></li></div>
					</div>
				</ul>
			</div>
			<div class="main-grid2">
				<h2>My Shopping Bag</h2>
				<% 
CartDTO cdto=(CartDTO)session.getAttribute("cart");
				if(cdto==null || (cdto.plist.size()==0)){%>
					<div class="message">
					 <div class="alert-close"> </div> 
					
					<div class="list_desc" align="center"><h2>Cart is Empty</h2>
					</div>
			<% 	}else{
for(ProductDTO p: cdto.plist)
{%>
				<div class="cart_box">
					<div class="message">
						 <div class="alert-close"><a href="AddToCartServlet?p_id=<%=p.getPid()%>&action=delete"  data-text="Delete"><span style="color:red">delete</span></a> </div> 
						<div class="list_img"><img src="pimages/<%=p.getPid()%>.jpg" class="img-responsive" alt=""/></div>
						<div class="list_desc"><h4>Rs.<%=p.getPname()%></h4><span class="actual">
						 Rs.<%=p.getPcost()%></span></div>
						  <div class="clear"></div>
					</div>
				</div>
	<%} %>			
				<div class="total">
					<div class="total-left">
					<%
					int sum=0;
					for(ProductDTO p: cdto.plist)
						{
						sum=sum+p.getPcost();}%>
						<p>Total :<span> <%=sum %></span></p>
					</div>
					<div class="total-right">
						<a href="Order">Check Out</a>
					</div>
					<%} %>
					<div class="clear"> </div>
				</div>
			</div>
			
		</div>
	<!-- //main -->
</body>
</html>
<script>
function goBack(){
	window.history.back();
}
</script>