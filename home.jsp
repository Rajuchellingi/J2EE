<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
h2{
text-align="centre";
}
</style>
<body bgcolor="#ADD8E6">
<% String name=(String)session.getAttribute("name");
   if(name!=null){%>
  <marquee scrollamount="10" direction="right"><h1>Welcome <%=name %></h1></marquee>
<h2 align="center" ><a href="update.jsp">Edit Your Details</a></h2><br>
<h2 align="center" ><a href="delete.jsp">Delete Your Account</a></h2><br>
<h2 align="center" ><a href="view.jsp">View Your Profile</a></h2><br>
<h2 align="center"><a href="login.jsp">Logout</a></h2><br>
<%} %>

</body>
</html>