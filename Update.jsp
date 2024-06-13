<%@page import="com.entity.Hobbies"%>
<%@page import="java.util.ArrayList"%>
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

<% int id=Integer.parseInt(request.getParameter("id"));
   DaoLogic dao = new DaoLogic();
   Student s= dao.getstudent(id);
   
   List<String> hoby = new ArrayList<>();
   for(Hobbies h: s.getHobbies()){
	   hoby.add(h.getName());
   }
%>


<form action="update"  method="post">
<input type="hidden" name="id" value="<%=s.getId()%>">
User Name:<input type="text" name="uname" value="<%=s.getUname()%>"><br><br>
Email ID:<input type="email" name="email" value="<%=s.getEmail()%>" ><br><br>
Password:<input type="password" name="pass" value="<%=s.getPassword()%>"><br><br>
Gender: <input type="radio" value="male" name="gender" <%=s.getGender().equals("male")? "checked" : ""%>>Male
        <input type="radio" value="female" name="gender" <%=s.getGender().equals("female")? "checked" : "" %>>Female<br><br>
Mobile:<input type="number" name="mobail" value="<%=s.getMobail()%>"><br><br>
DOB:<input type="date" name="dob" value="<%=s.getDob()%>"><br><br>
Address:<textarea rows="5" cols="" name="address"><%=s.getAddress()%></textarea><br><br>
Hobbies:<input type="checkbox" name="hobbies" value="cricket" <%=hoby.contains("cricket")? "checked":"" %>>cricket
        <input type="checkbox" name="hobbies" value="coding"  <%=hoby.contains("coding")? "checked":"" %>>coding
        <input type="checkbox" name="hobbies" value="reading"  <%=hoby.contains("reading")? "checked":"" %>>reading
        <input type="checkbox" name="hobbies" value="singing"  <%=hoby.contains("singing")? "checked":"" %>>singing<br><br>
Job: <select name="job" id="">
      <option value="">select job</option>
      <option value="web devloper" <%=s.getJob().equals("web developer")? "selected" : ""%>>web developer</option>
      <option value="hr" <%=s.getJob().equals("hr")? "selected" : ""%>>hr</option>
      <option value="tecnical support" <%=s.getJob().equals("tecnical support")? "selected" : ""%>>technical support</option>
    </select> <br><br>
<button type="submit">submit</button>

</form>

</body>
</html>