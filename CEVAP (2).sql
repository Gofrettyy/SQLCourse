--61
SELECT product_name,category_name,company_name from products
Inner Join order_details on products.product_id=order_details.product_id
Inner Join categories on categories.category_id=products.category_id
Inner Join suppliers on suppliers.supplier_id=products.supplier_id
where quantity =(select MAX(quantity) from order_details ) ;

--62
SELECT * from Customers
SELECT COUNT (Country) From Customers;

--63
select COUNT(*), country FROM customers
GROUP BY country
ORDER BY COUNT(*);

--64
select SUM(od.unit_price*od.quantity) AS totalPrice FROM orders o
INNER JOIN order_details od
ON od.order_id = o.order_id
WHERE o.employee_id=3  AND o.order_date >= '1998.01.01' AND  o.order_date < CURRENT_DATE;


--65
SELECT order_date From orders
SELECT SUM(od.unit_price*od.quantity) AS totalGiro FROM order_details od
INNER JOIN orders o 
ON od.order_id = o.order_id
INNER JOIN products p 
ON od.product_id = p.product_id
where p.product_id=10  AND o.order_date >= '1998.03.01' AND  o.order_date < '1998.06.01';


--66
select e.first_name, COUNT(o.order_id) AS siparis  FROM employees e
INNER JOIN orders o ON o.employee_id = e.employee_id
WHERE o.order_date <= CURRENT_DATE
GROUP BY e.first_name
ORDER BY COUNT(o.order_id);

--67

SELECT c.company_name, od.quantity,o.order_date FROM orders o
RIGHT JOIN order_details od  ON od.order_id=o.order_id
FULL OUTER JOIN customers c ON c.customer_id=o.customer_id
where od.quantity is null;


--68
SELECT company_name,contact_name, address ,city,country FROM customers
where country = 'Brazil'

--69
SELECT contact_name,Country FROM customers
Where not country ='Brazil'

--70
SELECT Contact_name, country FROM customers
Where country ='Spain' OR Country='France' OR Country='Germany'

--71 
SELECT Contact_name , fax From customers
Where Fax is NULL;

--72
SELECT  City FROM customers
SELECT Contact_name, country , City FROM customers
Where city ='London' OR  City='Paris' ;

--73
SELECT Contact_name, contact_title , city  FROM customers 
where contact_title = 'Owner' AND City = 'México D.F.';

--74
SELECT product_name,unit_price FROM products
where product_name like 'C%';

--75
SELECT first_name , last_name ,birth_date FROM employees
where first_name like 'A%';

--76
SELECT company_name, contact_name FROM customers
where company_name like '%Restaurant%';

--77
SELECT product_name,unit_price FROM products
where unit_price BETWEEN 50 AND 100 ;

--78 
SELECT order_id , order_date FROM orders
where order_date >= '1996-07-01' AND order_date < '1996-12-31' ;

--79
SELECT Contact_name, country FROM customers
Where country ='Spain' OR Country='France' OR Country='Germany'

--80
SELECT Contact_name , fax From customers
Where Fax is NULL;

--81
SELECT c.contact_name , c.country From Customers c
ORDER BY c.country ;

--82
SELECT product_name , unit_price From Products
ORDER BY unit_price DESC ;

--83
SELECT product_name , unit_price , units_in_stock From Products
ORDER BY unit_price DESC ;
SELECT product_name , unit_price , units_in_stock From Products
ORDER BY units_in_stock ASC ;

--84
SELECT COUNT(*) FROM products WHERE category_id=1

--85
SELECT COUNT(DISTINCT(ship_country))FROM orders






























