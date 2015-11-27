<%@ page import="java.util.List" %>
<%@ page import="com.google.appengine.api.datastore.Entity" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1> List of Login Details </h1>
Function : <a href="addUserPage">Add user</a>
	<hr />


<h2>Username and Password Details</h2>

<table border="1">
		<thead>
			<tr>
				<td>Username</td>
				<td>Password</td>
				<td>Created Date</td>
				
			</tr>
		</thead>
		<%
		
		    List<Entity> users = (List<Entity>)request.getAttribute("userList");
		    for(Entity e : users){
		     
		%>
			<tr>
			  <td><%=e.getProperty("username") %></td>
			  <td><%=e.getProperty("password") %></td>
			  <td><%=e.getProperty("date") %></td>
			  
			</tr>
		<%
			}
		%>
	</table>
	<a href="/list"></a>
</body>
</html>