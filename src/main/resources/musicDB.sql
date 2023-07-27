create table music (
	s_no number(10) primary key,
	s_title varchar2(20 char) not null,
	s_artist varchar2(20 char) not null,
	s_genre varchar2(10 char) not null,
	s_date date not null
);

create sequence music_seq;

select * from music;

select * from music where
			s_title like '%아%'
			or s_artist like '%아%';
-------------------------------------------------------

insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'NIGHT DANCER', 'imase', 'J-POP', to_date('2022-08-19', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'KICK BACK', '요네즈 켄시', 'J-POP', to_date('2022-10-12', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'LADY', '요네즈 켄시', 'J-POP', to_date('2023-03-21', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Pretender', '오피셜 히게단디즘', 'J-POP', to_date('2019-05-15', 'YYYY-MM-DD'));

-------------------------------------------------------
drop table music cascade constraint purge;
drop sequence music_seq;