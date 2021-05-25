<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*,java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="header-section">
			 
			<!--toggle button start-->
			<a class="toggle-btn  menu-collapsed"><i class="fa fa-bars"></i></a>
			<!--toggle button end-->

			<!--notification menu start -->
			<div class="menu-right">
				<div class="user-panel-top">  	
					<div class="profile_details_left">
						<ul class="nofitications-dropdown">
							<li class="dropdown">
							<%JDBC j1=new JDBC();
								String sq="select count(m_id) from customer_message where date=curdate()";
								ResultSet r=j1.executeQuery(sq);
								while(r.next()){
								%>
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge"><%=r.getInt(1) %></span></a>
									
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have <%=r.getInt(1) %> new messages</h3>
												</div>
											</li>
																					
										</ul><%} %>
							</li>
							
							
								   							   		
							<div class="clearfix"></div>	
						</ul>
					</div>
					<div class="profile_details">		
						<ul>
							<li class="dropdown profile_details_drop">
								<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
									<div class="profile_img">	
										 <div class="user-name">
										 <%String name=(String)session.getAttribute("name");
										 String role=(String)session.getAttribute("role");
									      if(role.equals("admin")){%>
											<p><%=name %><span>Administrator</span></p><% }else{%>
										<p><%=name %><span>Delivery Man</span></p>
										<%} %>
										 </div>
										 <i class="lnr lnr-chevron-down"></i>
										 <i class="lnr lnr-chevron-up"></i>
										<div class="clearfix"></div>	
									</div>	
								</a>
								<ul class="dropdown-menu drp-mnu">
									<li> <a href="../logout"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</ul>
							</li>
							<div class="clearfix"> </div>
						</ul>
					</div>		
					<div class="social_icons">
						<div class="col-md-4 social_icons-left">
							<a href="#" class="yui"><i class="fa fa-facebook i1"></i><span>300<sup>+</sup> Likes</span></a>
						</div>
						<div class="col-md-4 social_icons-left pinterest">
							<a href="#"><i class="fa fa-google-plus i1"></i><span>500<sup>+</sup> Shares</span></a>
						</div>
						<div class="col-md-4 social_icons-left twi">
							<a href="#"><i class="fa fa-twitter i1"></i><span>500<sup>+</sup> Tweets</span></a>
						</div>
						<div class="clearfix"> </div>
					</div>            	
					<div class="clearfix"></div>
				</div>
			  </div>
			<!--notification menu end -->
			</div>
