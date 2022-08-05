<%@page language="java" import="java.sql.*"%>
<%
String user=request.getParameter("user");
   String passs=request.getParameter("pass");
try
{	
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
	String s="select * from login where usern='"+user+"' and pass='"+passs+"';";
	ResultSet rs=st.executeQuery(s);
	if(rs.next())
	{
		
			response.sendRedirect("menu.html");
		
	}
	else
	{ %><h1>Invalid Credentials</h1><%}
}
catch(Exception e){
    e.printStackTrace();
}
%>