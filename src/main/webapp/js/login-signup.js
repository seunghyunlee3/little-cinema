function login() {
	if (loginform.id.value == "") {
		alert("아이디를 입력하세요.");
		loginform.id.focus();
		return false;
	}

	if (loginform.password.value == "") {
		alert("비밀번호를 입력하세요.");
		loginform.password.focus();
		return false;
		}

	loginform.action = "login-action";
	loginform.submit();
}

function signup(){

		if(signup_form.id.value == ""){
			alert("아이디를 입력하세요");
			signup_form.id.focus();
			return false;
		}
		
		if(signup_form.password.value ==""){
			alert("비밀번호를 입력하세요.");
			signup_form.password.focus();
			return false;
		}
		if (signup_form.name.value == ""){
			alert("이름을 입력하세요.");
			signup_form.name.focus();
			return false;
		}
		if (signup_form.phone1.value == ""){
			alert("전화번호를 입력하세요.");
			signup_form.phone1.focus();
			return false;
		} 
		
		if (signup_form.phone2.value == ""){
			alert("전화번호를 입력하세요.");
			signup_form.phone2.focus();
			return false;
		}
		
		if (signup_form.phone3.value == ""){
			alert("전화번호를 입력하세요.");
			signup_form.phone3.focus();
			return false;
		}
		
		if (signup_form.birth_date1.value == ""){
			alert("생년월일을 선택해주세요.");
			signup_form.birth_date1.focus();
			return false;
		}
		if (signup_form.birth_date2.value == ""){
			alert("생년월일을 선택해주세요.");
			signup_form.birth_date2.focus();
			return false;
		}
		if (signup_form.birth_date3.value == ""){
			alert("생년월일을 선택해주세요.");
			signup_form.birth_date3.focus();
			return false;
		}


	document.querySelector("#phone").value = document.querySelector("#phone1").value + document.querySelector("#phone2").value + document.querySelector("#phone3").value;
	document.querySelector("#birth_date").value = document.querySelector("#birth_date1").value +"/"+ document.querySelector("#birth_date2").value +"/"+ document.querySelector("#birth_date3").value;
	
	document.signup_form.action='signup-action';
	document.signup_form.method='POST';
	document.signup_form.submit();
	
	
}


function openIdChk() {
		var id = $('#id').val();
		console.log($('#id').val());
		console.log(id);
		$.ajax({
			url:'duplicate',
			type:'post',
			data:{id:id},
			success:function(cnt) {
				if(""==id) {
					$('.id_empty').css("display", "inline-block");
				} else {
					if(cnt<1) {
						$('.id_ok').css("display", "inline-block");
						$('.id_already').css("display", "none");
						$('.id_empty').css("display", "none");
					} else {
						$('.id_already').css("display", "inline-block");
						$('.id_ok').css("display", "none");
						$('.id_empty').css("display", "none");
					}
				}
				
			},
			error:function() {
				alert("에러");
			}
		});
	};