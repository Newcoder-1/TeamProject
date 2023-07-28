create table music (
	s_no number(10) primary key,
	s_title varchar2(50 char) not null,
	s_artist varchar2(50 char) not null,
	s_genre varchar2(20 char) not null,
	s_date date not null
);

create sequence music_seq;

select * from music;

-------------------------------------------------------

insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'NIGHT DANCER', 'imase', 'J-POP', to_date('2022-08-19', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'KICK BACK', '요네즈 켄시', 'J-POP', to_date('2022-10-12', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'LADY', '요네즈 켄시', 'J-POP', to_date('2023-03-21', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Pretender', '오피셜 히게단디즘', 'J-POP', to_date('2019-05-15', 'YYYY-MM-DD'));

insert into music values(music_seq.nextval, '헤어지자 말해요', '박재정', 'Ballad', to_date('2023-04-20', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '사랑은 늘 도망가', '임영웅', 'Ballad', to_date('2021-10-11', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '너의 모든 순간', '성시경', 'Ballad', to_date('2014-02-12', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '나의 X에게', '경서', 'Ballad', to_date('2022-04-24', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '취중고백', '김민석', 'Ballad', to_date('2021-12-19', 'YYYY-MM-DD'));

insert into music values(music_seq.nextval, '무중력', '빈지노', 'HipHop', to_date('2015-01-22', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '시차', '우원재', 'HipHop', to_date('2017-05-06', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '돈 벌지마', '스윙스', 'HipHop', to_date('2018-06-11', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '막차', '창모', 'HipHop', to_date('2016-07-25', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '어디', '지코', 'HipHop', to_date('2015-11-03', 'YYYY-MM-DD'));

insert into music values(music_seq.nextval, 'Butter', '방탄소년단', 'Dance', to_date('2021-05-21', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Next Level', '에스파', 'Dance', to_date('2021-05-17', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Alcohol Free', '트와이스', 'Dance', to_date('2021-06-09', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'ASAP', 'STAYC', 'Dance', to_date('2021-04-08', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Rollin', '브레이브걸스', 'Dance', to_date('2021-06-17', 'YYYY-MM-DD'));

insert into music values(music_seq.nextval, 'Believer', 'Imagine Dragons', 'Rock', to_date('2017-02-01', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Heathens', 'Twenty One Pilots', 'Rock', to_date('2016-06-16', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Radioactive', 'Imagine Dragons', 'Rock', to_date('2012-04-02', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'High Hopes', 'Panic! At The Disco', 'Rock', to_date('2018-05-23', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Can''t Stop', 'Red Hot Chili Peppers', 'Rock', to_date('2002-01-26', 'YYYY-MM-DD'));

insert into music values(music_seq.nextval, '그날처럼', '케이시', 'OST', to_date('2021-04-25', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '그대 눈물까지도', '헤이즈', 'OST', to_date('2021-07-27', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, 'Someday', '어반자카파', 'OST', to_date('2021-05-28', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '함께라면', '정은지', 'OST', to_date('2021-07-29', 'YYYY-MM-DD'));
insert into music values(music_seq.nextval, '우린 봄이 오기 전에', '여자친구', 'OST', to_date('2021-06-07', 'YYYY-MM-DD'));

-------------------------------------------------------
drop table music cascade constraint purge;
drop sequence music_seq;



















