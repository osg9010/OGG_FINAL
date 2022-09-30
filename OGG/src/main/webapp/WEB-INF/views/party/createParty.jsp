<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<c:set var="path" value="${ pageContext.request.contextPath }"/>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>파티 만들기</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="${ path }/css/common/ogg_common.css">
    <link rel="stylesheet" href="${ path }/css/party/ogg_party.css">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
</head>
<body>
    <header>
        <div class="width-container">
            <div class="logoBox">
                <a href="javascript:">
                    <img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/small-butslogo.png" srcset="https://buts.co.kr/thema/Buts/colorset/Basic/img/2x/small-butslogo.png 2x" alt="loogo" title=""></a>
            </div>

            <div class="btnBox">
                <a href="javascript:" class="loginBtn">로그인</a>
            </div>
        </div>

        <div class="menu-container">
            <ul class="menuBox">
                <li>
                    <a href="javascript:">파티 만들기</a>
                </li>
                <li>
                    <a href="javascript:">파티 찾기</a>
                </li>
                <li>
                    <a href="javascript:">리뷰</a>
                </li>
                <li>
                    <a href="javascript:">커뮤니티</a>
                </li>
                <li>
                    <a href="javascript:">이벤트</a>
                </li>
            </ul>
        </div>
    </header>

    <div style="height: 100px;"></div>

    <!-- 모달 div -->
    <!-- 첫번째 모달 div -->
    <div class="modal" id="modalWindow" aria-hidden="true" aria-labelledby="exampleModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="partyModal_title">
                    <h2 class="titleText">요금제 선택<br><span class="subText">공유할 요금제를 선택해주세요.</span></h2>
                </div>
                <div class="partyModal_content_01">
                    <div class="serviceName_gray">
                        <label for="" class="text">애플뮤직 패밀리</label>
                    </div>
                    <div class="serviceName_gray">
                        <label for="" class="text">애플뮤직 패밀리</label>
                    </div>
                    <div class="serviceName_purple">
                        <label for="" class="text"><i class="bi bi-check-lg"></i> 넷플릭스 프리미엄</label>
                        <ul class="infoText">
                            <li>파티원 1~3명 모집 가능</li>
                            <li>파티원 1명당 매달 3,925원 적립!<br>(파티 분담금 4,250원 − 링키드 수수료 324원)</li>
                            <li>최대 인원(3명) 모집하면, 매달 최대 11,775원 적립</li>
                            <li>파티 기간에 따라 종료 시 최대 5,844원 추가 적립!</li>
                            <li>⚠️ 원단위 절삭으로 5원 이내 차이가 있을 수 있어요.</li>
                        </ul>
                    </div>
                </div>
                <div class="modal-footer nextBtnBox">
                    <input data-bs-target="#modalWindow2" data-bs-toggle="modal" type="button" value="다음" class="nextBtn">
                </div>
            </div>
        </div>
    </div>
    
    <!-- 두번째 모달 div -->
    <div class="modal" id="modalWindow2" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
            <div class="modal-content">
                <div class="partyModal_title">
                    <h2 class="titleText">파티장 가이드<br></h2>
                    <p class="serviceText">넷플릭스 프리미엄</p>
                </div>
                <div class="partyModal_content_02">
                    <!-- @철환님 noticeBox div를 c:if로 묶어서 반복되게 설정하면 될 것 같아요..! -->
                    <div class="noticeBox">
                        <p class="titleText">
                            꼭 '한국' 넷플릭스 계정을 사용해 주세요.
                        </p>
                        <div class="infoText">
                            🇰🇷 넷플릭스 정책상 거주/이용중인 국가에 따라 재생 가능한 콘텐츠가 다르기 때문에 꼭 한국 넷플릭스 계정을 공유해 주셔야 해요.
                        </div>
                    </div>

                    <div class="noticeBox">
                        <p class="titleText">
                            파티장의 로그인 정보는 파티원과 공유됩니다.
                        </p>
                        <div class="infoText">
                            🔐 공유 가능한 안전한 비밀번호를 사용해 주세요.
                        </div>
                    </div>

                    <div class="noticeBox">
                        <p class="titleText">
                            성인 인증이 완료된 계정만 공유할 수 있어요.
                        </p>
                        <div class="infoText">
                            🔞 성인 인증이 완료되지 않은 계정을 사용할 경우, 파티원의 서비스 이용에 불편을 끼칠 수 있어요.
                        </div>
                    </div>

                    <div class="checkBox">
                        <img src="../파이널 UI 설계 이미지/icon_partynotice_check_gray.png" alt="check Icon" class="checkIcon">
                        <span class="text">위 파티장 가이드를 모두 확인했습니다.</span>
                    </div>
                </div>
                <div class="modal-footer nextBtnBox">
                    <input data-bs-target="#modalWindow2" data-bs-toggle="modal" type="button" value="다음" class="nextBtn">
                </div>
            </div>
        </div>
    </div>

    <section class="createParty_section">
        <div class="titleBox">
            <h2>어떤 파티를 만드시겠어요?</h2>
        </div>

        <!-- 탭 버튼 부분 -->
        <div class="createPartyTab_row_01">
            <div>
                <div class="btn_container">
                    <section>
                        <div id="createPartyTab_Icon_01" class="btnBox active">
                            <div class="textItem">
                            <p class="text">전체</p> 
                            </div>
                        </div>
                        <div id="createPartyTab_Icon_02" class="btnBox">
                            <div class="textItem">
                            <p class="text">미디어</p> 
                            </div>
                        </div>
                        <div id="createPartyTab_Icon_03" class="btnBox">
                            <div class="textItem">
                            <p class="text">게임</p> 
                            </div>
                        </div>
                        <div id="createPartyTab_Icon_04" class="btnBox">
                            <div class="textItem">
                            <p class="text">교육/도서</p> 
                            </div>
                        </div>
                        <div id="createPartyTab_Icon_05" class="btnBox">
                            <div class="textItem">
                            <p class="text">유틸리티</p> 
                            </div>
                        </div>
                        <div id="createPartyTab_Icon_06" class="btnBox">
                            <div class="textItem">
                            <p class="text">멤버십</p> 
                            </div>
                        </div>
                    </section>
                </div>
        
            </div>
        </div>

        <!-- 탭 콘텐츠 부분 -->
        <div class="createPartyTab_row_02">
                <!-- 전체 서비스  -->
                <section class="content_container">
                    <div class="contentBox">
                    	<c:if test="${ not empty list }">
                    		<c:forEach var="list" items="${ list }">
                    			<div class="itemBox ${ list.ott_class }" data-bs-toggle="modal" data-bs-target="#modalWindow" !hidden>
		                            <img src="${ path }/images/party/${ list.ott_thumb }.png" alt="logoImg" class="logoImg">
		                            <span class="serviceNameText">${ list.ott_name }</span>
		                            <p class="saveText">매달 세이브!</p>
		                            <div class="priceWrap">
		                                ~ ${ list.plan_price }원
		                                <c:if test="${ not empty list.plan_status }">
		                            		<img src="${ path }/images/party/${ list.plan_status }.png" alt="badge_hot" class="badgeIcon">
		                            	</c:if>
                            		</div>
                        		</div>
                    		
                    		</c:forEach>
                    	</c:if>
                    </div>
                </section>
        </div>
    </section>





    <footer>
        <div class="width-container">
            <div class="contentWrap">
                <div class="logoBox">
                    <img src="https://buts.co.kr/thema/Buts/colorset/Basic/img/small-butslogo-glay.png" alt="lgooIcon">
                </div>
                <a href="javascript:" target="_blank" class="v-bar">회사 소개</a>
                <a href="javascript:" target="_blank" class="v-bar">제휴문의</a>
                <a href="javascript:" target="_blank" class="v-bar">제휴문의</a>
                <a href="javascript:" target="_blank" class="v-bar">1:1문의하기</a>
                <a href="javascript:" target="_blank" class="v-bar"><strong>개인정보처리방침</strong></a>
                <a href="javascript:" target="_blank" class="v-bar">이용약관</a>
                <a href="javascript:" target="_blank" class="v-bar">FAQ</a>
                <br><br>
                <span class="v-bar">상호 : 벗츠</span>
                <span>대표 : 김시진</span>
                <br>
                <span>주소 : 경기도 성남시 분당구 서현동 245-4 엘지분당에클라트2차 1221호</span>
				<br>
				<span class="v-bar">사업자등록번호 : 375-36-00640</span>
				<span class="v-bar"><a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank"> <strong>사업자정보확인</strong></a></span>
				<span>통신판매번호 : 제 2019-의정부송산-040호</span>
				<br>
				<span class="v-bar">개인정보보호책임 : 김시진</span> <span>호스팅 사업자 : Amazon Web Service(AWS)</span>
				<br>
				<span class="v-bar">이메일 : <a href="mailto:manager@buts.co.kr">manager@buts.co.kr</a></span> <span>대표전화 : 070-4354-1015</span>
				<br>
				<br>
				<span>Copyright © 2022 Buts Inc. All rights reserved.</span>
            </div>
        </div>
    </footer>
    <footer>
        <div class="width-container">
        벗츠는 통신판매중개자이며, 통신판매의 당사자가 아닙니다.파티정보, 구매에 관한 의무와 책임은 판매자에게 있습니다.<br>
        벗츠는 소비자 보호와 안전거래를 위해고객센터(manager@buts.co.kr)를 운영하고 있으며,분쟁이 발생 된 경우 별도의 분쟁처리절차에 의거분쟁해결 및 청약철회 등이 진행 됩니다.
        </div>
    </footer>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="${ path }/js/party/ogg_party.js"></script>
</body>
</html>