<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<style>
.bg-dark {
	background-color:#28a745!important;
}
.navbar-dark .navbar-nav .nav-link {
	color: rgb(255,255,255);
}

</style>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">�׼��±�</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
    <span class="navbar-toggler-icon"></span>
  </button>
  <%-- flex-row-reverse �߰� ������ ������ �پ�� --%>
  <div class="collapse navbar-collapse flex-row-reverse" id="collapsibleNavbar">
    <ul class="navbar-nav">
    	<c:if test="${!empty id}">
    		<li class="nav-item"><a class="nav-link" >${id}���� �α��� �Ǿ����ϴ�.</a></li>	
    		<li class="nav-item"><a class="nav-link" href="update_form">��������</a></li>
    		<c:if test="${id=='admin'}"> 
    		<li class="nav-item"><a class="nav-link" href="list">(ȸ������)</a></li>
    		</c:if>
    		<li class="nav-item"><a class="nav-link" href="logout">�α׾ƿ�</a></li>		
		</c:if>
		
		<c:if test="${empty id}">
			<li class="nav-item"><a class="nav-link" href="login">�α���</a></li>		
    		<li class="nav-item"><a class="nav-link" href="join">ȸ������</a></li>  
    	</c:if>  
    </ul>
  </div>  
</nav>
