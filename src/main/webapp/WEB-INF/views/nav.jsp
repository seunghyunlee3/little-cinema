<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<nav class="navbar">
    <a class="navbar-brand" href="./">
        <span class="logo-element">
            <span class="logo-tape">
                <span class="svg-content svg-fill-theme" data-svg="./images/svg/logo-part.svg"></span>
            </span>
            <span class="logo-text text-uppercase">
                <span>L</span>ittle Cinema</span>
        </span>
    </a>
    <button class="navbar-toggler" type="button">
        <span class="th-dots-active-close th-dots th-bars">
            <span></span>
            <span></span>
            <span></span>
        </span>
    </button>
    <div class="navbar-collapse">
        <ul class="navbar-nav">
            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                <a class="nav-link" href="seattable">영화관</a>
                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                <ul class="collapse nav">
                    <li class="nav-item">
                        <a class="nav-link" href="seattable">좌석배치도</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="faq">FAQ</a>
                    </li>
                </ul>
            </li>
            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
                <a class="nav-link" href="timetable">영화정보</a>
                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
                <ul class="collapse nav">
                    <li class="nav-item">
		                <a class="nav-link" href="timetable">상영시간표</a>
		            </li>
                    <li class="nav-item">
                        <a class="nav-link" href="playing">현재 상영작</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="scheduled-movies">상영 예정작</a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-extra">
       <c:choose>
	       	<c:when test="${empty sMemberId }">
		        <a href="login-signup">
				    <button type="button" class="btn btn-outline-theme">
				        <svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-box-arrow-in-right" viewBox="0 0 16 16">
				            <path fill-rule="evenodd" d="M6 3.5a.5.5 0 0 1 .5-.5h8a.5.5 0 0 1 .5.5v9a.5.5 0 0 1-.5.5h-8a.5.5 0 0 1-.5-.5v-2a.5.5 0 0 0-1 0v2A1.5 1.5 0 0 0 6.5 14h8a1.5 1.5 0 0 0 1.5-1.5v-9A1.5 1.5 0 0 0 14.5 2h-8A1.5 1.5 0 0 0 5 3.5v2a.5.5 0 0 0 1 0v-2z">
				            </path>
				            <path fill-rule="evenodd" d="M11.854 8.354a.5.5 0 0 0 0-.708l-3-3a.5.5 0 1 0-.708.708L10.293 7.5H1.5a.5.5 0 0 0 0 1h8.793l-2.147 2.146a.5.5 0 0 0 .708.708l3-3z">
				            </path>
				        </svg>
				        로그인
				    </button>
		        </a>
	       	</c:when>
	       	<c:otherwise>
		       	<ul class="navbar-nav">
		            <li class="nav-item nav-item-arrow-down nav-hover-show-sub">
		                <a class="nav-link" href="#">${sMemberId } 님</a>
		                <div class="nav-arrow"><i class="fas fa-chevron-down"></i></div>
		                <ul class="collapse nav">
		                    <li class="nav-item">
		                        <a class="nav-link" href="member-info"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-info-circle" viewBox="0 0 16 16">
								  <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
								  <path d="m8.93 6.588-2.29.287-.082.38.45.083c.294.07.352.176.288.469l-.738 3.468c-.194.897.105 1.319.808 1.319.545 0 1.178-.252 1.465-.598l.088-.416c-.2.176-.492.246-.686.246-.275 0-.375-.193-.304-.533L8.93 6.588zM9 4.5a1 1 0 1 1-2 0 1 1 0 0 1 2 0z"/>
								</svg>&nbsp;&nbsp;내 정보</a>
		                    </li>
		                    <li class="nav-item">
		                        <a class="nav-link" href="logout-action"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-box-arrow-left" viewBox="0 0 16 16">
								  <path fill-rule="evenodd" d="M6 12.5a.5.5 0 0 0 .5.5h8a.5.5 0 0 0 .5-.5v-9a.5.5 0 0 0-.5-.5h-8a.5.5 0 0 0-.5.5v2a.5.5 0 0 1-1 0v-2A1.5 1.5 0 0 1 6.5 2h8A1.5 1.5 0 0 1 16 3.5v9a1.5 1.5 0 0 1-1.5 1.5h-8A1.5 1.5 0 0 1 5 12.5v-2a.5.5 0 0 1 1 0v2z"/>
								  <path fill-rule="evenodd" d="M.146 8.354a.5.5 0 0 1 0-.708l3-3a.5.5 0 1 1 .708.708L1.707 7.5H10.5a.5.5 0 0 1 0 1H1.707l2.147 2.146a.5.5 0 0 1-.708.708l-3-3z"/>
								</svg>&nbsp;&nbsp;로그아웃</a>
		                    </li>
		                </ul>
		            </li>
		       	</ul>
	       	</c:otherwise>
       </c:choose>
        </div>
        <a class="btn-theme btn" href="booking"><i class="fas fa-ticket-alt"></i>&nbsp;&nbsp;예매하기</a>
    </div>
</nav>