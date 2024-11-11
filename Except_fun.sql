CREATE TABLE public.customer  
(  
    id integer NOT NULL,  
    name text COLLATE pg_catalog."default" NOT NULL,  
    age integer NOT NULL,  
    salary real NOT NULL  
)  
  CREATE TABLE public."orders"  
(  
    order_id integer NOT NULL,  
    date date NOT NULL,  
    cust_id integer NOT NULL,  
    amount real NOT NULL,  
    CONSTRAINT "order_pkey" PRIMARY KEY ("order_id")  
)  
INSERT INTO public.customer(  
    id, name, age, salary)  
    VALUES (101, 'John', 24, 20000)  
    (102, 'Mike', 22, 25000),  
    (103, 'Emily', 24, 22000),  
    (104, 'James', 20, 30000),  
    (105, 'Sophia', 21, 35000);  

INSERT INTO public.orders(  
    order_id, date, cust_id, amount)  
    VALUES (1, '2009-10-08', 103, 1500),  
    (2, '2009-11-06', 103, 1000),  
    (3, '2009-12-05', 102, 2500),  
    (4, '2009-09-08', 101, 1800);  

SELECT  id, name, amount, date  
   FROM customer  
   LEFT JOIN orders  
   ON customer.id = orders. order_id  
EXCEPT  
   SELECT  id, name, amount, date  
   FROM customer  
   RIGHT JOIN orders  
   ON customer.id = orders. order_id;  


