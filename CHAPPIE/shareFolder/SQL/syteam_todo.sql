CREATE TABLE TODO_LIST_TABLE(
TODO_NO NUMBER,
CATEGORY_ID NUMBER,
TODO_LIST VARCHAR2(1000),
TODO_START_DATE DATE,
TODO_END_DATE DATE,
TODO_PRIORITY VARCHAR2(15),
TODO_NOTE VARCHAR2(500),
TODO_COMPLETE VARCHAR2(15) DEFAULT 'N'
);

ALTER TABLE TODO_LIST_TABLE
ADD CONSTRAINT PK_TODO_NO PRIMARY KEY(TODO_NO);

ALTER TABLE TODO_LIST_TABLE
ADD CONSTRAINT FK_TODO_CATEGORY_ID FOREIGN KEY(CATEGORY_ID) REFERENCES CATEGORY_TABLE;

CREATE SEQUENCE TODO_SEQ -- 시퀀스 이름
START WITH 1000  --1부터 시작
INCREMENT BY 1 --1씩 증가
NOMAXVALUE  --한계가 없이
NOMINVALUE; --최소값 X

--TODO 추가 쿼리
INSERT INTO TODO_LIST_TABLE
VALUES (TODO_SEQ.NEXTVAL ,2001, 'LIST 05', SYSDATE, SYSDATE, 'M', 'TEST NOTE 3333', '1');
 

SELECT * FROM TODO_LIST_TABLE;

DELETE TODO_LIST_TABLE WHERE TODO_NO=1017;

commit;
--TODO_NO SELECT
SELECT MAX(TODO_NO) FROM TODO_LIST_TABLE;

--TODO VIEW
SELECT M.TODO_NO, L.CATEGORY_ID, L.TODO_LIST, L.TODO_START_DATE, L.TODO_END_DATE, L.TODO_PRIORITY, L.TODO_NOTE, L.TODO_COMPLETE, M.MEMBER_NICKNAME
FROM TODO_LIST_TABLE L, TODO_MEMBER_TABLE M
WHERE L.TODO_NO = M.TODO_NO AND
M.TODO_NO = 1010;

--TODO VIEWLIST
SELECT TODO_NO, TODO_LIST, TODO_PRIORITY, TODO_COMPLETE 
FROM TODO_LIST_TABLE 
WHERE CATEGORY_ID = 2001
ORDER BY TODO_NO DESC;

--TODO COMPLETE 
SELECT TODO_COMPLETE 
FROM TODO_LIST_TABLE 
WHERE TODO_NO = 1010;

UPDATE TODO_LIST_TABLE SET TODO_COMPLETE='1' WHERE TODO_NO=1009;
UPDATE TODO_LIST_TABLE SET TODO_COMPLETE='0' WHERE TODO_NO=1009;



COMMIT; 
ROLLBACK;
-------------------------------------------------------

CREATE TABLE TODO_MEMBER_TABLE(
TODO_NO NUMBER,
MEMBER_NICKNAME VARCHAR2(50)
);

DROP TABLE TODO_MEMBER_TABLE;

ALTER TABLE TODO_MEMBER_TABLE
ADD CONSTRAINT FK_TODO_MEMBER_NO FOREIGN KEY(TODO_NO) REFERENCES TODO_LIST_TABLE ON DELETE CASCADE;
ALTER TABLE TODO_MEMBER_TABLE DROP CONSTRAINT FK_TODO_MEMBER_NO;

SELECT * FROM TODO_MEMBER_TABLE;

INSERT INTO TODO_MEMBER_TABLE 
VALUES (1010, 'LEE');


