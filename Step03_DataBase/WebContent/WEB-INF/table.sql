-- 테스트 회원 목록을 저장할 member 테이블 
CREATE TABLE member(
num NUMBER PRIMARY KEY,
name VARCHAR2(30),
addr VARCHAR2(30)
);
-- member 테이블에 번호를 생성할 시퀀스
CREATE SEQUENCE member_seq;

-- 할일 목록을 저장할 todo 테이블 
CREATE TABLE todo(
num NUMBER PRIMARY KEY,
content VARCHAR2(50) NOT NULL,
regdate DATE);

-- todo 테이블에 num 에 순서대로 숫자를 넣기 위한 시퀀스
CREATE SEQUENCE todo_seq;

-- 자유 게시판 테이블 (로그인 하지 않아도 자유롭게 작성할수 있는 게시판)
CREATE TABLE board_free(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(50) NOT NULL,
	title VARCHAR2(100),
	content CLOB,
	pwd VARCHAR2(50) NOT NULL,
	regdate DATE
);

-- 자유 게시판 테이블의 글 번호를 생성할 시퀀스
CREATE SEQUENCE board_free_seq;








