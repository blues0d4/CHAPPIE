--MEMBER_TABLE ����
CREATE TABLE MEMBER_TABLE(
PROJECT_ID NUMBER,
MEMBER_NICKNAME VARCHAR2(50),
MEMBER_RANK VARCHAR2(20),
USER_ID VARCHAR2(50)
);

--FK ���� MEMBER_TABLE(USER_ID)
ALTER TABLE MEMBER_TABLE
ADD CONSTRAINT FK_MEMBER_USER_ID FOREIGN KEY(USER_ID) REFERENCES USER_TABLE;

--FK ���� MEMBER_TABLE(PROJECT_ID)
ALTER TABLE MEMBER_TABLE
ADD CONSTRAINT FK_MEMBER_PROJECT_ID FOREIGN KEY(PROJECT_ID) REFERENCES PROJECT_TABLE;


commit;



select * from member_table;

select member_nickname from member_table where project_id = 1003;

--�������� ������Ʈ �ִ��� ������ üũ�ϴ� ����
select count(*)
from PROJECT_TABLE p, MEMBER_TABLE m
where p.PROJECT_ID = m.PROJECT_ID
    and m.USER_ID = '1';

--������ ������Ʈ �߰��ϴ� ����
INSERT INTO PROJECT_TABLE(PROJECT_ID, PROJECT_NAME)
VALUES(PROJECT_SEQ.nextval, 'ptest01');

commit;

SELECT PROJECT_ID
FROM PROJECT_TABLE
WHERE PROJECT_NAME = 'ptest01';

--�����Ͱ� �����Ҷ� projectManagerInsert
INSERT INTO MEMBER_TABLE(PROJECT_ID, MEMBER_NICKNAME, MEMBER_RANK, USER_ID)
VALUES(1062, '쨩쨩이', 'n', '123');

--�ʴ��Ҷ� projectMemberInsert

INSERT INTO MEMBER_TABLE(PROJECT_ID, MEMBER_NICKNAME, MEMBER_RANK, USER_ID)
VALUES(1003, 'qqq', 'n', 'user_id');

--���� ���(�г��� �ߺ� ������Ű�� �߰� �� null�� �߰� �� null���̸� ������Ʈ ���� �� �г����� �����ϵ��� ������ ����)

--������ ���� ������Ʈ ����Ʈ
select distinct *
from PROJECT_TABLE p, MEMBER_TABLE m
where p.PROJECT_ID = m.PROJECT_ID
    and m.USER_ID = '1';
    
    
--������ ������ ������Ʈ
select distinct *
from PROJECT_TABLE p, MEMBER_TABLE m
where p.PROJECT_ID = m.PROJECT_ID
    and p.project_name = 'ptest01';

ROLLBACK;