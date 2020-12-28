--회원테이블
--필수 입력값 : 이름, 아이디, 비밀번호, 이메일, 성별, 휴대폰번호
--선택 입력 : 생일, 주소, 취미, 자기소개, 프로필사진
--수정 가능 : 이메일, 휴대폰번호, 주소, 취미, 자기소개, 프로필사진, 비밀번호, 이름, 성별, 생일

CREATE TABLE MEMBER(
M_NUM VARCHAR2(20) PRIMARY KEY, --회원번호(수정불가)
M_ID VARCHAR2(200) NOT NULL UNIQUE, --아이디(수정불가)
M_PW VARCHAR2(300) NOT NULL, --비밀번호(수정가능)
M_NAME VARCHAR2(20) NOT NULL, --이름(수정가능)
M_EMAIL VARCHAR2(300) NOT NULL, --이메일(수정가능)
M_GENDER VARCHAR2(1) CHECK(M_GENDER IN('F','M','N')), --성별 : F, M, N(비공개)
M_AUTH VARCHAR2(30), --권한 : STUDENT, LEADER, TEACHER, ADMIN (개인이 수정불가, admin이 수정가능)
M_HP VARCHAR2(16) NOT NULL, --휴대폰번호(01012341234)
M_BIRTH VARCHAR2(8), --생일(수정가능)
M_ZIPCODE VARCHAR2(5), --우편번호
M_ADDR VARCHAR2(500), --도로명주소
M_ADDRDETAIL VARCHAR2(500), --도로명주소 상세주소
M_GIBUN VARCHAR2(500), --지번주소
M_HOBBY VARCHAR2(100), --취미(관심사)
M_INFO VARCHAR2(2000), --자기소개
M_PHOTO VARCHAR2(300), --프로필사진
M_INSERTDATE DATE NOT NULL,
M_UPDATEDATE DATE NOT NULL,
M_DELETEYN VARCHAR2(1) CHECK(M_DELETEYN IN('Y','N')) --탈퇴여부
);