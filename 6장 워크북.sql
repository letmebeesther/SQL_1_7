-- 6�� ��ũ�� 7p

/*2. stores���̺�, sales���̺�, titles���̺��� �����Ͽ� 
stor_name, title_id, qty�� ����Ͻÿ�.(pubs����)*/

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

--��Ī �ٿ��� ����ϱ�
select stor_name,st.title_id,qty
from titles st join sales s -- ������ st, s�� �ٲ㼭 �θ�����
on st.title_id=s.title_id
join stores
on stores.stor_id=s.stor_id

/*3.��ǰ ���̺�� �Ǹ� ���̺����Ͽ� 
��ǰ��� �Ǹż����� ����Ͻÿ�.(sampleDB)*/

select*
from ��ǰ

select*
from �Ǹ�

select ��ǰ��, �Ǹż���
from ��ǰ inner join �Ǹ� -- inner join = join ���� ����
on ��ǰ.��ǰ��ȣ=�Ǹ�.�ǸŹ�ȣ

/*4.����3�� �������� �ǸŰ� �� ��ǰ���� ����� �����ְ� �ִ�.
�ǸŰ� ���� ���� ��ǰ���� �����ؼ� ��ǰ��� �Ǹż����� ����Ͻÿ�.(sample DB)*/
select ��ǰ��, �Ǹż���
from ��ǰ left outer join �Ǹ� -- ���ʿ� �ִ� ���̺� ��������.
on ��ǰ.��ǰ��ȣ=�Ǹ�.�ǸŹ�ȣ

/*5.����4�� ������ �ǸŽ��� �������� outer join�Ͻÿ�.*/
select ��ǰ��, �Ǹż���
from ��ǰ right outer join �Ǹ� --�����ʿ� �ִ� ���̺� ��������
on ��ǰ.��ǰ��ȣ=�Ǹ�.�ǸŹ�ȣ

/*6.titles���̺�� sales���̺��� �ǸŰ� ���� ���� å�� �����Ͽ� title�� qty�� ����Ͻÿ�.(pubs)*/
select title,qty
from titles t left outer join sales s 
on t.title_id=s.title_id

/*7.titleauthor���̺��� 
�������� ������ �����ڵ�� å�ڵ带 ����Ͻÿ�.*/
select* from titleauthor --�̷��� �ΰ��� ���ÿ� ����ؼ� ������ �ľǺ��� �Ѵ�.
select* from titleauthor

select ����1.au_id ����1, ����2.au_id ����2, ����1.title_id å�ڵ�
from titleauthor ����1 join titleauthor ����2
on ����1.title_id = ����2.title_id

-- �ߺ� ���ֱ�
select ����1.au_id ����1, ����2.au_id ����2, ����1.title_id å�ڵ�
from titleauthor ����1 join titleauthor ����2
on ����1.title_id = ����2.title_id
where ����1.au_id > ����2.au_id -- ������ ū�͸� �߹Ƿ� �ߺ��� ��������.