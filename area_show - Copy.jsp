<%@page language="java" import="java.sql.*"%>
<center>
<h1 style="color:green;">All Records</h1>
<table border="1">
<tr style="color:blue">
<th>Area Location</th>
<th>Location Address</th>
<th>Location Incharge</th>    
<th>Incharge Mobile Number</th>
</tr>
<%

try
{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
	String s="select * from arealoc;";
	ResultSet rs=st.executeQuery(s);
	while(rs.next())
	{
		%>
		<tr>
		<td><%= rs.getString("arealoc") %></td>
        <td><%= rs.getString("address") %></td>
        <td><%= rs.getString("incharge") %></td>
        <td><%= rs.getString("mob_incharge") %></td>    
		</tr><%
	}
}
catch(Exception e){
    e.printStackTrace();
}
%>
</center>