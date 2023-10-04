--6주차 복습
 select 종류, avg(가격)평균가격
 from 제품
 where 가격>=50000 --개별 제품 가격
 group by 종류
 having avg(가격)>=50000 -- 그룹의 가격

 select 성별,반,avg(점수)평균점수
 from 성적
 group by 성별,반
 order by 성별,반

 -- 성별, 반 순
 select 성별,반,avg(점수)평균점수
 from 성적
 group by 성별,반 with rollup --중간집계, 전체집계

 --반, 성별 순
 select 반,성별,avg(점수)평균점수
 from 성적
 group by 반,성별 with rollup --중간집계, 전체집계

 --반,성별 순/성별, 반 순 동시에
  select 반,성별,avg(점수)평균점수
 from 성적
 group by 반,성별 with cube