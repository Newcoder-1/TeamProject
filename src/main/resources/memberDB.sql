create table member (
	m_no number(10) primary key,
	m_id varchar2(50 char) not null,
	m_pw varchar2(50 char) not null,
	m_name varchar2(50 char) not null,
	m_birth varchar2(50 char) not null,
	m_phone varchar2(50 char) not null,
	m_email varchar2(50 char) not null,
	m_gender varchar2(50 char) not null
);

create sequence member_seq;

select * from member;

drop table member cascade constraint purge;
drop sequence member_seq;

/* test */
insert into member( m_no, m_id, m_pw, m_name, m_birth, m_phone, m_email, m_gender)
values ( member_seq.nextval, 'admin', '142536', '한건희', '1996-04-04', '01087221523', 'gksworjs246@naver.com', '남자');





