
-- ���� :    ȸ�� / ��ȸ�� / ��ǰ / ��ٱ��� / ���� / ���� / ���� 


-------------------------------------------------------------------------------- ȸ�� (user)

-- ȸ��(user) ������ ����
create sequence seq_user;
-- ȸ��(user) ���̺� ����
create table tbl_user (
    uno         number(10) not null primary key,        -- ��ȣ
    user_id     varchar2(50) not null unique,           -- ���̵�
    user_name   varchar2(50) not null,                  -- �̸�
    pwd	        varchar2(50) not null,                  -- ��й�ȣ
    email	    varchar2(50) not null,                  -- �̸���
    phone	    varchar2(50) not null,                  -- ����ó
    post_code   varchar2(30),                           -- �����ȣ (����)
    addr        varchar2(50),                           -- �ּ� (����)
    addr2       varchar2(50),                           -- ���ּ� (����)
    reg_date    date default sysdate,                   -- ������
    auth        char(1) default 'm'                     -- ����
);

-- dummy
insert into tbl_user(uno,user_id, user_name, pwd, email, phone, post_code, addr, addr2, auth) values (seq_user.nextval,'admin','������','1234','admin@test.com','010-000-0000','12345','�����','���ǻ���','a');
insert into tbl_user(uno,user_id, user_name, pwd, email, phone, post_code, addr, addr2) values (seq_user.nextval,'user','ȸ��','1234','user@test.com','010-000-0000','12345','������','�������α�');

-- Ŀ��
commit;

-- ��ȸ
select * from tbl_user;

-- drop
drop sequence seq_user;
drop table tbl_user;


-------------------------------------------------------------------------------- ��ǰ (item)

-- ��ǰ(item) ������ ����
create sequence seq_item;
-- ��ǰ(item) ���̺� ����
create table tbl_item (
    item_id     number(10) not null primary key,        -- ��ǰ ��ȣ (������ ���)
    category    varchar2(10) not null,                  -- ��ǰ �з�
    item_name   varchar2(30) not null,                  -- ��ǰ �̸�
    item_price  number(10) not null,                    -- ��ǰ ����
    description varchar2(1000) not null,                -- ��ǰ ����
    item_stock  number(10) not null,                    -- ��ǰ ���
    item_sold   number(10),                             -- ��ǰ �Ǹŷ�
    update_date date default sysdate,                   -- ������
    ratingAvg   number(2,1)                             -- ���� ���
);

-- ��ǰ �̹���(file_item) ������ ����
create sequence seq_file_item;
-- ��ǰ �̹���(file_item) ���̺� ����
create table tbl_file_item(
    fid         varchar2(50) not null primary key,      -- �̹��� ��ȣ (������ ���)
    fileName    varchar2(50) not null,                  -- ���� �̸�
    image       char(1) default 'I',                    -- �̹��� ����
    uuid        varchar2(50) not null,                  -- UUID
    uploadPath  varchar2(50) not null                   -- ���� ���
);

-- Ŀ��
commit;

-- ��ȸ
select * from tbl_item;
select * from tbl_file_item;
select * from tbl_item order by update_date desc;

-- drop item
drop sequence seq_item;
drop table tbl_item;
-- drop file
drop sequence seq_file_item;
drop table tbl_file_item;


-------------------------------------------------------------------------------- ��ٱ��� (cart)

-- ��ٱ���(cart) ������ ����
create sequence seq_cart;
-- ��ٱ���(cart) ���̺� ����
create table tbl_cart (
    cart_id     number(30) not null primary key,    -- īƮ ��ȣ (������ ���)
    user_id     varchar2(50),                       -- īƮ �̸�
    item_id     number(30),                         -- ��ǰ ��ȣ
    item_name   varchar2(50),                       -- ��ǰ �̸�
    amount      number(10),                         -- ��ǰ ����
    cart_price  number(10)                          -- �ջ� ����
);

-- Ŀ��
commit;

-- ��ȸ
select * from tbl_cart;

-- drop
drop sequence seq_cart;
drop table tbl_cart;


-------------------------------------------------------------------------------- ���� (buy)

-- ȸ������(user_buy) ������ ����
create sequence seq_user_buy;
-- ȸ������(user_buy) ���̺� ����
create table tbl_user_buy (
    bno         number(10) not null primary key,        -- ������
    buy_no      varchar2(100) not null unique,          -- �ֹ���ȣ
    user_id     varchar2(30) not null,                  -- �ֹ��ھ��̵�
    buyer_name  varchar2(30) not null,                  -- ��۹��� �̸�
    phone       varchar2(30) not null,                  -- ����ó
    post_code   varchar2(10) not null,                  -- �����ȣ
    addr        varchar2(100) not null,                 -- �ּ�    
    addr2       varchar2(100) not null,                 -- �ּ�(��)
    buy_status  varchar2(20) default '���ſϷ�',         -- �ֹ�����
    buy_date    date default sysdate                    -- �ֹ��� ��¥
);


insert into tbl_user_buy values(seq_user_buy.nextval, 'u12337', 't2', '�μ�', '010111111','123123','12313132','12313','���ſϷ�','2023/05/17');
-- ��ȸ������(guest_buy) ������ ����
create sequence seq_guest_buy;
-- ��ȸ������(guest_buy) ���̺� ����
create table tbl_guest_buy (
    gno         number(10) not null primary key,        -- ������
    buy_no      varchar2(100) not null unique,          -- �ֹ���ȣ
    pwd         varchar2(30) not null,                  -- ��ȸ�� ��й�ȣ
    buyer_name  varchar2(30) not null,                  -- ��۹��� �̸�
    phone       varchar2(30) not null,                  -- ����ó
    post_code   varchar2(10) not null,                  -- �����ȣ
    addr        varchar2(100) not null,                 -- �ּ�    
    addr2       varchar2(100) not null,                 -- �ּ�(��)
    buy_status  varchar2(20) default '���� �Ϸ�',         -- �ֹ�����
    buy_date    date default sysdate                    -- �ֹ��� ��¥
);

-- ���� ��ǰ(buy_list) ������ ����
create sequence seq_buy_list;
-- ���� ��ǰ(buy_list) ���̺� ����
create table tbl_buy_list (
    blist_no        number(10) not null primary key,    -- �ֹ���� ��ȣ
    buy_no          varchar2(100),                      -- ��ȸ ��ȣ
    item_id         number(10),                         -- ��ǰ ��ȣ
    item_name       varchar2(50),                       -- ��ǰ �̸�
    amount          number(10),                         -- ����
    buy_price       number(10),                         -- ����
    delivery_cost   number(10)                          -- ��ۺ�
);
insert into tbl_buy_list values(seq_buy_list.nextval,'u12337',1,'��ġ�',1,8000,0);
insert into tbl_buy_list values(seq_buy_list.nextval,'u12337',2,'�߰���',2,15000,0);

-- Ŀ��
commit;

-- ��ȸ
select * from tbl_user_buy;
select * from tbl_guest_buy;
select * from tbl_buy_list;


-- drop user_buy
drop sequence seq_user_buy;
drop table tbl_user_buy;
-- drop guest_buy
drop sequence seq_guest_buy;
drop table tbl_guest_buy;
-- drop buy_list
drop sequence seq_buy_list;
drop table tbl_buy_list;


-------------------------------------------------------------------------------- ���� (inquiry)
--������ ����
create sequence seq_question;
--���� ���̺� ����
create TABLE tbl_question(
	qno			NUMBER PRIMARY KEY,                                             -- �Խñ� ��ȣ
	title		VARCHAR2(300)	NOT NULL,                                       -- �Խñ� ����
	content		VARCHAR2(4000)	NOT NULL,                                       -- �Խñ� ����
	writer		VARCHAR2(100)	NOT NULL,                                       -- �Խñ� �ۼ���
	writedate	DATE DEFAULT SYSDATE,                                           -- �� �ۼ���¥
	readcnt		NUMBER DEFAULT 0,                                               -- ��ȸ��
    updatedate  date default sysdate,                                           -- �� ������¥
    password    VARCHAR2(100),                                                  -- �� ��й�ȣ
    reply       VARCHAR2(4000),                                                 -- �亯
    category    VARCHAR2(500)                                                   -- ���� ����
);

--��ȸ
select * from tbl_question;
--Ŀ��
commit;
-- ����
drop table tbl_question;
-------------------------------------------------------------------------------- ���� (notice)

-- ������ ����
create sequence seq_notice;
-- ���̺� ����
create table notice(
    bno number(10) not null primary key,
    title varchar2(150) not null,
    content varchar2(2000) not null,
    regdate date default sysdate,
    updatedate date default sysdate
);
insert into notice values(seq_notice.nextval, '����', '���������', '�ƹ���', '2023/05/16', '2023/05/16');
select * from notice;

-- Ŀ��
commit;

drop table tbl_question;
drop SEQUENCE seq_notice;


select count(user_id) from tbl_user where user_id = "admin";



-------------------------------------------------------------------------------- ���� (reply)

-- ������ ����
create sequence seq_reply;
-- ���̺� ����
create table reply(
    reply_id number primary key,
    item_id number not null,
    user_id varchar2(50) not null,
    regDate date default sysdate,
    content varchar2(3500),
    rating number(2,1) not null,
    FOREIGN KEY (user_id)REFERENCES tbl_user(user_id) on delete cascade,
    FOREIGN KEY (item_id) REFERENCES tbl_item(item_id) on delete cascade,
    UNIQUE(item_id, user_id)
);

select * from reply;
-- Ŀ��
commit;

drop sequence seq_reply;
drop table reply;

alter table tbl_item add ratingAvg number(2,1);