<%@page language="java" import="java.sql.*"%>
<center>
<h1 style="color:green;">All Records</h1>
<table border="1">
<tr style="color:blue">
<th>Username</th>
<th>Password</th>
<th>Name</th>
<th>Mobile Number</th></tr>
<%

try
{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
	String s="select * from login order by usern;";
	ResultSet rs=st.executeQuery(s);
	while(rs.next())
	{
		%>
		<tr>
		<td><%= rs.getString("usern") %></td>
		<td><%= rs.getString("pass") %></td>
		<td><%= rs.getString("name") %></td>
        <td><%= rs.getString("mobno") %></td>
		</tr><%
	}
}
catch(Exception e){
    e.printStackTrace();
}
%>
</center>