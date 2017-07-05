CREATE TABLE CATEGORY_TABLE
(
    category_Id            NUMBER          NOT NULL, 
    category_Name          VARCHAR2(50)    NOT NULL, 
    Project_Id    NUMBER          NOT NULL
 
);

drop table CATEGORY_TABLE;

ALTER TABLE CATEGORY_TABLE DROP(CATEGORY_NOTICE);

commit;

--PK 설정 CATEGORY_TABLE(CATEGORY_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT PK_CATEGORY_ID PRIMARY KEY(CATEGORY_ID);

--FK 설정 CATEGORY_TABLE(PROJECT_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT FK_PROJECT_ID FOREIGN KEY(PROJECT_ID) REFERENCES PROJECT_TABLE;


--CATEGORY_NO 시퀀스
CREATE SEQUENCE CATEGORY_SEQ -- 시퀀스 이름
START WITH 2000  --2000부터 시작
INCREMENT BY 1 --1씩 증가
NOMAXVALUE  --한계가 없이
NOMINVALUE; --최소값 X

alter table category_table 
add CATEGORY_NOTICE varchar2(10) default 'N';

alter table category_table 
add CATEGORY_KIND varchar2(10) NOT NULL;

select * from category_table;

commit;

INSERT INTO CATEGORY_TABLE
VALUES(CATEGORY_SEQ.NEXTVAL, '공지', 1001, 'Y', 'B');