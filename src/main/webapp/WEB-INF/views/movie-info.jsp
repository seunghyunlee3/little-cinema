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
       
       
        <script type="text/javascript">
		function review_write() {
			//수정필요
			if("${sMemberId}" == ""){
				alert("로그인 후 이용가능합니다");
				location.href ="login-signup";
				return;
			}
			
			if(f2.reviewComment.value == ""){
				alert("리뷰를 작성하세요");
				f.reviewComment.focus();
				return false;
			}
			
			if(f2.score.value == "" ){
				alert("별점을 입력하세요");
				f.score.focus();
				return false;
			}
				f2.action="review-write-action";
				f2.submit();
		}
	
		
		function modify_cancel() {
			location.href = "movie-info?movieNo="+${movie.movieNo};
		}
	</script>
	
	
       
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
            <div class="d-background" data-image-src="${movie.posterImage}" data-parallax="scroll"></div>
            <div class="d-background bg-black-80"></div>
            <div class="top-block top-inner container">
                <div class="top-block-content">
                    <h1 class="section-title">Movies info</h1>
                    <div class="page-breadcrumbs">
                        <a class="content-link" href="#">Home</a>
                        <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                        <a class="content-link" href="movies-blocks.html">Movies</a>
                    </div>
                </div>
            </div>
        </section>
        <div class="container">
            <div class="sidebar-container">
                <div class="content">
                    <section class="section-long">
                        <div class="section-line">
                            <div class="movie-info-entity" movieNo="${movie.movieNo }">
                                <div class="entity-poster" data-role="hover-wrap">
                                    <div class="embed-responsive embed-responsive-poster">
                                        <img class="embed-responsive-item" src="${movie.posterImage}" alt="" />
                                    </div>
                                    <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                        <div class="entity-play">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h2 class="entity-title">${movie.title}</h2>
                                    <div class="entity-category">
                                    	
                                        	<a class="content-link" href="#">&nbsp;${movie.rating}</a>
                                        
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
                                                
                                                	<c:choose>
													<c:when test="${0.0 == avgScore}">
														<span class="info-text">0</span>
														<span class="info-rest">/5</span>
													</c:when>
													
													<c:otherwise>
														
														<span class="info-text"><fmt:formatNumber value="${avgScore}" pattern=".0"/></span>
														<span class="info-rest">/5</span>
													</c:otherwise>
												</c:choose>
												
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text">${movie.runningtime}</span>
                                            </div>
                                        </div>
                                    </div>
                                    <ul class="entity-list">
                                        <li>
                                            <span class="entity-list-title">Release:</span><fmt:formatDate value="${movie.openDate}" pattern="yyyy-MM-dd" /></li>
                                        <li>
                                            <span class="entity-list-title">Directed:</span>
                                            <a class="content-link" href="#">${movie.director}</a>
                                        </li>
                                        <li>
                                            <span class="entity-list-title">Starring:</span>
                                            <a class="content-link" href="#">${movie.actors}</a>
                                        </li>
                                        <li>
                                            <span class="entity-list-title">Genre:</span>
                                            <a class="content-link" href="#">${movie.genre}</a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <div class="section-line">
                            <div class="section-head">
                                <h2 class="section-title text-uppercase">Synopsis</h2>
                            </div>
                            <div class="section-description">
                                <p class="lead">${movie.summary}</p>
                            </div>
                            <div class="section-bottom">
                                <div class="row">
                                    <div class="mr-auto col-auto">
                                        <div class="entity-links">
                                            <div class="entity-list-title">Share:</div>
                                            <a class="content-link entity-share-link" href="#"><i class="fab fa-facebook-f"></i></a>
                                            <a class="content-link entity-share-link" href="#"><i class="fab fa-twitter"></i></a>
                                            <a class="content-link entity-share-link" href="#"><i class="fab fa-google-plus-g"></i></a>
                                            <a class="content-link entity-share-link" href="#"><i class="fab fa-pinterest-p"></i></a>
                                            <a class="content-link entity-share-link" href="#"><i class="fab fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    <div class="col-auto">
                                        <div class="entity-links">
                                            <div class="entity-list-title">Tags:</div>
                                            <a class="content-link" href="#">${movie.genre}</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        
                        
                        <!-- timetable section -->
                        <div class="section-line">
                            <div class="section-head">
                                <h2 class="section-title text-uppercase">Timetable</h2>
                            </div>
                            
                            <div class="comment-entity">
                                <div class="entity-inner">
                                    <div class="entity-content">
                                        
                                        <div class="text-uppercase entity-extra-title">Date</div>
				                        <div class="entity-showtime">
				                            <div class="showtime-wrap">
				                            	<c:choose>
							                        <c:when test="${empty dateList}">
							                        	<div class="showtime-item">
						                                    개봉일 이후 상영시간표가 등록될 예정입니다.
						                                </div>
							                        </c:when>
						                        	<c:otherwise>
						                            	<c:forEach items="${dateList}" var="date">
							                                <div class="showtime-item">
							                                    <a class="btn-time btn ScreeningDate" aria-disabled="false" href="#" date=<fmt:formatDate value="${date}" pattern="yyyy-MM-dd" />>
							                                    	<fmt:formatDate value="${date}" pattern="M/d(E)"/>
							                                    </a>
							                                </div>
														</c:forEach>
													</c:otherwise>	
												</c:choose>
												<br><br>
				                            </div>
				                        </div>     
                                        
                                    </div>
                                    <div class="entity-extra">
                                    	<div class="text-uppercase entity-extra-title">Showtime</div>
				                        <div class="entity-showtime">
				                            <div class="showtime-wrap" id="timeTableDiv">
				                                
				                            </div>
				                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                         <!-- timetable section 끝 -->
                         
                         <c:choose>
                         <c:when test="${empty movie.reviewList}">
                         <div class="section-line">
	                            <div class="section-head">
	                                <h2 class="section-title text-uppercase">Reviews</h2>
	                            </div>
	                            <form name="f">
			                    	
			                            <div class="comment-entity">
			                                <div class="entity-inner">
			                                
			                                    <div class="entity-content">
			                                        <p class="entity-subtext">작성된 리뷰가 없습니다.</p>
			                                        <p class="entity-text">  </p>
			                                    </div>
			                                    <div class="entity-extra">
			                                        <div class="grid-md row">
			                                        
			                                            <div class="col-12 col-sm-auto">
			                                                <div class="entity-rating">
			                                                 
			                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
			                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
			                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
			                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
			                                                    <span class="entity-rating-icon"><i class="fas fa-star"></i></span>
			                                                    
			                                                </div>
			                                                
			                                            </div>
			                                           		
			                                        </div>
			                                    </div>
			                                    
			                                </div>
			                            </div>
			                        
								</form>
	                        </div>
	                        </c:when>
                         
                         	<c:otherwise>
	                      	<div class="section-line">
	                           <div class="section-head">
	                               <h2 class="section-title text-uppercase">Reviews</h2>
	                           </div>
	                           
	                           
	                           
	                        
		                    	<c:forEach items="${movie.reviewList}" var="review">
		                            <div class="comment-entity">
		                                <div class="entity-inner ajaxclass${review.reviewNo}">
		                                <div reviewNo="${review.reviewNo }">
		                                    <div class="entity-content">
		                                        <p class="entity-subtext">${review.reviewComment}</p>
		                                        <p class="entity-text">${review.member.name}</p>
		                                    </div>
		                                    <div class="entity-extra">
		                                        <div class="grid-md row">
		                                        
		                                            <div class="col-12 col-sm-auto">
		                                                <div class="entity-rating">
		                                                	<!-- 별점부분 -->
		                                                	${review.score } &nbsp;
		                                                	<c:set var="i" value="1"/>
		                                                	<c:forEach var="i" begin="1" end="5" step="1">
		                                                		<c:choose>
		                                                		 	<c:when test="${i <= review.score}">
			                                                		 	<!-- 나온만큼 반복 -->
					                                                    <span class="entity-rating-icon text-theme"><i class="fas fa-star"></i></span>
		                                                		 	</c:when>
		                                                		 	<c:otherwise>
						                                             	<!--   5-평점   만큼 반복 -->
				                                                    	<span class="entity-rating-icon"><i class="fas fa-star"></i></span>
		                                                		 	</c:otherwise>
		                                                		</c:choose>
		                                                	</c:forEach>
		                                                    
		                                                </div>
		                                                
		                                            </div>
		                                         		<!--<c:if test="${review.member.id eq sMemberId}">-->
				                                            	<!-- <input type="button" class="content-link" onclick="reviewModify(${review.reviewNo});" value="리뷰수정"> -->
				                                            <%-- <div class="ml-sm-auto col-auto edit-box" >
				                                            	<a class="content-link" href="#" reviewNo="${review.reviewNo}"><i class='fas fa-edit'></i>&nbsp;&nbsp;edit</a>&nbsp;
				                                            </div> --%>
				                                            <div class="ml-sm-auto col-auto ajax-box" >
				                                            	<a class="content-link" style="cursor: pointer;" reviewNo="${review.reviewNo}"><i class='fas fa-edit'></i>&nbsp;&nbsp;수정</a>&nbsp;
				                                            </div>
				                                            <div class="col-auto delete-box">
				                                            	<!-- <input type="button" onclick="reviewRemove(${review.reviewNo});" value="리뷰 삭제"/> -->
				                                                <a class="content-link" href="#" reviewNo="${review.reviewNo}"><i class='fas fa-window-close'></i>&nbsp;&nbsp;삭제</a>
				                                            </div>
				                                            <div id="editbox"></div>
		                                         		<!--</c:if>-->
		                                           		
		                                        </div>
		                                    </div>
		                                    </div>
		                                </div>
		                            </div>
		                        </c:forEach>
						
	                    </div>
                        </c:otherwise>
                        </c:choose>
                        
                        
                       <br>
                       
						<c:if test="${movie.movieNo<9}">
							<div class="section-line">
                            <div class="section-head" style="padding-bottom: 0px; margin-bottom: 25px" >
                                <h2 class="section-title text-uppercase" style="font-family:Noto Sans KR">리뷰 남기기</h2>
                            </div>
                            <form autocomplete="off" name="f2">
								<input type="hidden" name="movieNo" value="${movie.movieNo}">
                                <div class="row form-grid">
                                    <div class="col-12 col-sm-6">
                                        <div class="input-view-flat input-group" style="font-weight: bold; font-size: 2.0em;line-height: 1.0em;font-family: Impact;">
                                           ${sMemberId} <!--멤버아이디  --> 
                                        </div>
                                    </div>
                                    
                                    <div class="col-12">
                                        <div class="input-view-flat input-group">
                                            <textarea class="form-control" name="reviewComment" placeholder="리뷰를 작성해주세요" style="height: 15em;"></textarea>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <div class="rating-line">
                                            <label>별점:</label>
                                            <div class="form-rating" name="score">
                                                <input type="radio" id="rating-10" name="score" value="5" />
                                                <label for="rating-10">
                                                    <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                    <span class="rating-icon"><i class="far fa-star"></i></span>
                                                </label>
                                                <input type="radio" id="rating-9" name="score" value="4" />
                                                <label for="rating-9">
                                                    <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                    <span class="rating-icon"><i class="far fa-star"></i></span>
                                                </label>
                                                <input type="radio" id="rating-8" name="score" value="3" />
                                                <label for="rating-8">
                                                    <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                    <span class="rating-icon"><i class="far fa-star"></i></span>
                                                </label>
                                                <input type="radio" id="rating-7" name="score" value="2" />
                                                <label for="rating-7">
                                                    <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                    <span class="rating-icon"><i class="far fa-star"></i></span>
                                                </label>
                                                <input type="radio" id="rating-6" name="score" value="1" />
                                                <label for="rating-6">
                                                    <span class="rating-active-icon"><i class="fas fa-star"></i></span>
                                                    <span class="rating-icon"><i class="far fa-star"></i></span>
                                                </label>
                                               
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-12">
                                        <button class="px-5 btn btn-theme" type="button" onclick="review_write()" style="font-family:Noto Sans KR">게시</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </c:if>
                        
                        
                    </section>
                </div>
                
                
            	<div class="sidebar section-long order-lg-last">
                    <section class="section-sidebar">
                        <div class="section-head">
                            <h2 class="section-title text-uppercase">NOW IN CINEMA</h2>
                        </div>
                        <c:forEach items="${movieList}" var="movie">
                        <div class="movie-short-line-entity" style="height: 140px">
                            <a class="entity-preview movie-img" href="#" movieNo="${movie.movieNo}">
                                <span class="embed-responsive embed-responsive-16by9" style="height: 140px">
                                    <img class="embed-responsive-item" src="${movie.posterImage }" alt="" />
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title ">
                                    <a class="content-link movie-title" href="#" movieNo="${movie.movieNo}">${movie.title}</a>
                                </h4>
                                <p class="entity-subtext"><span class="text-theme info-icon"><i class="fas fa-tags"></i></span>&nbsp;${movie.genre}</p>
                            </div>
                        </div>
                        </c:forEach>
                   </section>
                   
                   <section class="section-sidebar">
                        <div class="section-head">
                            <h2 class="section-title text-uppercase">Scheduled Movies</h2>
                        </div>
                        <c:forEach items="${scheduledMovieList}" var="list">
                        <div class="movie-short-line-entity " style="height: 150px">
                            <a class="entity-preview movie-img" href="#" movieNo="${list.movieNo}"> 
                                <span class="embed-responsive embed-responsive-16by9" style="height: 150px">
                                    <img class="embed-responsive-item" src="${list.posterImage }" alt="" />
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link movie-title" href="#" movieNo="${list.movieNo}">${list.title}</a>
                                </h4>
                                <p class="entity-subtext"><span class="text-theme info-icon"><i class="fas fa-tags"></i></span>&nbsp;${list.genre}</p>
                            </div>
                        </div>
                        </c:forEach>
                   </section>
				</div>
            
            
            </div>
        </div>
        <a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
        
        
      
        
        <!--footer start-->
		<jsp:include page="footer.jsp"></jsp:include>
        <!--footer end-->
        
        
        <script>
        
        </script>
        
        
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
        <script src="./js/movie.js"></script>
        <script>
	        $(function(){
	        	$('.ScreeningDate').on('click', function(e) {
	        		$(".ScreeningDate").css('background', '#aaa');
	        		$(e.target).css('background', '#ff8a00');
	        		$.ajax({
	        			url:'MovieTimeTableJSON?movieNo=${movie.movieNo}&movieDate=' + e.target.getAttribute("date"),
	        			method:'GET',
	        			dataType:'json',
	        			success:function(jsonObject) {
	        				var html='';
	        				$.each(jsonObject.dateTimeTable, function(i, time) {
	        					
	        					html+=`
	        						<div class="showtime-item timetable-item">
	                               		<a class="btn-time btn" aria-disabled="false" href="#" timeCode="\${time.timeCode}">
	                               			\${time.screen.screenName}
	                               			<hr>
	                               			\${time.startTime} <br><br>
	                               			<p style="font-size:10px">잔여석 \${96 - time.bookedCount}석</p>
	                               		</a>
	                            	</div>`;		
	        				});
	        				$('#timeTableDiv').html(html);
	        			}
	        		});
	        		e.preventDefault();
	        	});
	        	
	        	$('.ScreeningDate:first').trigger('click');
	        
	        	
		        $(".edit-box").click(function(e) {
					let reviewNo = $(e.target).attr("reviewNo");
					location.href="review_modify?reviewNo="+reviewNo;
				});
		        
		        $(".delete-box").click(function(e) {
					let reviewNo = $(e.target).attr("reviewNo");
					if (confirm("정말 삭제하시겠습니까?")) {
						location.href="review-remove?reviewNo="+reviewNo;
					}
				});
		        
		        //리뷰 수정 ajax
		        $(".ajax-box").click(function(e) { 
		        	//let scroll = window.scrollY;
		        	e.preventDefault();
		        	
					$.ajax({
						url : 'review-modify-form-rest',
						type : 'post',
						dataType:'json',
						data : 'reviewNo=' + $(e.target).attr("reviewNo"),
						success : function(review1movie) {
							var review_info_update_form_html=`
				        		<div class="section-line" style="padding: 20px 20px 20px 25px;">
		                        <div class="section-head">
		                            <h2 class="section-title text-uppercase">리뷰 수정</h2>
		                        </div>
		                        <form name="f3\${review1movie.reviewNo}" id="f3\${review1movie.reviewNo}">
									<input type="hidden" name="reviewNo" value="\${review1movie.reviewNo}"/>
									<input type="hidden" name="movieNo" value="\${review1movie.movie.movieNo}"/>
		                            <div class="row form-grid">
		                                <div class="col-12 col-sm-6">
		                                    <div class="input-view-flat input-group" style="font-weight: bold;font-size: 2.0em;line-height: 1.0em;font-family: Impact; ">
		                                       ${sMemberId} <!--멤버아이디  --> 
		                                    </div>
		                                </div>
		                                
		                                <div class="col-12">
		                                    <div class="input-view-flat input-group">
		                                        <textarea class="form-control a5" name="reviewComment" placeholder="리뷰를 작성해주세요" id="a5">\${review1movie.reviewComment}</textarea>
		                                    </div>
		                                </div>
		                                <div class="col-12">
		                                    <div class="rating-line">
		                                        <label>별점:</label>
		                                        <div class="form-rating" name="score" >
		                                            <input type="radio" id="rating-10" name="score" value="5" />
		                                            <label for="rating-10">
		                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
		                                                <span class="rating-icon"><i class="far fa-star"></i></span>
		                                            </label>
		                                            <input type="radio" id="rating-9" name="score" value="4" />
		                                            <label for="rating-9">
		                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
		                                                <span class="rating-icon"><i class="far fa-star"></i></span>
		                                            </label>
		                                            <input type="radio" id="rating-8" name="score" value="3" />
		                                            <label for="rating-8">
		                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
		                                                <span class="rating-icon"><i class="far fa-star"></i></span>
		                                            </label>
		                                            <input type="radio" id="rating-7" name="score" value="2" />
		                                            <label for="rating-7">
		                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
		                                                <span class="rating-icon"><i class="far fa-star"></i></span>
		                                            </label>
		                                            <input type="radio" id="rating-6" name="score" value="1" />
		                                            <label for="rating-6">
		                                                <span class="rating-active-icon"><i class="fas fa-star"></i></span>
		                                                <span class="rating-icon"><i class="far fa-star"></i></span>
		                                            </label>
		                                           
		                                        </div>
		                                    </div>
		                                </div>
		                                <div class="col-12">
		                                    <button class="px-5 btn btn-theme btn-review-modify-action" type="button" reviewNo="\${review1movie.reviewNo}" >수정</button>
		                                    <button class="px-5 btn btn-theme btn-cancle" type="button" onclick="modify_cancel()">취소</button>
		                                </div>
		                            </div>
		                        </form>
		                    </div>
				        	`;
				       
							var reviewNo = $(e.target).attr("reviewNo");
							var reviewScore = review1movie.score;
							console.log(reviewScore);
							
							//window.reviewHtml =$(".ajaxclass"+reviewNo).html();
							$(".ajaxclass"+reviewNo).html(review_info_update_form_html);
							$(".ajaxclass"+reviewNo+" input:radio[name='score']:radio[value="+reviewScore+"]").prop('checked',true);
							
							console.log($("textarea#a5").val());
							var aa = $("textarea#a5").val();
							if($("textarea#a5").val() == ""){
		        				alert("리뷰를 입력하세요");
		        				return;
		        			}
							//window.scrollTo({ top: scroll, left: 0, behavior: 'smooth' });
						},
						error : function (err) {
							alert("에러");
						}
					})
				});
		        
		        /***************리뷰수정버튼 이벤트처리***********************/
		        $(document).on('click','.btn-review-modify-action',function(e){
		        	let reviewNo=$(e.target).attr('reviewNo');
		        	
		        	$.ajax({
		        		url:'review-modify-action-rest',
		        		method:'post',
		        		dataType:'json',
		        		data:$('#f3'+reviewNo).serialize(),
		        		success:function(review){
		        			
		        			
		        			/***page**/
		        			location.href='movie-info?movieNo='+review.movie.movieNo;
		        			/***ajax**/
		        			//$(`.ajaxclass\${review.reviewNo}`).html(window.reviewHtml);
		        		},
		        	error:function(){
						alert("내용을 입력해주세요");
					}
		        	});
		        	
		        });
		        
		        $("#timeTableDiv").on("click", ".timetable-item", function(e) {
	            	let timeCode = $(e.target).attr("timeCode");
	        		location.href = "booking?timeCode="+timeCode;
	        	});
		        
		        
		        $(".movie-img").click(function(e) {
					location.href="movie-info?movieNo=" + $(e.target).parents("a").attr("movieNo");
				});
		        
		        $(".movie-title").click(function(e) {
					location.href="movie-info?movieNo=" + $(e.target).attr("movieNo");
				});
		        
		        insertVideo("div.movie-info-entity");
		        magPop();
	        });
        
        	
        </script>
    </body>
</html>