<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>PRODUCT DETAILS</title>
<style>
table, th, td {
  border: 1px solid red;
  border-collapse: collapse;
}
</style>
</head>
<body>
<%
try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bas","root","");
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from addproduct");
	while(rs.next())
	{%>
	
	
	<table style=""width:100%">
	<tr>
	<th>Name</th>
	<th>price</th>
	<th>quantity </th>
	
	</tr>
	
	<tr>
	<td><%out.println(rs.getString(1)); %></td>
	<td><%out.println(rs.getString(2)); %></td>
	<td><%out.println(rs.getString(3)); %></td>
	
	
	</tr>
	</table>
		
		
	<%}

}
catch(Exception e1)
{
	System.out.println(e1);
}



%>









</body>
</html>