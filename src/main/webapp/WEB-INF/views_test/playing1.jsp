<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

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
                <!-- navibar start -->

                <!-- navibar end -->
            </div>
        </header>
        <section class="section-text-white position-relative">
            <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
            <div class="d-background bg-theme-blacked"></div>
            <div class="mt-auto container position-relative">
                <div class="top-block-head text-uppercase">
                    <h2 class="display-4">Now
                        <span class="text-theme">in cinema</span>
                    </h2>
                </div>
                <div class="top-block-footer">
                    <div class="slick-spaced slick-carousel" data-slick-view="navigation responsive-4">
                        <div class="slick-slides">
                            <!-- slide content start -->
                        <c:forEach items="${movieList }" var="movie">
                            <div class="slick-slide">
                                <article class="poster-entity" data-role="hover-wrap" movieNo="${movie.movieNo }">
                                    <div class="embed-responsive embed-responsive-poster">
                                        <img class="embed-responsive-item" src="${movie.posterImage }" alt="" />
                                    </div>
                                    <div class="d-background bg-theme-lighted collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show"></div>
                                    <div class="d-over bg-highlight-bottom">
                                        <div class="collapse animated faster entity-play" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                        <h4 class="entity-title">
                                            <a class="content-link" href="movie-info-sidebar-right.html">${movie.title }</a>
                                        </h4>
                                        <div class="entity-category">
                                        	
                                            <a class="content-link" href="movies-blocks.html">${movie.genre }</a>
                                        <!-- 
                                            <a class="content-link" href="movies-blocks.html">comedy</a>
                                         -->
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
                                    </div>
                                </article>
                            </div>
                        </c:forEach>
                            <!-- slide content end -->

                        </div>
                        <div class="slick-arrows">
                            <div class="slick-arrow-prev">
                                <span class="th-dots th-arrow-left th-dots-animated">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </div>
                            <div class="slick-arrow-next">
                                <span class="th-dots th-arrow-right th-dots-animated">
                                    <span></span>
                                    <span></span>
                                    <span></span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        
        <section class="section-long">
            <div class="container">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Now in play</h2>
                    <p class="section-text">Dates: 13 - 15 february 2019</p>
                </div>
                
                <!-- movie-line-entity start -->
                <c:forEach items="${movieList }" var="movie">
                <article class="movie-line-entity playing" movieNo="${movie.movieNo }">
                    <div class="entity-poster" data-role="hover-wrap">
                        <div class="embed-responsive embed-responsive-poster">
                            <img class="embed-responsive-item" src="${movie.posterImage }" alt="" />
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
                        <h4 class="entity-title">
                            <a class="content-link" href="movie-info-sidebar-right.html">${movie.title }</a>
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
                    <div class="entity-extra">
                        <div class="text-uppercase entity-extra-title">Showtime</div>
                        <div class="entity-showtime">
                            <div class="showtime-wrap">
                                <div class="showtime-item">
                                    <span class="disabled btn-time btn" aria-disabled="true">11 : 30</span>
                                </div>
                                <div class="showtime-item">
                                    <a class="btn-time btn" aria-disabled="false" href="#">13 : 25</a>
                                </div>
                                <div class="showtime-item">
                                    <a class="btn-time btn" aria-disabled="false" href="#">16 : 07</a>
                                </div>
                                <div class="showtime-item">
                                    <a class="btn-time btn" aria-disabled="false" href="#">19 : 45</a>
                                </div>
                                <div class="showtime-item">
                                    <a class="btn-time btn" aria-disabled="false" href="#">21 : 30</a>
                                </div>
                                <div class="showtime-item">
                                    <a class="btn-time btn" aria-disabled="false" href="#">23 : 10</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
                </c:forEach>
                <!-- movie-line-entity end -->
            </div>
        </section>

        
        <section class="section-solid-long section-text-white position-relative">
            <div class="d-background" data-image-src="http://via.placeholder.com/1920x1080" data-parallax="scroll"></div>
            <div class="d-background bg-gradient-black"></div>
            <div class="container position-relative">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Comming Soon</h2>
                </div>
                <div class="slick-spaced slick-carousel" data-slick-view="navigation single">
                    <div class="slick-slides">
                        <div class="slick-slide">
                            <article class="movie-line-entity">
                                <div class="entity-preview">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over">
                                        <div class="entity-play">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">
                                        <a class="content-link" href="movie-info-sidebar-right.html">One way road</a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link" href="movies-blocks.html">sport</a>,
                                        <a class="content-link" href="movies-blocks.html">musical</a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-calendar-alt"></i></span>
                                                <span class="info-text">18 jul 2020</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text">130</span>
                                                <span class="info-rest">&nbsp;min</span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                                    </p>
                                </div>
                            </article>
                        </div>
                        <div class="slick-slide">
                            <article class="movie-line-entity">
                                <div class="entity-preview">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over">
                                        <div class="entity-play">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">
                                        <a class="content-link" href="movie-info-sidebar-right.html">Dance story</a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link" href="movies-blocks.html">drama</a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-calendar-alt"></i></span>
                                                <span class="info-text">14 jul 2020</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text">140</span>
                                                <span class="info-rest">&nbsp;min</span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                                    </p>
                                </div>
                            </article>
                        </div>
                        <div class="slick-slide">
                            <article class="movie-line-entity">
                                <div class="entity-preview">
                                    <div class="embed-responsive embed-responsive-16by9">
                                        <img class="embed-responsive-item" src="http://via.placeholder.com/1920x1080" alt="" />
                                    </div>
                                    <div class="d-over">
                                        <div class="entity-play">
                                            <a class="action-icon-theme action-icon-bordered rounded-circle" href="https://www.youtube.com/watch?v=d96cjJhvlMA" data-magnific-popup="iframe">
                                                <span class="icon-content"><i class="fas fa-play"></i></span>
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <div class="entity-content">
                                    <h4 class="entity-title">
                                        <a class="content-link" href="movie-info-sidebar-right.html">Cloud 10</a>
                                    </h4>
                                    <div class="entity-category">
                                        <a class="content-link" href="movies-blocks.html">drama</a>,
                                        <a class="content-link" href="movies-blocks.html">superhero</a>
                                    </div>
                                    <div class="entity-info">
                                        <div class="info-lines">
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-calendar-alt"></i></span>
                                                <span class="info-text">19 oct 2020</span>
                                            </div>
                                            <div class="info info-short">
                                                <span class="text-theme info-icon"><i class="fas fa-clock"></i></span>
                                                <span class="info-text">110</span>
                                                <span class="info-rest">&nbsp;min</span>
                                            </div>
                                        </div>
                                    </div>
                                    <p class="text-short entity-text">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                                    </p>
                                </div>
                            </article>
                        </div>
                    </div>
                    <div class="slick-arrows">
                        <div class="slick-arrow-prev">
                            <span class="th-dots th-arrow-left th-dots-animated">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>
                        <div class="slick-arrow-next">
                            <span class="th-dots th-arrow-right th-dots-animated">
                                <span></span>
                                <span></span>
                                <span></span>
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-long">
            <div class="container">
                <div class="section-head">
                    <h2 class="section-title text-uppercase">Latest news</h2>
                </div>
                <div class="grid row">
                    <div class="col-md-6">
                        <article class="article-tape-entity">
                            <a class="entity-preview" href="article-sidebar-right.html" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                                <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">20 jul 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                                <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link" href="article-sidebar-right.html">Creative life</a>
                                </h4>
                                <div class="entity-category">
                                    <a class="content-link" href="news-blocks-sidebar-right.html">comedy</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">detective</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                                </div>
                                <p class="text-short entity-text">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed consectetur ultrices justo a pellentesque. Praesent venenatis dolor nec tempus lacinia. Donec ac condimentum dolor. Nullam sit amet nisl hendrerit, pharetra nulla convallis, malesuada diam. Donec ornare nisl eu lectus rhoncus, at malesuada metus rutrum. Aliquam a nisl vulputate, sodales ipsum aliquam, tempus purus. Suspendisse convallis, lectus nec vehicula sollicitudin, lorem sapien rhoncus dolor, vel lacinia urna velit ullamcorper nisi. Phasellus pellentesque, magna nec gravida feugiat, est magna suscipit ligula, vel porttitor nunc enim at nibh. Sed varius sit amet leo vitae consequat.
                                </p>
                                <div class="entity-actions">
                                    <a class="text-uppercase" href="article-sidebar-right.html">Read More</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-6">
                        <article class="article-tape-entity">
                            <a class="entity-preview" href="article-sidebar-right.html" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                                <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">15 jun 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                                <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link" href="article-sidebar-right.html">One step to the end</a>
                                </h4>
                                <div class="entity-category">
                                    <a class="content-link" href="news-blocks-sidebar-right.html">drama</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">superhero</a>
                                </div>
                                <p class="text-short entity-text">Vivamus dolor ex, viverra ut facilisis et, euismod et quam. Aliquam sit amet mattis velit, ullamcorper venenatis magna. Aenean ac maximus magna. Proin pharetra venenatis tortor, ac suscipit est ultrices vitae. Mauris vulputate, nisl in lacinia dignissim, libero justo vehicula arcu, a porttitor quam erat ac dui. Suspendisse potenti. Maecenas sit amet interdum sem. Vestibulum sit amet volutpat mauris, ut gravida velit. Donec ultricies, eros ut finibus volutpat, enim ligula tempus enim, non bibendum libero tellus at velit. Aenean placerat egestas ullamcorper.
                                </p>
                                <div class="entity-actions">
                                    <a class="text-uppercase" href="article-sidebar-right.html">Read More</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-6">
                        <article class="article-tape-entity">
                            <a class="entity-preview" href="article-sidebar-right.html" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                                <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">24 may 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                                <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link" href="article-sidebar-right.html">Here we go again</a>
                                </h4>
                                <div class="entity-category">
                                    <a class="content-link" href="news-blocks-sidebar-right.html">romance</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">historical</a>
                                </div>
                                <p class="text-short entity-text">In luctus ac nisi vel vulputate. Sed blandit augue ut ex eleifend, ac posuere dolor sollicitudin. Mauris tempus euismod mauris id semper. Vestibulum ut vulputate elit, id ultricies libero. Aenean laoreet mi augue, at iaculis nisi aliquam eu. Quisque nec ipsum vehicula diam egestas porttitor eu vitae ex. Curabitur auctor tortor elementum leo faucibus, sit amet imperdiet ante maximus. Nulla viverra tortor dignissim purus placerat dapibus nec ut orci. Quisque efficitur nulla quis pulvinar dapibus. Phasellus sodales tortor sit amet sagittis condimentum. Donec ac ultricies ex. In odio leo, rhoncus aliquam bibendum sit amet, varius sit amet nisl.
                                </p>
                                <div class="entity-actions">
                                    <a class="text-uppercase" href="article-sidebar-right.html">Read More</a>
                                </div>
                            </div>
                        </article>
                    </div>
                    <div class="col-md-6">
                        <article class="article-tape-entity">
                            <a class="entity-preview" href="article-sidebar-right.html" data-role="hover-wrap">
                                <span class="embed-responsive embed-responsive-16by9">
                                    <img class="embed-responsive-item" src="http://via.placeholder.com/720x405" alt="" />
                                </span>
                                <span class="entity-date">
                                    <span class="tape-block tape-horizontal tape-single bg-theme text-white">
                                        <span class="tape-dots"></span>
                                        <span class="tape-content m-auto">11 may 2019</span>
                                        <span class="tape-dots"></span>
                                    </span>
                                </span>
                                <span class="d-over bg-black-80 collapse animated faster" data-show-class="fadeIn show" data-hide-class="fadeOut show">
                                    <span class="m-auto"><i class="fas fa-search"></i></span>
                                </span>
                            </a>
                            <div class="entity-content">
                                <h4 class="entity-title">
                                    <a class="content-link" href="article-sidebar-right.html">The one and the other</a>
                                </h4>
                                <div class="entity-category">
                                    <a class="content-link" href="news-blocks-sidebar-right.html">drama</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">western</a>,
                                    <a class="content-link" href="news-blocks-sidebar-right.html">sci-fi</a>
                                </div>
                                <p class="text-short entity-text">Aenean molestie turpis eu aliquam bibendum. Nulla facilisi. Vestibulum quis risus in lorem suscipit tempor. Morbi consectetur enim vitae justo finibus consectetur. Mauris volutpat nunc dui, quis condimentum dolor efficitur et. Phasellus rhoncus porta nunc eu fermentum. Nullam vitae erat hendrerit, tempor arcu eget, eleifend tortor.
                                </p>
                                <div class="entity-actions">
                                    <a class="text-uppercase" href="article-sidebar-right.html">Read More</a>
                                </div>
                            </div>
                        </article>
                    </div>
                </div>
                <div class="section-bottom">
                    <a class="btn btn-theme" href="news-blocks-sidebar-right.html">View All News</a>
                </div>
            </div>
        </section>
        <section>
            <div class="gmap-with-map">
                <div class="gmap" data-lat="-33.878897" data-lng="151.103737"></div>
                <div class="container">
                    <div class="row">
                        <div class="col-lg-6 ml-lg-auto">
                            <div class="gmap-form bg-white">
                                <h4 class="form-title text-uppercase">Contact
                                    <span class="text-theme">us</span>
                                </h4>
                                <p class="form-text">We understand your requirement and provide quality works</p>
                                <form autocomplete="off">
                                    <div class="row form-grid">
                                        <div class="col-sm-6">
                                            <div class="input-view-flat input-group">
                                                <input class="form-control" name="name" type="text" placeholder="Name" />
                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="input-view-flat input-group">
                                                <input class="form-control" name="email" type="email" placeholder="Email" />
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <div class="input-view-flat input-group">
                                                <textarea class="form-control" name="message" placeholder="Message"></textarea>
                                            </div>
                                        </div>
                                        <div class="col-12">
                                            <button class="px-5 btn btn-theme" type="submit">Send</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
        <!--footer start-->

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
        <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAJ4Qy67ZAILavdLyYV2ZwlShd0VAqzRXA&callback=initMap"></script>
        <script async defer src="https://ia.media-imdb.com/images/G/01/imdb/plugins/rating/js/rating.js"></script>
        <!-- custom script -->
        <script>
        	window.setTimeout(() => {
        		 
        		let calcAvg = function (entity) {
            		$(entity).each(function(i, element) {
    					$.ajax({
    						url: "rest_avg",
    						data: "movieNo=" + $(element).attr("movieNo"),
    						success: function(result) {
    							$(entity +"[movieNo="+ $(element).attr("movieNo") +"] .info.info-short .info-text.avg").text(result);
    						}
    					});
    				});
        		}
        		/*
        		$("article.poster-entity").each(function(i, element) {
					$.ajax({
						url: "rest_avg",
						data: "movieNo=" + $(element).attr("movieNo"),
						success: function(result) {
							$("article.poster-entity[movieNo="+ $(element).attr("movieNo") +"] .info.info-short .info-text").text(result);
						}
					});
				});
        		*/
        		
        		calcAvg("article.poster-entity");
        		calcAvg("article.movie-line-entity.playing");


			});
        </script>
    </body>
</html>