<%@page language="java" import="java.sql.*"%>
  <% String area=request.getParameter("area");
        String gate=request.getParameter("gate");
        String loca=request.getParameter("loca");
        String threat=request.getParameter("threat");
     out.print(area);
         try{
   Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();     
	String s="insert into threattrans (arealoc,gateno,local,threat,date) values('"+area+"','"+gate+"','"+loca+"','"+threat+"',localtime());";
	st.executeUpdate(s);
        	String t="select * from threattrans where arealoc='"+area+"';";
     ResultSet rs=st.executeQuery(t);
	if(rs.next())
	{
		%><script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script>confirm(v);
         setTimeout(function(){ <%response.sendRedirect("trans_show.jsp"); %> }, 15000);</script><%
	}

}
catch(Exception e){
    e.printStackTrace();
}
%>