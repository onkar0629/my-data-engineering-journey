-- =============================
use Practice;
select * from customers limit 5;
select * from departments limit 5;
select * from employees limit 5;
select * from orders limit 5;
select * from products limit 5;
-- =============================

-- 1. 
select * from customers;

-- 2. 
select customer_id , customer_name from customers;

-- 3.
select customer_name, city, state from customers;

-- 4. 
select segment from customers;

-- 5. 
select customer_code, customer_code ,region from customers;

-- 6. 
select customer_id,customer_code,customer_name,city,state,region from customers;

-- 7.
select customer_name,segment from customers;

-- 8.
select state from customers;

-- 9.
select customer_name,city, region,segment from customers;

-- 10.
select * from customers limit 10;

-- 11.
SELECT * from customers where city = 'Pune';

-- 12. 
select customer_id , customer_name ,city from customers where city = 'Mumbai';

-- 13.
select * from customers where region = 'South';

-- 14.
select * from customers where segment = 'Consumer';

-- 15.
select * from customers where state = 'Delhi' AND segment = 'Corporate';

-- 16.
select * from customers where state = 'Maharashtra';

-- 17.
select * from customers where city = 'Pune' or city ='Mumbai';

-- 18.
select * from customers where segment <> 'consumer';

-- 19.
select customer_name, city ,state from customers where region = 'North';

-- 20.
select * from customers where city = 'Bengaluru' AND segment = 'Home Office';

-- 21.
select * from customers where (city = 'Pune' OR city = 'Bengaluru') AND segment = 'Consumer';

-- 22.
select * from customers where state = 'Maharashtra' AND region = 'West';

-- 23. 
select * from customers where region <> 'South';

-- 24.
select * from customers where city = 'Delhi' OR city = 'Jaipur' OR city = 'Lucknow';

-- 25.
select * from customers where segment = 'Corporate' OR segment = 'Home Office';

-- 26.
select * from customers where city in ('Pune','Mumbai','Delhi');

-- 27.
select * from customers where segment in ('Consumer','Corporate');

-- 28.
select * from customers where segment not in ('Home Office');

-- 29.
select * from customers where state in ('Maharashtra','Delhi','Karnataka');

-- 30
select * from customers where region not in ('South');

-- 31
select * from orders where quantity between 3 and 7;

-- 32 
select * from orders where sales between 5000 and 15000;

-- 33
select * from orders where discount between 0.05 and 0.15;

-- 34
select * from employees where salary between 50000 and 80000;

-- 35 
select * from employees where department_id NOT IN (1 , 2, 3 );

-- 36
select * from customers where customer_name like 'Customer_1';

-- 37 
select * from customers where customer_name like '%5';

-- 38
select * from customers where customer_name like '%25%';

-- 39
select * from customers where city like 'P%';

-- 40
select * from customers where state like '%a';

-- 41
select * from customers where customer_name like '%10%';

-- 42
select * from customers where city NOT LIKE 'M%';

-- 43
select * from customers where state like '%Pradesh%';

-- 44
select * from customers where region like 'S%';

-- 45
select * from customers where city like 'P%' AND segment = 'Consumer';

-- 46
select * from customers where customer_name like 'Customer_2' ;

-- 47
select * from customers where city like 'B%' OR city like 'H%';

-- 48
select * from customers where state like '%shtra';

-- 49 
select * from customers where region not like 'NORTH';

-- 50 
select * from customers where customer_name like '%7%';

-- 51 
select distinct city from customers;

-- 52
select distinct state from customers;

-- 53
select distinct region from customers;

-- 54
select distinct segment from customers;

-- 55
select count(distinct city) from customers;

-- 56
select * from customers order by customer_name;

-- 57
select * from customers order by customer_name desc;

-- 58
select * from employees order by salary desc;

-- 59 
select * from products order by unit_price ;

-- 60 
select * from customers order by state asc ,city desc;

-- 61
select * from customers limit 5;

-- 62
select * from customers limit 10;

-- 63 
select * from employees order by salary desc limit 5;

-- 64 
select * from products order by unit_price desc limit 10;

-- 65
select * from orders order by sales desc limit 5;

-- 66
select * from employees order by salary limit 1,1;

-- 67 
select * from products order by unit_price limit 1,2;

-- 68 
select * from customers order by customer_name limit 3;

-- 69
select * from employees order by employee_id desc limit 5;

-- 70 
select * from orders order by profit desc limit 10;

-- 71
select count(*) from customers;

-- 72
select count(*) from products;

-- 73
select count(*) from orders;

-- 74
select count(*) from employees;

-- 75
select count(*) from departments;

-- 76
select count(region) from customers where region = 'West';

-- 77
select count(category) from products where category = 'Technology';



-- =============================
use Practice;
select * from customers limit 5;
select * from departments limit 5;
select * from employees limit 5;
select * from orders limit 5;
select * from products limit 5;
-- =============================




