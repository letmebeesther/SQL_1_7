--6���� ����
 select ����, avg(����)��հ���
 from ��ǰ
 where ����>=50000 --���� ��ǰ ����
 group by ����
 having avg(����)>=50000 -- �׷��� ����

 select ����,��,avg(����)�������
 from ����
 group by ����,��
 order by ����,��

 -- ����, �� ��
 select ����,��,avg(����)�������
 from ����
 group by ����,�� with rollup --�߰�����, ��ü����

 --��, ���� ��
 select ��,����,avg(����)�������
 from ����
 group by ��,���� with rollup --�߰�����, ��ü����

 --��,���� ��/����, �� �� ���ÿ�
  select ��,����,avg(����)�������
 from ����
 group by ��,���� with cube