$(document).ready(function(){
	var is_idcheck_click=false; //id �ߺ��˻� �ߴ��� ����
	var idcheck_value='';		//id �ߺ��˻�� ��
	
	// ID�ߺ��˻� �κ�
    $("#idcheck").click(function() {
    var input_id=$.trim($("#id").val())
    if ($.trim($("#id").val())=="") {
    	alert("ID�� �Է��ϼ���");
    	$("#id").focus();
    	return false;
    } else {
        // ó���ڴ� �빮���̰� �ι�°���ʹ� ��ҹ���, ����, _�� �� 4�� �̻�
        pattern = /^[A-Z][a-zA-Z0-9_]{3,}$/;
        if(pattern.test(input_id)){
			idcheck_value=input_id;
        	var ref = "idcheck?id="+$("#id").val();
        	window.open(ref, "idcheck", "width=350,height=200");
        }else{
            alert("ù���ڴ� �빮���̰� �ι�°���ʹ� ��ҹ���, ����, _�� �� 4�� �̻��̾�� �鳪��.");
            $("#id").val('').focus();
        }
   }   
   });//$("#idcheck").click
   
   //ȸ������ ��ư Ŭ���� �� �̺�Ʈ ó�� �κ�
	$("form").submit(function(){
		
		//$.trim(���ڿ�)�� ���ڿ��� ��, �� ������ �����մϴ�.
		if($.trim($("#id").val())==""){
			alert("ID�� �Է� �ϼ���");
			$("#id").focus();
			return false;
		}
		
		if(!$("#id").prop('readOnly')){	//ȸ������ ���� ���� ���� ������ ���ÿ� ����� js�Դϴ�.
										//ȸ������ �������� ����� ����� �Դϴ�.
										//���� ���� �������� ���̵� �������� �ʱ� ������ �ʿ���� �κ��Դϴ�.
			
			console.log($("#id").prop('readOnly'))
			var submit_id_value=$.trim($("#id").val())
			if(submit_id_value != idcheck_value){//submit ��� ���̵𰪰� ���̵� �ߺ��˻翡 ���� ���̵� ���մϴ�.
				alert("ID �ߺ��˻縦 �ϼ���");
				return false;
			}
			
			//���̵� �ߺ� �˻縦 ������ ������� ���̵��� ��쿡�� submit�� ���â ��Ÿ���ϴ�.
			var result=$("#result").val();
			if(result===-1){
				alert("��� ������ ���̵�� �ٽ� �Է��ϼ���");
				$("#id").val('').foucs();
				$("#opener_message").text('');
				return false;
			}
			
		}
		
		//���̵� �ߺ� �˻縦 ������  ������� ���̵��� ��쿡�� submit�� ���â ��Ÿ���ϴ�.
		var result=$("#result").val();       
		if(result==='-1'){//result�� -1�̸� ���̵� �����ϴ� ��� �Դϴ�.
			alert("��� ������ ���̵�� �ٽ� �Է��ϼ���");
			$("#id").val('').focus();
			$("#opener_message").text('');
			return false;
		}

		
		if($.trim($("#pass").val())==""){
			alert("��й�ȣ�� �Է� �ϼ���");
			$("#pass").focus();
			return false;
		}
		
		if($.trim($("#jumin1").val())==""){
			alert("�ֹι�ȣ ���ڸ��� �Է� �ϼ���");
			$("#jumin1").focus();
			return false;
		}
		
		if($.trim($("#jumin1").val()).length != 6){
			alert("�ֹι�ȣ ���ڸ� 6�ڸ��� �Է��ϼ���");
			$("#jumin1").val("").focus();
			return false;
		}
		
		if($.trim($("#jumin2").val())==""){
			alert("�ֹι�ȣ ���ڸ��� �Է� �ϼ���");
			$("#jumin2").focus();
			return false;
		}
		
		if($.trim($("#jumin2").val()).length != 7){
			alert("�ֹι�ȣ ���ڸ� 7�ڸ��� �Է� �ϼ���");
			$("#jumin2").val("").focus();
			return false;
		}
		
		if($.trim($("#email").val())==""){
			alert("E-Mail�ּҸ� �Է� �ϼ���");
			$("#email").focus();
			return false;
		}
		
		if($.trim($("#domain").val())==""){
			alert("������ �ּҸ� �Է� �ϼ���");
			$("#domain").focus();
			return false;
		}
		
		/*
			var cnt =$('input:readio:checked').length;
			if(cnt==0){
				alert("������ �����ϼ���");
				return false;
			}		
		*/
		
		var cnt =$('input:checkbox:checked').length;
		
		if(cnt < 2){
			alert("��̴� 2���̻� �����ϼ���");
			return false;			
		}
		
		if($.trim($("#post1").val()).length != 5){
			alert("�����ȣ�� �ټ��ڸ��Դϴ�.");
			$("#psot1").val("").focus();
			return false;
		}
		
		if($.trim($("#post1").val())==""){
			alert("�����ȣ�� �Է� �ϼ���");
			$("#post1").focus();
			return false;
		}
		
		if($.isNumberic($("#post1").val())){
			alert("�����ȣ�� ���ڸ� �Է� �����մϴ�.");
			$("#post1").val("").focus();
			return false;
		}
		
		if($.trim($("#address").val())==""){
			alert("�ּҸ� �Է� �ϼ���");
			$("#address").focus();
			return false;
		}
		
		if($.trim($("#intro").val())==""){
			alert("�ڱ�Ұ��� �Է� �ϼ���");
			$("#intro").focus();
			return false;
		}
	});// submit() end
	  
   // ����˻� ��ư Ŭ��
   $("#postcode").click(function(){
	//window.open("post.html","post","width=400, height=500,scrollbars=yes");
		Postcode();
   });// $("#postcode").click
	
	 function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
 
                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
 
                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
              
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                $("#post1").value=data.zonecode;
                $("#address").value=fullRoadAddr;
            }
        }).open();
    }//function Postcode()
   
   //������ ���� �κ�
   $("#sel").change(function(){
	if($("#sel").val()==""){//�����Է� ������ ���
	   $("#domain").val("").focus();
	   $("#domain").prop("readOnly",false);
	}else{//������ ������ ���
	   $("#domain").val($("#sel").val());
	   $("#domain").prop("readOnly",true);
	}
});

	$("#jumin1").keyup(function(){
		
	 if($.trim($("#jumin1").val()).length==6){
		pattern=/^[0-9]{2}(0[1-9]|1[0-2])(0[1-9]|[12][0-9]|[3][01])$/;
		if(pattern.test($("#jumin1").val())){
			$("#jumin2").focus();//�ֹι�ȣ ���ڸ��� ��Ŀ�� �̵�			
		}else{alert("���� �Ǵ� ���Ŀ� �°� �Է��ϼ���[yymmdd]");
			$("#jumin1").val('').focus();
		}
	}
	});
	
	$("#jumin2").keyup(function(){
		
	 if($.trim($("#jumin2").val()).length==7){
		pattern=/^[1234][0-9]{6}$/;
		if(pattern.test($("#jumin2").val())){
			
			$("input[type=radio]").prop("disabled",false);
			
			var c = $("#jumin2").val().substring(0,1);
			var index = (c-1)%2; // c=1,3�̸� index=0
								 // c=2,4�̸� index=1
								 								 
			$("input[type=radio]").eq(index).prop("checked",true);
			$("ipnut[type=radio]").not(":checked").prop("disabled",true);
			
	}else{
		alert("���Ŀ� �°� �Է��ϼ���[1234][0-9]{6}");
		$("#jumin2").val('').focus();
	}
	}
	});
	
	//����˻� ��ư Ŭ��
	
	 function Postcode() {
        new daum.Postcode({
            oncomplete: function(data) {
            	console.log(data.zonecode)
                // �˾����� �˻���� �׸��� Ŭ�������� ������ �ڵ带 �ۼ��ϴ� �κ�.
 
                // ���θ� �ּ��� ���� ��Ģ�� ���� �ּҸ� �����Ѵ�.
                // �������� ������ ���� ���� ��쿣 ����('')���� �����Ƿ�, �̸� �����Ͽ� �б� �Ѵ�.
                var fullRoadAddr = data.roadAddress; // ���θ� �ּ� ����
                var extraRoadAddr = ''; // ���θ� ������ �ּ� ����
 
                // ���������� ���� ��� �߰��Ѵ�. (�������� ����)
                // �������� ��� ������ ���ڰ� "��/��/��"�� ������.
                if(data.bname !== '' && /[��|��|��]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // �ǹ����� �ְ�, ���������� ��� �߰��Ѵ�.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // ���θ�, ���� ������ �ּҰ� ���� ���, ��ȣ���� �߰��� ���� ���ڿ��� �����.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // ���θ�, ���� �ּ��� ������ ���� �ش� ������ �ּҸ� �߰��Ѵ�.
                if(fullRoadAddr !== ''){
                    fullRoadAddr += extraRoadAddr;
                }
 
                
                // �����ȣ�� �ּ� ������ �ش� �ʵ忡 �ִ´�.
                document.getElementById("post1").value=data.zonecode;
                document.getElementById("address").value=fullRoadAddr;
            }
        }).open();
    }//function Postcode()
	
	
});