<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			String sysId = "jjdev";
			String sysPw = "1234";
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			String result = "";
			if(id.equals("")) {
				result = "id�� �Է��ϼ���";
			}else if(pw.equals("")) {
				result = "pw�� �Է��ϼ���";
			}else if(!sysId.equals(id) || !sysPw.equals(pw)) { // ! <-- not , ||(\ + shift) <-- or , && <-- and
				result = "id�� pw�� Ʋ���ϴ�.";
			}else {
				result = "�α��� ����";
			}
 		%>
		
		<div><%=result %></div>
	</body>
</html>