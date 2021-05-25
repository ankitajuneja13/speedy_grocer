
<div class="left-side sticky-left-side">

			<!--logo and iconic logo start-->
			<div class="logo">
				<h1><a href="index.jsp">Easy <span>Admin</span></a></h1>
			</div>
			<div class="logo-icon text-center">
				<a href="index.jsp"><i class="lnr lnr-home"></i> </a>
			</div>

			<!--logo and iconic logo end-->
			<div class="left-side-inner">

				<!--sidebar nav start-->
				
					<ul class="nav nav-pills nav-stacked custom-nav">
					<%String r = session.getAttribute("role").toString(); 
					System.out.println(r);
					if(r.equals("admin")){%>
						<li class="active"><a href="index.jsp"><i class="lnr lnr-power-switch"></i><span>Dashboard</span></a></li>
						
						
						<li><a href="todayorder.jsp"><i class="lnr lnr-cog"></i> <span>Order</span></a></li>
						
						
						<li><a href="orderdispatch.jsp"><i class="lnr lnr-spell-check"></i> <span>Order Dispatch</span></a></li>
						<li><a href="ordercompleted.jsp"><i class="lnr lnr-menu"></i> <span>Order Completed</span></a></li>              
						<li><a href="availablestock.jsp"><i class="lnr lnr-indent-increase"></i> <span>Available Stock</span></a></li>
						<li><a href="category.jsp"><i class="lnr lnr-pencil"></i> <span>Category</span></a></li>
						<li><a href="product.jsp"><i class="lnr lnr-select"></i> <span>Product</span></a></li>
					<%} else{ %><li><a href="orderdispatch.jsp"><i class="lnr lnr-spell-check"></i> <span>Order Dispatch</span></a></li>
					<%} %>
					</ul>
				<!--sidebar nav end-->
			</div>
		</div>
