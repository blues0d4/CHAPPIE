CREATE TABLE CATEGORY_TABLE
(
    category_Id            NUMBER          NOT NULL, 
    category_Name          VARCHAR2(50)    NOT NULL, 
    Project_Id    NUMBER          NOT NULL
 
);

drop table CATEGORY_TABLE;

ALTER TABLE CATEGORY_TABLE DROP(CATEGORY_NOTICE);

commit;

--PK 占쏙옙占쏙옙 CATEGORY_TABLE(CATEGORY_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT PK_CATEGORY_ID PRIMARY KEY(CATEGORY_ID);



--FK 占쏙옙占쏙옙 CATEGORY_TABLE(PROJECT_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT FK_PROJECT_ID FOREIGN KEY(PROJECT_ID) REFERENCES PROJECT_TABLE;


--CATEGORY_NO 占쏙옙占쏙옙占쏙옙
CREATE SEQUENCE CATEGORY_SEQ -- 占쏙옙占쏙옙占쏙옙 占싱몌옙
START WITH 2000  --2000占쏙옙占쏙옙 占쏙옙占쏙옙
INCREMENT BY 1 --1占쏙옙 占쏙옙占쏙옙
NOMAXVALUE  --占싼계가 占쏙옙占쏙옙
NOMINVALUE; --占쌍소곤옙 X

alter table category_table 
add CATEGORY_NOTICE varchar2(10) default 'N';

alter table category_table 
add CATEGORY_KIND varchar2(10) NOT NULL;

select * from category_table;

commit;

select *
from category_table;

--移댄뀒怨좊━ 由ъ뒪�듃
select CATEGORY_NAME
from category_table c, project_table p
where c.PROJECT_ID = p.PROJECT_ID
and p.PROJECT_NAME = '�봽濡쒖젥�듃�뀒�뒪�듃01';

commit;

INSERT INTO CATEGORY_TABLE(CATEGORY_ID, CATEGORY_NAME, PROJECT_ID)
VALUES(CATEGORY_SEQ.NEXTVAL, '공지', 1000)
;

--移댄뀒怨좊━ �꽑�깮
select c.CATEGORY_ID, c.CATEGORY_NAME
from category_table c, project_table p
where c.PROJECT_ID = p.PROJECT_ID
and p.PROJECT_NAME = '�봽濡쒖젥�듃�뀒�뒪�듃01'
and c.CATEGORY_NAME = '湲고�'
;

ALTER TABLE category_table ADD CONSTRAINT uk_category_table_name UNIQUE(category_name)
;
commit;

rollback;

SELECT MEMBER_NICKNAME FROM CATEGORY_MEMBER_TABLE  
			WHERE CATEGORY_ID = 2081;

---------------category member----------------
DROP TABLE CATEGORY_MEMBER_TABLE;
CREATE TABLE Category_member_table
(
    CATEGORY_ID    NUMBER           NOT NULL, 
    MEMBER_NICKNAME      VARCHAR2(50)     NULL, 
    USER_ID        VARCHAR2(50)    NULL   
);
INSERT INTO CATEGORY_MEMBER_TABLE(CATEGORY_ID, MEMBER_NICKNAME, USER_ID)
VALUES(2081, '채피01', '1');
