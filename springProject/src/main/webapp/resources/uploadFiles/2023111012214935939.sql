----------------MEMBER-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'admin01','admin01','admin01@gmail.com','������','010-1234-5678',0,to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-10-01', 'RRRR-MM-DD'),'Y');
--�� 2
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'admin02','admin02','admin02@gmail.com','������','010-9876-5432',0,to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-10-01', 'RRRR-MM-DD'),'Y');
--�� 3
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'user01','user01','user01@gmail.com','������','010-1111-1111',1,to_date('2023-10-05', 'RRRR-MM-DD'),to_date('2023-10-05', 'RRRR-MM-DD'),'Y');
--�� 4
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'user02','user02','user02@gmail.com','������','010-2222-2222',1,to_date('2023-10-10', 'RRRR-MM-DD'),to_date('2023-10-10', 'RRRR-MM-DD'),'Y');
--�� 5
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'user03','user03','user03@gmail.com','������','010-3333-3333',1,to_date('2023-10-13', 'RRRR-MM-DD'),to_date('2023-10-13', 'RRRR-MM-DD'),'Y');
--�� 6
INSERT INTO MEMBER (USER_NO, USER_ID, USER_PWD, USER_EMAIL, USER_NAME, USER_PHONE, USER_LEVEL, USER_ENROLL_DATE, USER_MODIFY_DATE, USER_STATUS) VALUES (SEQ_UNO.NEXTVAL,'user04','user04','user04@gmail.com','������','010-4444-4444',1,to_date('2023-10-15', 'RRRR-MM-DD'),to_date('2023-10-15', 'RRRR-MM-DD'),'Y');




----------------BOARD-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,3,'�ı�','�Խ�������01','�Խ��ǳ���01');
--�� 2
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,3,'����','�Խ�������02','�Խ��ǳ���02');
--�� 3
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,4,'�ϻ�','�Խ�������03','�Խ��ǳ���03');
--�� 4
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,5,'�ǰ�','�Խ�������04','�Խ��ǳ���04');
--�� 5
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,6,'��Ÿ','�Խ�������05','�Խ��ǳ���05');
--�� 6
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,4,'�ı�','�Խ�������06','�Խ��ǳ���06');
--�� 7
INSERT INTO BOARD (BOARD_NO, BOARD_USER, BOARD_CATEGORY, BOARD_TITLE, BOARD_CONTENT) VALUES (SEQ_BNO.NEXTVAL,5,'����','�Խ�������07','�Խ��ǳ���07');


----------------BOARD IMAGE-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO BOARD_IMAGE (BOARD_IMAGE_NO, BOARD_NO, BOARD_IMAGE_ORIGIN, BOARD_IMAGE_CHANGE, BOARD_IMAGE_PATH) VALUES (SEQ_BINO.NEXTVAL,1,'����01','2023102415001848424.jpg','resources/board_upfile/');
--�� 2
INSERT INTO BOARD_IMAGE (BOARD_IMAGE_NO, BOARD_NO, BOARD_IMAGE_ORIGIN, BOARD_IMAGE_CHANGE, BOARD_IMAGE_PATH) VALUES (SEQ_BINO.NEXTVAL,2,'����02','2023102415001848425.jpg','resources/board_upfile/');
--�� 3
INSERT INTO BOARD_IMAGE (BOARD_IMAGE_NO, BOARD_NO, BOARD_IMAGE_ORIGIN, BOARD_IMAGE_CHANGE, BOARD_IMAGE_PATH) VALUES (SEQ_BINO.NEXTVAL,3,'����03','2023102415001848426.jpg','resources/board_upfile/');
--�� 4
INSERT INTO BOARD_IMAGE (BOARD_IMAGE_NO, BOARD_NO, BOARD_IMAGE_ORIGIN, BOARD_IMAGE_CHANGE, BOARD_IMAGE_PATH) VALUES (SEQ_BINO.NEXTVAL,4,'����04','2023102415001848427.jpg','resources/board_upfile/');



----------------BOARD COMMENT-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO BOARD_COMMENT (COMMENT_NO, BOARD_NO, COMMENT_USER, COMMENT_CONTENT) VALUES (SEQ_CNO.NEXTVAL,1,5,'����Դϴ�1');
--�� 2
INSERT INTO BOARD_COMMENT (COMMENT_NO, BOARD_NO, COMMENT_USER, COMMENT_CONTENT) VALUES (SEQ_CNO.NEXTVAL,1,4,'����Դϴ�2');
--�� 3
INSERT INTO BOARD_COMMENT (COMMENT_NO, BOARD_NO, COMMENT_USER, COMMENT_CONTENT) VALUES (SEQ_CNO.NEXTVAL,2,3,'����Դϴ�3');
--�� 4
INSERT INTO BOARD_COMMENT (COMMENT_NO, BOARD_NO, COMMENT_USER, COMMENT_CONTENT) VALUES (SEQ_CNO.NEXTVAL,3,1,'����Դϴ�4');



----------------PLACE-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 01','�������� ���� �� �ִ� ���Դϴ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 2
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 02','�������� ���� �� �ִ� ���Դϴ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 3
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 03','�������� ���� �� �ִ� ���Դϴ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 4
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 04','�������� ���� �� �ִ� ���Դϴ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 5
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 05','�������� ���� �� �ִ� ���Դϴ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 6
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���ɼ��� ���� 01','��� ������ �����Ѵٸ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 7
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���ɼ��� ���� 02','��� ������ �����Ѵٸ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 8
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���ɼ��� ���� 03','��� ������ �����Ѵٸ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 9
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���ɼ��� ���� 04','��� ������ �����Ѵٸ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 10
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���ɼ��� ���� 05','��� ������ �����Ѵٸ�','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 11
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���������� 01','�޽��ϱ� ���� ���','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 12
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���������� 02','�޽��ϱ� ���� ���','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 13
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME) VALUES (SEQ_PNO.NEXTVAL,'���������� 03','�޽��ϱ� ���� ���','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','09:00~18:00');
--�� 14
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 04','�޽��ϱ� ���� ���','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 15
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT) VALUES (SEQ_PNO.NEXTVAL,'���������� 05','�޽��ϱ� ���� ���','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037');
--�� 16
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME, PLACE_START, PLACE_END) VALUES (SEQ_PNO.NEXTVAL,'���ѹα� ���� 01','������ �����','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','12:00~15:00',to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-12-31', 'RRRR-MM-DD'));
--�� 17
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME, PLACE_START, PLACE_END) VALUES (SEQ_PNO.NEXTVAL,'���ѹα� ���� 02','������ �����','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','12:00~15:00',to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-12-31', 'RRRR-MM-DD'));
--�� 18
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_TIME, PLACE_START, PLACE_END) VALUES (SEQ_PNO.NEXTVAL,'���ѹα� ���� 03','������ �����','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037','12:00~15:00',to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-12-31', 'RRRR-MM-DD'));
--�� 19
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_START, PLACE_END) VALUES (SEQ_PNO.NEXTVAL,'���ѹα� ���� 04','������ �����','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037',to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-12-31', 'RRRR-MM-DD'));
--�� 20
INSERT INTO PLACE (PLACE_NO, PLACE_TITLE, PLACE_CONTENT_POINT, PLACE_CONTENT_DETAIL, PLACE_THEMA, PLACE_ADDRESS, PLACE_HOMEPAGE, PLACE_CONTACT, PLACE_START, PLACE_END) VALUES (SEQ_PNO.NEXTVAL,'���ѹα� ���� 05','������ �����','�󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� �󼼼����Դϴ� ','����','����Ư���� ������ �������14�� 6','https://www.iei.or.kr/main/main.kh','0507-1400-2037',to_date('2023-10-01', 'RRRR-MM-DD'),to_date('2023-12-31', 'RRRR-MM-DD'));


----------------PLACE IMAGE-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,1,'����01','2023102415001848420.jpg','resources/images/');
--�� 2
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,2,'����02','2023102415001848421.jpg','resources/images/');
--�� 3
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,3,'����03','2023102415001848422.jpg','resources/images/');
--�� 4
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,4,'����04','2023102415001848423.jpg','resources/images/');
--�� 1
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,18,'����01','2023102415001848420.jpg','resources/images/');
--�� 2
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,18,'����02','2023102415001848421.jpg','resources/images/');
--�� 3
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,18,'����03','2023102415001848422.jpg','resources/images/');
--�� 4
INSERT INTO PLACE_IMAGE (PLACE_IMAGE_NO, PLACE_NO, PLACE_IMAGE_ORIGIN, PLACE_IMAGE_CHANGE, PLACE_IMAGE_PATH) VALUES (SEQ_PINO.NEXTVAL,18,'����04','2023102415001848423.jpg','resources/images/');



----------------PLACE LIKE-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO PLACE_LIKE (LIKE_NO, PLACE_NO, USER_NO) VALUES (SEQ_PLNO.NEXTVAL,1,3);
--�� 2
INSERT INTO PLACE_LIKE (LIKE_NO, PLACE_NO, USER_NO) VALUES (SEQ_PLNO.NEXTVAL,2,3);
--�� 3
INSERT INTO PLACE_LIKE (LIKE_NO, PLACE_NO, USER_NO) VALUES (SEQ_PLNO.NEXTVAL,3,3);
--�� 4
INSERT INTO PLACE_LIKE (LIKE_NO, PLACE_NO, USER_NO) VALUES (SEQ_PLNO.NEXTVAL,4,4);
--�� 5
INSERT INTO PLACE_LIKE (LIKE_NO, PLACE_NO, USER_NO) VALUES (SEQ_PLNO.NEXTVAL,5,5);





----------------REVIEW-----------------------
--ORA-01722: invalid number
--�� 1
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,1,3,1,'�־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� ');
--�� 2
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,1,4,2,'���ο���� ���ο���� ���ο���� ���ο���� ���ο����');
--�� 3
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,1,5,3,'�׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� ');
--�� 4
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,2,6,4,'���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ');
--�� 5
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,2,3,5,'�ְ��� �ְ��� �ְ��� �ְ��� �ְ��� �ְ��� ');
--�� 6
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,2,4,1,'�־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� ');
--�� 7
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,3,5,2,'���ο���� ���ο���� ���ο���� ���ο���� ���ο����');
--�� 8
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,4,6,3,'�׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� ');
--�� 9
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,5,3,4,'���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ');
--�� 10
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,6,4,5,'�ְ��� �ְ��� �ְ��� �ְ��� �ְ��� �ְ��� ');
--�� 11
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,7,5,1,'�־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� ');
--�� 12
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,8,6,2,'���ο���� ���ο���� ���ο���� ���ο���� ���ο����');
--�� 13
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,9,3,3,'�׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� ');
--�� 14
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,10,4,4,'���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ');
--�� 15
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,11,5,5,'�ְ��� �ְ��� �ְ��� �ְ��� �ְ��� �ְ��� ');
--�� 16
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,12,6,1,'�־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� ');
--�� 17
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,13,3,2,'���ο���� ���ο���� ���ο���� ���ο���� ���ο����');
--�� 18
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,14,4,3,'�׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� ');
--�� 19
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,15,5,4,'���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ');
--�� 20
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,16,6,5,'�ְ��� �ְ��� �ְ��� �ְ��� �ְ��� �ְ��� ');
--�� 16
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,18,6,1,'�־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� �־��̳׿� ');
--�� 17
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,18,3,2,'���ο���� ���ο���� ���ο���� ���ο���� ���ο����');
--�� 18
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,18,4,3,'�׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� �׳ɱ׷��� ');
--�� 19
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,18,5,4,'���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ���Ҿ�� ');
--�� 20
INSERT INTO REVIEW (REVIEW_NO, PLACE_NO, USER_NO, REVIEW_STAR, REVIEW_CONTENT) VALUES (SEQ_RNO.NEXTVAL,18,6,5,'�ְ��� �ְ��� �ְ��� �ְ��� �ְ��� �ְ��� ');



COMMIT;

