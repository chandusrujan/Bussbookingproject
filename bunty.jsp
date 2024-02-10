<%@ page language="java" %>
<%@ page import="java.io.*" %>
<%@ page import="java.sql.*" %>
<%
String username=request.getParameter("email");
String pwd=request.getParameter("password");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","prasanna","prasanna");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from reg");
int i=0;
while(rs.next())
{
if((username.equals(rs.getString(2)))&&(pwd.equals(rs.getString(3))))
  {      
     String first=new String(rs.getString(1));
      i=1;
       session.setAttribute("first",first);
        session.setAttribute("username",username);
        con.close();
        break;   
   }
}
if(i==1)
{
%>
<html>
  <head>
      <link rel="stylesheet" href="home.css">
  </head>
  <body bgcolor="pink" width=100px hieght=100px>
      <header>
         <div class="container">
            <div id="bar">
               <h1>Bus Pass Application Form</h1>
            </div>
            <cha>
               <ul>
                   <li>
<%
String first=(String)session.getAttribute("first");
session.setAttribute("first",first);
out.println(first);

%> 
		   </li>
                   <li><a href="login.html">logout</span></a></li>
               </ul>
             </cha>
         </div>
      </header>
      <section id="chan">
       <div>
        <form method="post" action="appreg.jsp">
         <center>
	<div class="app">
           <label>Name:</label>
           <input type="text" placeholder="Enter Name" name="name">
	</div><br>
            <div class="app">
	<label>father's name:</label>
	<input type="text" placeholder="enter father's name" name="fathername">
	</div><br>
             <div class="app">
          <label>mother's name:</label>
           <input type="textarea" placeholder="enter mother's name" name="mothername">
            </div><br>
          <div class="app">
           <label>starting point:</label>
           <input type="text" placeholder="Enter start point" name="startpoint">
          </div><br>
          <div class="app">
           <label>ending point:</label>
           <input type="text" placeholder="enter end point" name="endpoint">
          </div><br>
          <div class="app">
           <label>SSC hall ticket number:</label>
           <input type="text" placeholder=" Number" name="sscnumber">
          </div><br>
          <div class="app">
           <label>age as of SSC:</label>
           <input type="age" placeholder="enter age" name="age">
          </div><br>
             <div class="app">
              <label>SSC year of pass:</label>
	<input type="text" placeholder="enter year" name="sscyear">
            </div><br>
             <div class="app">
               <label>Aadhar number:</label>
                <input type="text" placeholder="Aadhar" name="adhar">
	</div><br>
             <div class="app">
	<label>Is Employee or not:</label>
              <input type="radio"/>yes
                <input type="radio"/>no
	</div><br>
             <div class="app">
              <label>Select District:<select>
			<option>select</option>
			<option>KRISHNA</option>
			<option>EAST GODAVARI</option>
			<option>WEST GODAVARI</option>
			<option>GUNTUR</option>
			<option>VIZAG</option>
			<option>SRIKAKULAM</option>
			</select></label>
             </div><br>
             <div class="app">
              <label>Enter Village/City:</label>
             <input type="text" placeholder="Village/City" name="city">
               </div><br>
	<div class="app">
               <label>Enter Mandal:</label>
               <input type="text" placeholder="mandal" name"mandal">
                </div><br>
             <div class="app">
             <label>Enter Pin code:</label>
              <input type="text" placeholder="pincode" name="pin">
             </div><br>
               <div class="app">
                <label>Enter College Name:</label>
                  <input type="text" placeholder="college name" name="college name">
              </div><br>
               <div class="app">
                <label>Enter City:</label>
	<input type="text" placeholder="City" name="cllgcity">
                </div><br>
               <div class="app">
               <label>Enter Mandal:</label>
                 <input type="text" placeholder="mandal" name="cllgmandal">
	</div><br>
	<div class="app">
                 <label>Enter course name:</label>
                 <input type="text" placeholder="course name" name="course">
                 </div><br>
                <div class="app">
                 <label>Admission number:</label>
	<input type="text"  placeholder="number" name="adnumber">
               </div><br>
	<div class="app">
               <label>At which center u want to collect Id/pass:</label>
                 <input type="text" placeholder="enter center" name=center">
               </div><br>
	<label>Pass type required:<select>
			       <option>select</option>
			      </select></label>
	</div><br>
	                     <div class="app">
                                   <label>Enter payment mode:<select>
			                              <option>select</option>
			                               <option>Payment at counter</option>
			                                 </select></label>
                               </div><br>
	            <div class="app">
	          <label>Enter Pass delivery mode:<select>
				          <option>select</option>
				          <option>At counter</option>
				          </select></label>
	            </div><br>
                         <div class="app">
                           <input type="submit" name="submit">
                                <input type="reset" name="reset">
                              </div><br>
            </center>
        </form>
       </div>
      </section>
   </body
</html>


<%
}

if(i!=1)
{
%>
<!DOCTYPE html>
<head>
   <!-- HTML meta refresh URL redirection -->
   <meta http-equiv="refresh"
   content="0; url=login.html">
<script type="text/javascript">
function fun()
{
alert("Provide Valid Login Credentials");
}
</script>
</head>
<body onload="fun()" >
   <a href="login.html"></a>
</body>
</html>

<%
}





%>