
<div class="agileits_header">
		<div class="w3l_offers">
			<a href="#deals">Today's special Offers !</a>
		</div>
		<div class="w3l_search">
			<form action="search.jsp" method="post">
				<input type="text" name="Product" value="Search a product..." onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search a product...';}" required="">
				<input type="submit" value=" ">
			</form>
		</div>
		<div class="product_list_header">  
			<form action="cart1.jsp" method="post" class="last">
                <fieldset>
                    <input type="hidden" name="cmd" value="_cart" />
                    <input type="hidden" name="display" value="1" />
                    <input type="submit" name="submit" value="View your cart" class="button" />
                </fieldset>
            </form>
		</div>
		<div class="w3l_header_right">
			<ul>
				<li class="dropdown profile_details_drop">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user" aria-hidden="true"></i><span class="caret"></span></a>
					<div class="mega-dropdown-menu">
						<div class="w3ls_vegetables">
							<ul class="dropdown-menu drp-mnu">
							<%String name=(String)session.getAttribute("name");
							if(name==null){%>
								<li><a href="login.jsp">Login</a></li> 
								<li><a href="login.jsp">Sign Up</a></li>
							<%}else{%>
							<span style"color:red">Welcome&nbsp&nbsp<%=name %></span>
							<li><a href="logout">Logout</a></li>
							<li><a href="profile.jsp">Profile</a></li>
							<%}%>
								
							</ul>
						</div>                  
					</div>	
				</li>
			</ul>
		</div>
		<div class="w3l_header_right1">
			<h2><a href="mail.jsp">Contact Us</a></h2>
		</div>
		<div class="clearfix"> </div>
	</div>