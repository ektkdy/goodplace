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
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
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
    #contents{height: 1300px;}

    /* 중앙 박스(div#stepOne) 내부공통 css */
    #stepOne{width:950px; border: 1px solid #dbdbdb;}
    table th{width: 200px; padding-top: 30px; padding-left: 70px; vertical-align: top;}
    table td{width:500px; padding-top: 30px; padding-left: 50px; font-size:13px;}
    h5{color: cornflowerblue; padding-bottom: 5px;} /*중앙박스 외 상단에도 하나 있음*/
    table td textarea{width: 500px; height: 170px; border-radius: 4px; resize: none; border: 1px solid #dbdbdb;}
    table input[type=radio]{margin-right:5px;}
    table input[type=checkbox]{margin-right:5px;}
    table input[type=text]{width: 500px; height: 30px; border-radius: 4px; border: 1px solid #dbdbdb;}
    table td span input[type=number]{width:200px; height: 30px;border-radius: 4px; margin-left: 20px;border: 1px solid #dbdbdb;}
    table select{width: 200px; height: 30px; border-radius: 4px;}

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
            <div style="text-align: center;">
                <span><h2>체험 정보 입력</h2></span>
                <h5 style="margin-bottom: 50px;">안내에 따라 체험 내용을 정확하게 설명하여 주세요. /  상품 등록이 완료되면, 승인을 위한 심사가 진행됩니다. </h5>
            </div>
            <div id="stepOne">
            
            <form action="" method="post">
                <table>
                    <tr>
                        <th>* 카테고리</th>
                        <td>
                            <h5>• 아래의 카테고리중 1개만 선택이 가능합니다. <br>
                                상품을 가장 잘 표현하는 카테고리를 선택해 주세요. <br>
                                관리자 심사 후 수정될수 있습니다.</h5>
                            <input type="radio" name="expCategory" value="lifeStyle"><label for="lifeStyle">라이프 및 스타일(뷰티/패션/쇼핑)</label><br>
                            <input type="radio" name="expCategory" value="culture"><label for="culture">문화와 역사(과학/경제/역사/봉사활동)</label><br>
                            <input type="radio" name="expCategory" value="fitness"><label for="fitness">스포츠 및 피트니스(자전거/요가/러닝/근력운동)</label><br>
                            <input type="radio" name="expCategory" value="art"><label for="art">미술과 디자인(그림/전시/목공/사진/일러스트)</label><br>
                            <input type="radio" name="expCategory" value="outdoor"><label for="outdoor">야외활동(별관찰/농촌투어/캠핑/하이킹)</label>
                        </td>
                    </tr>
                    <tr>
                        <th>* 언어</th>
                        <td>
                            <h5>• 체험 진행 시 주로 사용되는 언어를 선택해주세요</h5>
                            <input type="checkbox" name="ko" value="ko">한국어
                            <input type="checkbox" name="es" value="es" style="margin-left:20px;">스페인어
                            <input type="checkbox" name="jp" value="jp" style="margin-left:20px;">일본어
                            <br>
                            <input type="checkbox" name="en" value="en">영어
                            <input type="checkbox" name="ch" value="ch" style="margin-left:30px;">중국어
                            <input type="checkbox" name="etc" value="etc" style="margin-left:33px;">그 외
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 태그</th>
                        <td>
                            <h5>• 상품에 가장 잘 어울리는 태그를 선택해주세요. 최대 2개까지 가능합니다.</h5>
                            <input type="checkbox" class="expTag" name="museum" value="museum">박물관/미술관
                            <input type="checkbox" class="expTag" name="shopping" value="shopping" style="margin-left:20px;">쇼핑
                            <input type="checkbox" class="expTag" name="beauty" value="beauty" style="margin-left:50px;">뷰티/패션
                            <br>
                            <input type="checkbox" class="expTag" name="themapark" value="themapark">테마파크
                            <input type="checkbox" class="expTag" name="citytour" value="citytour" style="margin-left:50px;">시티투어
                            <input type="checkbox" class="expTag" name="camping" value="camping" style="margin-left:25px;">캠핑
                            <br>
                            <input type="checkbox" class="expTag" name="special" value="special">이색체험
                            <input type="checkbox" class="expTag" name="food" value="food" style="margin-left:50px;">맛집/카페
                            <input type="checkbox" class="expTag" name="sports" value="sports" style="margin-left:20px;">스포츠
                            <br>
                            <input type="checkbox" class="expTag" name="nightscape" value="nightscape">야경
                            <input type="checkbox" class="expTag" name="bicycle" value="bicycle" style="margin-left:72px;">자전거
                            <input type="checkbox" class="expTag" name="class" value="class" style="margin-left:39px;">클래스(강좌)
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 제목</th>
                        <td>
                            <input type="text" id="" name="" value="">
                            <h5>• 정확하고 간결하게 표현해주세요. <br>
                                • 지역명이 포함된 제목은 노출에 더 효과적입니다. <br>
                                (도쿄, 산책하는 여행, 샌프란시스코 당일코드 등)</h5>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 소개</th>
                        <td>
                            <textarea id="" name="" placeholder="체험 설명을 잘 작성하면 게스트의 예약과 참여를 유도할 수 있습니다.  &#13;&#10; 게스트를 위해 세심하게 고안한 체험 일정의 자세한 내용을 알려주세요. &#13;&#10; &#13;&#10;* 체험을 처음부터 끝까지 실제 진행 순서대로 설명해 주세요.&#13;&#10;- 게스트가 참여하게 될 체험활동을 구체적으로 설명하기&#13;&#10;- 게스트가 일정을 충분히 이해할 수 있도록 일정을 상세하게 설명하기"></textarea>
                        </td>
                    </tr>
                    <tr>
                        <th>* 체험 장소</th>
                        <td>
	                        <input type="text" id="del_postcode" name="address1" placeholder="우편번호" style="width:100px; height:25px; padding-left:5px; margin-bottom:5px;" readonly>
							<input type="button" id="searchAdressBtn" onclick="del_execDaumPostcode()" value="우편번호 찾기" style="width: 100px; height:25px; background-color: #34538a; color:#fff; border:1px solid #34538a; border-radius:4px;" readonly><br>
	                        <input type="text" id="del_address" name="address2" placeholder="주소" style="width:320px; height:25px; padding-left:5px; margin-bottom:5px;" readonly>											
							<input type="text" id="del_extraAddress" name="address3" placeholder="참고항목" style="width:150px; height:25px; padding-left:5px; margin-bottom:5px;" readonly>
							<!-- 사용자가 직접 입력하는 칸  -->
							<input type="text" id="del_detailAddress"  name="address4" placeholder="상세주소" style="width:480px; height:25px; padding-left:5px;"> 
                        </td>
                    </tr>
                </table>
            </form>
            <br>
            </div>
            <div id="btns">
                <button type="submit" id="cancle" id="" name="">취소하기</button>
                <button type="button" id="next" id="" name="" >저장 후 다음으로</button>
            </div>
        </div>
    </div>
</div>

<script>
   function del_execDaumPostcode() {
       new daum.Postcode({
           oncomplete: function(data) {
               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

               // 각 주소의 노출 규칙에 따라 주소를 조합한다.
               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
               var addr = ''; // 주소 변수
               var extraAddr = ''; // 참고항목 변수

               //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                   addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                   addr = data.jibunAddress;
               }

               // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
               if(data.userSelectedType === 'R'){
                   // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                   // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                   if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                       extraAddr += data.bname;
                   }
                   // 건물명이 있고, 공동주택일 경우 추가한다.
                   if(data.buildingName !== '' && data.apartment === 'Y'){
                       extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                   }
                   // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                   if(extraAddr !== ''){
                       extraAddr = ' (' + extraAddr + ')';
                   }
                   // 조합된 참고항목을 해당 필드에 넣는다.
                   document.getElementById("del_extraAddress").value = extraAddr;
               
               } else {
                   document.getElementById("del_extraAddress").value = '';
               }

               // 우편번호와 주소 정보를 해당 필드에 넣는다.
               document.getElementById('del_postcode').value = data.zonecode;
               document.getElementById("del_address").value = addr;
               // 커서를 상세주소 필드로 이동한다.
               document.getElementById("del_detailAddress").focus();
           }
       }).open();
   }
</script>


</body>
</html>