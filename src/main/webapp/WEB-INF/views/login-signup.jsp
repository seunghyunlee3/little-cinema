<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
		<!--  로그인/회원가입 템플릿 링크 -->
		<link rel='stylesheet' href='https://unicons.iconscout.com/release/v2.1.9/css/unicons.css' rel="stylesheet" type="text/css">
	    <link rel="stylesheet" href="./css/login-style.css" rel="stylesheet" type="text/css">
		<title>Little Cinema - Log In / Sign Up </title>
		<style>
			/*회원가입 중복체크*/
			.id_ok{color:#fff; display: none;}
			.id_already{color:#ffeba7; display: none;}
			.id_empty{color:#ffeba7; display: none;}
			
			
			/*회원가입*/
			.signup-title{
				margin-bottom:0 !important;
				color:white;
			}
		</style>
</head>

<body class="logsign_body">
        <header class="header header-horizontal header-view-pannel">
            <div class="container">
                <!-- navibar start -->
				<jsp:include page="nav.jsp"></jsp:include>
                <!-- navibar end -->
            </div>
        </header>
        
	<!-- 로그인/회원가입 템플릿 -->
	<div class="section">
		<div class="container" style="margin-top: -100px; margin-bottom: 0px;">
			<div class="row full-height justify-content-center">
				<div class="col-12 text-center align-self-center py-5">
					<div class="section pb-5 pt-5 pt-sm-0 text-center">
						<h6 class="mb-0 pb-3"><span>로그인</span><span>회원가입</span></h6>
			          	<input class="checkbox" type="checkbox" id="reg-log" name="reg-log"/>
			          	<label for="reg-log"></label>
						<div id="logsign-ui" class="card-3d-wrap mx-auto">
							<div class="card-3d-wrapper">
							<!-- 로그인 -->
								<div class="card-front">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 pb-3" style="color:white;">로그인</h4>
											<form name="loginform" method = "post">
											<div class="form-group">
												<input type="text" name="id" value="${fmember.id}" class="form-style" placeholder="아이디" id="logeid" autocomplete="off">
												<i class="input-icon uil uil-at"></i>
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="password" value="${fmember.password}" class="form-style" placeholder="비밀번호" id="logpass" autocomplete="off">
												<font color="white">${msg1}${msg2}</font><br>
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<input type="submit" class="logsignsubmit" value="로그인" onclick="login();" style="cursor:pointer;" onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}">
                            				</form>
				      					</div>
			      					</div>
			      				</div>
			      				<!-- 회원가입 -->
								<div class="card-back signup-box">
									<div class="center-wrap">
										<div class="section text-center">
											<h4 class="mb-4 signup-title">회원가입</h4>
											<form id="signup_form" name="signup_form">
											<div class="form-group">
												<input type="text" style="width: 70%" id="id" name="id" value="${fmember.id}" class="form-style" placeholder="아이디" >
												<input type="button" class="logsignsubmit" style="width: 28.9%" value="중복확인" onclick="openIdChk();">
												<span class="id_ok">사용 가능한 아이디입니다.</span>
												<span class="id_already">중복된 아이디입니다.</span>
												<span class="id_empty">아이디를 입력해주세요.</span>
												<!-- 
												<font color="white">${msg}</font><br>
												-->
												<i class="input-icon uil uil-at" style="padding: 17px 0px;"></i>
												 
											</div>	
											<div class="form-group mt-2">
												<input type="password" name="password" value="${fmember.password}" class="form-style" placeholder="비밀번호" id="upassword" autocomplete="off">
												<i class="input-icon uil uil-lock-alt"></i>
											</div>
											<div class="form-group mt-2">
												<input type="text" name="name" value="${fmember.name}" class="form-style" placeholder="이름" id="name" autocomplete="off">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
											<!-- 
												<input type="text" name="phone" value="" class="form-style" placeholder="전화번호" id="phone" autocomplete="off">
												 -->
												 <input type="hidden" name="phone" id="phone" value="${fmember.phone}">
												 <label style="width:36%;" class="form-style">전화번호</label>
												 <input style="width:20%; padding: 20px;" maxlength="3" class="form-style" placeholder="010" type="text" name="phone1" id="phone1">
												 <input style="width:20%; padding: 20px;" maxlength="4" class="form-style" placeholder="0000" type="text" name="phone2" id="phone2">
												 <input style="width:20%; padding: 20px;" maxlength="4" class="form-style" placeholder="0000" type="text" name="phone3" id="phone3">
												<i class="input-icon uil uil-user"></i>
											</div>	
											<div class="form-group mt-2">
												<!--  
												<input type="text" name="birth_date" value="" class="form-style" placeholder="생년월일" id="birth_date" autocomplete="off">
												-->
												 <input type="hidden" name="birth_date" id="birth_date" value="${fmember.birth_date}">
												 <label style="width:36%;" class="form-style">생년월일</label>
												 <select style="width:20%; padding: 10px 9px;" class="form-style" name="birth_date1" id="birth_date1">
													<option value="" disabled selected>년도</option>
													<option value="2021">2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
													<option value="1929">1929</option>
													<option value="1928">1928</option>
													<option value="1927">1927</option>
													<option value="1926">1926</option>
													<option value="1925">1925</option>
													<option value="1924">1924</option>
													<option value="1923">1923</option>
													<option value="1922">1922</option>
													<option value="1921">1921</option>
												 </select>
												 
												 <select style="width:20%; padding: 10px 15px;" class="form-style" name="birth_date2" id="birth_date2">
												    <option value="" disabled selected>월</option>
												 	<option value="1">1</option>
												 	<option value="2">2</option>
												 	<option value="3">3</option>
												 	<option value="4">4</option>
												 	<option value="5">5</option>
												 	<option value="6">6</option>
												 	<option value="7">7</option>
												 	<option value="8">8</option>
												 	<option value="9">9</option>
												 	<option value="10">10</option>
												 	<option value="11">11</option>
												 	<option value="12">12</option>
												 </select>
 												 <select style="width:20%; padding: 10px 15px;" class="form-style" name="birth_date3" id="birth_date3">
												    <option value="" disabled selected>일</option>
												 	<option value="1">1</option>
												 	<option value="2">2</option>
												 	<option value="3">3</option>
												 	<option value="4">4</option>
												 	<option value="5">5</option>
												 	<option value="6">6</option>
												 	<option value="7">7</option>
												 	<option value="8">8</option>
												 	<option value="9">9</option>
												 	<option value="10">10</option>
												 	<option value="11">11</option>
												 	<option value="12">12</option>
												 	<option value="13">13</option>
												 	<option value="14">14</option>
												 	<option value="15">15</option>
												 	<option value="16">16</option>
												 	<option value="17">17</option>
												 	<option value="18">18</option>
												 	<option value="19">19</option>
												 	<option value="20">20</option>
												 	<option value="21">21</option>
												 	<option value="22">22</option>
												 	<option value="23">23</option>
												 	<option value="24">24</option>
												 	<option value="25">25</option>
												 	<option value="26">26</option>
												 	<option value="27">27</option>
												 	<option value="28">28</option>
												 	<option value="29">29</option>
												 	<option value="30">30</option>
												 	<option value="31">31</option>
												 </select>
												<i class="input-icon uil uil-user"></i>
											</div>
											<input id="member_add_btn" type="button" class="logsignsubmit" value="회원가입" onclick="signup();" style="cursor:pointer;" onKeypress="javascript:if(event.keyCode==13) {search_onclick_submit}">
											</form>
				      					</div>
			      					</div>
			      				</div>
			      			</div>
			      		</div>
			      	</div>
		      	</div>
	      	</div>
	    </div>
	</div>
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
	<!-- 로그인/회원가입 JS코드 -->
	<script src="js/login-signup.js"></script>
</html>