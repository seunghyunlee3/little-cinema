function member_modify_action() {
	document.querySelector("#phone").value = document.querySelector("#phone1").value + document.querySelector("#phone2").value + document.querySelector("#phone3").value;
	var modifyConfirm = confirm("정말 변경하시겠습니까?");
	if(modifyConfirm==false){
		return false;
	}
	if(modifyConfirm==true){
		if(document.modifyf.name.value==""){
			alert("성함을 입력해주세요");
			document.modifyf.name.focus;
			return false;
		}else if(document.modifyf.phone.value==""){
			alert("핸드폰 번호를 입력해주세요");
			document.modifyf.phone.focus;
			return false;
		}else if(document.modifyf.phone1.value==""){
			alert("핸드폰 번호 앞 3자리를 입력해주세요");
			document.modifyf.phone1.focus;
			return false;
		}else if(document.modifyf.phone2.value==""){
			alert("핸드폰 번호 중간 4자리를 입력해주세요");
			document.modifyf.phone1.focus;
			return false;
		}else if(document.modifyf.phone3.value==""){
			alert("핸드폰 번호 끝 4자리를 입력해주세요");
			document.modifyf.phone1.focus;
			return false;
		}
		document.modifyf.action = "member-modify-action";
		document.modifyf.method = 'POST';
		document.modifyf.submit();
	}
}
	
function member_remove_action() {
	if (confirm("정말 탈퇴하시겠습니까?")) {
		document.removef.action = "member-remove-action";
		document.removef.method = 'POST';
		document.removef.submit();
	}
}

function member_password_modify_action() {
	var passwordConfirm = confirm("정말 변경하시겠습니까?");
	if(passwordConfirm==true){
		if(document.passwordf.member_password.value==""){
			alert("기존 비밀번호를 입력해주세요");
			document.passwordf.password.focus;
			return false;
		}else if(document.passwordf.member_new_password.value==""){
			alert("새로운 비밀번호를 입력해주세요");
			document.passwordf.member_new_password.focus;
			return false;
		}else if(document.passwordf.member_new_repassword.value=="") {
			alert("새로운 비밀번호 확인을 입력해주세요");
			document.passwordf.member_new_repassword.focus;
			return false;
		}else if(document.passwordf.member_new_password.value.length< 4 || document.passwordf.member_new_password.value.length >16){
			alert("비밀번호는 4자리 이상 16자리 이하로 설정 가능합니다");
			document.passwordf.member_new_password.focus;
			return false;
		}else if(document.passwordf.member_new_password.value!=document.passwordf.member_new_repassword.value){
			alert("새로운 비밀번호가 확인 비밀번호와 일치하지 않습니다")
			document.passwordf.member_new_password.focus;
			return false;
		}else if(document.passwordf.member_new_repassword.value!=document.passwordf.member_new_repassword.value){
			alert("비밀번호 확인이 새로운 비밀번호와 일치하지 않습니다")
			document.passwordf.member_new_repassword.focus;
			return false;
		}
		alert("성공적으로 변경완료하였습니다")
		document.passwordf.action = "member-modify-password-action";
		document.passwordf.method = 'POST';
		document.passwordf.submit();
	}
}	

function formatDate(date) {
    var d = new Date(date),
        month = '' + (d.getMonth() + 1),
        day = '' + d.getDate(),
        year = d.getFullYear();

    if (month.length < 2) 
        month = '0' + month;
    if (day.length < 2) 
        day = '0' + day;

    return [year, month, day].join('-');
}


$(function(){
	$('.open-modal').on('click', function(e) {
		$.ajax({
			url:'ticketJSON?ticketNo=' + $(e.target).attr('ticketNo'),
			method:'GET',
			dataType:'json',
			success:function(jsonObject) {
				var t = jsonObject.ticket;
				console.log(t);
				console.log(jsonObject.seatList);
				$('.ticket .movie-title').text(t.time.movie.title);
				$('.ticket .poster img').attr('src', t.time.movie.posterImage);
				$('.ticket .info #screen').text(t.time.screen.screenNo);
				
				var s = '';
				for(let i = 0; i < jsonObject.seatList.length - 1; i++) {
					s += jsonObject.seatList[i].seat.seatCode + ", ";
				}
				s += jsonObject.seatList[jsonObject.seatList.length - 1].seat.seatCode;
				
				$('.ticket .info #seatRow button').attr('data-original-title', s);
				
				$('.ticket .info #screenDate').text(t.time.movieDate);
				$('.ticket .info #screenStart').text(t.time.startTime);
				$('.ticket .info #screenEnd').text(t.time.endTime);
			}
		});
		e.preventDefault();
	});
	
	$('.main__table-text > .dashbox__more').on('click', function(e) {
		if (confirm("정말 예매를 취소하시겠습니까?")) {
			$.ajax({
				url:'ticketDelete?ticketNo=' + $(e.target).attr('ticketNo'),
				method:'GET',
				dataType:'json',
				success:function(jsonObject) {
					var html='';
					$.each(jsonObject.ticketList, function(i, ticket) {
						html += `<tr>
									<td>
										<div class="main__table-text">
											<a href="#modal-topup" class="open-modal" ticketNo="${ticket.ticketNo}">
												${ticket.time.movie.title}
											</a>
										</div>
									</td>
									<td>
										<div class="main__table-text">
											${formatDate(ticket.orderDate)}
										</div>
									</td>
									<td>
										<div class="main__table-text main__table-text--rate">
											${ticket.payCost}
										</div>
									</td>
									<td>
										<div class="main__table-text main__table-text--rate">
											<a class="dashbox__more" href="#;">예매 취소</a>
										</div>
									</td>
								</tr>`;
					});
					$('.booked-history').html(html);
				}
			});
			e.preventDefault();
		}
	});
	
});




var code = '11010010000100111011001011101111011010001110101110011001101110010010111101110111001011001001000011011000111010110001001110111101101001011010111000101101';

table = $('.barcode tr');
for (var i = 0; i < code.length; i++) {
	if (window.CP.shouldStopExecution(0)) break;
	if (code[i] == 1) {
		table.append('<td bgcolor="black">');
	} else {
		table.append('<td bgcolor="white">');
	}
}
window.CP.exitedLoop(0);