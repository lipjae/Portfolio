<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="/error/viewErrorMessage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<title>Main Page</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="../resources/realcss/sidemenu.css" />

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<style>
* {
	margin: 0;
	padding: 0;
	box-sizing: border-box;
}

body {
	font-family: "Apple SD Gothic Neo", Arial;
	background-color: #f8f8f8;
}

#container {
	display: flex;
	flex-direction: row;
}

@media ( max-width : 768px) {
	#container {
		flex-direction: column;
	}
}

nav, aside {
	flex-basis: 210px;
	flex-shrink: 0;
}

@media ( max-width : 768px) {
	nav {
		display: none;
	}
}

.content {
	display: flex;
	flex-direction: column;
}

@media ( min-width : 768px) {
	.content {
		min-width: 768px;
	}
}

header {
	width: 100%;
}

#main-section {
	padding: 30px;
	background-color:;
}

@media ( max-width : 768px) {
	#main-section {
		padding: 20px;
		flex-direction: column;
	}
}

#section1, #section2, #section3, #section4 {
	padding: 10px 15px;
	width: 50%;
	height: auto;
	display: inline-block;
	margin: -2px;
}

@media ( max-width : 767px) {
	#section1, #section2, #section3, #section4 {
		width: 100%;
	}
}

.main_table {
	font-size: 1.3rem;
	table-layout: fixed;
	width: 100%;
	height: auto;
	border-left: 3px solid #337ab7;
}

.main_table_name {
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.main_table_id {
	width: 70%;
	white-space: nowrap;
	text-overflow: ellipsis;
	overflow: hidden;
}

.main_table_date {
	width: 30%;
}

.main_table_caption {
	font-size: 1.5rem;
}

h4 {
	color: #56595c;
	font-size: 1.5rem;
}

i {
	color: #337ab7;
}
</style>
</head>
<body>

	<div id="container">
		<nav id="accordian">

			<img id="logo" src="../resources/realcss/Logo_wide.svg" />

			<div class="loginForm">


				<form action="/teamsns/signup/login" method="post">

					<div class="box">
						<input type="text" name="user_id" id="user_id" class="user_id"
							placeholder="아이디"> <br> <input type="password"
							name="user_pw" id="user_pw" class="user_pw" placeholder="비밀번호">
						<br> <input type="submit" id="signIn" class="signIn"
							value="로그인">


						<%-- <input type="hidden" name="query" value="<%=request.getRequestURI() %>"> --%>
						<!-- 현재 페이지가 가지고 있는 주소  -->
						<!--  씨부랄 깃 -->
					</div>
				</form>
				<button class="signUp" data-toggle="modal" data-target="#myModal">회원가입</button>
			</div>
			<br /> <br />

			<ul>
				<li>
					<h3>

						<span class="icon-dashboard"></span>프로젝트
					</h3>
					<ul>
						<li id="project-list"><a href="#">프로젝트 리스트</a></li>
						<li id="project-register"><a href="#">프로젝트 등록</a></li>
						<li id="projectInfo"><a href="#">프로젝트 관리</a></li>
					</ul>
				</li>
				<li class="active">
					<h3>
						<span class="icon-tasks"></span>정보
					</h3>
					<ul>
						<li id="info_board_edu"><a href="#">창업교육</a></li>
						<li id="info_board_mentor"><a href="#">멘토링</a></li>
						<li id="info_board_event"><a href="#">행사</a></li>

					</ul>
				</li>
				<li>
					<h3>
						<span class="icon-calendar"></span>커뮤니티
					</h3>
					<ul>
						<li id="tipAndTech"><a href="#">Tip & Tech</a></li>
						<li><a href="#">자유게시판</a></li>
						<li><a href="#">Q & A</a></li>
					</ul>
				</li>
				<li>
					<h3>
						<span class="icon-heart"></span>null
					</h3>
					<ul>
						<li><a href="#">null</a></li>
						<li><a href="#">null</a></li>
						<li><a href="#">null</a></li>
						<li><a href="#">null</a></li>
					</ul>
				</li>
			</ul>
			<button class="mypage">마이페이지</button>
			<button class="logout">로그아웃</button>


			<!-- strat modal -->
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
				aria-labelledby="myModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">
								<span aria-hidden="true">×</span><span class="sr-only">Close</span>
							</button>
							<h4 class="modal-title" id="myModalLabel"></h4>
						</div>
						<div class="modal-body">
							<div id="div-main">
								<form method="post">
									<div>
										<h1 style="color: black;">회원 가입</h1>
										<br>
										<div class="form-group form-inline" id="div_user_id">
											<label for="user_id" class="label label-default">아이디</label>
											<input type="text" class="form-control user_register"
												id="user_id" name="uid" placeholder="아이디 입력">
										</div>
										<div class="form-group form-inline" id="div_user_pw">
											<label for="user_pw" class="label label-default">비밀번호</label>
											<input type="password" class="form-control user_register"
												id="user_pw" name="pw" placeholder="비밀번호 입력">
										</div>
										<div class="form-group form-inline" id="div_user_email">
											<label for="user_email" class="label label-default">이메일</label>
											<input type="email" class="form-control user_register"
												id="user_email" name="email" placeholder="이메일 입력">
										</div>
										<div class="form-group form-inline" id="div_user_name">
											<label for="user_name" class="label label-default">이름</label>
											<input type="text" class="form-control user_register"
												id="user_name" name="name" placeholder="이름 입력">
										</div>
										<div class="form-group form-inline" id="div_user_nickname">
											<label for="user_nickname" class="label label-default">닉네임</label>
											<input type="text" class="form-control user_register"
												id="user_nickname" name="nickname"
												placeholder="닉네임을 입력하시오">
										</div>
										<div class="form-group form-inline" id="div_user_number">
											<label for="user_number" class="label label-default">전화번호</label>
											<input type="tel" class="form-control user_register"
												id="user_number" name="phone"
												placeholder="전화번호를 입력하시오">
										</div>
										<div class="form-group form-inline" id="div_user_kkoid">
											<label for="user_kkoid" class="label label-default">카카오톡</label>
											<input type="text" class="form-control user_register"
												id="user_kkoid" name="kkoid" placeholder="카톡아이디 입력">
										</div>
										<div class="form-group form-inline" id="div_user_img">
											<label for="user_kkoid" class="label label-default">사진</label>
											<input type="text" class="form-control user_register"
												id="user_img" name="profile_img" placeholder="사진 저장 경로">
										</div>
										<br> <input type="submit" class="btn btn-primary btn-lg"
											id="user_submit" value="등록 하기">
									</div>

								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--  end modal -->
		</nav>

		<!-- end accordian-->

		<div id="main-index">
			<section class="content">
				<header id="car">
					<div id="carousel-example-generic" class="carousel slide"
						data-ride="carousel">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#carousel-example-generic" data-slide-to="0"
								class="active"></li>
							<li data-target="#carousel-example-generic" data-slide-to="1"></li>
							<li data-target="#carousel-example-generic" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner" role="listbox">
							<div class="item active">
								<img src="../resources/realcss/carousel01.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel02.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
							<div class="item">
								<img src="../resources/realcss/carousel03.svg" alt="...">
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Controls -->
						<a class="left carousel-control" href="#carousel-example-generic"
							role="button" data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
							<span class="sr-only">Previous</span>
						</a> <a class="right carousel-control"
							href="#carousel-example-generic" role="button" data-slide="next">
							<span class="glyphicon glyphicon-chevron-right"
							aria-hidden="true"></span> <span class="sr-only">Next</span>
						</a>
					</div>
				</header>
				<!-- end carousel -->
				<!-- 메인섹션 시작 테이블 4개  -->
				<div id="main-section">
					<div id="section1">
						<!-- <div class="label label-info main_table_caption">프로젝트</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">subject</i>
							프로젝트 리스트
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">asdfafasdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
					<div id="section2">
						<!-- <div class="label label-info main_table_caption">정보</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">widgets</i>
							Tip & Tech
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">뭐야 왜안돼</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td class="main_table_name">adfsafsafafaf</td>
								<td class="main_table_id">a</td>
								<td class="main_table_date">a</td>
							</tr>
							<tr>
								<td class="main_table_name">b</td>
								<td class="main_table_id">b</td>
								<td class="main_table_date">b</td>
							</tr>
							<tr>
								<td class="main_table_name">c</td>
								<td class="main_table_id">c</td>
								<td class="main_table_date">c</td>
							</tr>
							<tr>
								<td class="main_table_name">d</td>
								<td class="main_table_id">d</td>
								<td class="main_table_date">d</td>
							</tr>
						</table>
					</div>
					<div id="section3">
						<!-- <div class="label label-info main_table_caption">커뮤니티</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">forum</i> Q & A
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">ffasdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td>adfsafsafafaf</td>
								<td>a</td>
								<td>a</td>
							</tr>
							<tr>
								<td>b</td>
								<td>b</td>
								<td>b</td>
							</tr>
							<tr>
								<td>c</td>
								<td>c</td>
								<td>c</td>
							</tr>
							<tr>
								<td>d</td>
								<td>d</td>
								<td>d</td>
							</tr>
						</table>
					</div>
					<div id="section4">
						<!-- <div class="label label-info main_table_caption">몰라</div> -->
						<h4 class="main_header">
							<i class="material-icons" style="font-size: 1.7rem;">info</i> 정보
							게시판
						</h4>
						<table class="table main_table">
							<tr>
								<td class="main_table_name"><a href="">jasdkfjklasjfklsajflsaasdfsafafafsafsafsfsafsadasfdfsafsafsaf</a></td>
								<td class="main_table_id">작성자asdfsafafsafsafsafsafsafdasfsaf</td>
								<td class="main_table_date">2016-12-06</td>
							</tr>
							<tr>
								<td>adfsafsafafaf</td>
								<td>a</td>
								<td>a</td>
							</tr>
							<tr>
								<td>b</td>
								<td>b</td>
								<td>b</td>
							</tr>
							<tr>
								<td>c</td>
								<td>c</td>
								<td>c</td>
							</tr>
							<tr>
								<td>d</td>
								<td>d</td>
								<td>d</td>
							</tr>
						</table>
					</div>
				</div>
				<!-- 메인섹션 테이블 4개 끝 -->
				<footer> </footer>
			</section>
		</div>
		<!-- end main-index -->
		<aside>날씨</aside>

	</div>
	<!-- end container -->

	<!--ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ자바스크립트ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ -->
	<script>
		$(function() {
			$("#accordian h3").click(function() {
				$("#accordian ul ul").slideUp();
				if (!$(this).next().is(":visible")) {
					$(this).next().slideDown();
				}
			});
		});

		$(document).ready(function() {
							if ('${insert_result}' == 'success') {
								alert('신규 회원 가입 성공!');
							} else if ('${insert_result}' == 'fail') {
								alert('신규 회원 가입 실패!');
							}

							if ('${success}' == 'success') {
								$('.loginForm').hide();
							} else {
								$('.logout').hide();
								$('.mypage').hide();
								$('#projectInfo').hide();
								$('#project-register').hide();
							}

							$('.logout').click(function() {
								alert('${login_id}님 로그아웃 되셧습니다!');
								location = '/teamsns/signup/logout';
							});

							$('#project-list').click(function() {
								location = '/teamsns/project/projectList';
							});

							$('#projectInfo').click(function() {
								location = '/teamsns/project/projectInfo';
							});

							$('#project-register').click(function() {
								location = '/teamsns/register/project-register';
							});

							$('#tipAndTech').click(function() {
								location = '/teamsns/board/tipAndTech';
							});
							$('#info_board_edu').click(function() {
								location = '/teamsns/info_board/edu';
							});
							$('#info_board_event').click(function() {
								location = '/teamsns/info_board/event';
							});
							$('#info_board_mentor').click(function() {
								location = '/teamsns/info_board/mentor';
							});

							$("#start, #end").datepicker(
									{
										dateFormat : 'yymmdd',
										monthNamesShort : [ '1월', '2월', '3월',
												'4월', '5월', '6월', '7월', '8월',
												'9월', '10월', '11월', '12월' ],
										dayNamesMin : [ '일', '월', '화', '수',
												'목', '금', '토' ],
										changeMonth : true, //월변경가능
										changeYear : true, //년변경가능
										showMonthAfterYear : true
									//년 뒤에 월 표시
									});
							/* 글자수 체크1 */
							$('#pname, .part').keyup(function() {
												if ($(this).val().length > $(this).attr('maxlength')) {
													alert('제한길이 초과');
													$(this).val($(this).val().substr(0,$(this).attr('maxlength')));
												}
											});

						});
	</script>

</body>
</html>