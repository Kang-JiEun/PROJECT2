<%@ page import="db.dao.RestaurantDAO"%>
<%@ page import="db.dto.RestaurantDTO"%>
<%@ page import="db.dto.MenuDTO"%>
<%@ page import="java.util.List"%>
<%@ page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="ko">
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

<link rel="stylesheet" href="./css/sub.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/layout.css">
<link rel="stylesheet" href="./css/base.css">
<link rel="stylesheet" href="./css/board.css">

<script src="./script/libs/jquery/jquery-1.12.4.min.js"></script>
<script src="./script/libs/swiper/swiper-4.5.3.min.js"></script>
<script type="text/javascript" src="./script/main.js"></script>


</head>
<body>


	<%
	// restaurantId 파라미터를 받아온다
	String restaurantIdParam = request.getParameter("restaurantId");

	// restaurantId 파라미터가 null이 아닐 때만 처리
	if (restaurantIdParam != null && !restaurantIdParam.isEmpty()) {
		try {
			int restaurantId = Integer.parseInt(restaurantIdParam);
			RestaurantDAO restaurantDAO = new RestaurantDAO();
			RestaurantDTO restaurant = restaurantDAO.getRestaurantById(restaurantId);
			List<MenuDTO> menuList = restaurantDAO.getMenuByRestaurantId(restaurantId);
	%>
	<% 
	// DAO 객체 생성
	RestaurantDAO restaurantListDAO = new RestaurantDAO();
	// DAO를 통해 데이터베이스에서 모든 레스토랑 리스트 가져오기
	List<RestaurantDTO> restaurantList = restaurantListDAO.findRestaurantList();

	// restaurantList를 JSON 형태로 변환
	String jsonRestaurantList = new Gson().toJson(restaurantList);
	%>



	<header id="header" class="sub">
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

	<section class="container content">
		<div class="detail">
			<div class="inner">
				<h2 class="sub_title mt40">착한가격안심가게업소 찾기</h2>

				<div class="wrap_c mt50">
					<div class="pic">
						<div style="background: #ddd; width: 700px; height: 400px;"></div>
						<p class="mt50">찾아오시는 길</p>
						<div class="restaurantList mt20">
							<div class="restaurant">
								<div id="map_<%=restaurant.getRestaurantId()%>" class="map"
									style="width: 700px; height: 400px"></div>
							</div>

							<script type="text/javascript"
								src="//dapi.kakao.com/v2/maps/sdk.js?appkey=dd47fc85028b09033fe0cae55378ec24&libraries=services"></script>
							<script>
        var geocoder = new kakao.maps.services.Geocoder();
        var restaurantList = <%=jsonRestaurantList%>;

        // 주소 문자열에서 불필요한 줄 바꿈 및 공백 제거 함수
        function cleanAddress(address) {
            address = address.replace(/\([^)]*\)/g, '').trim();
            address = address.replace(/\d+~\d+호/g, '');
            
            return address.trim();
        }

        // 각 레스토랑의 주소를 가져와서 지도에 마커 표시하기
        restaurantList.forEach(function(restaurant) {
            var restaurantName = restaurant.restaurantName;
            var restaurantId = restaurant.restaurantId;
            var restaurantAddress = cleanAddress(restaurant.restaurantAddress);
            var mapContainerId = 'map_' + restaurantId; // 수정: restaurantId를 사용

            geocoder.addressSearch(restaurantAddress, function(result, status) {
                if (status === kakao.maps.services.Status.OK) {
                    var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

                    var mapOption = {
                        center: coords,
                        level: 3 // 지도의 확대 레벨
                    };

                    // 지도를 생성합니다
                    var mapContainer = document.getElementById(mapContainerId);
                    var map = new kakao.maps.Map(mapContainer, mapOption);

                    // 마커의 이미지 정보 설정
                    var imageSrc = restaurantId >= 101 ? 'images/blue_mark.svg' : 'images/green_mark.svg'; // 수정: restaurantId를 기준으로 이미지 설정
                    var imageSize = new kakao.maps.Size(55, 60); // 마커이미지의 크기입니다
                    var imageOption = { offset: new kakao.maps.Point(27, 60) }; // 마커이미지의 옵션입니다

                    // 마커의 이미지정보를 가지고 있는 마커이미지를 생성합니다
                    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);

                    // 결과값으로 받은 위치를 마커로 표시합니다
                    var marker = new kakao.maps.Marker({
                        map: map,
                        position: coords,
                        image: markerImage // 마커이미지 설정
                    });

                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                    var infowindow = new kakao.maps.InfoWindow({
                        content: '<div style="width:150px;text-align:center;padding:6px 0;">' + restaurantName + '</div>'
                    });
                    infowindow.open(map, marker);

                    // 마커 클릭 시 인포윈도우 표시
                    kakao.maps.event.addListener(marker, 'click', function() {
                        infowindow.open(map, marker);
                    });
                } else {
                    console.log('주소 검색에 실패했습니다. 주소: ' + restaurantAddress);
                }
            });
        });
    </script>
						</div>
					</div>
					<div class="info">

						<div class="title_name mb20">
							<%
							if (restaurant != null) {
							%>
							<%=restaurant.getRestaurantName()%>
							<%
							} else {
							%>
							가게 이름을 찾을 수 없습니다
							<%
							}
							%>
						</div>
						<div class="title_scor wrap_s mb20">
							<div class="star">
								<img src="./images/content/main/Icon fa-solid-star.svg" alt="">
							</div>
							<p class="scor ml10">
								<%
								Double starScore = restaurant != null ? restaurant.getStarScore() : null;
								if (starScore != null) {
								%>
								<%=starScore%>
								<%
								} else {
								%>
								별점 정보를 찾을 수 없습니다
								<%
								}
								%>
							</p>
						</div>
						<div class="box mb30">
							<div class="title_maininfo wrap_s">
								<img src="./images/content/sub/ico_info1.svg" alt="">
								<p class="ml20">주요정보</p>
							</div>
							<ul class="gnb">
								<li class="wrap_s">
									<p class="title">주소</p>
									<p class="ml30"><%=restaurant != null ? restaurant.getRestaurantAddress() : ""%></p>
								</li>
								<li class="wrap_s">
									<p class="title">업소 전화번호</p>
									<p class="ml30"><%=restaurant != null ? restaurant.getRestaurantTel() : ""%></p>
								</li>
								<li class="wrap_s">
									<p class="title">업종</p>
									<p class="ml30"><%=restaurant != null ? restaurant.getRestaurantSectorName() : ""%></p>
								</li>
							</ul>
						</div>
						<div class="box mb40">
							<div class="title_maininfo wrap_s">
								<img src="./images/content/sub/ico_info2.svg" alt="">
								<p class="ml20">메뉴품목(가격)</p>
							</div>
							<ul class="gnb">
								<%
								if (menuList != null && !menuList.isEmpty()) {
									for (MenuDTO menu : menuList) {
								%>
								<li class="wrap_s">
									<p class="name"><%=menu.getMenuName()%></p>
									<p class="price ml30"><%=menu.getMenuPrice()%>원
									</p>
								</li>
								<%
								}
								} else {
								%>
								<li class="wrap_s">
									<p>등록된 메뉴가 없습니다</p>
								</li>
								<%
								}
								%>
							</ul>
						</div>
						<ul class="title_submenu wrap_s mb40">
							<li class="lnb">포장</li>
							<li class="lnb">예약</li>
							<li class="lnb">남녀화장실구분</li>
						</ul>
						<div class="box mb30">
							<div class="title_maininfo wrap_s">
								<img src="./images/content/sub/ico_info1.svg" alt="">
								<p class="ml20">리뷰</p>
							</div>
							<ul class="gnb">
								<li class="wrap_s">
									<p class="review">매장이 깨끗해요</p>
									<p class="score ml30">70</p>
								</li>
								<li class="wrap_s">
									<p class="review">매장이 넓어요</p>
									<p class="score ml30">55</p>
								</li>
								<li class="wrap_s">
									<p class="review">맛이 있어요</p>
									<p class="score ml30">43</p>
								</li>
								<li class="wrap_s">
									<p class="review">재료가 신선해요</p>
									<p class="score ml30">22</p>
								</li>
								<li class="wrap_s">
									<p class="review">특별한 날 오기 좋아요</p>
									<p class="score ml30">15</p>
								</li>
								<li class="wrap_s">
									<p class="review">좌석이 편해요</p>
									<p class="score ml30">4</p>
								</li>
								<li class="wrap_s">
									<p class="review">청소가 잘되어있어요</p>
									<p class="score ml30">1</p>
								</li>
							</ul>
						</div>
						
				</div>
				<div class="evaluation">
							<div class="inner">
								<div class="box mb70">
									<div class="wrap_s">
										<div class="title_maininfo wrap_s">
											<img src="./images/content/sub/ico_info1.svg" alt="">
											<p class="ml20">리뷰 평가하기</p>
										</div>
									</div>

									<div class="icheck_wrap">
										<div class="icheck mar">
											<input type="checkbox" name="AllcheckYn" id="AllcheckYn">
											<label for="AllcheckYn">매장이 깨끗해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select1"> <label
												for="select1">매장이 넓어요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select2"> <label
												for="select2">맛이 있어요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select3"> <label
												for="select3">재료가 신선해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select4"> <label
												for="select4">특별한 날 오기 좋아요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select5"> <label
												for="select5">좌석이 편해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select6"> <label
												for="select6">청소가 잘되어있어요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select7"> <label
												for="select7">매장이 깨끗해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select8"> <label
												for="select8">매장이 넓어요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select9"> <label
												for="select9">맛이 있어요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select10"> <label
												for="select10">재료가 신선해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select11"> <label
												for="select11">특별한 날 오기 좋아요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select12"> <label
												for="select12">좌석이 편해요</label>
										</div>
										<div class="icheck mar">
											<input type="checkbox" name="select" id="select13"> <label
												for="select13">청소가 잘되어있어요</label>
										</div>
									</div>

									<div class="btn2">평가제출</div>
								</div>
							</div>
						</div>
					</div>
	</section>

	<script>
    var mapContainer = document.getElementById('map'); // 지도를 표시할 div
    var mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 3 // 지도의 확대 레벨
    };

    var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

    // 주소-좌표 변환 객체를 생성합니다
    var geocoder = new kakao.maps.services.Geocoder();

    // 주소로 좌표를 검색합니다
    geocoder.addressSearch('<%=restaurant != null ? restaurant.getRestaurantAddress() : ""%>', function(result, status) {
        // 정상적으로 검색이 완료됐으면
        if (status === kakao.maps.services.Status.OK) {
            var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

            // 결과값으로 받은 위치를 마커로 표시합니다
            var marker = new kakao.maps.Marker({
                map: map,
                position: coords
            });

            // 인포윈도우로 장소에 대한 설명을 표시합니다
            var infowindow = new kakao.maps.InfoWindow({
                content: '<div style="width:150px;text-align:center;padding:6px 0;">'
                    + '<%=restaurant != null ? restaurant.getRestaurantName() : ""%>
		'
													+ '</div>'
										});
								infowindow.open(map, marker);

								// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								map.setCenter(coords);
							}
						});
	</script>

	<%
	} catch (NumberFormatException e) {
	// restaurantId를 Integer로 파싱하는 과정에서 예외 발생 시 처리할 코드
	// 예: 오류 메시지 출력 또는 리다이렉트 등
	e.printStackTrace(); // 혹은 다른 예외 처리 로직
	}
	} else {
	// restaurantId 파라미터가 없을 때 처리할 코드
	// 예: 오류 메시지 출력 또는 리다이렉트 등
	}
	%>

</body>
</html>