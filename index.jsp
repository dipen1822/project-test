<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.List"%>
<%@page import="com.entity.Student"%>
<%@page import="com.dao.DaoLogic"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<a href="Register.jsp"><button>click for registration</button></a>

	<table border="1px">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>password</th>
			<th>Gender</th>
			<th>Mobile</th>
			<th>DOB</th>
			<th>Address</th>
			<th>Job</th>
			<th>Hobbies</th>
			<th>Action</th>
		</tr>
		<%
		DaoLogic dao = new DaoLogic();
		List<Student> ls = dao.getallstudent();
		for (Student stud : ls) {
		%>
		<tr>
			<td><%=stud.getId()%></td>
			<td><%=stud.getUname()%></td>
			<td><%=stud.getEmail()%></td>
			<td><%=stud.getPassword()%></td>
			<td><%=stud.getGender()%></td>
			<td><%=stud.getMobail()%></td>
			<td><%=stud.getDob()%></td>
			<td><%=stud.getAddress()%></td>
			<td><%=stud.getJob()%></td>
			<td><%=stud.getHobbies()%></td>
			<td><a href="Update.jsp?id=<%=stud.getId()%>"><button>Update</button></a></td>
			<td><a href="delete?id=<%=stud.getId()%>"><button>Delete</button></a></td>
		</tr>

		<%
		}
		%>

	</table>
	

</body>
</html>