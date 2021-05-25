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
							  </tr>
							</thead>
							<tbody>
<%        JDBC j=new JDBC();
	      String sql = "select * from `order`";
	      ResultSet rs= j.executeQuery(sql);
	      
	      while (rs.next()){%>

							  <tr>
								<td><%=rs.getInt(2) %></td>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(3) %></td>
								<td><%=rs.getFloat(4) %></td>
							    <td><%=rs.getFloat(5) %></td>
							     <td><%=rs.getFloat(6) %></td>
							     <td><%=rs.getInt(7) %></td>
							  </tr>

<%}%>



							</tbody>
						  </table>
						</div><!-- /.table-responsive -->
						</div>
