CREATE TABLE CATEGORY_TABLE
(
    category_Id            NUMBER          NOT NULL, 
    category_Name          VARCHAR2(50)    NOT NULL, 
    Project_Id    NUMBER          NOT NULL
 
);

drop table CATEGORY_TABLE;

ALTER TABLE CATEGORY_TABLE DROP(CATEGORY_NOTICE);

commit;

--PK ���� CATEGORY_TABLE(CATEGORY_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT PK_CATEGORY_ID PRIMARY KEY(CATEGORY_ID);



--FK ���� CATEGORY_TABLE(PROJECT_ID)
ALTER TABLE CATEGORY_TABLE
ADD CONSTRAINT FK_PROJECT_ID FOREIGN KEY(PROJECT_ID) REFERENCES PROJECT_TABLE;


--CATEGORY_NO ������
CREATE SEQUENCE CATEGORY_SEQ -- ������ �̸�
START WITH 2000  --2000���� ����
INCREMENT BY 1 --1�� ����
NOMAXVALUE  --�Ѱ谡 ����
NOMINVALUE; --�ּҰ� X

alter table category_table 
add CATEGORY_NOTICE varchar2(10) default 'N';

alter table category_table 
add CATEGORY_KIND varchar2(10) NOT NULL;

select * from category_table;

commit;

select *
from category_table;

--카테고리 리스트
select CATEGORY_NAME
from category_table c, project_table p
where c.PROJECT_ID = p.PROJECT_ID
and p.PROJECT_NAME = '프로젝트테스트01';

commit;

INSERT INTO CATEGORY_TABLE(CATEGORY_ID, CATEGORY_NAME, PROJECT_ID)
VALUES(CATEGORY_SEQ.NEXTVAL, '자유', 1000)
;

--카테고리 선택
select c.CATEGORY_ID, c.CATEGORY_NAME
from category_table c, project_table p
where c.PROJECT_ID = p.PROJECT_ID
and p.PROJECT_NAME = '프로젝트테스트01'
and c.CATEGORY_NAME = '기타'
;

ALTER TABLE category_table ADD CONSTRAINT uk_category_table_name UNIQUE(category_name)
;
commit;

rollback;