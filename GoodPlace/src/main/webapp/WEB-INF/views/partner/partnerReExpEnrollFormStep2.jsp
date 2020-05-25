<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-1.11.3.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/partner/partnerCommon.css" />
<style>
    /*공통*/
    /* font */
    *{font-family: 'Noto Sans KR', sans-serif;}
    /* 여백 초기화 */
     body, div, ul, li, dl, dt, ol, h1, h2, h3, h4, h5, h6, input, fieldset, legend, p, select, table, th, td, tr, textarea, button, form {margin: 0; padding: 0;}
    /* a 링크 초기화 */
    a {color: #333333; text-decoration: none;}
    /* body css */
    body {background: #fff;}
    #wrap {width: 1200px; height: 900px; margin: 0 auto; font-size: 18px; color: #fff; text-align: center; text-transform: uppercase; }
    #contents{height: 2000px;}

    /* 거절div */
    #comment{width:900px; padding:20px; margin-top: 50px; margin-bottom: 50px; border: 1px solid firebrick; border-radius: 4px;}
    #comment #comment1{color:firebrick; font-size: 15px; text-align: right;}
    #comment table p{width: 100px; text-align: center; margin-right: 20px; font-weight: bold;}
    #comment table tr{vertical-align: top;}
    #comment table input[type=text]{height: 35px; width: 200px; border-radius: 4px; border: 1px solid #bebebe;}
    #comment textarea{width: 750px; height: 100px; resize: none; border: 1px solid #bebebe; border-radius: 4px; font-size: 15px;}

    /* 중앙 박스(div#stepOne) 내부공통 css */
    #stepOne{width:950px; border: 1px solid #dbdbdb;}
    #stepOne table th{width: 200px; padding-top: 30px; padding-left: 70px; vertical-align: top;}
    #stepOne table td{width:500px; padding-top: 30px; padding-left: 50px;}
    #stepOne table td label{font-size: 15px; padding-left: 10px;}
    h5{color: cornflowerblue; padding-bottom: 5px;} /*중앙박스 외 상단에도 하나 있음*/
    #stepOne table td textarea{width: 500px; height: 170px; border-radius: 4px; resize: none; border: 1px solid #dbdbdb;}
    #stepOne table input[type=text]{width: 500px; height: 30px; border-radius: 4px; border: 1px solid #dbdbdb; }
    #stepOne table td span input[type=number]{width:200px; height: 30px;border-radius: 4px; margin-left: 20px;border: 1px solid #dbdbdb;}
    #stepOne table select{width: 200px; height: 30px;;border-radius: 4px; }
    #stepOne label{padding-left: 10px;}

    /*하단 버튼 css*/
    #btns{width:950px; text-align: right; margin-top: 20px; margin-bottom: 20px; margin-right: 20px;}
    button{cursor: pointer;  width: 140px; height: 35px; }
    #cancle{border: 1px solid #dbdbdb; border-radius: 4px; font-size: 15px;}
    #cancle:hover{background-color: white; border: solid 1px #dbdbdb;}
    #next{border: 1px solid #34538a; border-radius: 4px; font-size: 15px;}
    #next:hover{color: #34538a; background-color: white; font-weight: bold; border: 1px solid #34538a;}
    #next{color: white; background-color: #34538a;}
</style>
</head>
<body>
<div id="wrap">
    <jsp:include page="../common/partnerMenubar.jsp"/>
    <div id="contents" >
        <div id="tab"></div>
        <div class="sitemap">
            <a href="#"><span style="height: 30px;">HOME</span></a>
            <a href="#"><span> &gt; 체험관리</span></a>
            <a href="#"><span style="margin-right: 30px;"> &gt; 체험정보입력</span></a>
        </div>
        <br clear="both">
        <div class="con" style="color:#000">
            <span id="page_title">
                <img src="${pageContext.request.contextPath}/resources/images/partner/집로고.jpg" style="vertical-align: middle;">
                <p class="title_tt">체험관리상세</p>
            </span><br>
            <div id="comment">
                <div style="text-align: center; margin-bottom: 20px;">
                    <h2>체험 신청이 반려되었습니다.</h2>
                </div>
                <table>
                    <tr>
                        <td><p>거절사유</p></td>
                        <td><input type="text" value="적절하지 못한 내용" readonly></td>
                    </tr>
                    <tr>
                        <td><p>거절상세</p></td>
                        <td><textarea name="" id="" readonly>사유입니다</textarea></td>
                    </tr>
                </table>
                <p id="comment1">사유 확인 후 내용을 변경하여 다시 등록 요청을 해주세요. </p>
            </div>
            
            <div style="text-align: center;">
                <span><h2>체험 정보 입력</h2></span>
                <h5 style="margin-bottom: 50px;">안내에 따라 체험 내용을 정확하게 설명하여 주세요. /  상품 등록이 완료되면, 승인을 위한 심사가 진행됩니다. </h5>
            </div>
            
            <div id="stepOne">
            
            <form action="" method="post">
                <table>
                    <tr>
                        <th>* 활동강도</th>
                        <td>
                            <input type="radio" name="activityIntensity" value="light"><label for="lifeStyle">가벼움</label><br>
                            <input type="radio" name="activityIntensity" value="normal"><label for="normal">보통</label><br>
                            <input type="radio" name="activityIntensity" value="hard"><label for="hard">격렬한</label><br>
                            <input type="radio" name="activityIntensity" value="extreme"><label for="extreme">익스트림</label><br>
                        </td>
                    </tr>
                    <tr>
                        <th>* 최대 인원수</th>
                        <td>
                            <h5>• 최소 인원수는 1명입니다.</h5>
                            <select name="people" id="people">
                                <option value="1">1명</option>
                                <option value="2">2명</option>
                                <option value="3">3명</option>
                                <option value="4">4명</option>
                                <option value="5">5명</option>
                                <option value="6">6명</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 시간</th>
                        <td>
                            <select name="expStartTime" id="expStartTime">
                                <option>체험 시작시간 선택</option>
                                <option value="10">오전 10시</option>
                                <option value="11">오전 11시</option>
                                <option value="12">오후 12시</option>
                                <option value="13">오후 13시</option>
                                <option value="14">오후 14시</option>
                                <option value="15">오후 15시</option>
                                <option value="16">오후 16시</option>
                                <option value="17">오후 17시</option>
                                <option value="18">오후 18시</option>
                                <option value="19">오후 19시</option>
                                <option value="20">오후 20시</option>
                                <option value="21">오후 21시</option>
                            </select>
                            <select name="expTime" id="expTime">
                                <option>소요시간 선택</option>
                                <option value="1">1시간 소요</option>
                                <option value="2">2시간 소요</option>
                                <option value="3">3시간 소요</option>
                                <option value="4">4시간 소요</option>
                                <option value="5">5시간 소요</option>
                                <option value="6">6시간 소요</option>
                            </select>
                            
                        </td>
                    </tr>
                    <tr>
                        <th>* 게스트 준비물</th>
                        <td>
                            <input type="text" id="" name="" value="">>
                            <input type="checkbox"><label>게스트가 준비할 사항이 전혀 없습니다.</label>
                        </td>
                    </tr>
                    <tr>
                        <th>* 대표 사진</th>
                        <td>
                            <input type="file" id="" name="" value="">>
                            <h5>• 텍스트 및 로고가 있을 경우 관리자가 사진을 수정 혹은 삭제할 수 있습니다.</h5>
                        </td>
                    </tr>
                    <tr>
                        <th>* 상세 사진</th>
                        <td>
                            <input type="file" id="" name="" value="">
                            <h5>• 1장 이상의 상세 사진을 등록해주세요. 최대 10장까지 가능합니다.</h5>
                        </td>
                    </tr>
                    <tr>
                        <th>* 예약 설정</th>
                        <td>
                            <select name="reservTime" id="reservTime">
                                <option value="1hour">1시간 전</option>
                                <option value="3hour">3시간 전</option>
                                <option value="5hour">5시간 전</option>
                                <option value="7hour">7시간 전</option>
                                <option value="1day">1일 전</option>
                                <option value="3day">3일 전</option>
                            </select>
                            <h5>• 예약 마감 시간을 체험시작 1시간 전으로 설정하실 것을 권해드립니다.<br>
                                나중에 언제든지 변경하실수 있습니다.</h5>
                        </td>
                    </tr>
                    <tr>
                        <th>* 요금 책정</th>
                        <td>
                            <span>1인 예약시 요금</span>
                            <span><input type="number" id="" name="" value="">원</span>
                            <br><br>

                            <span>파트너 예상수익</span>
                            <span><input type="number" id="" name="" value="">원</span><br>
                            <span></span>
                        </td>
                    </tr>
                    <tr>
                        <th>* 검토 후 제출</th>
                        <td>
                            <input type="checkbox" id="" name="" value=""><label>서비스 수수료에 동의합니다.</label>
                            <p style="font-size: 15px;">
                                굿플레이스는 각 예약당 요금의 20%에 해당하는 수수료를 받습니다. 
                                모든 결제는 굿플레이스를 통해 진행되며 고객센터를 통한 24시간 지원과 함께 
                                대부분의 체험에 대해 책임 보험도 제공하고 있습니다. 
                                서비스 수수료에 대해 자세히 알아보세요.
                            </p>
                            <input type="checkbox" id="" name="" value=""><label>굿플레이스 회원만을 위한 체험을 진행합니다.</label>
                            <p style="font-size: 15px;">
                                굿플레이스를 통해 체험예약을 받는 날에는 
                                굿플레이스 게스트만 체험예약을 진행해야만 합니다. 
                                다른 플랫폼을 통해 예약하고 결제한 게스트는 별도로 체험 진행해야 합니다.
                            </p>
                            <input type="checkbox" id="" name="" value=""><label>굿플레이스의 안전관리 지침을 읽고 이해했으며 
                                진행하는 체험이 지침을 준수함을 확인합니다.</label><br>
                            <input type="checkbox" id="" name="" value=""><label>현지가이드라인 및 현지 안전 법규를 준수하며 
                            이를 어길 시 굿플레이스 플랫폼에서 삭제될 수 있음을 이해합니다.</label><br>
                            <input type="checkbox"id="" name="" value=""><label>굿플레이스 체험 서비스와 게스트 환불 정책에 동의합니다.</label>
                            <br><br>
                            <input type="checkbox" id="" name="" value=""><label style="font-weight: bold; font-size: 18px;">전체 동의 후 체험 제출</label>
                        </td>
                    </tr>
                </table>
                </form>
                
                
                
                <br>
            </div>
            <div id="btns">
                <button id="cancle">취소하기</button>
                <button type="submit" id="next">재심사요청</button>
            </div>
        </div>
    </div>
</div>
</body>
</html>