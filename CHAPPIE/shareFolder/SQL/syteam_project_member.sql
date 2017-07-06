--MEMBER_TABLE 생성
CREATE TABLE MEMBER_TABLE(
PROJECT_ID NUMBER,
MEMBER_NICKNAME VARCHAR2(50),
MEMBER_RANK VARCHAR2(20),
USER_ID VARCHAR2(50)
);

--FK 설정 MEMBER_TABLE(USER_ID)
ALTER TABLE MEMBER_TABLE
ADD CONSTRAINT FK_MEMBER_USER_ID FOREIGN KEY(USER_ID) REFERENCES USER_TABLE;

--FK 설정 MEMBER_TABLE(PROJECT_ID)
ALTER TABLE MEMBER_TABLE
ADD CONSTRAINT FK_MEMBER_PROJECT_ID FOREIGN KEY(PROJECT_ID) REFERENCES PROJECT_TABLE;


commit;



select * from member_table;

select member_nickname from member_table where project_id = 1003;

--유저한테 프로젝트 있는지 없는지 체크하는 쿼리
select count(*)
from PROJECT_TABLE p, MEMBER_TABLE m
where p.PROJECT_ID = m.PROJECT_ID
    and m.USER_ID = '1';

--유저가 프로젝트 추가하는 쿼리
INSERT INTO PROJECT_TABLE(PROJECT_ID, PROJECT_NAME)
VALUES(PROJECT_SEQ.nextval, 'ptest01');

commit;

SELECT PROJECT_ID
FROM PROJECT_TABLE
WHERE PROJECT_NAME = 'ptest01';

--마스터가 생성할때 projectManagerInsert
INSERT INTO MEMBER_TABLE(PROJECT_ID, MEMBER_NICKNAME, MEMBER_RANK, USER_ID)
VALUES(1003, 'qqq', 'y', '1');

--초대할때 projectMemberInsert

INSERT INTO MEMBER_TABLE(PROJECT_ID, MEMBER_NICKNAME, MEMBER_RANK, USER_ID)
VALUES(1003, 'qqq', 'n', 'user_id');

--추후 기능(닉네임 중복 금지시키고 추가 시 null로 추가 후 null값이면 프로젝트 선택 시 닉네임을 설정하도록 페이지 구현)

--유저가 가진 프로젝트 리스트
select distinct *
from PROJECT_TABLE p, MEMBER_TABLE m
where p.PROJECT_ID = m.PROJECT_ID
    and m.USER_ID = '1';

ROLLBACK;