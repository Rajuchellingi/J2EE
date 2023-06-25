<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body bgcolor="FFFFEO" align="center" jcolor="white">
<% 
String name=(String) session.getAttribute("name");
int id=(int) session.getAttribute("id");
int age=(int) session.getAttribute("age");
long phone=(long) session.getAttribute("phone");
String password=(String) session.getAttribute("password");
if(name!=null){
%>
<h2> Id: <%=id %></h2>
<h2> Name: <%=name %></h2>
<h2> Age: <%=age %></h2>
<h2> Phone: <%=phone %></h2>
<h2> Password: <%=password %></h2>
 <a href="home.jsp"><input type="submit" value="HOME" ></a> 
<%}
else{
	response.sendRedirect("home.jsp");
}
%>

</form>
</body>
</html>