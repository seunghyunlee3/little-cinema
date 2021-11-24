<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />

	<!-- memberInfo CSS -->
	<link rel="stylesheet" href="css/bootstrap-reboot.min.css">
	<link rel="stylesheet" href="css/bootstrap-grid.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/main.css">

	<!-- Bootstrap -->
    <link href="./bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link rel="stylesheet" href="css/member.css">
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
    <link href="./css/booking.css" rel="stylesheet" type="text/css">

	
	<!-- label Fonts and icons -->
	<link rel="stylesheet" type="text/css" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700|Roboto+Slab:400,700|Material+Icons" />
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/latest/css/font-awesome.min.css">
	<!-- label css -->
	<link rel="stylesheet" href="css/hyubLabel.css">
	
	<!-- ticket css -->
	<link rel="stylesheet" href="./css/reset.css" />
	<link rel="stylesheet" href="./css/movie_ticket.css"/>
	
	<link rel="stylesheet" href="./css/svgicons.css"/>
	
	<!-- tooltip css -->
	<link rel="stylesheet" href="css/hyubtooltip.css">
	
	<title>profile</title>
</head>

<body>
	<header class="header header-horizontal header-view-pannel">
        <div class="container">
			<jsp:include page="/WEB-INF/views/nav.jsp"></jsp:include>
        </div>
    </header>

	<!-- profile -->
	<div class="catalog catalog--page">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="profile">
						<div class="profile__user">
							<div class="profile__avatar">
								<img src="images/svg/avatar.svg">
							</div>
							<div class="profile__meta">
								<h3>${loginMember.id}</h3>
								<!-- <span>FlixTV ID: 11104</span> -->
							</div>
						</div>

						<!-- tabs nav -->
						<ul class="nav nav-tabs profile__tabs" id="profile__tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#tab-1" role="tab" aria-controls="tab-1" aria-selected="true">개인 정보</a>
							</li>

							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tab-4" role="tab" aria-controls="tab-4" aria-selected="false">정보 수정</a>
							</li>
						</ul>
						<!-- end tabs nav -->
						<form action="#" name="removef">
							<button class="profile__logout" type="button" onClick="member_remove_action()">
								<span>회원 탈퇴</span>
								<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M4,12a1,1,0,0,0,1,1h7.59l-2.3,2.29a1,1,0,0,0,0,1.42,1,1,0,0,0,1.42,0l4-4a1,1,0,0,0,.21-.33,1,1,0,0,0,0-.76,1,1,0,0,0-.21-.33l-4-4a1,1,0,1,0-1.42,1.42L12.59,11H5A1,1,0,0,0,4,12ZM17,2H7A3,3,0,0,0,4,5V8A1,1,0,0,0,6,8V5A1,1,0,0,1,7,4H17a1,1,0,0,1,1,1V19a1,1,0,0,1-1,1H7a1,1,0,0,1-1-1V16a1,1,0,0,0-2,0v3a3,3,0,0,0,3,3H17a3,3,0,0,0,3-3V5A3,3,0,0,0,17,2Z"></path></svg>
							</button>
						</form>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<!-- content tabs -->
			<div class="tab-content">

				<div class="tab-pane fade show active" id="tab-1" role="tabpanel">
					<div class="row row--grid">
						<!-- stats -->
						<div class="col-12 col-sm-6 col-xl-3">
							<div class="stats">
								<span>이름</span>
								<p><b>${loginMember.name }</b></p>
								<svg class="svg-icon" viewBox="0 0 20 20">
									<path d="M8.749,9.934c0,0.247-0.202,0.449-0.449,0.449H4.257c-0.247,0-0.449-0.202-0.449-0.449S4.01,9.484,4.257,9.484H8.3C8.547,9.484,8.749,9.687,8.749,9.934 M7.402,12.627H4.257c-0.247,0-0.449,0.202-0.449,0.449s0.202,0.449,0.449,0.449h3.145c0.247,0,0.449-0.202,0.449-0.449S7.648,12.627,7.402,12.627 M8.3,6.339H4.257c-0.247,0-0.449,0.202-0.449,0.449c0,0.247,0.202,0.449,0.449,0.449H8.3c0.247,0,0.449-0.202,0.449-0.449C8.749,6.541,8.547,6.339,8.3,6.339 M18.631,4.543v10.78c0,0.248-0.202,0.45-0.449,0.45H2.011c-0.247,0-0.449-0.202-0.449-0.45V4.543c0-0.247,0.202-0.449,0.449-0.449h16.17C18.429,4.094,18.631,4.296,18.631,4.543 M17.732,4.993H2.46v9.882h15.272V4.993z M16.371,13.078c0,0.247-0.202,0.449-0.449,0.449H9.646c-0.247,0-0.449-0.202-0.449-0.449c0-1.479,0.883-2.747,2.162-3.299c-0.434-0.418-0.714-1.008-0.714-1.642c0-1.197,0.997-2.246,2.133-2.246s2.134,1.049,2.134,2.246c0,0.634-0.28,1.224-0.714,1.642C15.475,10.331,16.371,11.6,16.371,13.078M11.542,8.137c0,0.622,0.539,1.348,1.235,1.348s1.235-0.726,1.235-1.348c0-0.622-0.539-1.348-1.235-1.348S11.542,7.515,11.542,8.137 M15.435,12.629c-0.214-1.273-1.323-2.246-2.657-2.246s-2.431,0.973-2.644,2.246H15.435z"></path>
								</svg>
							</div>
						</div>
						<!-- end stats -->

						<!-- stats -->
						<div class="col-12 col-sm-6 col-xl-3">
							<div class="stats">
								<span>핸드폰 번호</span>
								<p>${loginMember.phone }</p>
								<svg class="svg-icon" viewBox="0 0 20 20">
									<path d="M10,15.654c-0.417,0-0.754,0.338-0.754,0.754S9.583,17.162,10,17.162s0.754-0.338,0.754-0.754S10.417,15.654,10,15.654z M14.523,1.33H5.477c-0.833,0-1.508,0.675-1.508,1.508v14.324c0,0.833,0.675,1.508,1.508,1.508h9.047c0.833,0,1.508-0.675,1.508-1.508V2.838C16.031,2.005,15.356,1.33,14.523,1.33z M15.277,17.162c0,0.416-0.338,0.754-0.754,0.754H5.477c-0.417,0-0.754-0.338-0.754-0.754V2.838c0-0.417,0.337-0.754,0.754-0.754h9.047c0.416,0,0.754,0.337,0.754,0.754V17.162zM13.77,2.838H6.23c-0.417,0-0.754,0.337-0.754,0.754v10.555c0,0.416,0.337,0.754,0.754,0.754h7.539c0.416,0,0.754-0.338,0.754-0.754V3.592C14.523,3.175,14.186,2.838,13.77,2.838z M13.77,13.77c0,0.208-0.169,0.377-0.377,0.377H6.607c-0.208,0-0.377-0.169-0.377-0.377V3.969c0-0.208,0.169-0.377,0.377-0.377h6.785c0.208,0,0.377,0.169,0.377,0.377V13.77z"></path>
								</svg>
							</div>
						</div>
						<!-- end stats -->

						<!-- stats -->
						<div class="col-12 col-sm-6 col-xl-3">
							<div class="stats">
								<span>생년월일</span>
								<p><a><fmt:formatDate value="${loginMember.birth_date }" pattern="yyyy-MM-dd" /></a></p>
								<svg class="svg-icon" viewBox="0 0 20 20">
									<path d="M16.254,3.399h-0.695V3.052c0-0.576-0.467-1.042-1.041-1.042c-0.576,0-1.043,0.467-1.043,1.042v0.347H6.526V3.052c0-0.576-0.467-1.042-1.042-1.042S4.441,2.476,4.441,3.052v0.347H3.747c-0.768,0-1.39,0.622-1.39,1.39v11.813c0,0.768,0.622,1.39,1.39,1.39h12.507c0.768,0,1.391-0.622,1.391-1.39V4.789C17.645,4.021,17.021,3.399,16.254,3.399z M14.17,3.052c0-0.192,0.154-0.348,0.348-0.348c0.191,0,0.348,0.156,0.348,0.348v0.347H14.17V3.052z M5.136,3.052c0-0.192,0.156-0.348,0.348-0.348S5.831,2.86,5.831,3.052v0.347H5.136V3.052z M16.949,16.602c0,0.384-0.311,0.694-0.695,0.694H3.747c-0.384,0-0.695-0.311-0.695-0.694V7.568h13.897V16.602z M16.949,6.874H3.052V4.789c0-0.383,0.311-0.695,0.695-0.695h12.507c0.385,0,0.695,0.312,0.695,0.695V6.874z M5.484,11.737c0.576,0,1.042-0.467,1.042-1.042c0-0.576-0.467-1.043-1.042-1.043s-1.042,0.467-1.042,1.043C4.441,11.271,4.908,11.737,5.484,11.737z M5.484,10.348c0.192,0,0.347,0.155,0.347,0.348c0,0.191-0.155,0.348-0.347,0.348s-0.348-0.156-0.348-0.348C5.136,10.503,5.292,10.348,5.484,10.348z M14.518,11.737c0.574,0,1.041-0.467,1.041-1.042c0-0.576-0.467-1.043-1.041-1.043c-0.576,0-1.043,0.467-1.043,1.043C13.475,11.271,13.941,11.737,14.518,11.737z M14.518,10.348c0.191,0,0.348,0.155,0.348,0.348c0,0.191-0.156,0.348-0.348,0.348c-0.193,0-0.348-0.156-0.348-0.348C14.17,10.503,14.324,10.348,14.518,10.348z M14.518,15.212c0.574,0,1.041-0.467,1.041-1.043c0-0.575-0.467-1.042-1.041-1.042c-0.576,0-1.043,0.467-1.043,1.042C13.475,14.745,13.941,15.212,14.518,15.212z M14.518,13.822c0.191,0,0.348,0.155,0.348,0.347c0,0.192-0.156,0.348-0.348,0.348c-0.193,0-0.348-0.155-0.348-0.348C14.17,13.978,14.324,13.822,14.518,13.822z M10,15.212c0.575,0,1.042-0.467,1.042-1.043c0-0.575-0.467-1.042-1.042-1.042c-0.576,0-1.042,0.467-1.042,1.042C8.958,14.745,9.425,15.212,10,15.212z M10,13.822c0.192,0,0.348,0.155,0.348,0.347c0,0.192-0.156,0.348-0.348,0.348s-0.348-0.155-0.348-0.348C9.653,13.978,9.809,13.822,10,13.822z M5.484,15.212c0.576,0,1.042-0.467,1.042-1.043c0-0.575-0.467-1.042-1.042-1.042s-1.042,0.467-1.042,1.042C4.441,14.745,4.908,15.212,5.484,15.212z M5.484,13.822c0.192,0,0.347,0.155,0.347,0.347c0,0.192-0.155,0.348-0.347,0.348s-0.348-0.155-0.348-0.348C5.136,13.978,5.292,13.822,5.484,13.822z M10,11.737c0.575,0,1.042-0.467,1.042-1.042c0-0.576-0.467-1.043-1.042-1.043c-0.576,0-1.042,0.467-1.042,1.043C8.958,11.271,9.425,11.737,10,11.737z M10,10.348c0.192,0,0.348,0.155,0.348,0.348c0,0.191-0.156,0.348-0.348,0.348s-0.348-0.156-0.348-0.348C9.653,10.503,9.809,10.348,10,10.348z"></path>
								</svg>
							</div>
						</div>
						<!-- end stats -->
						
						<!-- stats -->
						<div class="col-12 col-sm-6 col-xl-3">
							<div class="stats">
								<span>내 리뷰</span>
								<p><a>${reviewList.size()}</a></p>
								<svg class="svg-icon" viewBox="0 0 20 20">
									<path d="M12.871,9.337H7.377c-0.304,0-0.549,0.246-0.549,0.549c0,0.303,0.246,0.55,0.549,0.55h5.494
										c0.305,0,0.551-0.247,0.551-0.55C13.422,9.583,13.176,9.337,12.871,9.337z M15.07,6.04H5.179c-0.304,0-0.549,0.246-0.549,0.55
										c0,0.303,0.246,0.549,0.549,0.549h9.891c0.303,0,0.549-0.247,0.549-0.549C15.619,6.286,15.373,6.04,15.07,6.04z M17.268,1.645
										H2.981c-0.911,0-1.648,0.738-1.648,1.648v10.988c0,0.912,0.738,1.648,1.648,1.648h4.938l2.205,2.205l2.206-2.205h4.938
										c0.91,0,1.648-0.736,1.648-1.648V3.293C18.916,2.382,18.178,1.645,17.268,1.645z M17.816,13.732c0,0.607-0.492,1.1-1.098,1.1
										h-4.939l-1.655,1.654l-1.656-1.654H3.531c-0.607,0-1.099-0.492-1.099-1.1v-9.89c0-0.607,0.492-1.099,1.099-1.099h13.188
										c0.605,0,1.098,0.492,1.098,1.099V13.732z"></path>
								</svg>
							</div>
						</div>
						<!-- end stats -->

						<!-- dashbox -->
						<div class="col-12 col-xl-6">
							<div class="dashbox">
								<div class="dashbox__title">
									<h3>
										<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M21,2a1,1,0,0,0-1,1V5H18V3a1,1,0,0,0-2,0V4H8V3A1,1,0,0,0,6,3V5H4V3A1,1,0,0,0,2,3V21a1,1,0,0,0,2,0V19H6v2a1,1,0,0,0,2,0V20h8v1a1,1,0,0,0,2,0V19h2v2a1,1,0,0,0,2,0V3A1,1,0,0,0,21,2ZM6,17H4V15H6Zm0-4H4V11H6ZM6,9H4V7H6Zm10,9H8V13h8Zm0-7H8V6h8Zm4,6H18V15h2Zm0-4H18V11h2Zm0-4H18V7h2Z"/></svg>
										예매 내역
									</h3>
								</div>

								<div class="dashbox__table-wrap dashbox__table-wrap--1">
									<table class="main__table main__table--dash">
										<thead>
											<tr>
												<th>영화 제목</th>
												<th>예매 한 날짜</th>
												<th>구매 가격</th>
												<th></th>
											</tr>
										</thead>
										<tbody class="booked-history">
											<c:forEach items="${ticketList}" var="ticket" varStatus="status">
											<tr>
												<td>
													<div class="main__table-text">
														<a href="#modal-topup" class="open-modal" ticketNo="${ticket.ticketNo}">
															${ticket.time.movie.title}
														</a>
													</div>
												</td>
												<td>
													<div class="main__table-text">
														<fmt:formatDate value="${ticket.orderDate}" pattern="yyyy-MM-dd"/>
													</div>
												</td>
												<td>
													<div class="main__table-text main__table-text--rate">
														${ticket.payCost}
													</div>
												</td>
												<td>
													<div class="main__table-text main__table-text--rate">
														<a class="dashbox__more" href="#;" ticketNo="${ticket.ticketNo}">예매 취소</a>
													</div>
												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- end dashbox -->

						<!-- dashbox -->
						<div class="col-12 col-xl-6">
							<div class="dashbox">
								<div class="dashbox__title">
									<h3>
										<svg class="svg-icon" viewBox="0 0 20 20">
											<path d="M12.871,9.337H7.377c-0.304,0-0.549,0.246-0.549,0.549c0,0.303,0.246,0.55,0.549,0.55h5.494
												c0.305,0,0.551-0.247,0.551-0.55C13.422,9.583,13.176,9.337,12.871,9.337z M15.07,6.04H5.179c-0.304,0-0.549,0.246-0.549,0.55
												c0,0.303,0.246,0.549,0.549,0.549h9.891c0.303,0,0.549-0.247,0.549-0.549C15.619,6.286,15.373,6.04,15.07,6.04z M17.268,1.645
												H2.981c-0.911,0-1.648,0.738-1.648,1.648v10.988c0,0.912,0.738,1.648,1.648,1.648h4.938l2.205,2.205l2.206-2.205h4.938
												c0.91,0,1.648-0.736,1.648-1.648V3.293C18.916,2.382,18.178,1.645,17.268,1.645z M17.816,13.732c0,0.607-0.492,1.1-1.098,1.1
												h-4.939l-1.655,1.654l-1.656-1.654H3.531c-0.607,0-1.099-0.492-1.099-1.1v-9.89c0-0.607,0.492-1.099,1.099-1.099h13.188
												c0.605,0,1.098,0.492,1.098,1.099V13.732z"></path>
										</svg> 리뷰 내역
									</h3>
								</div>

								<div class="dashbox__table-wrap dashbox__table-wrap--2">
									<table class="main__table main__table--dash">
										<thead>
											<tr>
												<th>영화 제목</th>
												<th>내가 작성한 리뷰</th>
												<th>평점</th>
											</tr>
										</thead>
										<tbody>
										<c:forEach items="${reviewList}" var="review" varStatus="status">
											<tr>
												<td>
													<div class="main__table-text">
													<a href="movie-info?movieNo=${review.movie.movieNo }">${review.movie.title }</a>
													</div>
												</td>
												<td>
													<div class="main__table-text">
													<a href="movie-info?movieNo=${review.movie.movieNo }">${review.reviewComment }</a>
													</div>
												</td>
												<td>
													<div class="main__table-text main__tab	le-text--rate"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M22,9.67A1,1,0,0,0,21.14,9l-5.69-.83L12.9,3a1,1,0,0,0-1.8,0L8.55,8.16,2.86,9a1,1,0,0,0-.81.68,1,1,0,0,0,.25,1l4.13,4-1,5.68A1,1,0,0,0,6.9,21.44L12,18.77l5.1,2.67a.93.93,0,0,0,.46.12,1,1,0,0,0,.59-.19,1,1,0,0,0,.4-1l-1-5.68,4.13-4A1,1,0,0,0,22,9.67Zm-6.15,4a1,1,0,0,0-.29.88l.72,4.2-3.76-2a1.06,1.06,0,0,0-.94,0l-3.76,2,.72-4.2a1,1,0,0,0-.29-.88l-3-3,4.21-.61a1,1,0,0,0,.76-.55L12,5.7l1.88,3.82a1,1,0,0,0,.76.55l4.21.61Z"/></svg> ${review.score }</div>
												</td>
											</tr>
										</c:forEach>
										</tbody>
									</table>
								</div>
							</div>
						</div>
						<!-- end dashbox -->
					</div>
				</div>
				<%-- end tab1 --%>

				<div class="tab-pane fade" id="tab-4" role="tabpanel">
					<div class="row">
						<div class="col-12">
							<div class="sign__wrap">
								<div class="row">
									<!-- details form -->
									<div class="col-12 col-lg-6">
										<form action="#" name="modifyf" class="sign__form sign__form--profile sign__form--first">
											<div class="row justify-content-center">
												<div class="col-12">
													<h4 class="sign__title">내 정보 수정</h4>
												</div>
											</div>
											
											<div class="row justify-content-center">
												<div class="col-12 col-md-6 col-lg-12 col-xl-6">
													<div class="form-group">
														<label for="id" class="bmd-label-floating">아이디</label>
														<input class="form-control" type="text" id="id" name="id" value="${loginMember.id }"
																disabled="disabled">
													</div>
												</div>

												<div class="col-12 col-md-6 col-lg-12 col-xl-6">
													<div class="form-group">
														<label for="id" class="bmd-label-floating">이름</label>
														<input class="form-control" type="text" id="name" name="name" value="${loginMember.name }" maxlength="4" required="required">
													</div>
												</div>
												
												<div class="col-12 col-md-6 col-lg-12 col-xl-6">
													<div class="form-group">
														<label for="id" class="bmd-label-floating">생년월일</label>
														<input class="form-control" type="text" id="birth_date" name="birth_date" 
																value="<fmt:formatDate value="${loginMember.birth_date }" pattern="yyyy-MM-dd" />" 
																disabled="disabled">
													</div>
												</div>
												
												<div class="col-12 col-md-6 col-lg-12 col-xl-6">
													<div class="form-group">
														<input type="hidden" name="phone" id="phone">
														<label for="id" class="bmd-label-floating">핸드폰 번호</label>
														<input class="form-control" style="width:20%; padding: 5px;" type="tel" id="phone1" name="phone1" value="${fn:substring(loginMember.phone,0,3) }" maxlength="3" required="required">
														<input class="form-control" style="width:25%; padding: 5px;" type="tel" id="phone2" name="phone2" value="${fn:substring(loginMember.phone,3,7) }" maxlength="4" required="required">
														<input class="form-control" style="width:25%; padding: 5px;" type="tel" id="phone3" name="phone3" value="${fn:substring(loginMember.phone,7,11) }" maxlength="4" required="required">
													</div>
												</div>
											</div>
											
											<div class="row justify-content-center">
												<div class="col">
													<button class="sign__btn" type="button" style="cursor:pointer;" onclick="member_modify_action()">내 정보 변경</button>
												</div>
											</div>
										</form>
									</div>
									<!-- end details form -->

									<!-- password form -->
									<div class="col-12 col-lg-6">
										<form action="#" name="passwordf" class="sign__form sign__form--profile">
											<div class="row justify-content-center">
												<div class="col-12">
													<h4 class="sign__title">비밀번호 변경</h4>
												</div>
											</div>
											
											<div class="row justify-content-center">
												<div class="col-12 col-md-8 col-lg-12 col-xl-10">
															<div class="form-group">
																	<label for="member_password" class="bmd-label-floating">기존 비밀번호</label>
																	<input type="password" name="member_password" id="member_password" class="form-control" maxlength="16" required="required">
																	<!-- <span class="bmd-help">기존 비밀번호를 입력하세요</span> -->
															</div>
													</div>
													
													<div class="col-12 col-md-8 col-lg-12 col-xl-10">
															<div class="form-group has-success">
																	<label for="member_new_password" class="bmd-label-floating">새로운 비밀번호(4~16자리의 영문, 숫자,특수문자)</label>
																	<input type="password" name="member_new_password" id="member_new_password" class="form-control" maxlength="16" required="required">
																	<span class="form-control-feedback">
																	</span>
															</div>
													</div>
													
													<div class="col-12 col-md-8 col-lg-12 col-xl-10">
															<div class="form-group has-success">
																	<label for="member_new_repassword" class="bmd-label-floating">새로운 비밀번호 확인</label>
																	<input type="password" name="member_new_repassword" id="member_new_repassword" class="form-control" maxlength="16" required="required">
																	<span class="form-control-feedback">
																	</span>
															</div>
													</div>
											</div>

											<div class="row justify-content-center">
												<div class="col-12">
													<button class="sign__btn" type="button" onclick="member_password_modify_action()">비밀번호 변경</button>
												</div>
											</div>
										</form>
									</div>
									<!-- end password form -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<%-- end tab4 --%>


			</div>
			<!-- end content tabs -->
		</div>
	</div>
	<!-- end profile -->

	<!-- modal top-up -->
	<form action="#" id="modal-topup" class="zoom-anim-dialog mfp-hide modal modal--form">
		<div class="ticket">
			<div class="holes-top"></div>
			<div class="title">
				<p class="cinema">LITTLE CINEMA PRESENTS</p>
				<p class="movie-title">베놈2 : 렛 데어 비 카니지</p>
			</div>
			<div class="poster">
				<img src="https://img.dtryx.com/poster/2021/09/BAE548A1-E1F8-4B0C-914C-7802968FA325.small.jpg" alt="[Movie] 베놈2 : 렛 데어 비 카니지" />
			</div>
			<div class="info">
				<table>
					<tr>
						<th>상영관</th>
						<th></th>
						<th></th>
					</tr>
					<tr>
						<td class="bigger" id="screen">18</td>
						<td class="bigger" id="seatRow">
							<button type="button" class="btn bigger" data-toggle="tooltip" data-placement="top" 
							title="Tooltip on top" data-container="body">좌석 확인</button>
						</td>
					</tr>
				</table>
				<table>
					<tr>
						<th>상영 날짜</th>
						<th>상영 시작</th>
						<th>상영 종료</th>
					</tr>
					<tr>
						<td id="screenDate">17/1/13</td>
						<td id="screenStart">19:30</td>
						<td id="screenEnd">21:30</td>
					</tr>
				</table>
			</div>
			<div class="holes-lower"></div>
			<div class="serial">
				<table class="barcode">
					<tr></tr>
				</table>
				<table class="numbers">
					<tr>
						<td>9</td>
						<td>1</td>
						<td>7</td>
						<td>3</td>
						<td>7</td>
						<td>5</td>
						<td>4</td>
						<td>4</td>
						<td>4</td>
						<td>5</td>
						<td>4</td>
						<td>1</td>
						<td>4</td>
						<td>7</td>
						<td>8</td>
						<td>7</td>
						<td>3</td>
						<td>4</td>
						<td>1</td>
						<td>4</td>
						<td>5</td>
						<td>2</td>
					</tr>
				</table>
			</div>
		</div>
	</form>
	<!-- end modal top-up -->

   	<a class="scroll-top disabled" href="#"><i class="fas fa-angle-up" aria-hidden="true"></i></a>
    <!--footer start-->
	<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
    <!--footer end-->
    
    <!-- JS -->
	<script src="js/jquery-3.5.1.min.js"></script>
	<script src="js/bootstrap.bundle.min.js"></script>

	<script src="js/popper.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-material-design.min.js" type="text/javascript"></script>
	<script src="js/material-kit.js?v=2.0.7" type="text/javascript"></script>
	
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/select2.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/main.js"></script>
	
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
    <script src="https://cpwebassets.codepen.io/assets/common/stopExecutionOnTimeout-1b93190375e9ccc259df3a57c1abc0e64599724ae30d7ea4c6877eb615f89387.js"></script>
    <script src="./js/member.js"></script>
</body>
</html>