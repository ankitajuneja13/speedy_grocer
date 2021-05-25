<%@ page language="java" import="java.util.*, java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%! 
private static final long serialVersionUID = 1L;
static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
	   static final String DB_URL = "jdbc:mysql://localhost/online_shopping";
	   static final String USER = "root";
	   static final String PASS = "";%>
<div class="xs form" id="form2" style="display:none;" >
<form action="../AddProduct" method="get">
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
  <% Connection conn = null;
Statement stmt = null;
try{
	   Class.forName("com.mysql.jdbc.Driver");
	   System.out.println("driver loaded");
	      conn = DriverManager.getConnection(DB_URL, USER, PASS);
	      System.out.println("hello");
	      stmt = conn.createStatement();
	      String sql = "select * from category";
	      ResultSet rs= stmt.executeQuery(sql);
	      
	      while (rs.next()){%>

				<option value="<%=rs.getInt(1) %>"><%=rs.getString(2) %></option>		  

<%} 
}catch(SQLException se){
    //Handle errors for JDBC
    se.printStackTrace();
 }catch(Exception e){
    //Handle errors for Class.forName
    e.printStackTrace();
 }finally{
    //finally block used to close resources
    try{
       if(stmt!=null)
          conn.close();
    }catch(SQLException se){
    }// do nothing
   
 }
%>
  
  </select> 
  </div>
  <div class="form-group">
  <label for="unit">Unit:</label>
  <select name="unit">
  <% Connection connn = null;
Statement stmts = null;
try{
	   Class.forName("com.mysql.jdbc.Driver");
	   System.out.println("driver loaded");
	      connn = DriverManager.getConnection(DB_URL, USER, PASS);
	      System.out.println("hello unit");
	      stmts = connn.createStatement();
	      String sql = "select * from unit";
	      ResultSet rs= stmts.executeQuery(sql);
	      
	      while (rs.next()){%>

				<option value="<%=rs.getInt(1) %>"><%=rs.getString(2) %></option>		  

<%} 
}catch(SQLException se){
    //Handle errors for JDBC
    se.printStackTrace();
 }catch(Exception e){
    //Handle errors for Class.forName
    e.printStackTrace();
 }finally{
    //finally block used to close resources
    try{
       if(stmt!=null)
          connn.close();
    }catch(SQLException se){
    }// do nothing
    try{
       if(connn!=null)
          connn.close();
    }catch(SQLException se){
       se.printStackTrace();
    }//end finally try
 }
%>
  
  </select> 
  </div>
  
  <button type="submit" class="btn btn-default">Submit</button>
</form>
</div>