<%@page import="java.io.*"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String fathername=request.getParameter("fathername");
String mothername=request.getParameter("mothername");
String startpoint=request.getParameter("startpoint");
String endpoint=request.getParameter("endpoint");
String sscnumber=request.getParameter("sscnumber");
String age=request.getParameter("age");
String sscyear=request.getParameter("sscyear");
String adhar=request.getParameter("adhar");
String city=request.getParameter("city");
String mandal=request.getParameter("mandal");
String pin=request.getParameter("pin");
String cllg=request.getParameter("cllg");
String cllgcity=request.getParameter("cllgcity");
String cllgmandal=request.getParameter("cllgmandal");
String course=request.getParameter("course");
String adnumber=request.getParameter("adnumber");
String center=request.getParameter("center");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","prasanna","prasanna");
PreparedStatement ps=con.prepareStatement("insert into appreg values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
ps.setString(1,name);
ps.setString(2,fathername);
ps.setString(3,mothername);
ps.setString(4,startpoint);
ps.setString(5,endpoint);
ps.setString(6,sscnumber);
ps.setString(7,age);
ps.setString(8,sscyear);
ps.setString(9,adhar);
ps.setString(10,city);
ps.setString(11,mandal);
ps.setString(12,pin);
ps.setString(13,cllg);
ps.setString(14,cllgcity);
ps.setString(15,cllgmandal);
ps.setString(16,course);
ps.setString(17,adnumber);
ps.setString(18,center);
int r=ps.executeUpdate();
if(r==1)
%>
<html>
<head>
</head>
<body>
<a href="login.html"><h3>successfully submitted your application click here to logout</h3></a>
</body>
</html>