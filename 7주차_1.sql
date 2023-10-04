--조인문법
select *
from 교수

select*
from 학과

select 교수명, 학과명
from 교수 join 학과
on 교수.학과코드 = 학과.학과코드

--교수테이블과 교과목 테이블을 조인하여 교수명과 담당하는 과목 출력
select*
from 교수

select*
from 교과목

select 교수명, 과목명
from 교수 join 교과목
on 교수.교수코드 = 교과목.담당교수

--
select *
from 교수

select*
from 학과

select*
from 교과목

select 교수명, 학과명, 과목명
from 교수 join 교과목
on 교수.교수코드 = 교과목.담당교수
join 학과
on 학과.학과코드 = 교수.학과코드

--self join
select 사원.사원명, 팀장.사원명 팀장명
from 팀장현황 사원 join 팀장현황 팀장 --같은 테이블이지만 별칭을 다르게 해서 사용
on 사원.팀장=팀장.사번

select* from 팀장현황