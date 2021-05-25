
<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


						
		
														
<% String c=request.getParameter("Product");
JDBC j=new JDBC();
String sql = "select * from product where p_name like '"+c+"%'";
ResultSet r=j. executeQuery(sql);
	   if(r.next()) {
		   System.out.println("if");
	      while (r.next()){
	      %>
	      <div class="col-md-3 w3ls_w3l_banner_left">
	      <div class="hover14 column">
	      					<div class="agile_top_brand_left_grid w3l_agile_top_brand_left_grid">
	      					<%float offer1=r.getFloat(8);
							if(offer1!=0){ %>				
							<div class="agile_top_brand_left_grid_pos">
								<img src="pimages/offer.png" alt=" " class="img-responsive" />
							</div><%} %>
							<div class="agile_top_brand_left_grid1">
								<figure>
									<div class="snipcart-item block">
											<div class="snipcart-thumb">
											<a href="single.jsp?prod_id=<%=r.getInt(1)%>"><img src="pimages/<%=r.getInt(1)%>.jpg" alt=" " height="140" width="140" class="img-responsive" /></a>
											<a href="single.jsp?prod_id=<%=r.getInt(1)%>"><p><%=r.getString(3) %></p></a>
											<%float offer=r.getFloat(8);
											if(offer==0){%>
											<h4>Rs.<%=r.getInt(4) %> </h4><%}
											else{
												int p=r.getInt(4);
												float o=r.getFloat(8);
												float d=p*o;
												float cost=p-d;
											
											%>
											<h4><span>Rs.<%=p %></span>&nbsp&nbsp&nbsp&nbsp&nbspRs.<%=cost %> </h4><%} %>
											
											</div>
											<%int stock=r.getInt(7);
											   
											   if(stock!=0){ %>
											<div class="snipcart-details" >
											<form >
												<fieldset>
													<input type="hidden" name="cmd" value="_cart" />
													<input type="hidden" name="add" value="1" />
													<input type="hidden" name="item_name" value="<%=r.getString(3) %>" />
													<input type="hidden" name="amount" value="<%=r.getInt(4) %>" />
													<input type="button" name="submit" onclick="addtocart(<%=r.getInt(1)%>)" value="Add to cart" class="button" />
												</fieldset>
											</form>
											</div><%}else{%>
											<div align="center"><br><span style="color:red"><h4>Not In Stock</h4></span></div><br>
											<%} %>
									</div>
								</figure>
								</div>	
								</div>	
								</div>
								</div>
	<%} }else{System.out.println("else");
%>
	
	     
	      					     					
	      					<h3 align="center">Result not found.</h3>
	      					
	      					
	      					
	      					
	<%} %>										
											
						
									
										
										
						
						
					
