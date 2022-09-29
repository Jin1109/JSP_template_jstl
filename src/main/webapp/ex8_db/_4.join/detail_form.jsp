<%@page import="java.util.ArrayList, ex8_template.Template_join"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<title>list.jsp</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
	.container{
		margin-top:3em
	}
	
	table, h4{
		text-align: center
	}
	
	caption {
	text-align: center;
	font-weight: bold;
	caption-side: top;
	font-size: 1.5em;
	}
</style>
</head>
<body>
<jsp:include page="top.jsp"/>
<div class="container">
	<c:if test="${!empty temp}">
		<table class="table">
			<thead>
			<caption>${temp.id}�� ����</caption>
				<tr>
					<th>���̵�</th>
					<td>${temp.id}</td>
				</tr>
				<tr>
					<th>�ֹι�ȣ</th>
					<td>${temp.jumin}</td>
				</tr>
				<tr>
					<th>�̸���</th>
					<td>${temp.email}</td>
				</tr>
				<tr>
					<th>����</th>
					<td>${temp.genderView}</td>
				</tr>
				<tr>
					<th>���</th>
					<td>${temp.hobby}</td>
				</tr>
				<tr>
					<th>�����ȣ</th>
					<td>${temp.post}</td>
				</tr>
				<tr>
					<th>�ּ�</th>
					<td><c:out value='${temp.address}'/></td>
				</tr>
				<tr>
					<th>�ڱ�Ұ�</th>
					<td><c:out value='${temp.intro}'/></td>
					<%-- <td>${temp.intro}</td> --%>
				</tr>
				<tr>
					<th>������</th>
					<td>${temp.register_date}</td>
				</tr>
			</tbody>
		</table>
	</c:if>	
		<c:if test="${empty temp}">
		��ȸ�� �����Ͱ� �����ϴ�.
		</c:if>	
</div>
</body>
</html>