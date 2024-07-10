mysql: [Warning] C:\Program Files\MySQL\MySQL Server 8.0\bin\mysql.exe: ignoring option '--no-beep' due to invalid value ''.
Enter password: ****
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 8
Server version: 8.0.19 MySQL Community Server - GPL

Copyright (c) 2000, 2020, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> use EMPLOYEE;
Database changed
mysql> SHOW TABLES;
+--------------------+
| Tables_in_employee |
+--------------------+
| course             |
| department         |
| employee           |
| faculty            |
| orders             |
| products           |
+--------------------+
6 rows in set (0.18 sec)

mysql> SELECT * FROM ORDERS NATURAL JOIN PRODUCTS;
+---------+-------------+------------+--------------+------------+-----------+-------------+
| orderid | ordername   | costumerid | costumername | oredrdate  | PRODUCTID | PRODUCTNAME |
+---------+-------------+------------+--------------+------------+-----------+-------------+
| CAD1    | RANIYA      | AB1        | HADIYA       | 2023-05-05 | ABC1      | POWDER      |
| CAD3    | POWDER      | AB3        | HASNA        | 2023-05-05 | ABC2      | SUNSCREEN   |
| CAD5    | SUNSCREEN   | AB5        | RANIYA       | 2023-05-05 | ABC3      | BAG         |
| CAD7    | BAG         | AB7        | FIDHA        | 2023-05-05 | ABC4      | MOISTURIZER |
| CAD9    | MOISTURIZER | AB9        | NISHATH      | 2023-05-05 | ABC5      | RANIYA      |
+---------+-------------+------------+--------------+------------+-----------+-------------+
5 rows in set (0.54 sec)

mysql> SELEST * FROM COURSE;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'SELEST * FROM COURSE' at line 1
mysql> SELECT * FROM COURSE;
+---------+----------+------------+
| STAFFID | COURSEID | COURSENAME |
+---------+----------+------------+
| AB1     | 1A2      | DBMS       |
| AB2     | 1A3      | ACN        |
| AB3     | 1A4      | AI         |
| AB4     | 1A5      | AOS        |
| AB5     | 1A6      | JAVA       |
+---------+----------+------------+
5 rows in set (0.04 sec)

mysql> DESC COURSE;
+------------+-------------+------+-----+---------+-------+
| Field      | Type        | Null | Key | Default | Extra |
+------------+-------------+------+-----+---------+-------+
| STAFFID    | varchar(10) | NO   | PRI | NULL    |       |
| COURSEID   | varchar(20) | YES  |     | NULL    |       |
| COURSENAME | varchar(10) | YES  |     | NULL    |       |
+------------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> DESC FACULTY;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| FNO     | varchar(10) | NO   | PRI | NULL    |       |
| FNAME   | varchar(20) | YES  |     | NULL    |       |
| STAFFID | varchar(10) | YES  | MUL | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM FACULTY;
+-----+--------+---------+
| FNO | FNAME  | STAFFID |
+-----+--------+---------+
| A1  | RANIYA | AB1     |
| A2  | FIDHA  | AB2     |
| A3  | HADIYA | AB3     |
+-----+--------+---------+
3 rows in set (0.28 sec)

mysql> SELECT * FROM PRODUCTS  NATURAL JOIN ORDERS;
+---------+-----------+-------------+-------------+------------+--------------+------------+
| ORDERID | PRODUCTID | PRODUCTNAME | ordername   | costumerid | costumername | oredrdate  |
+---------+-----------+-------------+-------------+------------+--------------+------------+
| CAD1    | ABC1      | POWDER      | RANIYA      | AB1        | HADIYA       | 2023-05-05 |
| CAD3    | ABC2      | SUNSCREEN   | POWDER      | AB3        | HASNA        | 2023-05-05 |
| CAD5    | ABC3      | BAG         | SUNSCREEN   | AB5        | RANIYA       | 2023-05-05 |
| CAD7    | ABC4      | MOISTURIZER | BAG         | AB7        | FIDHA        | 2023-05-05 |
| CAD9    | ABC5      | RANIYA      | MOISTURIZER | AB9        | NISHATH      | 2023-05-05 |
+---------+-----------+-------------+-------------+------------+--------------+------------+
5 rows in set (0.00 sec)

mysql> SELECT * FROM ORDERS left JOIN PRODUCTS;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql>mysql> CREATE VIEW PRODUCTSVIEW AS SELECT ORDERID,PRODUCTNAME;
ERROR 1054 (42S22): Unknown column 'ORDERID' in 'field list'
mysql> CREATE VIEW PRODUCTSVIEW AS SELECT PRODUCTID,PRODUCTNAME FROM PRODUCTS;
Query OK, 0 rows affected (0.18 sec)

mysql> SELECT * FROM PRODUCTSVIEW;
+-----------+-------------+
| PRODUCTID | PRODUCTNAME |
+-----------+-------------+
| ABC1      | POWDER      |
| ABC2      | SUNSCREEN   |
| ABC3      | BAG         |
| ABC4      | MOISTURIZER |
| ABC5      | RANIYA      |
+-----------+-------------+
5 rows in set (0.01 sec)

mysql>
