create database sqlatch;

use sqlatch;

create table DEPT(
 deptno     numeric(2),
 dname      varchar(14) UNIQUE,
 loc        varchar(13) NOT NULL,
 constraint dept_deptno_pk PRIMARY KEY(deptno)
);
create table EMP(
 empno    	 numeric(4),
 ename    	 varchar(10)  NOT NULL,
 job      	 varchar(9)   NOT NULL,
 mgr      	 numeric(4),
 hiredate 	 date         NOT NULL,
 sal      	 numeric(7,2) NOT NULL,
 comm     	 numeric(7,2),
 deptno          numeric(2)   NOT NULL,
 constraint emp_empno_pk  PRIMARY KEY (empno),
 constraint emp_deptno_fk FOREIGN KEY (deptno) REFERENCES DEPT(deptno)
);

insert into DEPT values
(10, 'ACCOUNTING' , 'NEW YORK'),
(20,  'RESEARCH'   , 'DALLAS'), 
(30, 'SALES'      , 'CHICAGO'),
(40, 'OPERATIONS' , 'BOSTON' )
;

insert into EMP 
values 
(7839, 'KING'  , 'PRESIDENT',null, '1981-11-17', 5000, null ,10),
(7698, 'BLAKE' , 'MANAGER'  ,7839, '1981-05-01', 2850, null ,30),
(7782, 'CLARK' , 'MANAGER'  ,7839, '1981-06-09', 2450, null ,10),
(7566, 'JONES' , 'MANAGER'  ,7839, '1981-04-02', 2975, null ,20),
(7654, 'MARTIN', 'SALESMAN' ,7698, '1981-09-28', 1250, 1400 ,30),
(7499, 'ALLEN' , 'SALESMAN' ,7698, '1981-02-20', 1600,  800 ,30),
(7844, 'TURNER', 'SALESMAN' ,7698, '1981-09-08', 1500,    0 ,30),
(7900, 'JAMES' , 'CLERK'    ,7698, '1981-12-03',  950, null ,30),
(7521, 'WARD'  , 'SALESMAN' ,7698, '1981-02-22', 1250,  500 ,30),
(7902, 'FORD'  , 'ANALYST'  ,7566, '1981-12-03', 3000, null ,20),
(7369, 'SMITH' , 'CLERK'    ,7902, '1980-12-17',  800, null ,20), 
(7788, 'SCOTT' , 'ANALYST'  ,7566, '1982-12-09', 3000, null ,20),
(7876, 'ADAMS' , 'CLERK'    ,7788, '1983-01-12', 1100, null ,20),
(7934, 'MILLER', 'CLERK'    ,7782, '1982-01-23', 1300, null ,10);  