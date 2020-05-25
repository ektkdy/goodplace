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
<link rel="stylesheet" type="text/css" href="resources/css/admin/a_common.css" />
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
    #wrap {width: 1200px; margin: 0 auto; height: 900px; margin: 0 auto; font-size: 18px; color: #fff; text-align: center; text-transform: uppercase; }

    /*대시보드*/
    #dbTable01{
        margin:auto;
        margin-right: 50px;
        text-align: center;
    }
    #dbTable01 b{font-size: 25px;}
    .bline {
        background-color: #34538a;
        height: 2px;
        border:0px;
        margin-bottom: 20px;
    }
</style>   
</head>
<body>
    <div id="wrap">
        <div id="header">
            <span id="gotomain">
                <a href="#"><img src="../image/배경없는_굿플로고.png" id="logo" alt="logo" ><p class="title_name">관리자</p></a>
            </span>
            <span id="p_info">
                <a href="#" style="float:left; "><img src="#" class="userphoto"><p>나관리</p></a><img src="../image/arrow.png" class="arrow">
            </span>
            <div id="slide_menu">
                <ul>
                    <li><a href="#">사용자페이지 가기</a></li>
                    <li><a href="#">로그아웃</a></li>
                </ul>
            </div>
        </div>
        <div id="sidenav">
            <ul>
                <li><a href="#"><span class="icon1"></span><p>대시보드</p></a></li>
                <li><a href="#"><span class="icon2"></span><p>회원관리</p></a></li>
                <li><a href="#"><span class="icon3"></span><p>신고관리</p></a></li>
                <li><a href="#"><span class="icon4"></span><p>후기관리</p></a></li>
                <li><a href="#"><span class="icon5"></span><p>파트너관리</p></a></li>
                <li><a href="#"><span class="icon6"></span><p>파워등록</p></a></li>
                <li><a href="#"><span class="icon7"></span><p>게시글관리</p></a></li>
                <li><a href="#"><span class="icon8"></span><p>정산관리</p></a></li>
                <li><a href="#"><span class="icon9"></span><p>메세지</p></a></li>
                <li><a href="#"><span class="icon10"></span><p>1:1문의관리</p></a></li>
                <li><a href="#"><span class="icon11"></span><p>숙소관리</p></a></li>
                <li><a href="#"><span class="icon12"></span><p>체험관리</p></a></li>
            </ul>
        </div>
        <div id="contents" style="width:980px">
            <div id="tab"></div>
            <div class="sitemap">
                <a href="#"><span style="width: 30px;height: 30px;">대시보드</span></a>
            </div>
            <div class="con" style="color:#000">
                <span id="page_title"><img src="../image/집로고.jpg" style="vertical-align: middle;"><p class="title_tt">대시보드</p></span>
                <br><br><br><br><br><br>
                <div style="height:200px;">
                    <span ><b style="font-weight:bold; font-size: 1.3em;">오늘매출현황</b> <small>(05월17일 13:10 기준)</small></span>
                    <br>
                    
                    <table id="dbTable01">
                        <th rowspan="2" height="150px" width="100px">
                            <img src="../image/calendar2.png" style="vertical-align: middle; width: 70px; height: 70px; padding-left: 60%;">
                        </th>
                        <th rowspan="2" width="200px" style="padding-left: 3%;">예약<small>(9건)</small><br><b>11,809,827</b> 원</th>
                        <th rowspan="2" height="150px" width="100px">
                            <img src="../image/cash2.png" style="vertical-align: middle; width: 70px; height: 70px; padding-left: 60%;">
                        </th>
                        <th rowspan="2" width="200px">결제<small>(0건)</small><br><b>0</b> 원</th>
                        <th rowspan="2" height="150px" width="100px">
                            <img src="../image/nocash2.png" style="vertical-align: middle; width: 70px; height: 70px; padding-left: 60%;">
                        </th>
                        <th rowspan="2" width="200px">환불<small>(0건)</small><br><b>0</b> 원</th>
                    </table>
                    <br>
                    <hr class="bline">

                    <span><b style="font-weight:bold; font-size: 1.3em;">예약 현황</b> <small>(최근 1개월 기준)</small></span>
                    <br>
                    
                    <table id="dbTable01">
                        <tr height="100px">
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                        </tr>
                        <tr>
                            <th width="300px" style="color:#34538a"><b>예약</b></th>
                            <th width="300px" style="color:#34538a"><b>입금완료</b></th>
                            <th width="300px" style="color:#34538a"><b>취소</b></th>
                        </tr>
                    </table>
                    <br>
                    <hr class="bline">

                    <span><b style="font-weight:bold; font-size: 1.3em;">회원 & 파트너 현황</b></span>
                    <br>
                    
                    <table id="dbTable01">
                        <tr height="100px">
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                            <th width="300px"><b style="font-size: 2.0em;">0</b></th>
                        </tr>
                        <tr>
                            <th width="300px" style="color:#34538a"><b>일반회원</b></th>
                            <th width="300px" style="color:#34538a"><b>파트너</b></th>
                            <th width="300px" style="color:#34538a"><b>정지회원</b></th>
                        </tr>
                    </table>
                    
                    
                    
                </div>
            </div>
        </div>
        <div id="footer">footer</div>
    </div>

    <script>
        $(function(){
            
            $(".arrow").click(function(){
                $("#slide_menu").slideToggle(500);
            });
        });
    </script>
</body>
</html>