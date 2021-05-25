
<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="xs tabls" id="table-div">
						<!-- /.table-responsive -->
						<div class="table-responsive">
						  <table class="table table-bordered">
							<thead>
							  <tr>
								<th>O_Id</th>
								<th>Cs_id</th>
								<th>Date</th>
								<th>Amount</th>
								<th>Tax</th>
								<th>Total price</th>
								<th>Status</th>
								<th>Assign boy</th>
								<th></th>
							  </tr>
							</thead>
							<tbody>
<%        JDBC j=new JDBC();
	      String sql = "select * from `order` where  o_status=1";
	       ResultSet rs= j.executeQuery(sql);
	      System.out.println(sql);
	      while (rs.next()){ int i=rs.getInt(2);%>
                      
							  <tr>
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getFloat(4) %></td>
							    <td><%=rs.getFloat(5) %></td>
							     <td><%=rs.getFloat(6) %></td>
							     <td><%=rs.getInt(7) %></td>
							     <td><form action="../order_request" method="get">
							      <select name="boy_id">
  <% JDBC j1= new JDBC();
  String sq = "select a_id,a_name from admin where role='delivery_boy'";
  System.out.println(sq);
  ResultSet r=j. executeQuery(sq);
  
	     while (r.next()){
	    	 System.out.println("name"+r.getString(2));
	     %>

				<option value="<%=r.getInt(1) %>"><%=r.getString(2) %></option>		  

<%} %>
							     
			</select>
			<input type="hidden" name="order_id" value="<%=i%>"/>
			<input type="submit" value="Dispatch">
			</form>				     
							     
							     
							     </td>
							     <td><a href="orderdetail.jsp?order_id=<%=rs.getInt(2)%>"><span style="color:black">Order Detail</span></a></td>
							  </tr>

<%}%>


							</tbody>
						  </table>
						</div><!-- /.table-responsive -->
						</div>
