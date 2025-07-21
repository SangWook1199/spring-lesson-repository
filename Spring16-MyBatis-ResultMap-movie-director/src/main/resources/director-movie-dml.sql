-- director-movie-dml.sql

-- 통계 SQL(statistics) 감독별 통계 정보 조회: SUM(), ROUND(AVG())
-- director_id 감독 아이디 director_name 감독명 totalAttendance 총관객수 averageAttendance 평균관객수
SELECT d.director_id AS directorId, d.director_name AS directorName, SUM(m.attendance) AS totalAttendance, 
ROUND(AVG(m.attendance)) AS averageAttendance
FROM director d
INNER JOIN movie m on d.director_id = m.director_id
GROUP BY d.director_id, d.director_name
ORDER BY totalAttendance DESC

-- GROUP BY d.director_id, d.director_name : 감독 아이디와 감독명의 복합정보를 기준으로 그룹화한다

-- movie_id 로 movie 정보만 조회해본다
Select *
from movie
where movie_id = 1;

Select *
from director
where director_id = 1;

-- 위 두 SQL을 join 하여 한번에 1번 아이디 영화의 영화정보와 해당 감독정보를 함께 조회
-- movie_id, title, genre, attendance, director_id, director_name, intro

-- 개별 영화(감독 정보 포함) 조회
select m.movie_id, m.title, m.genre, m.attendance, d.director_id, d.director_name, d.intro
from movie m
inner join director d on m.director_id = d.director_id
where m.movie_id = 1

-- 전체 영화(감독 정보 포함) 리스트: 게시물 리스트 화면에 필요한 컬럼들만 조회
select m.movie_id, m.title, d.director_id, d.director_name
from movie m
inner join director d on m.director_id = d.director_id
order by m.movie_id asc







