CREATE TABLE users
(id VARCHAR2(30) PRIMARY KEY,
pwd VARCHAR2(30) NOT NULL,
email VARCHAR2(30),
regdate DATE);

CREATE TABLE board_cafe(
	num NUMBER PRIMARY KEY,
	writer VARCHAR2(100) NOT NULL, -- 글 작성자의 id 
	title VARCHAR2(100) NOT NULL,
	content CLOB,
	viewCount NUMBER, -- 조회수
	regdate DATE
);

CREATE SEQUENCE board_cafe_seq;








