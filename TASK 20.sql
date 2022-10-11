use org;

select * from Worker;

--creating a synonym for worker

create synonym work for Worker;

select * from work;


--creating a sequence

create table interns
(
ID int,
IName varchar(20)
)

create sequence ID as int start with 1000 increment by 2;

insert into interns values(NEXT VALUE FOR ID,'Johnny')
insert into interns values(NEXT VALUE FOR ID,'Ram')
insert into interns values(NEXT VALUE FOR ID,'Payal')
insert into interns values(NEXT VALUE FOR ID,'Dwayne')
insert into interns values(NEXT VALUE FOR ID,'Deen')

select * from interns

create table trainers
(
TID int,
TName varchar(20)
)

--altering the sequence
alter sequence ID restart with 100 increment by 1

insert into trainers values(NEXT VALUE FOR ID,'ramesh')
insert into trainers values(NEXT VALUE FOR ID,'rakesh')
insert into trainers values(NEXT VALUE FOR ID,'Ragini')
insert into trainers values(NEXT VALUE FOR ID,'Ramya')

select * from trainers

--drop sequence

drop sequence ID

--Index
--clustered index on trainee table
create clustered index ind_TID on interns(ID)

--Non clustered index on trainee table
create index ind_TName on interns(IName)


--VIEWS

--1)Simple View
create view salary_view
as
select * from Worker where SALARY>80000;

--Retrieve the view
select * from salary_view

--2)Complex view

create view bonus_view 
as
select * from Worker as wo inner join Bonus as b on wo.WORKER_ID = b.WORKER_REF_ID;

select * from bonus_view


--STRING FUNCTION
--len
SELECT * FROM Worker where LEN(FIRST_NAME)> 5;
--concat
SELECT CONCAT('DOT', 'NET') as Concat;
--REVERSE
SELECT REVERSE('DOT NET')as Reverse;
--REPLICATE
SELECT REPLICATE('SQL Tutorial ', 4) as Replicate;
--UPPER
SELECT UPPER('dot net') as ToUpper;
--trim
SELECT TRIM('    dotnet     ') AS TrimmedString;


--MATH FUNCTION
-- absolute value
Select abs(-6) as ABSOLUTE; 
--SIGN
Select sign(10) as Sign;
--FLOOR VALUE
Select floor(5.7)as floor; 
--POWER
Select power(2,5)as power; 
--DECIMAL
Select round(5.7345,2) as Round; 
--sqrt
Select sqrt(9) as squareroot; 

--DATE AND TIME
SELECT DAY(JOINING_DATE) AS DayOfMonth from Worker;

--Aggregate
SELECT SUM(SALARY) AS Total_SALARY FROM Worker;
