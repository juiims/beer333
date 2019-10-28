/* ���� */
CREATE TABLE BEER (
	b_no VARCHAR2(200) NOT NULL, /* ���ֹ�ȣ */
	bname VARCHAR2(200) NOT NULL, /* �����̸� */
	AVU NUMBER NOT NULL, /* ���� */
	type VARCHAR2(200) NOT NULL, /* ���� */
	SRM NUMBER, /* ���� */
	IBU NUMBER, /* ���� */
	aroma VARCHAR2(200), /* �� */
	photo VARCHAR2(200), /* ���ֻ��� */
	br_name VARCHAR2(200) /* �귣��� */
);

ALTER TABLE BEER
	ADD
		CONSTRAINT PK_BEER
		PRIMARY KEY (
			b_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ���� */
CREATE TABLE REVIEW (
	r_no VARCHAR2(200) NOT NULL, /* �����ȣ */
	m_no VARCHAR2(200) NOT NULL, /* ȸ����ȣ */
	b_no VARCHAR2(200) NOT NULL, /* ���ֹ�ȣ */
	review CLOB NOT NULL /* ���ָ��� */
);

ALTER TABLE REVIEW
	ADD
		CONSTRAINT PK_REVIEW
		PRIMARY KEY (
			r_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ȸ�� */
CREATE TABLE MEMBER (
	m_no VARCHAR2(200) NOT NULL, /* ȸ����ȣ */
	id VARCHAR2(200) NOT NULL, /* ���̵� */
	password VARCHAR2(200) NOT NULL, /* ��й�ȣ */
	name VARCHAR2(200) NOT NULL, /* �̸� */
	birth DATE NOT NULL, /* ������� */
	tel VARCHAR2(200), /* ��ȭ��ȣ */
	addr VARCHAR2(200), /* �ּ� */
	email VARCHAR2(200), /* �̸��� */
	job VARCHAR2(200), /* ���� */
	point NUMBER DEFAULT 0 /* ����Ʈ */
);

ALTER TABLE MEMBER
	ADD
		CONSTRAINT PK_MEMBER
		PRIMARY KEY (
			m_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* Question */
CREATE TABLE QnA (
	q_no VARCHAR2(200) NOT NULL, /* ������ȣ */
	s_no VARCHAR2(200) NOT NULL, /* ����â���ȣ */
	yesno VARCHAR2(200) DEFAULT 'n', /* �亯���� */
	question CLOB NOT NULL, /* �������� */
	answer CLOB DEFAULT '-' /* �亯���� */
);

ALTER TABLE QnA
	ADD
		CONSTRAINT C_PK_QnA
		PRIMARY KEY (
			q_no,
			s_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ����Ʈ(��õ,��ȣ,����) */
CREATE TABLE LIST (
	l_category VARCHAR2(200) NOT NULL, /* ����Ʈ ���� */
	s_no VARCHAR2(200) NOT NULL, /* ����â���ȣ */
	b_no VARCHAR2(200) NOT NULL /* ���ֹ�ȣ */
);

ALTER TABLE LIST
	ADD
		CONSTRAINT C_PK_LIST
		PRIMARY KEY (
			l_category,
			s_no,
			b_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ���� */
CREATE TABLE guestbook (
	g_no VARCHAR2(200) NOT NULL, /* ���Ϲ�ȣ */
	s_no VARCHAR2(200) NOT NULL, /* ����â���ȣ */
	m_no VARCHAR2(200) NOT NULL, /* ȸ����ȣ */
	body CLOB NOT NULL /* �۳��� */
);

ALTER TABLE guestbook
	ADD
		CONSTRAINT C_PK_guestbook
		PRIMARY KEY (
			g_no,
			s_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* �귣�� */
CREATE TABLE BRAND (
	br_name VARCHAR2(200) NOT NULL, /* �귣��� */
	country  VARCHAR2(200) NOT NULL /* �������� */
);

ALTER TABLE BRAND
	ADD
		CONSTRAINT PK_BRAND
		PRIMARY KEY (
			br_name
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ����â�� */
CREATE TABLE Storage (
	s_no VARCHAR2(200) NOT NULL, /* ����â���ȣ */
	m_no VARCHAR2(200) NOT NULL, /* ȸ����ȣ */
	photo VARCHAR2(200) DEFAULT '�⺻�������' /* ȸ������ */
);

ALTER TABLE Storage
	ADD
		CONSTRAINT PK_Storage
		PRIMARY KEY (
			s_no
		)
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

/* ��� */
CREATE TABLE grade (
	gname VARCHAR2(200) DEFAULT '�Ϲ�', /* ��޸� */
	lowpoint NUMBER NOT NULL, /* �ּ����� */
	highpoint NUMBER NOT NULL /* �ְ����� */
);

ALTER TABLE BEER
	ADD
		CONSTRAINT FK_BRAND_TO_BEER
		FOREIGN KEY (
			br_name
		)
		REFERENCES BRAND (
			br_name
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_MEMBER_TO_REVIEW
		FOREIGN KEY (
			m_no
		)
		REFERENCES MEMBER (
			m_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE REVIEW
	ADD
		CONSTRAINT FK_BEER_TO_REVIEW
		FOREIGN KEY (
			b_no
		)
		REFERENCES BEER (
			b_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE QnA
	ADD
		CONSTRAINT FK_Storage_TO_QnA
		FOREIGN KEY (
			s_no
		)
		REFERENCES Storage (
			s_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE LIST
	ADD
		CONSTRAINT FK_BEER_TO_LIST
		FOREIGN KEY (
			b_no
		)
		REFERENCES BEER (
			b_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE LIST
	ADD
		CONSTRAINT FK_Storage_TO_LIST
		FOREIGN KEY (
			s_no
		)
		REFERENCES Storage (
			s_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE guestbook
	ADD
		CONSTRAINT FK_Storage_TO_guestbook
		FOREIGN KEY (
			s_no
		)
		REFERENCES Storage (
			s_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE guestbook
	ADD
		CONSTRAINT FK_MEMBER_TO_guestbook
		FOREIGN KEY (
			m_no
		)
		REFERENCES MEMBER (
			m_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;

ALTER TABLE Storage
	ADD
		CONSTRAINT FK_MEMBER_TO_Storage
		FOREIGN KEY (
			m_no
		)
		REFERENCES MEMBER (
			m_no
		)
		ON DELETE CASCADE
		NOT DEFERRABLE
		INITIALLY IMMEDIATE
		ENABLE
		VALIDATE;


ALTER TABLE BEER ADD UNIQUE(bname);

ALTER TABLE MEMBER ADD UNIQUE(id,email);

ALTER TABLE BEER ADD CONSTRAINT CK_type CHECK(TYPE IN ('ALE', 'PaleAle', 'IPA', 'Weizen', 'Porter', 'Stout', 'Larger','Pilsner','Dunkel','PaleLager','Dry'));



/* Ʈ���� ��� */
CREATE OR REPLACE TRIGGER TRG_brand
AFTER update of br_name ON brand FOR EACH ROW
BEGIN
    UPDATE beer
    SET  br_name =:NEW.br_name WHERE br_name =:OLD.br_name;
END;
/


CREATE OR REPLACE TRIGGER TRG_s_no
AFTER update of s_no ON storage FOR EACH ROW
BEGIN
    UPDATE QnA
    SET  s_no=:NEW.s_no WHERE s_no=:OLD.s_no;
    UPDATE guestbook
    SET  s_no=:NEW.s_no WHERE s_no=:OLD.s_no;
    UPDATE list
    SET  s_no=:NEW.s_no WHERE s_no=:OLD.s_no;
END;
/


create or replace trigger trg_m_no
after update of m_no
on member
for each row
begin
	update review set m_no = :new.m_no where m_no = :old.m_no;
	update storage set m_no = :new.m_no where m_no = :old.m_no;
	update guestbook set m_no = :new.m_no where m_no = :old.m_no;
end;
/

create or replace trigger trg_b_no
after update of b_no
on beer
for each row
begin
	update review set b_no = :new.b_no where b_no = :old.b_no;
	update list set b_no = :new.b_no where b_no = :old.b_no;
end;
/

create or replace trigger trg_member
after insert on member
for each row
begin
insert into storage(s_no, m_no) values('s'||:NEW.id, :NEW.m_no);
end;
/ 


/* ������ */

CREATE SEQUENCE SEQ_b_no
START WITH 1
INCREMENT BY 1
MAXVALUE 9999;

CREATE SEQUENCE SEQ_r_no
START WITH 1
INCREMENT BY 1
MAXVALUE 9999;

CREATE SEQUENCE SEQ_q_no
START WITH 1
INCREMENT BY 1
MAXVALUE 9999;

CREATE SEQUENCE SEQ_g_no
START WITH 1
INCREMENT BY 1
MAXVALUE 9999;
