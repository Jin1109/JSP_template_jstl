<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<title>logout.jsp</title>
</head>
<body>
	<% session.invalidate(); %>
	<script>
		alert("로그아웃 되셨습니다.");
		location.href="templatetest.jsp";
	</script>
</body>
</html>