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
                    <h1 class="section-title">Timetable</h1>
                    <div class="page-breadcrumbs">
                        <a class="content-link" href="#">Home</a>
                        <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                        <a class="content-link" href="movies-blocks.html">Movies</a>
                    </div>
                </div>
            </div>
        </section>
        
        
        
        <section class="section-long">
            <div class="container">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Timetable</h2>
                    <p class="section-text">상영시간표</p>
                </div>
               
						<div class="comment-entity">
							<div class="entity-inner">
								<div class="entity-content">
								
		                			<div class="text-uppercase entity-extra-title">Date</div>
									<div class="entity-showtime">
										<div class="showtime-wrap">
											<c:forEach items="${dateList}" var="date">
												<div class="showtime-item">
													<a class="btn-time btn ScreeningDate" aria-disabled="false" href="#" date=<fmt:formatDate value="${date}" pattern="yyyy-MM-dd" />>
														<fmt:formatDate value="${date}" pattern="M/d(E)"/>
													</a>
												</div>
											</c:forEach>
											<br><br>
										</div>
									</div>
									
								</div>
							</div>
						</div>	
							
		                <br>
		                <br>
		                <div class="text-uppercase entity-extra-title">Showtime</div>
		                <div id="timeTableDiv">
                           	<div style="height: 1500px;"></div>
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
        <script src="./js/movie.js"></script>
        <script>
        
        $(function(){
        	$('.ScreeningDate').on('click', function(e) {
        		$(".ScreeningDate").css('background', '#aaa');
        		$(e.target).css('background', '#ff8a00');
        		$.ajax({
        			url: "timetable-detail-rest",
        			method: "GET",
        			data: "movieDate="+$(e.target).attr("date"),
        			
        			success: function(data) {
        				let html='<hr>';
        					$.each(data, function(i, movie) {
        						if(movie.dateTimeTable.length>0) {
        							html+=` 
        								<article class="movie-line-entity" movieNo="\${movie.movieNo}">
											<div class="movie-poster entity-poster" data-role="hover-wrap" style="cursor: pointer;">
												<div class="embed-responsive embed-responsive-poster">
													<img class="embed-responsive-item" src="\${movie.posterImage}" alt="" />
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
												<h4 class="entity-title title-click">
													<a class="content-link" href="#" movieNo="\${movie.movieNo}"> \${movie.title}</a>
												</h4>
											<div class="entity-category">
												\${movie.rating}
											</div>
											<div class="entity-info">
												<div class="info-lines">
													<div class="info info-short date-time">
											
											`;
        							$.each(movie.dateTimeTable, function(i, time) {
        								html += `
															<a class="btn-time btn" aria-disabled="false" href="#" timeCode="\${time.timeCode}">
		       													\${time.screen.screenName}
		       		                               				<hr>
		       		                               				\${time.startTime} <br><br>
		       		                               				<p style="font-size:10px">잔여석 \${96 - time.bookedCount}석</p>
	       													</a>&nbsp;&nbsp;
	       										`;
														
        							});		
        							html+=`
		        									</div>
												</div>
											</div>
										</div>
        							</article>`;	
        						}	//if문
        					});
        					
        					
        					
        					
        				$('#timeTableDiv').html(html);
        				insertVideo("article.movie-line-entity");
        				magPop();
        			}
        		});
        		e.preventDefault();
        	});
        	$('.ScreeningDate:first').trigger('click');
        	
        	$("#timeTableDiv").on("click", ".date-time", function(e) {
            	let timeCode = $(e.target).attr("timeCode");
        		location.href = "booking?timeCode="+timeCode;
        	});
        	/*
        	$("#timeTableDiv").on("click", ".animated", function(e) {
        		let movieNo = $(e.target).parents("article").attr("movieNo");
        		location.href = "movie-info?movieNo="+movieNo;
        	});
			*/        	
        	$("#timeTableDiv").on("click", ".title-click", function(e) {
        		let movieNo = $(e.target).attr("movieNo");
        		location.href = "movie-info?movieNo="+movieNo;
        	});
        	
        });
        

        </script>
    </body>
</html>
