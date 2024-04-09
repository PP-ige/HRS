<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = 'java.sql.*'%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Showing rows</title>
</head>
<body>
<%
// subject to change
String url = "jdbc:mysql://localhost:3306/test";
String user = "root";
String pass = "j03_m@m@";
String sql = "select * from testtable;";
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
Statement st = con.createStatement();

ResultSet rs = st.executeQuery(sql);


out.println("==================== <br>");
while(rs.next())
{	
	out.println("ID: " + rs.getString(1) + "<br>");
	out.println("FirstName: " + rs.getString(2) + "<br>");
	out.println("LastName: " + rs.getString(3) + "<br>");
	out.println("Department: " + rs.getString(4) + "<br>");
	out.println("==================== <br>");
}
%>

<a href="index.jsp">
	<button style="background-color: orange;color: white;">
	Back to homepage
	</button>
</a>

<a href="testDatabase.jsp">
	<button style="background-color: orange;color: white;">
	Back TestDatabase
	</button>
</a>

</body>
</html>