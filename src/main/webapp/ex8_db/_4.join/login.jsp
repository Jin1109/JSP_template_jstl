<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<title>��Ű�� �̿��� ȭ�� ���� ����</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">
<script src ="${pageContext.request.contextPath}/ex8_db/_4.join/js/jquery-3.6.0.js"></script>
<style>
	.container{margin:3em auto; border:1px solid lightgray; width:500px;}
</style>
<script>
$(function(){	
	
	 var result = '${login_result}';
	  //result�� -1�� ���; //���̵�� ��ġ�ϰ� ��й�ȣ�� ��ġ���� �ʴ� ���
	  //result�� 0�� ���;  //���̵� �������� �ʴ� ���
	  if(result != ''){
		  if(result==='-1'){
			  alert('��й�ȣ�� ��ġ���� �ʽ��ϴ�.')
		  }else {
			  alert('���̵� �������� �ʽ��ϴ�.')
		  }
		  <%session.removeAttribute("login_result"); %>
	  }
	  
	  //Login.java���� ã���� �ϴ� ��Ű�� ���� ��� String id = ""; ����Ǿ� 18���� ���� id�� ���� �� ���ڿ��Դϴ�.
	  var id =  '${id}';
	  if(id){  //��Ű�� ���� ����Ǿ� �ִ� ���
		  $("#id").val(id);
		  $("#remember").prop('checked',true);
	  }
})
  
</script>

</head>
<body>
<div class="container">
	<form action="login_ok" method="post" class="border-light p-5">
	<p class="h4 mb-4 text-center">login</p>
	<div class="form-group">
		<label for="id">id</label>
		<input type="text" class="form-control" id="id" placeholder="Enter id" name="id" required>
	</div>
	<div class="form-group">
		<label for="pass">password</label>
		<input type="password" class="form-control" id="pass"
			   placeholder="Enter password" name="passwd" required>
	</div>
	
	<div class="form-group custom-control custom-checkbox">
		<input type="checkbox" class="custom-control-input"
			   id="remember" name="remember" value="store">
		<label class="custom-control-label" for="remember">���̵� ����ϱ�</label>
	</div> 
	
	<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
</form>
</div>
</body>
</html>