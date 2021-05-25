

<%@ page language="java" import="java.util.*, java.sql.*,com.speedygrocer.db.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<% String c=request.getParameter("cat_id");
JDBC j=new JDBC();
String sql = "select * from category where c_id="+c;
ResultSet r=j. executeQuery(sql);
	      
	      while (r.next()){%>
	      <h3><%=r.getString(2)%></h3>
	      <%} JDBC.closeResource();
%>