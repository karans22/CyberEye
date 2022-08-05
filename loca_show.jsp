<%@page language="java" import="java.sql.*"%>
<center>
<h1 style="color:green;">All Records</h1>
<table border="1">
<tr style="color:blue">
<th>Threat Location</th>
    <th>Location Reference</th></tr>
<%

try
{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
	String s="select * from local;";
	ResultSet rs=st.executeQuery(s);
	while(rs.next())
	{
		%>
		<tr>
		<td><%= rs.getString("local") %></td>
		<td><%= rs.getString("refer") %></td>    
		</tr><%
	}
}
catch(Exception e){
    e.printStackTrace();
}
%>
</center>