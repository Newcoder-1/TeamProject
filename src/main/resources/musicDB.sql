create table music (
	s_no number(10) primary key,
	s_title varchar2(50 char) not null,
	s_artist varchar2(50 char) not null,
	s_genre varchar2(20 char) not null,
	s_date date not null,
	s_album varchar2(1000 char) null,
	s_lyrics varchar2(3000 char) null,
	s_embed varchar2(1000 char) null
);

create sequence music_seq;

select * from music;

-- 전체 개수 구하기
select count(*) from music;
-------------------------------------------------------

insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');
insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', 'asdf');



insert into music values(music_seq.nextval, 'NIGHT DANCER', 'imase', 'J-POP', to_date('2022-08-19', 'YYYY-MM-DD'), 'nightDancer.jpg', 'asdf');
insert into music values(music_seq.nextval, 'KICK BACK', '요네즈 켄시', 'J-POP', to_date('2022-10-12', 'YYYY-MM-DD'), 'kickBack.jpg', 'asdf');
insert into music values(music_seq.nextval, 'LADY', '요네즈 켄시', 'J-POP', to_date('2023-03-21', 'YYYY-MM-DD'), 'lady.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Pretender', '오피셜 히게단디즘', 'J-POP', to_date('2019-05-15', 'YYYY-MM-DD'), 'pretender.jpg', 'asdf');

insert into music values(music_seq.nextval, '헤어지자 말해요', '박재정', 'Ballad', to_date('2023-04-20', 'YYYY-MM-DD'), 'hair.jpg', 'asdf');
insert into music values(music_seq.nextval, '사랑은 늘 도망가', '임영웅', 'Ballad', to_date('2021-10-11', 'YYYY-MM-DD'), 'domang.jpg', 'asdf');
insert into music values(music_seq.nextval, '너의 모든 순간', '성시경', 'Ballad', to_date('2014-02-12', 'YYYY-MM-DD'), 'your.jpg', 'asdf');
insert into music values(music_seq.nextval, '나의 X에게', '경서', 'Ballad', to_date('2022-04-24', 'YYYY-MM-DD'), 'myx.jpg', 'asdf');
insert into music values(music_seq.nextval, '취중고백', '김민석', 'Ballad', to_date('2021-12-19', 'YYYY-MM-DD'), 'goback.jpg', 'asdf');

insert into music values(music_seq.nextval, 'Aqua Man', '빈지노', 'HipHop', to_date('2017-07-11', 'YYYY-MM-DD'), 'aqua.jpg', 'asdf');
insert into music values(music_seq.nextval, '시차', '우원재', 'HipHop', to_date('2017-05-06', 'YYYY-MM-DD'), 'sicha.jpg', 'asdf');
insert into music values(music_seq.nextval, 'GANADARA', '박재범', 'HipHop', to_date('2022-03-11', 'YYYY-MM-DD'), 'ganadara.jpg', 'asdf');
insert into music values(music_seq.nextval, 'METEOR', '창모', 'HipHop', to_date('2019-11-29', 'YYYY-MM-DD'), 'meteor.jpg', 'asdf');
insert into music values(music_seq.nextval, '아무노래', '지코', 'HipHop', to_date('2020-01-13', 'YYYY-MM-DD'), 'amu.jpg', 'asdf');

insert into music values(music_seq.nextval, 'Butter', '방탄소년단', 'Dance', to_date('2021-05-21', 'YYYY-MM-DD'), 'butter.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Next Level', '에스파', 'Dance', to_date('2021-05-17', 'YYYY-MM-DD'), 'nextLevel.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Alcohol Free', '트와이스', 'Dance', to_date('2021-06-09', 'YYYY-MM-DD'), 'alcohol.jpg', 'asdf');
insert into music values(music_seq.nextval, 'ASAP', 'STAYC', 'Dance', to_date('2021-04-08', 'YYYY-MM-DD'), 'idol.jpg', 'ASAP');
insert into music values(music_seq.nextval, 'Rollin', '브레이브걸스', 'Dance', to_date('2021-06-17', 'YYYY-MM-DD'), 'rollin.jpg', 'asdf');

insert into music values(music_seq.nextval, 'Believer', 'Imagine Dragons', 'Rock', to_date('2017-02-01', 'YYYY-MM-DD'), 'believer.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Heathens', 'Twenty One Pilots', 'Rock', to_date('2016-06-16', 'YYYY-MM-DD'), 'heathens.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Radioactive', 'Imagine Dragons', 'Rock', to_date('2012-04-02', 'YYYY-MM-DD'), 'radioActive.jpg', 'asdf');
insert into music values(music_seq.nextval, 'High Hopes', 'Panic! At The Disco', 'Rock', to_date('2018-05-23', 'YYYY-MM-DD'), 'hopes.jpg', 'asdf');
insert into music values(music_seq.nextval, 'Can''t Stop', 'Red Hot Chili Peppers', 'Rock', to_date('2002-06-25', 'YYYY-MM-DD'), 'cantStop.jpg', 'asdf');

insert into music values(music_seq.nextval, '그날처럼', '케이시', 'OST', to_date('2021-04-25', 'YYYY-MM-DD'), 'genal.jpg', 'asdf');
insert into music values(music_seq.nextval, '아로하', '조정석', 'OST', to_date('2020-06-24', 'YYYY-MM-DD'), 'aroha.jpg', 'asdf');
insert into music values(music_seq.nextval, 'All for you', '정은지 & 서인국', 'OST', to_date('2012-08-28', 'YYYY-MM-DD'), 'allforyou.jpg', 'asdf');
insert into music values(music_seq.nextval, '비와 당신', '이무진', 'OST', to_date('2021-06-18', 'YYYY-MM-DD'), 'rainYou.jpg', 'asdf');
insert into music values(music_seq.nextval, '첫눈처럼 너에게 가겠다', '에일리', 'OST', to_date('2017-01-07', 'YYYY-MM-DD'), 'first.jpg', 'asdf');

-------------------------------------------------------
drop table music cascade constraint purge;
drop sequence music_seq;



















