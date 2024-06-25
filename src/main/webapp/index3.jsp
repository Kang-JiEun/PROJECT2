<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="referrer" content="always">
<meta name="mobile-web-app-capable" content="yes">
<meta name="format-detection" content="telephone=no,address=no,email=no">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=1.0">
<!-- No cache -->
<meta http-equiv="Expires" content="-1">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Cache-Control" content="no-cache; no-store; no-save">
<meta property="og:title" content="프로젝트">
<title>프로젝트</title>

<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/layout.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/board.css">

<script src="./script/libs/jquery/jquery-1.12.4.min.js"></script>
<script src="./script/libs/swiper/swiper-4.5.3.min.js"></script>
<script type="text/javascript" src="./script/main.js"></script>
</head>
<body>
	<header id="header">
		<div class="inner">
			<div class="wrap">
				<a href="/index.html">
					<div class="logo wrap">
						<img src="./images/header/logo_main.png" alt="착한가격안심가게 로고">
					</div>
					<div class="sub_logo wrap">
						<img src="./images/header/logo_sub.png" alt="착한가격안심가게 로고">
					</div>
				</a>

				<div class="nav">
					<ul class="gnb dap1">
						<li class="lnb"><a href="#">착한가격안심가게업소 찾기</a></li>
						<li class="lnb"><a href="#">폐업가게 업데이트</a></li>
						<li class="lnb"><a href="#">폐업신청</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>

	<section id="visual">
		<div class="inner">
			<div class="visual_search">
				<div class="wrap">
					<input type="text" class="input" name="inputSearch"
						id="inputSearch" onkeypress="enterkey(event);">
					<div class="btn">
						<img src="./images/visual/Icon material-twotone-saved-search.svg"
							alt="">
					</div>
				</div>
			</div>

			<div class="title_info">
				<img src="./images/visual/info01.png" alt="" class="mb30"> <img
					src="./images/visual/info02.png" alt="" class="mb20"> <img
					src="./images/visual/info03.png" alt="">
			</div>
		</div>
	</section>

	<section id="find_business" class="content">
		<div class="inner">
			<div class="wrap mb50">
				<h1>착한가격안심가게업소 찾기</h1>
				<p>
					<a href="#">전체보기 +</a>
				</p>
			</div>
			<div class="mb70">
				<div class="wrap">
					<div class="wrap_s">
						<div class="item">
							<div class="col3">
								<div class="field">
									<div class="td">
										<label style="display: none">평점</label> <select>
											<option value="">평점</option>
											<option>5.0 ~ 4.0</option>
											<option>4.0 ~ 3.0</option>
											<option>3.0 ~ 2.0</option>
										</select>
									</div>

									<div class="td ml30">
										<label style="display: none">가격</label> <select>
											<option value="">가격</option>
											<option>10000원 이하</option>
											<option>9000원 이하</option>
											<option>8000원 이하</option>
											<option>7000원 이하</option>
											<option>6000원 이하</option>
											<option>5000원 이하</option>
											<option>4000원 이하</option>
										</select>
									</div>
								</div>
							</div>
						</div>

						<div class="wrap ml30">
							<div class="btn2">
								<div class="center">
									<img src="./images/content/main/Icon ion-ios-search.svg" alt="">
									<h3 class="ml10">검색하기</h3>
								</div>
							</div>
						</div>
					</div>
					<div class="swiper_btn wrap">
						<div class="swiper-button-prev">
							<img src="./images/content/main/Icon akar-chevron-left-small.svg"
								alt="">
						</div>
						<div class="swiper-button-stop ml30">
							<img src="./images/content/main/Icon akar-two-line-vertical.svg"
								alt="">
						</div>
						<div class="swiper-button-next ml30">
							<img
								src="./images/content/main/Icon akar-chevron-right-small.svg"
								alt="">
						</div>
					</div>
				</div>
			</div>




			<div class="swiper-container business_list">
				<div class="swiper-wrapper">
					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이11111111</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이222222</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이3333333</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이4444444</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="pic"></div>
						<div class="info">
							<div class="wrap">
								<div class="title_name">보라곤돌이</div>
								<div class="title_scor wrap">
									<div class="star">
										<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
									</div>
									<p class="scor ml10">4.9</p>
								</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="wrap_s mb30">
								<div class="title_menu">보리밥</div>
								<div class="title_price ml20">5,000원</div>
							</div>
							<ul class="title_submenu wrap_s">
								<li class="lnb">포장</li>
								<li class="lnb">예약</li>
								<li class="lnb">남녀화장실구분</li>
							</ul>
						</div>
					</div>
				</div>

			</div>
	</section>

	<section id="business_update" class="content">
		<div class="inner">
			<div class="wrap mb50">
				<h1>폐업가게 업데이트</h1>
				<p>
					<a href="#">전체보기 +</a>
				</p>
			</div>
			<div class="wrap mb70">
				<div class="wrap_s">
					<div class="wrap">
						<div class="item">
							<div class="col3">
								<div class="field">
									<div class="td">
										<label style="display: none">승인</label> <select>
											<option value="">전체</option>
											<option>승인완료</option>
											<option>승인대기</option>
										</select>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="swiper_btn wrap">
					<div class="swiper-button-prev">
						<img src="./images/content/main/Icon akar-chevron-left-small.svg"
							alt="">
					</div>
					<div class="swiper-button-stop ml30">
						<img src="./images/content/main/Icon akar-two-line-vertical.svg"
							alt="">
					</div>
					<div class="swiper-button-next ml30">
						<img src="./images/content/main/Icon akar-chevron-right-small.svg"
							alt="">
					</div>
				</div>
			</div>




			<div class="swiper-container business_list">
				<div class="swiper-wrapper">
					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval active">승인대기</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">승인 대기중입니다</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>

					<div class="swiper-slide box">
						<div class="info">
							<div class="title_approval">승인완료</div>
							<div class="wrap">
								<div class="title_name mb20">보라곤돌이11111111</div>
							</div>
							<div class="title_phon wrap_s mb20">
								<img src="./images/content/main/Icon fa-solid-phone-flip.svg"
									alt="">
								<p class="ml10">042-0000-0000</p>
							</div>
							<div class="title_data wrap_s">
								<img
									src="./images/content/main/Icon material-calendar-today.svg"
									alt="">
								<p class="ml10">2024-06-22</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	</section>

	<section id="price_comparison" class="content">
		<div class="inner">
			<h1 class="mb50">주요 외식메뉴 가격 비교</h1>
			<div class="wrap mb40">
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab1.svg" alt="">
					</div>
					<p class="menu_name">김밥</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab2.svg" alt="">
					</div>
					<p class="menu_name">김치찌개 백반</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab3.svg" alt="">
					</div>
					<p class="menu_name">냉면</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab4.svg" alt="">
					</div>
					<p class="menu_name">비빔밥</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab5.svg" alt="">
					</div>
					<p class="menu_name">삼계탕</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab6.svg" alt="">
					</div>
					<p class="menu_name">짜장면</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab7.svg" alt="">
					</div>
					<p class="menu_name">칼국수</p>
					<p class="menu_price">3,391원</p>
				</div>
				<div class="box">
					<div class="pic">
						<img src="./images/content/main/menu_icon/icon_tab8.svg" alt="">
					</div>
					<p class="menu_name">삼겹살</p>
					<p class="menu_price">3,391원</p>
				</div>
			</div>
		</div>
	</section>

	<section id="digital_dashboard" class="content">
		<div class="inner">
			<h1 class="mb50">디지털 대시보드</h1>
			<div class="wrap">
				<div class="info">
					<div class="box mb40">
						<div class="wrap mb30">
							<p class="title">착한 식당 수</p>
							<p class="unit">(단위 : 계)</p>
						</div>
						<p class="scor">52,655</p>
					</div>
					<div class="box">
						<div class="wrap mb30">
							<p class="title">모범 식당 수</p>
							<p class="unit">(단위 : 계)</p>
						</div>
						<p class="scor">4,387</p>
					</div>
				</div>
				<div class="gido">지도</div>
			</div>
		</div>
	</section>
</body>
</html>