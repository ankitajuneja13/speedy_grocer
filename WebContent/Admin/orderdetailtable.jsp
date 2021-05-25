

<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div class="xs tabls" id="table-div">
						<!-- /.table-responsive -->
						<div class="table-responsive">
						  <table class="table table-bordered">
							<thead>
							  <tr>
								<th>Product id</th>
								<th>Product</th>
								<th>price</th>
								<th>Quantity</th>
								 </tr>
							</thead>
							<tbody>
<%       String oid=request.getParameter("order_id");
		  JDBC j=new JDBC();
	      String sql = "select `order_detail`.p_id,`order_detail`.qty,`order_detail`.price,product.p_id,product.p_name from `order_detail` left join product on `order_detail`.p_id = product.p_id where `order_detail`.o_id="+oid;
	       ResultSet rs= j.executeQuery(sql);
	      System.out.println(sql);
	      while (rs.next()){ %>
                      
							  <tr>
								<td><%=rs.getInt(1) %></td>
								<td><%=rs.getString(5) %></td>
								<td><%=rs.getFloat(3) %></td>
							     <td><%=rs.getInt(2) %></td>
							     							  </tr>

<%}%>


							</tbody>
						  </table>
						</div><!-- /.table-responsive -->
						</div>
