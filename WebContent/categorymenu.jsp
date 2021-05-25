<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
	   <div class="collapse navbar-collapse" id="bs-megadropdown-tabs">
	   <ul class="nav navbar-nav nav_1">
	   <% JDBC j= new JDBC();
	      String sql = "select * from category where status=1";
	      ResultSet r= j.executeQuery(sql);
	      while (r.next()){%>
	                           
							 <li><a href="household.jsp?cat_id=<%=r.getInt(1)%>"><%=r.getString(2) %></a></li>

<%} 
JDBC.closeResource();
%>
</ul>
</div>	   