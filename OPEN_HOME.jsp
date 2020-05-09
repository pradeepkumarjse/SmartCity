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
	<%
String uid=request.getParameter("uid");
String pwd=request.getParameter("pwd");
try
{
	Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
	 String url="jdbc:odbc:srikanth";
	 Connection con=DriverManager.getConnection(url,"smartcity","smartcity");
	 Statement stmt=con.createStatement();
	 System.out.println("connected");
	ResultSet rs=stmt.executeQuery("Select * from login12 where userid='"+uid+"' and  
            pwd='"+pwd+"'");
	if(rs.next())
	{
		String user=rs.getString("userid");
		String type=rs.getString("type");
		HttpSession ss=request.getSession(true);
		if(type.equals("student"))
			{	
ss.setAttribute("name",user);
				RequestDispatcher rd =
                                                request.getRequestDispatcher("Student_home.jsp");
				rd.forward(request,response);
			}
			else if(type.equals("business"))
			{	ss.setAttribute("name",user);
				RequestDispatcher rd = 
				request.getRequestDispatcher("BP_home.jsp");
				rd.forward(request,response);
			}
			else if(type.equals("job"))
			{	ss.setAttribute("name",user);
				RequestDispatcher rd =
 request.getRequestDispatcher("JS_home.jsp");
				rd.forward(request,response);
			}
			else if(type.equals("tourist"))
			{	ss.setAttribute("name",user);
				RequestDispatcher rd = 
				request.getRequestDispatcher("Tourist_home.jsp");
				rd.forward(request,response);
			}
			else if(type.equals("admin"))
			{	ss.setAttribute("name",user);
				RequestDispatcher rd = 
				request.getRequestDispatcher("Admin_home.jsp");
				rd.forward(request,response);
			}else if(type.equals("moderator"))
			{	ss.setAttribute("name",user);
				RequestDispatcher rd = 
				request.getRequestDispatcher("Moderator_home.jsp");
				rd.forward(request,response);
			}
	}
	else
	{	%>
	<jsp:forward page="home1.jsp?m1=Invalid Userid and 
		Password"></jsp:forward>
	<% 
	}
	
}
catch(Exception e)
{
	e.printStackTrace();
}
%>
</body>

</html>
