<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<!doctype html>
<html>
<head>
<title>Speedy Grocer-Shipment</title>
<link rel="icon" href="pimages/sg.png" sizes="32x32" type="image/png">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shipment Track Widget Responsive, Login form web template,Flat Pricing tables,Flat Drop downs  Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link href="css/mystyle.css" rel="stylesheet" type="text/css" media="all" />

</head>

<body onload="load()" >

<div class="header">
	<h1>Shipment Track</h1>
</div>
<%		int oid=Integer.parseInt(request.getParameter("order_id"));
	JDBC j=new JDBC();
	String sql="select `order`.o_status,admin.a_name from `order` left join admin on `order`.a_id=admin.a_id where `order`.o_id="+oid;
	System.out.println(sql);
	ResultSet rs=j.executeQuery(sql);
	while(rs.next()){
		int status=rs.getInt(1);
		System.out.println("status "+status);
 %>
<div class="content">
	<div class="content1">
		<h2>Order Tracking: <%=oid %></h2>
	</div>
	<div class="content2">
		<div class="content2-header1">
			<p>Shipped by : <span><%=rs.getString(2) %></span></p>
		</div>
		<div class="content2-header1">
		<%if(status==1){ %>
			<p>Status : <span>Order Placed</span></p>
			<%}else if(status==2){%><p>Status : <span>Order Dispatched</span></p>
			<%}else { %><p>Status : <span>Delivered</span></p><%} %>
		</div>
		
		<div class="clear"></div>
	</div>
		<div class="content3 centre" >
        <div class="shipment" >
        <%if(status==1){ %>
			<div class="confirm" id="1">
                <div class="imgcircle">
                    <img src="pimages/confirm.png" alt="confirm order">
            	</div>
				
				<p>Confirmed Order</p>
			</div>
			<%}else if(status==2){%>
			
			<div class="dispatch" id="2">
				<div class="imgcircle">
                	<img src="pimages/dispatch.png" alt="dispatch product">
            	</div>
				
				<p>Dispatched Item</p>
			</div><%}else { %>
			<div class="delivery" id="3">
				<div class="imgcircle">
                	<img src="pimages/delivery.png" alt="delivery">
				</div>
				<p>Product Delivered</p>
			</div><%} %>
			
			<div class="clear"></div>
		</div>
	</div>
</div>


</body><%} %>
</html>
<script >
function load()
{java.lang.System.out.println("Entering function.");

	alert("hello");
	}
</script>