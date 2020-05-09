<%@ page language="java" import="java.sql.*;"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BUS SEARCH</title>
</head>
<body>
	<table border='1'>
		<tr>
			<td>BusNo</td>
			<td>Source</td>
			<td>Destination</td>
			<td>Time</td>
		</tr>
		<%	 
	 String str1=request.getParameter("src");
	 String str=request.getParameter("des");
	System.out.println(str1);
	System.out.println(str);
	 int  i=0;
	 try
		{
			 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
			 String url="jdbc:odbc:srikanth";
			 Statement st=con.createStatement();
			ResultSet rs=st.executeQuery("select * from Bussearch");
			while(rs.next())
			{
				String sour=rs.getString(2);
	 			String des=rs.getString(3);
	 			System.out.println("ds:--->"+sour+"<---");
	 			System.out.println("ds:--->"+des+"<---");
	 			if((sour.equals(str1))&&(des.equals(str)))
				{
					%>
		<tr>
			<td><%=rs.getString(1)%></td>
			<td><%=rs.getString(2)%></td>
			<td><%=rs.getString(3)%></td>
			<td><%=rs.getString(4)%></td>
			<td>} } } catch(Exception e) { e.printStackTrace(); } %>
	</table>
</body>
</html>
