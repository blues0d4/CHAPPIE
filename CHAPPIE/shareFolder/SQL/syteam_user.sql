--USER_TABLE ����
CREATE TABLE USER_TABLE(
USER_ID VARCHAR2(50) NOT NULL,
USER_PW VARCHAR2(20) NOT NULL,
USER_NAME VARCHAR2(20) NOT NULL,
USER_PHONE VARCHAR2(20), 
USER_JOINDATE DATE NOT NULL
);

--PK ���� USER_TABLE(USER_ID)
ALTER TABLE USER_TABLE
ADD CONSTRAINT PK_USER_ID PRIMARY KEY(USER_ID);

commit;

--���� ȸ������ ����
INSERT INTO USER_TABLE(USER_ID, USER_PW, USER_NAME, USER_PHONE, USER_JOINDATE)
VALUES('5', '1', 'stanname�г���', 'phone012345-67890', sysdate);

--���� ���� ����
DELETE FROM USER_TABLE
WHERE USER_ID = 'testId';

--���� �α��� ����
SELECT USER_ID, USER_NAME, SYSDATE AS LOGINDATE
FROM USER_TABLE
WHERE USER_ID = 'stan' AND USER_PW = 'stan';

--���� ȸ������ �ߺ�üũ ����
SELECT USER_ID
FROM USER_TABLE
WHERE USER_ID = 'stan';

--���� ȸ������ ���� ����
UPDATE USER_TABLE
SET
USER_PW = 'stan2',
USER_NAME = 'stan2',
USER_PHONE = 'stan3'
WHERE USER_ID = 'stan';

ALTER TABLE USER_TABLE
RENAME COLUMN MEMBER_NICKNAME TO USER_NAME;

rollback;
commit;

delete user_table;
delete board_table;
delete project_table;
delete member_table;
delete category_table;
delete TODO_LIST_TABLE;
delete TODO_MEMBER_TABLE;

SELECT USER_ID, USER_NAME FROM USER_TABLE WHERE USER_ID='buzzbylove@gmail.com';
select *
from user_table;