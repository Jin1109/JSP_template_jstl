<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>idcheck.jsp</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<div id=message></div>
<button>닫기</button>
<script>
   var message=["사용중인 아이디 입니다.","사용가능한 아이디 입니다."];
   var color=["red","green"];
   var index=${result + 1};
   $("#message").text(message[index]).css('color',color[index]);
   
   $("button").click(function(){
      $(opener.document).find("#opener_message")
                    .text(message[index]).css('color',color[index]);
      $(opener.document).find("#result").val('${result}');
      window.close();
   })
</script>

</body>
</html>