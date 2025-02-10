Select DEPTNO, EMPNO, MGR
from EMP;
--2
SELECT *
from EMP;
--3
SELECT sal * 12
from EMp;

select (sal+250) * 12
from EMP;

SELECT SAL * 12 as Roczna
from EMP;

SELECT SAL * 12 as "R pensja"
from EMP;

SELECT EMPNO || Ename as EMPLOYEE
from EMP;

SELECT Ename ||' pracuje w '|| DEPTNO as EMPLOYEE
from EMP;

sELECT Ename, (sal * 12 + NVL(comm,0)) from EMP;

SELECT deptno
FROM Emp;

SELECT DISTINCT deptno
FROM Emp;

SELECT distinct  DEPTNO, JOB
from EMP;

SELECT *
from EMP
order by ENAME;

SELECT *
from EMP
order by HIREDATE desc;

SELECT *
from EMP
order by DEPTNO asc , Sal desc;

SELECT *
from EMP
where JOB = 'CLERK';

SELECT deptno, ENAME
from EMP
where DEPTNO > 20;

SELECT *
from EMP
where SAL < COMM;

SELECT *
from EMP
where SAL between 1000 and 2000;

SELECT *
from EMP
where MGR IN (7902, 7566, 7788);

SELECT *
from EMP
WHERE ename LIKE 'S%';

SELECT *
FROM emp
WHERE LENGTH(ename) = 4;

SELECT *
FROM emp
WHERE mgr IS NULL;

SELECT *
FROM emp
WHERE NOT sal BETWEEN 1000 AND 2000;

SELECT *
FROM emp
WHERE NOT ename LIKE 'M%';

SELECT *
FROM emp
WHERE mgr IS NOT NULL;

SELECT *
FROM emp
WHERE job = 'CLERK' AND sal between 1000 and 2000;

SELECT *
FROM emp
WHERE job = 'CLERK' or sal not between 1000 and 2000;

SELECT *
FROM emp
where (sal > 1500 and job = 'MANAGER') or job = 'SALESMAN';

SELECT *
FROM emp
WHERE job = 'MANAGER' OR (job = 'SALESMAN' AND sal >1500);

SELECT *
FROM emp
WHERE job = 'MANAGER' OR (job = 'CLERK' AND deptno = 10);

SELECT *
FROM emp
WHERE deptno = 10 OR deptno = 20 ORDER BY ename;

SELECT ename
FROM emp
WHERE ename LIKE '%TH%' OR ename LIKE '%LL%';

SELECT ename, deptno, hiredate
FROM emp
WHERE EXTRACT (YEAR FROM hiredate) = 1980;

SELECT ename, sal * 12, comm
FROM emp
WHERE sal > NVL(comm,0) ORDER BY sal DESC, ename;
