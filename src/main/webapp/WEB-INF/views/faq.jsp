<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <title>Little Cinema</title>
        <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <!-- Bootstrap -->
        <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
        <!-- Animate.css -->
        <link href="./animate.css/animate.css" rel="stylesheet" type="text/css" />
        <!-- Font Awesome iconic font -->
        <link href="./fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <!-- <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script> -->
        <!-- Magnific Popup -->
        <link href="./magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css" />
        <!-- Slick carousel -->
        <link href="./slick/slick.css" rel="stylesheet" type="text/css" />
        <!-- Fonts -->
        <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&family=Open+Sans:wght@300&display=swap" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Oswald:300,400,500,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700' rel='stylesheet' type='text/css'>
        <!-- Theme styles -->
        <link href="./css/dot-icons.css" rel="stylesheet" type="text/css">
        <link href="./css/theme.css" rel="stylesheet" type="text/css">
		<style>
		  .answer {
		    display: none;
		    padding: 0 20px 30px 20px;
		  }
		  
		  p {
		  	line-height:2;
		  }
		  
		  .question {
		    cursor: pointer;
		    border: none;
		    outline: none;
		    background: none;
		    width: 100%;
		    text-align: left;
		  }
		  
		  .lead:hover {
		    color: #ff8a00;
		  }
		  
		  button:focus {outline:none;}
		  
		  [id$="-toggle"] {
		    margin-right: 15px;
		  }
		  
		  [id$="-ans"] {
		    margin-right: 30px;
		  }
	</style>


    </head>
    <body class="body">
        <header class="header header-horizontal header-view-pannel">
            <div class="container">
                <!-- navibar start -->
				<jsp:include page="nav.jsp"></jsp:include>
                <!-- navibar end -->
            </div>
        </header>
        <section class="after-head d-flex section-text-white position-relative">
            <div class="d-background" data-image-src="https://filmchatting.files.wordpress.com/2017/05/cinema-22.jpg" data-parallax="scroll"></div>
            <div class="d-background bg-black-80"></div>
            <div class="top-block top-inner container">
                <div class="top-block-content">
                    <h1 class="section-title">FAQ</h1>
                    <div class="page-breadcrumbs">
                        <a class="content-link" href="#">Home</a>
                        <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                        <a class="content-link" href="movies-blocks.html">CS</a>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <section class="section-long">
            <div class="container">
            
            
				<div class="section-line">
					<div class="section-head">
						<h2 class="section-title text-uppercase">FAQ</h2>
					</div>
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-1"><span id="que-1-toggle"></span>
							  	<p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[관람 등급] 청소년 관람 불가 등급의 영화를 보호자 동반하여 관람할 수 있나요?&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
							  	</p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-1">
			  						<br>
				  					<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;청소년 관람 불가 등급의 영화는 보호자를 동반하여도 입장이 불가능합니다.</p>
									<p>단, 전체관람가, 12세 이상 관람가, 15세 이상 관람가 등급의 영화는 보호자와 함께 영화를 보는 경우에는 관람이 가능합니다.</p>
									<br>
									<p>[영화 및 비디오물의 진흥에 관한 법률 제 29조 5항]</p>
									<p>누구든지 청소년 관람 불가 또는 제한 상영가에 해당하는 영화의 경우에 청소년을 입장시키면 안됩니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>	
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-2"><span id="que-2-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[관람 요금] 영화 관람 요금에 대해 알려주세요.&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-2">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;Little Cinema의 현재 관람 요금은 스탠다드석 12,000원, 프라임석 14,000원입니다.</p>
									<p>관람 요금은 관람 요금 정책에 따라 정해지므로 예매 시 관람 요금을 꼭 확인하여 주시기 바랍니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>	
					
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-3"><span id="que-3-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[관람 등급] 영화 관람 등급에 대해 알려주세요.&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-3">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;영화 관람은 영화에 따라 아래와 같이 등급이 있습니다.</p>
			  						<br>
									<p>전체관람가 : 모든 연령의 관람객이 관람할 수 있는 영화</p>
									<p>만 12세 이상 관람가 : 만 12세 미만의 관람객은 관람할 수 없는 영화. 보호자 동반 시 12세 미만 관람 가능</p>
									<p>만 15세 이상 관람가 : 만 15세 미만의 관람객은 관람할 수 없는 영화. 보호자 동반 시 15세 미만 관람 가능</p>
									<p>청소년 관람 불가 : 만 18세 미만의 관람객은 관람할 수 없는 영화. 보호자를 동반하여도 18세 미만(영, 유아 포함)은 관람 불가</p>
									<p>(영화 및 비디오물 진흥에 관한 법률 제 29조와 초,중등 교육법 제 2조 규정에 따라 만 18세 미만 고등학생은 관람할 수 없음)</p>
									<br>
									<p>※ 등급 제한이 있는 영화의 경우 관람 고객의 신분증을 확인해야 관람이 가능합니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>	
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-4"><span id="que-4-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[예매 후 변경] 영화관 홈페이지에서 인터넷 예매 후 시간 변경이나 영화 변경이 가능한가요?&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-4">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;인터넷 예매의 부분 취소 및 교환은 불가능합니다.</p>
									<p>예매 내역 전체를 취소하고 다시 예매를 진행하셔야 합니다.</p>
									<p>영화관 홈페이지에서 예매하신 경우에는 30분 전까지 예매를 취소하신 후 다른 영화로 다시 예매하시면 됩니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>	
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-5"><span id="que-5-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[관람료 환급] 현장 매표소나 영화관 홈페이지에서 결제한 예매 티켓의 환불 정책을 알려주세요.&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-5">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;Little Cinema는 공정거래위원회의 영화 관람 표준 약관에 따라 관람객의 요청에 아래와 같이 환급하여 드립니다.</p>
									<br>
									<p>===== 영화 관람 표준 약관(공정거래위원회 표준 약관) =====</p>
									<br>
									<p><b>제 1조(입 장)</b> 관객은 입장권으로 지정일, 지정회에 한하여 입장할 수 있습니다. </p>
									<p>&nbsp;&nbsp;다만, 영화 시작 당시 좌석에 여유가 있는 경우 영화 상영업자는 좌석의 한도 내에서 지정일, 지정회가 아니더라도 관객의 요청 순서에 따라 입장을 허용할 수 있습니다.</p>
									<br>
									<p><b>제 2조(변 경)</b> 지정일, 지정회의 변경을 희망하는 관객은 영화 상영 시작 20분 전까지 직접 방문하거나 전화로 변경 절차를 밟아야 합니다.</p>
									<p>&nbsp;&nbsp;단, 미리 수령한 예매권을 소지한 경우 입장권과 교환하여야 유효합니다.</p>
									<br>
									<p><b>제 3조(현금 환급)</b></p>
									<p>&nbsp;&nbsp;1. 입장권의 환급은 입장권에 기재된 시간을 기준으로 관객의 요청에 따라 다음과 같이 합니다.</p>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;① 당 해 영화 상영 시작 전 20분까지 요청한 경우에는 입장권 요금의 전액</p>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;② 당 해 영화 상영 시작 전 20분에서부터 시작 시까지 요청한 경우에는 입장권 요금의 50%</p>
									<p>&nbsp;&nbsp;&nbsp;&nbsp;③ 당 해 영화 상영 시작 후에는 환급 요청을 할 수 없습니다.</p>
									<p>&nbsp;&nbsp;2. 제 1항에 있어서 해당일 전 환급은 관객이 예매한 곳에서 가능하고 이 경우 환급 요청을 받은 날부터 48시간 이내에 환급하며 단, 공휴일인 경우는 익일 처리합니다. </p>
									<p>&nbsp;&nbsp;그리고 해당일인 경우에는 매표소에서 즉시 환급합니다.</p>
									<p>&nbsp;&nbsp;3. 제 1항 또는 제 2항의 규정을 적용함에 있어서 입장권에 영화 상영 시간이 기재되지 아니한 경우에는 신문에 기재된 시간과 영화 상영관 매표소에 기재된 시간 중 늦은 시간을 기준으로 합니다.</p>
									<br>
									<p><b>제 4조(영화 상영 지체, 중단 시의 입장권 환급)</b> 영화 상영업자는 다음의 사유가 발생하는 경우 관객의 요청에 따라 각각 정한 금액으로 입장권을 환급합니다. </p>
									<p>&nbsp;&nbsp;다만, 고객이 환급을 요청하지 아니하고 관람을 계속하는 경우에는 그렇게 하지 않습니다.</p>
									<p>&nbsp;&nbsp;1. 영화 상영 시작이 영화 상영업자의 고의 또는 과실로 입장권에 기재된 예정 시간보다 30분 이상 늦어지는 경우에는 입장권 요금, 1시간 이상 늦어지는 경우에는 입장권 요금의 2배</p>
									<p>&nbsp;&nbsp;2. 영화 상영 중 10분 이상 또는 2회 이상 중단된 경우에는 입장권 요금, 30분 이상 또는 3회 이상 중단된 경우에는 입장권 요금의 2배</p>
									<br>
									<p><b>제 5조(전화, 인터넷 등에 의한 예약의 효력)</b> 전화나 인터넷 등을 통하여 영화 관람을 예약한 경우에는 당 해 영화 상영 시작 20분 전까지 입장권을 구입하여야 합니다. </p>
									<p>&nbsp;&nbsp;그러하지 않을 경우 그 예약을 무효로 합니다.</p>
									<br>
									<p>===================== 끝. ====================</p>
									<br>
									<p>위의 규정에 따라 현장에서 구입하신 관람 티켓은 상영 시작 전 20분까지 요청 시에는 전액 환불, 20분 부터 시작 시까지 요청 시에는 요금의 50% 환불이 가능합니다. </p>
									<p>상영 시간이 지나면 환불이 불가능하니 유의하여 주시기 바랍니다.</p>
									<p>위의 규정에 따라 인터넷으로 예매한 예매권은 상영 시작 20분 전까지 현장 매표소에서 티켓으로 교환하셔야 합니다.</p>
									<p>영화관 홈페이지에서 인터넷으로 하신 예매를 취소하신 경우, 홈페이지에서는 상영 시작 시간 30분 전까지 취소 가능하며, 영화관 매표소에서는 상영 시작 시간 20분 전까지 취소 가능합니다. </p>
									<p>단, 인터넷으로 취소하실 경우 경우에 따라 취소 수수료가 부과될 수 있사오니 필히 인터넷 예매 취소 정책에 대해 확인하여 주시기 바랍니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-6"><span id="que-6-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[현장 예매] 현장 매표소에서 보고싶은 영화 티켓을 사전에 구매할 수 있나요?&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-6">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;해당 상영일 이전에 사전 예매하여 구매가 가능합니다.</p>
									<br>
									<p>현장 매표소에서는 수수료가 부과되지 않습니다.</p>
									<p>다만 미리 티켓을 발급하여 드리는 것으로 예매를 취소하시려면 티켓을 소지하시고 영화 상영 시작 20분 전까지 매표소에 방문하셔서 취소하셔야 합니다. </p>
									<br>
									<p>현장 예매하신 티켓은 취소 수수료가 부과되지 않습니다.</p>
									<p>전화나 이메일 등으로는 취소하실 수 없습니다.</p>
									<p>영화 상영이 시작된 티켓은 환불이 되지 않음을 유의하여 주시기 바랍니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>
					
					
					<div class="comment-entity">
				        <div class="entity-inner">	
							<div class="faq-content entity-content">
							  <button class="question" id="que-7"><span id="que-7-toggle"></span>
								  <p class="lead"><span class="text-theme info-icon"><i class="fas fa-quote-left"></i></span>&nbsp;[상영 정보] 영화 상영스케줄은 어디에서 확인할 수 있나요?&nbsp;<span class="text-theme info-icon"><i class="fas fa-quote-right"></i></span>
								  </p>
							  </button>
							</div> 
							<div class="entity-extra">
								<div class="grid-md row answer" id="ans-7">
									<br>
			  						<p><span class="text-theme info-icon"><i class="fas fa-angle-double-right"></i></span>&nbsp;홈페이지 상단 상영시간표 메뉴에서 현재 예매 가능한 영화의 상영스케줄을 확인하실 수 있습니다.</p>
						  		</div>
						  	</div>			
						</div>
					</div>
					
               
                
               </div> 
            </div>
        </section>
        
     
        <a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
        
        <!--footer start-->
		<jsp:include page="footer.jsp"></jsp:include>
        <!--footer end-->
        
        
        <!-- jQuery library -->
        <script src="./js/jquery-3.3.1.js"></script>
        <!-- Bootstrap -->
        <script src="./bootstrap/js/bootstrap.js"></script>
        <!-- Paralax.js -->
        <script src="./parallax.js/parallax.js"></script>
        <!-- Waypoints -->
        <script src="./waypoints/jquery.waypoints.min.js"></script>
        <!-- Slick carousel -->
        <script src="./slick/slick.min.js"></script>
        <!-- Magnific Popup -->
        <script src="./magnific-popup/jquery.magnific-popup.min.js"></script>
        <!-- Inits product scripts -->
        <script src="./js/script.js"></script>
        <script>
        const items = document.querySelectorAll('.question');

        function openCloseAnswer() {
          const answerId = this.id.replace('que', 'ans');

          if(document.getElementById(answerId).style.display === 'block') {
            document.getElementById(answerId).style.display = 'none';
          } else {
            document.getElementById(answerId).style.display = 'block';
          }
        }

        items.forEach(item => item.addEventListener('click', openCloseAnswer));
        </script>
    </body>
</html>
