<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <title>Little Cinema</title>
    <!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
    <!-- Animate.css -->
    <link href="./animate.css/animate.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome iconic font -->
    <link href="./fontawesome/css/fontawesome-all.css" rel="stylesheet" type="text/css" />
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
    <link href="./css/pay-form.css" rel="stylesheet" type="text/css">
</head>
<body class="body">
        <header class="header header-horizontal header-view-pannel">
            <div class="container">
                <!-- navibar start -->
				<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
                <!-- navibar end -->
            </div>
        </header>
        
    <!-- 내용 넣으세요 -->
 <div class="pay-container">
	 <div class="modal clearfix" style="display: block;">
	    <div class="modal-product">
	      <div class="product">
	        
	        <!-- Slideshow container -->
	        <div class="product-slideshow text-center">
	          <img src="${time.movie.posterImage }" style="width:65%" >
	        </div>
	        <hr style="margin: 10px 50px; background-color: #333333">
	        <br>
	
	        <h1 class="product-name">
	          ${time.movie.title }<br> ${time.screen.screenName } (${time.startTime } ~ ${time.endTime })
	        </h1>
	        <p class="product-code-name">
	        좌석:
	          <c:forEach items="${seatList }" var="seat">
	          	${seat}
	          </c:forEach>
	        </p>
	        <p class="product-price">
	         <fmt:formatNumber value="${payCost }" pattern="#,##0"></fmt:formatNumber>원
	        </p>
	
	      </div>
	
	      <div class="round-shape"></div>
	    </div>
	    <div class="modal-info">
	      <div class="info">
	        <h2>결제 정보</h2>
	        <form id="card-info">
	          <ul class="form-list">
	            <li class="form-list-row">
	              <div class="user">
	                <label for="#">이름</label><br>
	                <i class="fas fa-user"></i><input type="text" required>
	              </div>
	            </li>
	            <li class="form-list-row">
	              <div class="number">
	                <label for="#">카드 번호</label><br>
	                <i class="far fa-credit-card"></i><input type="text" required maxlength="16">
	              </div>
	            </li>
	            <li class="form-list-row clearfix">
	              <div class="date">
	                <label for="#">만료일</label><br>
	                <input class="month" type="text" required placeholder="MM" maxlength="2">
	                <input class="year" type="text" required placeholder="YY" maxlength="2">
	              </div>
	              <div class="cvc">
	                <label for="#">CVC</label><i class="fas fa-question-circle"></i><br>
	                <input type="text" required placeholder="***" maxlength="3">
	              </div>
	            </li>
	            <li class="form-list-row">
	            </li>
	          </ul>
	          <button type="button" id="pay-action">결제하기</button>
	        </form>
	      </div>
	    </div>
	  </div>
	  <form id="pay-form">
	  	<input type="hidden" name="timeCode">
	  	<input type="hidden" name="payCost">
	  	<input type="hidden" name="seat">
	  </form>
  </div>
  
    <a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
    <!--footer start-->
		<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <!--footer end-->

    <script type="text/javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns"
        crossorigin="anonymous"></script>
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
    <!-- custom script -->
    <script>
    	$("#pay-action").click(function(e) {
   	        let isComplete = true;
   	        $("#card-info input").each(function(index, element) {
   	          if(element.value == "") {
   	            isComplete = false;
   	          	alert("결제 정보를 입력해주세요.");
   	            return false;
   	          }
   	        });
   	        
   	        if(isComplete == false) {
   	          return;
   	        }
    		console.log("???");
    		let seatList = [];
	        <c:forEach items="${seatList }" var="seat">
			    seatList.push("${seat}");
	        </c:forEach>
			document.querySelector("#pay-form").action = "pay-action";
			document.querySelector("#pay-form").method = "post";
			$("#pay-form input[name=timeCode]").val(${time.timeCode});
			$("#pay-form input[name=payCost]").val(${payCost});
			$("#pay-form input[name=seat]").val(seatList);
			
			document.querySelector("#pay-form").submit();
		});
    </script>
</body>

</html>