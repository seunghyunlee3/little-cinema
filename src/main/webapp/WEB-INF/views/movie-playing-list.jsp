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
    </head>
    <body class="body">
        <header class="header header-horizontal header-view-pannel">
            <div class="container">
				<jsp:include page="nav.jsp"></jsp:include>
            </div>
        </header>
        <section class="after-head d-flex section-text-white position-relative">
            <div class="d-background" data-image-src="https://filmchatting.files.wordpress.com/2017/05/cinema-22.jpg" data-parallax="scroll"></div>
            <div class="d-background bg-black-80"></div>
            <div class="top-block top-inner container">
                <div class="top-block-content">
                    <h1 class="section-title">Movies list</h1>
                    <div class="page-breadcrumbs">
                        <a class="content-link" href="main">Home</a>
                        <span class="text-theme mx-2"><i class="fas fa-chevron-right"></i></span>
                        <span>Movies</span>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-long">
            <div class="container">
                
                 <c:forEach items="${movieList }" var="movie">
	                <article class="movie-line-entity playing" movieNo="${movie.movieNo }">
	                    <div class="movie-poster entity-poster" data-role="hover-wrap" style="cursor: pointer;">
	                        <div class="embed-responsive embed-responsive-poster">
	                            <img class="embed-responsive-item" src="${movie.posterImage }" alt="" />
	                        </div>
		                    <div class="d-over bg-theme-lighted collapse animated faster" data-show-class="fadeIn show"
		                        data-hide-class="fadeOut show">
		                        <div class="entity-play">
		                            <a class="action-icon-theme action-icon-bordered rounded-circle"
		                                href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
		                                <span class="icon-content"><i class="fas fa-play"></i></span>
		                            </a>
		                        </div>
		                    </div>
	                    </div>
	                    <div class="entity-content">
	                        <h4 class="entity-title">
	                            <a class="content-link" href="movie-info?movieNo=${movie.movieNo }">${movie.title }</a>
	                        </h4>
	                        <div class="entity-category">
	                        	${movie.genre }
	                        </div>
	                        <div class="entity-info">
	                            <div class="info-lines">
	                                <div class="info info-short">
	                                    <span class="text-theme info-icon"><i class="fas fa-star"></i></span>
	                                    <span class="info-text avg">평점</span>
	                                    <span class="info-rest">/ 5</span>
	                                </div>
	                                <div class="info info-short">
	                                    <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
	                                    <span class="info-text">${movie.runningtime }</span>
	                                </div>
	                            </div>
	                        </div>
	                        <p class="text-short entity-text">
	                       	${movie.summary }
	                        </p>
	                    </div>
	                </article>
                </c:forEach>
                <!-- 
                <div class="section-bottom">
                    <div class="paginator">
                        <a class="paginator-item" href="#"><i class="fas fa-chevron-left"></i></a>
                        <a class="paginator-item" href="#">1</a>
                        <span class="active paginator-item">2</span>
                        <a class="paginator-item" href="#">3</a>
                        <span class="paginator-item">...</span>
                        <a class="paginator-item" href="#">10</a>
                        <a class="paginator-item" href="#"><i class="fas fa-chevron-right"></i></a>
                    </div>
                </div>
                 -->
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
       		calcAvg("article.movie-line-entity.playing");
  			insertVideo("article.movie-line-entity");
  			magPop();
        </script>
    </body>
</html>