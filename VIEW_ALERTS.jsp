<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<marquee direction="left" scrolldelay="1250"> <% 
 try
   {
		String str="";
		Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		String url="jdbc:odbc:srikanth";
		Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("select * from alerts");
		while(rs.next()){str=rs.getString(2);
		System.out.println(str);
		%> <a href="alertslink.jsp?d=<%=str %>"><%=str%></a>
	<% 
}
}
catch(Exception e)
{
e.printStackTrace();
}
%> </marquee>
</body>

</html>