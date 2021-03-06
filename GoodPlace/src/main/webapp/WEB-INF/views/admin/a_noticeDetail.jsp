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
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/admin/adminCommon.css" />
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

    .lt_tab{border-radius: 0px;}
    .mid_tab{border-radius: 0px;}
    .gt_tab{border-radius: 0px;}
    
    /* table */
    
    .common_tb{width: 980px; padding-top:15px;}
    .common_tb thead tr td{background-color:#dbdbdb; font-size: 18px; color:#333; padding: 10px 0;
                           border-top: 1px solid #bebebe; border-bottom:1px solid #bebebe;}
    .common_tb tbody tr td{padding: 10px 0; text-align: center; border-bottom:1px solid #dbdbdb; color:#505050; font-size: 15px;}       
    table textarea{width: 720px; height: 300px; margin-right:75px; font-size: 16px; resize: none; border:0px}
    .bottum_tb{margin-top: 30px;}
    .bottum_tb thead tr td{font-size: 16px; color:#333; padding: 10px 0; padding-left: 20px;
                           border-top: 1px solid #dbdbdb}
    #contentBtn{width: 100px; margin-right: 0px;}
    #gotoList{background-color: white; color: black;}
    #gotoList:hover{color: white; background-color: #34538a; font-weight: bold; border: 1px solid #34538a;}
    /*모든 버튼*/
    button{width: 140px; height: 35px; border-radius: 6px; border: 1px solid #34538a; background-color: #34538a; color: #fff;}

</style>        
</head>
<body>
    <div id="wrap">

		<jsp:include page="../common/adminMenubar.jsp"/>

        <div id="contents" >
            <div id="tab">
                <button class="off lt_tab">FAQ관리</button>
                <button class="off mid_tab">이벤트관리</button>
                <button class="on gt_tab">공지사항관리</button>
            </div>
            <div class="sitemap">
                <a href="#"><span style="width: 30px;height: 30px;">공지사항 상세</span></a>
            </div>
            <div class="con" style="color:#000">
                <span id="page_title"><img src="${pageContext.request.contextPath}/resources/images/admin/집로고.jpg" style="vertical-align: middle;"><p class="title_tt">공지사항 상세</p></span>
                                <div class="con2">
                    <table class="common_tb" cellpadding="0" cellspacing="0" >
                        <thead>
                            <tr>
                                <td width="150px">제목</td>
                                <td colspan="3" width="150px" style="background: white; text-align: left; padding-left: 10px;">[공지]서비스 점검 안내</td>
                            </tr>

                        </thead>
                        <tbody>
                            <tr>
                                <td width="200px" style="background: #c1d9f0; font-size: 18px;">내용</td>
                                <td colspan="5">
                                    <textarea name="" id="" style="padding-left: 10px;" readonly>되는 것이다 그들은 앞이 긴지라 착목한는 곳이 원대하고 그들은 피가 더운지라 실현에 대한 자신과 용기가 있다
                                    </textarea>
                                </td>
                            </tr>

                        </tbody>
                    </table>
                    <br>
                    <div>
                        <table>
                            <tr>
                                <td><button>첨부파일</button></td>
                                <td><input type="text" value="점검시간.hwp" style="width: 300px; height: 35px; padding-left: 10px;" readonly></td>
                                <td style="padding-left: 350px;"><button id="gotoList">목록으로 가기</button></td>
                            </tr>
                        </table>

                    </div>

                </div>
            </div>
        </div>
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