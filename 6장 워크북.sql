-- 6장 워크북 7p

/*2. stores테이블, sales테이블, titles테이블을 조인하여 
stor_name, title_id, qty를 출력하시오.(pubs서버)*/

select*
from stores

select*
from sales

select*
from titles

select stor_name,titles.title_id,qty
from titles join sales 
on titles.title_id=sales.title_id
join stores
on stores.stor_id=sales.stor_id

--별칭 붙여서 사용하기
select stor_name,st.title_id,qty
from titles st join sales s -- 앞으로 st, s로 바꿔서 부르겠음
on st.title_id=s.title_id
join stores
on stores.stor_id=s.stor_id

/*3.제품 테이블과 판매 테이블사용하여 
제품명과 판매수량을 출력하시오.(sampleDB)*/

select*
from 제품

select*
from 판매

select 제품명, 판매수량
from 제품 inner join 판매 -- inner join = join 내부 조인
on 제품.제품번호=판매.판매번호

/*4.문제3의 실행결과는 판매가 된 제품들의 결과를 보여주고 있다.
판매가 되지 않은 제품까지 포함해서 제품명과 판매수량을 출력하시오.(sample DB)*/
select 제품명, 판매수량
from 제품 left outer join 판매 -- 왼쪽에 있는 테이블 기준으로.
on 제품.제품번호=판매.판매번호

/*5.문제4의 조인을 판매실적 기준으로 outer join하시오.*/
select 제품명, 판매수량
from 제품 right outer join 판매 --오른쪽에 있는 테이블 기준으로
on 제품.제품번호=판매.판매번호

/*6.titles테이블과 sales테이블에서 판매가 되지 않은 책을 포함하여 title과 qty를 출력하시오.(pubs)*/
select title,qty
from titles t left outer join sales s 
on t.title_id=s.title_id

/*7.titleauthor테이블에서 
공동저자 각각의 저자코드와 책코드를 출력하시오.*/
select* from titleauthor --이렇게 두개를 동시에 출력해서 데이터 파악부터 한다.
select* from titleauthor

select 저자1.au_id 저자1, 저자2.au_id 저자2, 저자1.title_id 책코드
from titleauthor 저자1 join titleauthor 저자2
on 저자1.title_id = 저자2.title_id

-- 중복 없애기
select 저자1.au_id 저자1, 저자2.au_id 저자2, 저자1.title_id 책코드
from titleauthor 저자1 join titleauthor 저자2
on 저자1.title_id = 저자2.title_id
where 저자1.au_id > 저자2.au_id -- 한쪽이 큰것만 뜨므로 중복이 없어진다.