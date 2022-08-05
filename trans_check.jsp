<%@page language="java" import="java.sql.*"%>
<center>
    <h1>CYBER EYE SECURITY</h1>
    </br></br></br>
<h2 style="color:red">WARNING!!!   WEAPON LOCATED</h2>
</br></br>
    <% String transid=request.getParameter("transid");
       try
       {Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/img","root","Karan@22");
	Statement st=con.createStatement();
       String t="select * from threattrans where trans_id='"+transid+"';";
       ResultSet rs=st.executeQuery(t);
       if(rs.next())
       {
       int q=rs.getInt("local");
       if(q==2)
       %><a href="#" target="_blank"><img src="./Home_files/image-2.png" alt="Hooghly Engineering and Technology College"  width="300" height="500"></a><%
       else if(q==3)
       %><a href="#" target="_blank"><img src="./Home_files/image-3.png" alt="Hooghly Engineering and Technology College" width="300" height="500"></a><%   
       else if(q==4)
       %><a href="#" target="_blank"><img src="./Home_files/image-4.png" alt="Hooghly Engineering and Technology College" width="300" height="500"></a><%        
       else if(q==5)
       %><a href="#" target="_blank"><img src="./Home_files/image-5.png" alt="Hooghly Engineering and Technology College" width="300" height="500"></a><%
      else{%><script> alert("Invalid Location");</script><%}                                                                                                                               
       }
    }                                                                                                                           
    catch(Exception e){
    e.printStackTrace();
}
       %>
    </center>