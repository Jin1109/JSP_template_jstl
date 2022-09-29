<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<html>
<head>
<title>쿠키를 이용한 화면 성정 예제</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"rel="stylesheet">
<script src ="${pageContext.request.contextPath}/ex8_db/_4.join/js/jquery-3.6.0.js"></script>
<style>
	.container{margin:3em auto; border:1px solid lightgray; width:500px;}
</style>
<script>
$(function(){	
	
	 var result = '${login_result}';
	  //result가 -1인 경우; //아이디는 일치하고 비밀번호가 일치하지 않는 경우
	  //result가 0인 경우;  //아이디가 존재하지 않는 경우
	  if(result != ''){
		  if(result==='-1'){
			  alert('비밀번호가 일치하지 않습니다.')
		  }else {
			  alert('아이디가 존재하지 않습니다.')
		  }
		  <%session.removeAttribute("login_result"); %>
	  }
	  
	  //Login.java에서 찾고자 하는 쿠키가 없는 경우 String id = ""; 적용되어 18라인 변수 id의 값은 빈 문자열입니다.
	  var id =  '${id}';
	  if(id){  //쿠키에 값이 저장되어 있는 경우
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
		<label class="custom-control-label" for="remember">아이디 기억하기</label>
	</div> 
	
	<button type="submit" class="btn btn-info my-4 btn-block">Submit</button>
</form>
</div>
</body>
</html>