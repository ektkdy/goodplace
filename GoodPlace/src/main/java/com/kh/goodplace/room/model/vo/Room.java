package com.kh.goodplace.room.model.vo;

import java.sql.Date;

public class Room {
	
	
	/* Rooms 테이블 컬럼 */
	private int roNo;			// 숙소번호
	private int userNo;			// 회원번호
	private String roomsTitle;	// 숙소명
	private int minPeople;		// 최소인원
	private int maxPeople;		// 최대인원
	private int price;			// 숙소가격
	private int addPrice;		// 추가가격
	private String roomsNotice;	// 숙소정보
	private String roomsTag;	// 숙소태그
	private int roomCount;		// 방갯수
	private int bedCount;		// 침대수
	private int bathCount;		// 샤워실수
	private int restroomCount;	// 화장실수
	private String facility;	// 숙소시설(주차여부,...)
	private String service;		// 제공서비스(샴푸,비누,수건...)
	private String meal;		// 숙소포함사항(조식,중식,석식)
	private String deny;		// 거절사유
	private String denyContent;	// 거절상세내용
	private String addBasic;	// 기본주소
	private String addDetail;	// 상세주소
	private String addRef;		// 참고주소
	private int zipCode;		// 우편번호	
	private Date applyDate;		// 숙소신청일
	private Date startDate;		// 숙소승인일
	private Date endDate;		// 숙소종료일
	private String operateDay;	// 운영요일
	private String checkIn;		// 체크인시간
	private String checkOut;	// 체크아웃시간
	private String deadline;	// 예약가능시간
	private String originName;	// 숙소썸네일 원본명
	private String changeName;	// 숙소썸네일 수정명
	private String filePath;	// 숙소썸네일 저장경로
	private int status;			// 운영중(1),승인대기(2),승인거절(3),휴면(4),노출안됨(5)
	
	/* 파워 등록 쪽 */
	private int opNo;			// 파워등록유무 (기본0)
	private Date powerStart;	// 파워시작일
	private Date powerEnd;		// 파워종료일
	private int rpNo;			// 숙소결제번호
	private String powerKind; 	// 파워종류
	
	

}
