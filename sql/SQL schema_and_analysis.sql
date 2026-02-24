-- DDL (create tables)
create table products (productid int primary key,
                       productname varchar (200),
					   category varchar(50),
					   price decimal (10,2));

create table customers (customerid int primary key,
                        firstname varchar (50),
						lastname varchar (50),
						email varchar (100),
						phone varchar (15));

create table employees (employeeid int primary key,
                        firstname varchar (50),
						lastname varchar (50),
						designation varchar (50),
						email varchar (100),
						phone int);

create table sales (saleid int primary key,
                   productid int, 
			       customerid int,
				   employeeid int,
				   saledate date,
				   quantity int,
				   total_amount decimal(10,2),
				   foreign key (productid) references products(productid),
				   foreign key (customerid) references customers(customerid),
				   foreign key (employeeid) references employees(employeeid));

-- DML (insert)

insert into products(productid, productname, category, price)
values (1,'Laptop','Electronic',1200.00),
       (2, 'Smartphone','Electronic',20000.00),
	   (3, 'Desk Chair','Furniture',1500.00),
	   (4,'Water Bottle','Utensil',400.00),
	   (5,'Lamp','Accessory',4000.00),
	   (6,'Notepad','Stationary',899.00),
	   (7,'Vase','Decor',2999.00),
       (8,'RoomSpray','Fragnance',645.00);

select * from products

insert into customers(customerid, firstname, lastname, email, phone)
values(1,'Chris','Mathew','chris1998@gmail.com',5551234),
(2,'John','Smith','johnsmith@gmail.com',5554321),
(3,'Yuji','Itadori','yuji@gmail.com',5559871),
(4,'Sasuke','Uzumaki','sasukeuz@gmail.com',5555672),
(5,'Kanroji','usai','kanroji@gmail.com',5552421),
(6,'Nezuko','Hashira','nezuko@gmail.com',42145321)

select * from customers;

insert into employees (employeeid, firstname, lastname, designation, email, phone)
values(1,'Alice','Johnsone','Sales Rep','alice.johnson@gmail.com',5559876),
      (2,'Bob','Williams','Manager','bob.will@gmail.com',5558965),
	  (3,'Macy','Spencer','Accountant','macy.spen@gmail.com',55584765)
      (4,'Dob','Manney','Executive','Dob.Mann@gmail.com',5552455),

Alter table employees
Add column Grade varchar(2)

update employees set grade = 'A1' where designation = 'Boss'

update employees set grade = 'B2' where designation = 'Manager'

update employees set grade = 'C1' where designation = 'Executive'

update employees set grade = 'B1' where designation = 'Sales Rep'

select * from employees

insert into sales(saleid,productid,customerid,employeeid,saledate,quantity, total_amount)
values (1,1,1,1,'2024-01-01',2,2400.00),
       (2,2,2,2,'2024-02-01',4,20000.00),
	   (3,3,1,2,'2024-03-01',1,45000.00),
	   (5,8,6,3,'2024-04-01',9,3542.00),
       (6,7,5,4,'2024-07-01',7,5534.00),
       (7,6,5,2,'2024-05-01',10,5425.00)

select * from sales

alter table customers
alter column phone type varchar(9);

-- Analysis queries

--1. Top selling products
select productname, sum(quantity) as total_sold
from sales
join products on sales.productid = products.productid
group by productname
order by 2 desc

--2. Top sales per product category
select category, sum(total_amount) as total_sales
from sales
join products on sales.productid = products.productid
group by category

--3. High to low price item based on category
select productname,category,price from products order by price desc;

--4. Prices based on Category
select category, string_agg(price::text,', ') from products group by category;

--5. Most brought product
select sales.productid, products.productname,
max(sales.quantity) as most_brought from sales
join products on sales.productid = products.productid
group by products.productname,sales.productid
order by most_brought desc;

--6. Total sales in each quarter
select extract(quarter from saledate)as Quarter, 
quantity, sum(total_amount) 
from sales group by quantity,saledate, total_amount
order by total_amount desc;

--7. Total sales in each quarter (More sorted)
select concat(extract(year from saledate),'-Q', extract(quarter from saledate))as Quarter, 
quantity, sum(total_amount) 
from sales group by quantity,saledate, total_amount
order by total_amount desc;

--8. Customer with no purchase
select customers.customerid, customers.firstname, customers.phone, 
sales.total_amount from customers
left join sales on sales.customerid = customers.customerid 
where total_amount is null;

--9. Total sales per quarter
with my_cte as
(select extract(quarter from saledate)as quarter,
        extract(year from saledate) as year,
		total_amount from sales)
select year, quarter, sum(total_amount) from my_cte	
group by year,quarter, total_amount
order by total_amount desc;

-- 10. Employees with High Grade
Select firstname, lastname, designation 
from employees order by grade;


