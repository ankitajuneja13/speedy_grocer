<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


						
		
														
<% String p=request.getParameter("prod_id");
JDBC j=new JDBC();
String sql = "select * from product where p_id="+p;
ResultSet r=j. executeQuery(sql);
	      
	      while (r.next()){%>
	      			<div class="agileinfo_single">
				<h5><%=r.getString(3) %></h5>
				<div class="col-md-4 agileinfo_single_left">
					<img id="example" src="pimages/<%=r.getInt(1) %>.jpg" alt=" " height="360" width="360" class="img-responsive" />
				</div>
				<div class="col-md-8 agileinfo_single_right">
					<div class="rating1">
						<span class="starRating">
							<input id="rating5" type="radio" name="rating" value="5">
							<label for="rating5">5</label>
							<input id="rating4" type="radio" name="rating" value="4">
							<label for="rating4">4</label>
							<input id="rating3" type="radio" name="rating" value="3" checked>
							<label for="rating3">3</label>
							<input id="rating2" type="radio" name="rating" value="2">
							<label for="rating2">2</label>
							<input id="rating1" type="radio" name="rating" value="1">
							<label for="rating1">1</label>
						</span>
					</div>
					<div class="w3agile_description">
						<h4>Description :</h4>
						<p><%=r.getString(5) %></p>
					</div>
					<div class="snipcart-item block">
						<div class="snipcart-thumb agileinfo_single_right_snipcart">
							<%float offer=r.getFloat(8);
											if(offer==0){%>
											<h4>Rs.<%=r.getInt(4) %> </h4><%}
											else{
												int p1=r.getInt(4);
												float o=r.getFloat(8);
												float d=p1*o;
												float cost=p1-d;
											
											%><h4><span>Rs.<%=p1 %></span>&nbsp&nbsp&nbsp&nbsp&nbspRs.<%=cost %> </h4><%} %>
						</div>
						<%int stock=r.getInt(7);
						   System.out.println(stock);
						   if(stock==0){
						%>
						<span style="color:red"><font size="5">Not In Stock</font></span>
						<%} else{%> 
						<span style="color:red"><font size="5">In Stock</font></span>
						<br><br>
						<div class="snipcart-details ">
							<form >
								<fieldset>
									<input type="hidden" name="cmd" value="_cart" />
									<input type="hidden" name="add" value="1" />
									<input type="hidden" name="item_name" value="<%=r.getString(3) %>" />
									<input type="hidden" name="amount" value="<%=r.getInt(4) %>" />							
									<input type="button" name="submit" onclick="addtocart(<%=r.getInt(1)%>)" value="Add to cart" class="button" />
								</fieldset>
							</form>
						</div><% }%>
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
			<%} JDBC.closeResource();
%>
