<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login_ok</title>
</head>
<body>
	<% 
		String id = application.getInitParameter("id");
		String password = application.getInitParameter("passwd");
		String inputid = request.getParameter("id");
		String inputpwd = request.getParameter("password");
		if(id.equals(inputid) && password.equals(inputpwd)){
		session.setAttribute("id", id);
	%>
	<script>
		alert('<%=id %>�� ȯ���մϴ�.');
		location.href="templatetest.jsp";
	</script>
	<%
		}else if(id.equals(inputid)){
	%>
	<script>
		alert('��й�ȣ�� Ȯ���ϼ���');
		history.back();
	</script>	 
	<%
		}else { 	  
	%>
	<script>
		alert('���̵� Ȯ���ϼ���');
		history.back();
	</script>	
	<%
		}
	%>
</body>
</html>