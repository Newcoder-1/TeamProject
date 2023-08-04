create table member (
	m_no number(10) primary key,
	m_id varchar2(50 char) not null,
	m_pw varchar2(50 char) not null,
	m_name varchar2(50 char) not null,
	m_birth date not null,
	m_phone varchar2(50 char) not null,
	m_email varchar2(50 char) not null
);

create sequence member_seq;

select * from member;

drop table member cascade constraint purge;
drop sequence member_seq;