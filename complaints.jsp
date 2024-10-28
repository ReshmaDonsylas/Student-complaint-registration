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
    padding-top: 200px;
    
}
</style>
</head>
<body background="img2.png">
<%
String email=request.getParameter("email");
String complaint=request.getParameter("complaint");
java.util.Date utilDate = new java.util.Date();
java.sql.Date sqlDate = new java.sql.Date(utilDate.getTime());
java.sql.Time sqlTime = new java.sql.Time(utilDate.getTime());
java.sql.Timestamp sqlTS = new java.sql.Timestamp(utilDate.getTime()); 
try
{
         Class.forName("com.mysql.jdbc.Driver");
         Connection conn=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/storemythoughts","root","Dream8");
           Statement st=conn.createStatement();
           int i=st.executeUpdate("insert into complaints values('"+sqlTS+"','"+email+"','"+complaint+"')");
           
           %><h3 align="center"><%="Thank you..!We will look after your complaint soon." %></h3>
           
           <%
           
        
        }
        catch(Exception e)
        {
        out.print(e);
        e.printStackTrace();
        }
%>
</body>
</html>