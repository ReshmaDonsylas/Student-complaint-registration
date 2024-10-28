<%@ page language="java" import="java.sql.*,java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>KCE Complaints Registration</title>
<style>
body{
    background-size: cover;
    color:white;
    background-position:fixed;
    font-size:xx-large;
    align-items: center;
    vertical-align: middle;
    
}
h6{

    padding-top: 200px;
    padding-left: 620px;
}

</style>
</head>
<body background="img2.png">
<% 
String password=request.getParameter("pass");
try
{
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/storemythoughts","root","Dream8");
           Statement st=conn.createStatement();
           ResultSet rs=st.executeQuery("select * from complaints");
           if(password.equals("KCE8")){
        	   %><h4>Complaints:</h4><%
           while(rs.next()){
        	   out.print(rs.getString(1)+"-"+rs.getString(3));
        	   %><br><%
           }
           }
           else{
        	   %><h6>Wrong password....Try again!</h6><%
           }
           
        
        }
        catch(Exception e)
        {
        out.print(e);
        e.printStackTrace();
        }
%>
</body>
</html>