<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body align="center" bgcolor="#32CD32">
<% 
String name=(String) session.getAttribute("name");
int id=(int) session.getAttribute("id");
int age=(int) session.getAttribute("age");
long phone=(long) session.getAttribute("phone");
String password=(String) session.getAttribute("password");
if(name!=null){
%>

<form action="update" method="post">
Id:  <input type="number" name="id" value=<%=id %> readonly="readonly" >           <br><br>

Name: <input type="text" name="nm" value=<%=name %>>                             <br><br>

Age: <input type="number" name="age" value=<%=age %>  >                            <br><br>

Phone:  <input type="tel" name="ph" value=<%=phone %> >                              <br><br>

Password: <input type="password" name="ps" value=<%=password %>>                      <br><br>

 <input type="submit" value="UPDATE">
 
 <a href="home.jsp"><input type="button" value="BACK"></a>
<% }
else {
	response.sendRedirect("home.jsp");
}
%>
 </form>
</body>
</html>