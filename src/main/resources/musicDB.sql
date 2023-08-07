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

-------------------------------------------------------
drop table music cascade constraint purge;
drop sequence music_seq;
-------------------------------------------------------
-- 전체 개수 구하기
select count(*) from music;

update MUSIC set s_title = '빛나리' where s_no = 58;
select * from music where s_no = 33;
delete from music where s_no = 61;
-------------------------------------------------------

insert into music values(music_seq.nextval, '아이돌', '요아소비', 'J-POP', 
to_date('2023-04-12', 'YYYY-MM-DD'), 'idol.jpg', '無敵の笑顔が荒らすメディア
知らないその秘密ミステリアス
抜けてるとこさえ彼女のエリア
完璧で嘘つきな君は
天才的なアイドル様

今日何食べた？ 好きな本は？
遊びに行くならどこに行くの？
何も食べてない、それは内緒
何を聞かれてものらりくらり
そう淡々と、だけど燦々と
見えそうで見えない秘密は蜜の味
あれもないないない
これもないないない
好きなタイプは？相手は？
さあ答えて

誰かを好きになること
なんて私わからなくてさ
嘘か本当か知り得ない
そんな言葉にまた一人堕ちる
また好きにさせる

誰もが目を奪われてく
君は完璧で究極のアイドル
金輪際現れない
一番星の生まれ変わり
あぁ その笑顔で愛してるって
誰も彼も虜にしていく
その瞳がその言葉が嘘でも
それは完全な愛

はいはいあの子は特別です
我々は花からおまけです
お牛様の引き立て役いいです
すべてがあの子のおかげなわけ

ない、しゃらくさい
妬み嫉妬なんてないわけがない
これはネタじゃない
からこそ許せない
完璧じゃない
君じゃ許せない
自分を許せない
誰よりも強い
君以外認めない

誰もが信じ崇めてる
まさにん最強で無敵のアイドル
弱点なんて見当たらない
一番星を宿してる
弱いとこんなって見せちゃダメダメ
知りたくないと怖見せずに
唯一無二じゃなくちゃいやいや
それこそ本物のアイ

得意の笑顔で沸かすメディア
隠し切るこの秘密だけは
愛してるってウソで積むキャリア
これこそ私なりのアイだ
何度でも嘘も嫌いのアクア
ルビーを隠したこの前った
歌い踊り舞う私はマリア
そう嘘はとびきりの愛だ
誰かに愛されたことも
誰かのこと愛したことも
無いそんな私の嘘が
いつか本当になる事
信じてる

いつかきっと全部手に入れる
私はそう欲張りなアイドル
等身大でみんなのこと
ちゃんと愛したいから
今日も嘘をつくのこの言葉が
いつかほんとになる日を迎えた
それでもまた
君と君にだけをいい図にいたけど

あぁ
やっと言えたこれは
これは絶対嘘じゃない
愛してる', 
'<iframe width="560" height="315" 
src="https://www.youtube.com/embed/ZRtdQ81jPUQ" title="YouTube video player" 
frameborder="0" allow="accelerometer; autoplay; 
clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
allowfullscreen></iframe>');
insert into music values(music_seq.nextval, 'NIGHT DANCER', 'imase', 'J-POP', 
to_date('2022-08-19', 'YYYY-MM-DD'), 'nightDancer.jpg', 'どうでもいいような 夜だけど
響めき 煌めきと君も
まだ止まった 刻む針も
入り浸った 散らかる部屋も
変わらないね 思い出しては
二人 歳を重ねてた ah
また止まった 落とす針を
よく流した 聞き飽きるほど
変わらないね 変わらないで
いられたのは 君だけか ah
無駄話で はぐらかして
触れた先を ためらうように
足踏みして ズレた針を余所に
揃い始めてた 息が
どうでもいいような 夜だけど
響めき 煌めきと君も "踊ろう"
どうでもいいような 夜だけど
Ah 二人刻もう
Tu-tu-lu-tu-lu
透き通った 白い肌も
その笑った 無邪気な顔も
変わらないね 変わらないで
いられるのは 今だけか ah ah ah
見つめるほどに
溢れる メモリー
浮つく心に コーヒーを
乱れた髪(ヘア)に 掠れたメロディー
混ざりあってよう もう一度
どうでもいいような 夜だけど
ときめき 色めきと君も "踊ろう"
どうでもいいような 夜だけど
Ah 二人刻もう
Tu-tu-lu-tu-lu
夜は長い おぼつかない
今にも止まりそうな ミュージック
君といたい 溺れてたい
明日がこなくたって もういいの
どうでもいいような 夜だけど
響めき 煌めきと君も "踊ろう"
どうでもいいような 夜だけど ah
Ah 愛して
どうでもいいから 僕だけを
ふらつき よろめきながらも "踊ろう"
どうでもいいような 夜だけど
Ah 二人刻もう', 
'<iframe width="560" height="315" src="https://www.youtube.com/embed/kagoEGKHZvU" 
title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; 
clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" 
allowfullscreen></iframe>');
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















































