--************************
--2017.08.02
-- [1]MAJOR_TAB
-- [2]SUBJECT_TAB 
-- [3]MEMBER_TAB
-- [4]PROF-TAB
-- [5]STUDENT_TAB
-- [6]GRADE_TAB
-- [7]BOARD_TAB
--*************************
show tables;
--************************
--[1]MAJOR_TAB
--2017.08.02
--major_id,title
--*************************
--DDL
select *from major;
select *from MEMBER;
alter table major add member_id VARCHAR(10);
drop table major;
CREATE TABLE Major(
	major_id VARCHAR(10),
	title VARCHAR(10),
	subj_id VARCHAR(10),
	member_id VARCHAR(10),
	PRIMARY KEY(major_id)
);
INSERT INTO Major(major_id,title,subj_id,member_id)
VALUES('art','예술학','','');
INSERT INTO Major(major_id,title,subj_id,member_id)
VALUES('computer','컴퓨터','','');
INSERT INTO Major(major_id,title,subj_id,member_id)
VALUES('tourism','관광학','','');
INSERT INTO Major(major_id,title,subj_id,member_id)
VALUES('economics','경제학','','');
--************************
--[2]SUBJECT_TAB
--2017.08.02
--article_seq,id,title,content,regdate,hitcount
--*************************
--DDL
drop table subject;
CREATE TABLE Subject(
	subj_id VARCHAR(10),
	title VARCHAR(10),
	PRIMARY KEY (subj_id)
	);
--DML
INSERT INTO Subject(subj_id,title)
VALUES('java','자바');
INSERT INTO Subject(subj_id,title)
VALUES('c++','c언어');
INSERT INTO Subject(subj_id,title)
VALUES('sql','sql');
INSERT INTO Subject(subj_id,title)
VALUES('python','파이썬');
INSERT INTO Subject(subj_id,title)
VALUES('html','html');

--************************
--[3]MEMBER_TAB
--2017.08.02
--회원관리 테이블
--member_id,password,name,ssn,regdate,major_id,phone,email,profile
--*************************
--DDL
CREATE TABLE 
	Member
(
	member_id VARCHAR(10), 
	password VARCHAR(10), 
	name VARCHAR(20), 
	ssn VARCHAR(15),
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP,
	major_id VARCHAR(20),
	phone VARCHAR(20),
	email VARCHAR(20),
	profile VARCHAR(20),
	PRIMARY KEY (member_id)

--DML
INSERT INTO PROF(member_id,salary)
VALUES('mankiew','30000');

INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('mankiew','i','맨큐','930213-1111111',now(),'economics','010-1234-1234','mankiew@test.com','mankiew.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('alpa','a','알파','940213-1111111',now(),'economics','010-1233-1234','alpa@test.com','alpa.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('2','2','2','970203-1111111',now(),'computer','010-1233-1234','2@test.com','2.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('beta','beta','베타','900213-1111111',now(),'computer','010-1203-1034','beta@test.com','beta.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('kim','kim','김유신','920213-1111111',now(),'art','011-1133-1234','kim@test.com','kim.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('hong','hong','홍길동','980213-1211111',now(),'art','012-2133-1234','hong@test.com','hong.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('lee','lee','이성계','940203-1411111',now(),'tourism','011-1123-2234','lee@test.com','lee.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('jeong','jeong','정약용','950213-2111111',now(),'art','011-1133-1334','jeong@test.com','jeong.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('na','na','나석주','970213-2121111',now(),'art','011-1333-1344','na@test.com','na.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('no','no','노회찬','980413-2111511',now(),'computer','010-1833-1334','no@test.com','no.img');

INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('seon','seon','선조','970403-2101511',now(),'computer','010-1834-1334','seon@test.com','seon.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('gang','gang','강타','880403-2201511',now(),'tourism','010-1832-2334','gang@test.com','gang.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('park','park','박보영','880503-2271511',now(),'art','010-1842-2334','park@test.com','park.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('song','song','송혜교','890503-2271510',now(),'art','010-1742-2334','song@test.com','song.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('hyun','hyun','현진영','870503-1271510',now(),'economics','010-1752-2354','hyun@test.com','hyun.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('go','go','고질라','970503-1271510',now(),'economics','010-1792-2954','go@test.com','go.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('ah','ah','아지현','930503-1251510',now(),'economics','010-1792-2054','ah@test.com','ah.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('pi','pi','피카츄','830503-1251510',now(),'economics','010-0792-2054','pi@test.com','pi.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('la','la','라이츄','930503-1251510',now(),'art','013-0792-2054','la@test.com','la.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('pa','pa','파이리','970703-1250510',now(),'economics','017-0792-2050','pa@test.com','pa.img');

INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('you','you','유아인','900703-1200510',now(),'economics','017-0792-3050','you@test.com','you.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('king','king','왕조현','940703-2250510',now(),'economics','017-0793-2053','king@test.com','king.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('dog','dog','강아지','980703-2250510',now(),'art','010-0003-2053','dog@test.com','dog.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('cat','cat','고양이','970603-2250510',now(),'art','010-0113-2053','cat@test.com','cat.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('but','but','나비','930603-2230310',now(),'art','010-0313-2353','but@test.com','but.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('mouse','mouse','똘비','970513-1150510',now(),'computer','010-2113-2053','mouse@test.com','mouse.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('cow','cow','덩이','9001413-1150520',now(),'computer','010-2813-2858','cow@test.com','cow.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('tiger','tiger','호치','900403-1151520',now(),'computer','010-2713-2358','tiger@test.com','tiger.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('rabbit','rabbit','새초미','970403-2121520',now(),'art','010-1713-2358','rabbit@test.com','rabbit.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('dragon','dragon','드라고','870403-1121520',now(),'art','011-1713-2358','dragon@test.com','dragon.img');

INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('snake','snake','요로리','910703-1200510',now(),'economics','010-0192-3050','snake@test.com','snake.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('horse','horse','마초','800703-1250510',now(),'economics','011-0793-2051','horse@test.com','horse.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('mimi','mimi','미미','920703-2210510',now(),'art','110-0003-2153','mimi@test.com','mimi.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('red','red','김빨강','920203-1250510',now(),'art','111-0111-2153','red@test.com','red.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('orange','orange','최주황','960603-2630310',now(),'art','016-0313-2363','orange@test.com','orange.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('yello','yello','이노랑','980513-1850510',now(),'computer','010-2313-2753','yello@test.com','yello.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('green','green','박초록','9701413-2150520',now(),'computer','013-2813-2858','green@test.com','green.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('blue','blue','이파랑','800403-1151520',now(),'computer','016-2763-2658','blue@test.com','blue.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('grey','grey','그레이','940403-1121520',now(),'art','011-1713-2358','grey@test.com','grey.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('black','black','오바마','830403-1121520',now(),'art','010-1013-2358','black@test.com','black.img');

INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('one','one','김하나','900703-2200510',now(),'tourism','013-0192-3050','one@test.com','one.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('two','two','최두울','700703-1250510',now(),'tourism','016-0493-2051','two@test.com','two.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('second','second','최두울','970733-2211510',now(),'art','115-0043-2153','second@test.com','second.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('three','three','이세엣','921203-122530',now(),'art','131-0111-2153','three@test.com','three.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('four','four','박너엇','860603-2610310',now(),'art','010-0313-2363','four@test.com','four.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('five','five','최오형','970513-1810510',now(),'computer','016-2313-2753','five@test.com','five.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('six','six','김식스','9501413-2151520',now(),'computer','010-2813-2858','six@test.com','six.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('seven','seven','이세븐','810403-1151520',now(),'computer','011-2763-2658','seven@test.com','seven.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('nine','nine','그아홉','990403-1121520',now(),'art','019-1713-2358','nine@test.com','nine.img');
INSERT INTO Member(member_id,password,name,ssn,regdate,major_id,phone,email,profile)
VALUES('ten','ten','오열','800403-1021020',now(),'art','010-1010-2308','ten@test.com','ten.img');
--************************
--[4]PROF-TAB
--2017.08.02
--member_id,salary
--*************************
--DDL
CREATE TABLE Prof(
	member_id VARCHAR(10),
	salary VARCHAR(10),
	PRIMARY KEY (member_id)
	);
--DML
INSERT INTO PROF(member_id,salary)
VALUES('one','1000');
INSERT INTO PROF(member_id,salary)
VALUES('two','2000');
INSERT INTO PROF(member_id,salary)
VALUES('three','3000');
INSERT INTO PROF(member_id,salary)
VALUES('four','4000');
INSERT INTO PROF(member_id,salry)
VALUES('five','5000');

--************************
-- [5]STUDENT_TAB
--2017.08.02
--member_id,stu_no
--*************************
--DDL
CREATE TABLE Student(
	member_id VARCHAR(10),
	stu_no VARCHAR(8),
	PRIMARY KEY (member_id)
	);
--DML
INSERT INTO Student(member_id,stu_no)
VALUES('','');
--************************
-- [6]GRADE_TAB
--2017.08.02
--grade_seq,score,exam_date,
--subj_id,member_id
--*************************
--DDL
CREATE TABLE GRADE(
	grade_seq INT NOT NULL AUTO_INCREMENT,
	score VARCHAR(3),
	exam_date VARCHAR(12),
	PRIMARY KEY (grade_seq)
	);
DROP TABLE grade;
ALTER TABLE Grade
RENAME COLUMN id TO member_id;

--DML
SELECT * FROM Grade;
INSERT INTO Grade(grade_seq,score,exam_date,subj_id,member_id)
VALUES(seq.nextval,'49','2017-06','java','u');
-- member_id 를 입력하면 평균점수를 반환하는 sql
--equi join
select avg(score)
from (
select distinct
m.member_id id, m.name name, mj.title major,
g.SCORE score,sj.title subject,g.exam_date
from member m,student s,grade g,subject sj, major mj
where 
    m.member_id=s.member_id
    and m.member_id = g.member_id
    and sj.MAJOR_ID = mj.MAJOR_ID
    and sj.subj_id = g.subj_id)t
where t.id='2';
-----------------=====
select avg(score)
from GRADE g
inner join Member m on m.member_id=g.member_id
where m.member_id='2';
--inner join
select avg(score)
from (select 
		m.member_id id, m.name name, 
		g.SCORE score,g.exam_date exam_date
	    from Grade g
		inner join Subject s on g.subj_id=s.subj_id
		inner join Member m on m.member_id=g.member_id
   )t
where t.id='2';
--group by,having,order by 결과는 성적 전체 내림차순
select t.id id, avg(score) avg
from (select 
		m.member_id id, m.name name, 
		g.SCORE score,g.exam_date exam_date
	    from Grade g
		inner join Subject s on g.subj_id=s.subj_id
		inner join Member m on m.member_id=g.member_id
   )t
group by t.id
having avg(score)>70
order by avg(score) desc
;
------------------
-----------------=
select title,content
from Board b
inner join Member m on b.member_id=m.member_id 
where m.member_id='u';

--[7]BOARD_TAB
--2017.08.02
--게시판관리 테이블
--article_seq,id,title,content,regdate,hitcount
--*************************
--DDL
drop table board;
CREATE TABLE Board(
	article_seq INT NOT NULL AUTO_INCREMENT,
	member_id VARCHAR(10),	
	title VARCHAR(20),	
	content VARCHAR(100),	
	regdate DATETIME DEFAULT CURRENT_TIMESTAMP,	
	hitcount INT,
	PRIMARY KEY (article_seq)
	);
--DML
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('2','소나무','일요일은 빨간날 토요일은 파란날',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('2','참나무','소나무야소나무야늘푸른',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('hong','울타리','내마음은 호수요 그대마음으로',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('mouse','쥐구멍','쥐구멍에도볕들날 있다.',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('cow','외양간','소 뒷걸음질 치다가 쥐잡는격.',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('tiger','호랑이굴','호랑이한테 물려가도 아프다.',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('jeong','아리랑','나를 버리고 가시는 임은.',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('red','옷가게','같은 값이면 다홍치마',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('yello','개나리','개나리 노란 꽃그늘아래',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('green','청출어람','녹음이 우거진 피톤치드 정원',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('lee','조광조','이씨가 망하고 조씨가 왕위에오른다',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('kim','김대중','김대중은 노벨평화상 수상자이다',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('three','버릇','세살버릇 여든까지다',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('ten','중의버릇','열중 한명은 남자다',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('nine','비가오는날','중이싫으면 절을 떠난다',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('dog','윤종신','빙수야팥빙수야녹지마',now(),0);
INSERT INTO Board(member_id,title,content,regdate,hitcount)
VALUES('second','원더걸스','노바디노바다원투',now(),0);

DELETE FROM BOARD
WHERE ARTICLE_SEQ='1014';
--************************
--Query문 정리
--2017.08.02
--*************************
SELECT * FROM Member Where name='이순신';
SELECT * FROM MEMBER WHETE id='';
SELECT COUNT(*)AS count FROM Member;
SELECT * FROM BOARD 
SELECT DISTINCT id
FROM BOARD
WHERE id LIKE '%자%';
SELECT *
FROM MEMBER
ORDER BY name asc,ssn desc;
SELECT SUM(article_seq) 
FROM Board

UPDATE MEMBER 
SET	password='5'
WHERE id='e';

DELETE FROM MEMBER WHERE id='1';
update MEMBER
set ssn='801118-1896217'
where id='2'
SELECT DISTINCT ssn,name
FROM Member m,Board b
WHERE m.id=b.id  AND ROWNUM <= 2;
SELECT * FROM PROF p,Member m
WHERE p.member_id=m.member_id;
SELECT * FROM STUDENT s,Member m
WHERE s.member_id=m.member_id;
SELECT * FROM Member m,Board b
WHERE m.id=b.id
ORDER BY article_seq DESC;




