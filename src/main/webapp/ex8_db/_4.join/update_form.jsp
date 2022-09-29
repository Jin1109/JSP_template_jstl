<%@page import="ex8_template.Template_join"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
<head>
<title>update_form.jsp</title>
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<link href="${pageContext.request.contextPath}/ex8_db/_4.join/css/join.css" 
   rel="stylesheet" type="text/css">
<script 
   src ="${pageContext.request.contextPath}/ex8_db/_4.join/js/jquery-3.6.0.js"></script>
<script 
   src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script> 
<script 
   src="${pageContext.request.contextPath}/ex8_db/_4.join/js/validate2.js" 
   charset="euc-kr"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>
<body>
<%@ include file="top.jsp"%>
<c:if test="${!empty temp}"> 
   <form name="myform" method="post" action="update"
         class="modal-content" id="myform"> 
       <div class="container">
          <fieldset>
              <legend>정보수정</legend> 
               <label for="id">ID</label>
              <div>
               <input type="text" 
                       placeholder="Enter id" name="id" id="id" readOnly
                       value="${temp.id}" style="background: #ccc; width: 100%"> 
              </div>
     
      <label for="pass">Password</label> 
      <input type="password" placeholder="Enter Password" name="pass" id="pass"
              value='${temp.password}'>
    
      <label for="jumin1">주민번호</label> 
      <input type="text" placeholder="주민번호 앞자리" maxLength="6" 
            name="jumin1" id="jumin1"  value="${temp.jumin.substring(0,6)}">
      <b> - </b>       
      <input type="text" placeholder="주민번호 뒷자리" maxLength="7" 
             name="jumin2" id="jumin2" value="${temp.jumin.substring(7)}">
             
      <label for="email">E-Mail</label>
      <input type="text" name="email" id="email" value='${temp.email.split("@")[0]}'> @       
      <input type="text" name="domain" id="domain" value='${temp.email.split("@")[1]}'>
      <select name="sel" id="sel">
         <option value="">직접입력</option>
         <option value="naver.com">naver.com</option>
         <option value="daum.com">daum.com</option>
         <option value="nate.com">nate.com</option>
         <option value="gmail.com">gmail.com</option>
      </select>
      
      <label>성별</label>
      <div class="container2">
       <input type="radio" name="gender" value="m" id="gender1"  >남자
       <input type="radio" name="gender" value="f" id="gender2"  >여자
      </div>
      
      <label>취미</label>
      <div class="container2">
         <input type="checkbox" name="hobby" id="hobby1" value="공부">공부 
         <input type="checkbox" name="hobby" id="hobby2" value="게임">게임 
         <input type="checkbox" name="hobby" id="hobby3" value="운동">운동 
         <input type="checkbox" name="hobby" id="hobby4" value="등산">등산 
         <input type="checkbox" name="hobby" id="hobby5" value="낚시">낚시 
      </div>
      
      <label for="post1">우편변호</label>
      <input type="text" size="5" maxlength="5" name="post1" id="post1" value='${temp.post}' readOnly>
      <input type="button" value="우편검색"  id="postcode">
      
      <label for="address">주소</label>
      <input type="text" size="50" name="address" id="address" value="<c:out value='${temp.address}'/>">
      
      <label for="intro">자기소개</label>
      <textarea rows="10" name="intro" id="intro" maxLength="100">${temp.intro}</textarea>
      
      <div class="clearfix">
       <button type="submit" class="signupbtn">Update</button>
       <button type="reset" class="cancelbtn">Cancel</button>
      </div> 
    </fieldset>
    <a href="templatetest">templatetest.jsp 이동하기</a> <a
       href="javascript:history.back();">이전페이지로 이동하기</a>
   </div>      
  </form>
  </c:if>
  <script>
     var gender = '${temp.gender}';
     $("input[value=" +gender + "]").prop("checked",true);   //성별 체크
     
     //체크되지 않은 성별을 비활성 시켜 임의로 선택할 수 없도록 합니다.
       $("input:radio").not(":checked").prop("disabled",true);
     
     var hobbys = '${temp.hobby}'.split(',');
        for (var i = 0; i < hobbys.length; i++)
           $("input[value=" + hobbys[i] + "]").prop("checked", true);
  </script>
<c:if test="${empty temp}">	
<h3 style="text-align:center;position:relative;top:3em;">해당 정보가 존재하지 않습니다.</h3>
</c:if>
</body>
</html>