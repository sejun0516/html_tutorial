<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>loginForm</h1>
		<form action = "./loginAction.jsp" method = "post">
			<table>
				<tr>
					<td>ID : </td>
					<td><input type = "text" name = "id"></td>
				</tr>
				<tr>
					<td>PW : </td>
					<td><input type = "password" name = "pw"></td>
				</tr>
			
			</table>
			<input type = "submit" value = "login">
 		</form>
	
	</body>
</html>