<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<div class="xs form" id="form2" style="display:none;" >
<form action="../AddProduct" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="product">Add Product:</label>
    <input type="text" class="form-control" id="products" name="product">
  </div>
  <div class="form-group">
    <label for="cost">Cost:</label>
    <input type="text" class="form-control" id="cost" name="price">
  </div>
  <div class="form-group">
    <label for="description">description:</label>
    <input type="text" class="form-control" id="desc" name="detail">
  </div>
  <div class="form-group">
    <label for="instock">In Stock:</label>
    <input type="text" class="form-control" id="instock" name="pqty">
  </div>
  <div class="form-group">
  <label for="category">Category:</label>
  <select name="category">
  <% JDBC j= new JDBC();
  String sql = "select * from category";
  ResultSet r=j. executeQuery(sql);
	      
	     // ResultSet rs= stmt.executeQuery(sql);
	      
	      while (r.next()){%>

				<option value="<%=r.getInt(1) %>"><%=r.getString(2) %></option>		  

<%} JDBC.closeResource();%>
  
  </select> 
  </div>
  <div class="form-group">
  <label for="unit">Unit:</label>
  <select name="unit">
  <% JDBC j1=new JDBC();
	      String sq = "select * from unit";
 ResultSet rs= j1.executeQuery(sq);
	     // ResultSet rs= stmts.executeQuery(sql);
	      
	      while (rs.next()){%>

				<option value="<%=rs.getInt(1) %>"><%=rs.getString(2) %></option>		  

<%} 
JDBC.closeResource();
%>
  
  </select> 
  </div>
  
   <div class="form-group">
  <label for="offer">Offer:</label>
  <select name="offer">
  

				<option value="0">None</option>	
				<option value="0.05">5%</option>	
				<option value="0.10">10%</option>	
				<option value="0.25">25%</option>
				<option value="0.35">35%</option>	
				<option value="0.50">50%</option>		  


  </select> 
  </div>
  <div class="form-group">
 <input type = "file" name = "file"  />
    <label >(image format: id.jpg)</label><br></div>
 <div class="form-group"> <button type="submit" class="btn btn-default">Submit</button></div>
</form>
</div>