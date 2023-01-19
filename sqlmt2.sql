1. insert into tbl_stock (vchr_name, int_quantity, int_price, fk_int_supplier) values ('Mouse', 10, 500, 1);
INSERT 0 1
insert into tbl_stock (vchr_name, int_quantity, int_price, fk_int_supplier) values ('keyboard', 5, 450, 3),('Modem', 10, 1200, 2);
INSERT 0 2
insert into tbl_stock (vchr_name, int_quantity, int_price, fk_int_supplier) values ('Memory', 100, 1500, 5),('Headphone', 50, 750, 4), ('Memory', 2, 3500, 4);
INSERT 0 3
select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |       500 |               1
               2 | keyboard  |            5 |       450 |               3
               3 | Modem     |           10 |      1200 |               2
               4 | Memory    |          100 |      1500 |               5
               5 | Headphone |           50 |       750 |               4
               6 | Memory    |            2 |      3500 |               4
(6 rows)

2. update tbl_stock set int_price = int_price + 1.50;
UPDATE 6
select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(6 rows)

3. select * from tbl_stock where int_price > 1000;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
(3 rows)

4. select * from tbl_stock  order by vchr_name;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
               6 | Memory    |            2 |    3501.5 |               4
               3 | Modem     |           10 |    1201.5 |               2
               1 | Mouse     |           10 |     501.5 |               1
(6 rows)

5. select * from tbl_stock  order by vchr_name limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               5 | Headphone |           50 |     751.5 |               4
               2 | keyboard  |            5 |     451.5 |               3
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)

6. select * from tbl_stock  order by vchr_name desc limit 3;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               3 | Modem     |           10 |    1201.5 |               2
               4 | Memory    |          100 |    1501.5 |               5
(3 rows)

7. select vchr_name,int_quantity,int_price, (int_quantity * int_price) as int_quantity_int_price from tbl_stock;
 vchr_name | int_quantity | int_price | int_quantity_int_price
-----------+--------------+-----------+------------------------
 Mouse     |           10 |     501.5 |                   5015
 keyboard  |            5 |     451.5 |                 2257.5
 Modem     |           10 |    1201.5 |                  12015
 Memory    |          100 |    1501.5 |                 150150
 Headphone |           50 |     751.5 |                  37575
 Memory    |            2 |    3501.5 |                   7003
(6 rows)

8. delete from tbl_stock where fk_int_supplier in (select pk_int_supplier_id from tbl_supplier where vchr_supplier_name = 'Creative');
DELETE 1
select * from tbl_stock;
 pk_int_stock_id | vchr_name | int_quantity | int_price | fk_int_supplier
-----------------+-----------+--------------+-----------+-----------------
               1 | Mouse     |           10 |     501.5 |               1
               2 | keyboard  |            5 |     451.5 |               3
               3 | Modem     |           10 |    1201.5 |               2
               5 | Headphone |           50 |     751.5 |               4
               6 | Memory    |            2 |    3501.5 |               4
(5 rows)

9. insert into tbl_dept(vchr_dept_name, vchr_dept_description) values('Computer Science','CS'), ('Electronics','EC'), ('Commerce', 'CC'),('Arts', 'AR');
INSERT 0 4
select * from tbl_dept;
 pk_int_dept_id |  vchr_dept_name  | vchr_dept_description
----------------+------------------+-----------------------
              1 | Computer Science | CS
              2 | Electronics      | EC
              3 | Commerce         | CC
              4 | Arts             | AR
(4 rows)