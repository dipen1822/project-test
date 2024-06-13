<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="registration"  method="post">
User Name:<input type="text" name="uname" required><br><br>
Email ID:<input type="email" name="email" required><br><br>
Password:<input type="password" name="pass" required="required"><br><br>
Gender: <input type="radio" value="male" name="gender">Male
        <input type="radio" value="female" name="gender">Female<br><br>
Mobile:<input type="number" name="mobail"><br><br>
DOB:<input type="date" name="dob"><br><br>
Address:<textarea rows="5" cols="" name="address"></textarea><br><br>
Hobbies:<input type="checkbox" name="hobbies" value="cricket">cricket
        <input type="checkbox" name="hobbies" value="coding">coding
        <input type="checkbox" name="hobbies" value="reading">reading
        <input type="checkbox" name="hobbies" value="singing">singing<br><br>
Job: <select name="job" id="">
      <option value="">select job</option>
      <option value="web devloper">web devloper</option>
      <option value="hr">hr</option>
      <option value="tecnical support">tecnical support</option>
    </select> <br><br>
<button type="submit">submit</button>

</form>

</body>
</html>