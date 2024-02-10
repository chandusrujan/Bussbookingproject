<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String password=request.getParameter("password");
String repeatpassword=request.getParameter("repeatpassword");
String phonenumber=request.getParameter("phonenumber");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","prasanna","prasanna");
PreparedStatement ps=con.prepareStatement("insert into reg values(?,?,?,?)");
ps.setString(1,name);
ps.setString(2,email);
ps.setString(3,password);
ps.setString(4,phonenumber);
int r=ps.executeUpdate();
if(r==1)
%>
<html>
<head>
</head>
<body>
<a href="login.html">click here to login</a>
</body>
</html>