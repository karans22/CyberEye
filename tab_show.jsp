<%@page language="java" import="java.sql.*"%>
<center>
<h1 style="color:green;">All Records</h1>
<table border="1">
<tr style="color:blue">
<th>Tablet</th>
<th>Condition</th>   </tr>
<%

try
{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
	String s="select * from tablet;";
	ResultSet rs=st.executeQuery(s);
	while(rs.next())
	{
		%>
		<tr>
		<td><%= rs.getString("tablet") %></td>
        <td><%= rs.getString("_condition") %></td>    
		</tr><%
	}
}
catch(Exception e){
    e.printStackTrace();
}
%>
</center>