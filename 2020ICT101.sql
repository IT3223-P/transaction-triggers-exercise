Achira Wijesuriya@DESKTOP-8FO0AKP c:\xampp
# mysql -u root -p
Enter password:
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 12
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> CREATE DATABASE Stocks;
Query OK, 1 row affected (0.001 sec)

MariaDB [(none)]> USE Stocks;
Database changed
MariaDB [Stocks]> CREATE TABLE Laptops (
    -> LT_Model INT PRIMARY KEY,
    -> LT_Speed INT,
    -> LT_RAM INT,
    -> LT_HD INT,
    -> Screen DECIMAL(3,1),
    -> LT_Price DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.016 sec)

MariaDB [Stocks]> CREATE TABLE Personal_Computers (
    -> PC_Model INT PRIMARY KEY,
    -> PC_Speed INT,
    -> PC_RAM INT,
    -> PC_HD INT,
    -> CD_ROM VARCHAR(20),
    -> PC_Price DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.005 sec)

MariaDB [Stocks]> CREATE TABLE Printers (
    -> PR_Model INT PRIMARY KEY,
    -> Colour BOOLEAN,
    -> PR_Type VARCHAR(20),
    -> PR_Price DECIMAL(10,2)
    -> );
Query OK, 0 rows affected (0.008 sec)

MariaDB [Stocks]> CREATE TABLE Products (
    -> Maker CHAR(1),
    -> Model INT,
    -> Type VARCHAR(20),
    -> PRIMARY KEY (Maker, Model)
    -> );
Query OK, 0 rows affected (0.005 sec)

MariaDB [Stocks]> INSERT INTO Laptops VALUES
    -> (2001, 700, 64, 5, 12.1, 1448),
    -> (2002, 800, 96, 10, 15.1, 2584),
    -> (2003, 850, 64, 10, 15.1, 2738),
    -> (2004, 550, 32, 5, 12.1, 999),
    -> (2005, 600, 64, 6, 12.1, 2399),
    -> (2006, 800, 96, 20, 15.7, 2999),
    -> (2007, 850, 128, 20, 15.0, 3099),
    -> (2008, 650, 64, 10, 12.1, 1249),
    -> (2009, 750, 256, 20, 15.1, 2599),
    -> (2010, 366, 64, 10, 12.1, 1499);
Query OK, 10 rows affected (0.002 sec)
Records: 10  Duplicates: 0  Warnings: 0

MariaDB [Stocks]> INSERT INTO Personal_Computers VALUES
    -> (1001, 700, 64, 10, '48XCD', 799),
    -> (1002, 1500, 128, 60, '12XCD', 2499),
    -> (1003, 866, 128, 20, '8XCD', 1999),
    -> (1004, 866, 64, 10, '12XCD', 999),
    -> (1005, 1000, 128, 20, '12XCD', 1499),
    -> (1006, 1300, 256, 40, '16XCD', 2119),
    -> (1007, 1400, 128, 80, '12XCD', 2299),
    -> (1008, 700, 64, 30, '24XCD', 999),
    -> (1009, 1200, 128, 80, '16XCD', 1699),
    -> (1010, 750, 64, 30, '40XCD', 699),
    -> (1011, 1100, 128, 60, '16XCD', 1299),
    -> (1012, 350, 64, 7, '48XCD', 799),
    -> (1013, 733, 256, 60, '12XCD', 2499);
Query OK, 13 rows affected (0.002 sec)
Records: 13  Duplicates: 0  Warnings: 0

MariaDB [Stocks]> INSERT INTO Printers VALUES
    -> (3001, true, 'ink-jet', 231),
    -> (3002, true, 'ink-jet', 267),
    -> (3003, false, 'laser', 390),
    -> (3004, true, 'ink-jet', 439),
    -> (3005, true, 'bubble', 200),
    -> (3006, true, 'laser', 1999),
    -> (3007, false, 'laser', 350);
Query OK, 7 rows affected (0.002 sec)
Records: 7  Duplicates: 0  Warnings: 0

MariaDB [Stocks]> INSERT INTO Products VALUES
    -> ('A', 1001, 'pc'),
    -> ('A', 1002, 'pc'),
    -> ('A', 1003, 'pc'),
    -> ('A', 2004, 'laptop'),
    -> ('A', 2005, 'laptop'),
    -> ('A', 2006, 'laptop'),
    -> ('B', 1004, 'pc'),
    -> ('B', 1005, 'pc'),
    -> ('B', 1006, 'pc'),
    -> ('B', 2001, 'laptop'),
    -> ('B', 2002, 'laptop'),
    -> ('B', 2003, 'laptop'),
    -> ('C', 1007, 'pc'),
    -> ('C', 1008, 'pc'),
    -> ('C', 2008, 'laptop'),
    -> ('C', 2009, 'laptop'),
    -> ('C', 3002, 'printer'),
    -> ('C', 3003, 'printer'),
    -> ('C', 3006, 'printer'),
    -> ('D', 1009, 'pc'),
    -> ('D', 1010, 'pc'),
    -> ('D', 1011, 'pc'),
    -> ('D', 2007, 'laptop'),
    -> ('E', 1012, 'pc'),
    -> ('E', 1013, 'pc'),
    -> ('E', 2010, 'laptop'),
    -> ('F', 3001, 'printer'),
    -> ('F', 3004, 'printer'),
    -> ('G', 3005, 'printer'),
    -> ('H', 3007, 'printer');
Query OK, 30 rows affected (0.012 sec)
Records: 30  Duplicates: 0  Warnings: 0

MariaDB [Stocks]> SELECT * FROM Laptops WHERE LT_Speed > 600;
+----------+----------+--------+-------+--------+----------+
| LT_Model | LT_Speed | LT_RAM | LT_HD | Screen | LT_Price |
+----------+----------+--------+-------+--------+----------+
|     2001 |      700 |     64 |     5 |   12.1 |  1448.00 |
|     2002 |      800 |     96 |    10 |   15.1 |  2584.00 |
|     2003 |      850 |     64 |    10 |   15.1 |  2738.00 |
|     2006 |      800 |     96 |    20 |   15.7 |  2999.00 |
|     2007 |      850 |    128 |    20 |   15.0 |  3099.00 |
|     2008 |      650 |     64 |    10 |   12.1 |  1249.00 |
|     2009 |      750 |    256 |    20 |   15.1 |  2599.00 |
+----------+----------+--------+-------+--------+----------+
7 rows in set (0.001 sec)

MariaDB [Stocks]> SELECT * FROM Laptops WHERE LT_RAM = 64;
+----------+----------+--------+-------+--------+----------+
| LT_Model | LT_Speed | LT_RAM | LT_HD | Screen | LT_Price |
+----------+----------+--------+-------+--------+----------+
|     2001 |      700 |     64 |     5 |   12.1 |  1448.00 |
|     2003 |      850 |     64 |    10 |   15.1 |  2738.00 |
|     2005 |      600 |     64 |     6 |   12.1 |  2399.00 |
|     2008 |      650 |     64 |    10 |   12.1 |  1249.00 |
|     2010 |      366 |     64 |    10 |   12.1 |  1499.00 |
+----------+----------+--------+-------+--------+----------+
5 rows in set (0.000 sec)

MariaDB [Stocks]> SELECT P.Maker, P.Type FROM Products P JOIN Laptops L ON P.Model = L.LT_Model ORDER BY L.LT_Price ASC LIMIT 1;
+-------+--------+
| Maker | Type   |
+-------+--------+
| A     | laptop |
+-------+--------+
1 row in set (0.000 sec)

MariaDB [Stocks]> SELECT * FROM Personal_Computers ORDER BY PC_Price DESC LIMIT 1;
+----------+----------+--------+-------+--------+----------+
| PC_Model | PC_Speed | PC_RAM | PC_HD | CD_ROM | PC_Price |
+----------+----------+--------+-------+--------+----------+
|     1013 |      733 |    256 |    60 | 12XCD  |  2499.00 |
+----------+----------+--------+-------+--------+----------+
1 row in set (0.000 sec)

MariaDB [Stocks]> SELECT PR_Model, PR_Price FROM Printers WHERE Colour = TRUE;
+----------+----------+
| PR_Model | PR_Price |
+----------+----------+
|     3001 |   231.00 |
|     3002 |   267.00 |
|     3004 |   439.00 |
|     3005 |   200.00 |
|     3006 |  1999.00 |
+----------+----------+
5 rows in set (0.000 sec)

MariaDB [Stocks]> SELECT DISTINCT Maker FROM Products WHERE Type = 'laptop';
+-------+
| Maker |
+-------+
| A     |
| B     |
| C     |
| D     |
| E     |
+-------+
5 rows in set (0.000 sec)

MariaDB [Stocks]> SELECT DISTINCT Maker FROM Products WHERE Type = 'printer';
+-------+
| Maker |
+-------+
| C     |
| F     |
| G     |
| H     |
+-------+
4 rows in set (0.000 sec)

MariaDB [Stocks]> SELECT P.Maker FROM Products P JOIN Laptops L ON P.Model = L.LT_Model ORDER BY L.LT_Speed DESC LIMIT 1;
+-------+
| Maker |
+-------+
| B     |
+-------+
1 row in set (0.000 sec)

MariaDB [Stocks]> SELECT P.Maker, PC.PC_Price FROM Products P JOIN Personal_Computers PC ON P.Model = PC.PC_Model ORDER BY PC.PC_Speed DESC LIMIT 1;
+-------+----------+
| Maker | PC_Price |
+-------+----------+
| A     |  2499.00 |
+-------+----------+
1 row in set (0.000 sec)

MariaDB [Stocks]> SELECT PC_RAM FROM Personal_Computers ORDER BY PC_Speed ASC LIMIT 1;
+--------+
| PC_RAM |
+--------+
|     64 |
+--------+
1 row in set (0.000 sec)

MariaDB [Stocks]> DELIMITER //
MariaDB [Stocks]> CREATE TRIGGER check_pc_ram
    -> BEFORE INSERT ON Personal_Computers
    -> FOR EACH ROW
    -> BEGIN
    ->     IF NEW.PC_RAM NOT IN (64, 128, 256) THEN
    ->         SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'RAM must be 64, 128, or 256';
    ->     END IF;
    -> END //
Query OK, 0 rows affected (0.014 sec)

MariaDB [Stocks]> DELIMITER ;
MariaDB [Stocks]> CREATE TABLE Printer_Backup (
    ->     PR_Model INT,
    ->     Old_Price INT
    -> );
Query OK, 0 rows affected (0.015 sec)

MariaDB [Stocks]> DELIMITER //
MariaDB [Stocks]> CREATE TRIGGER double_printer_price
    -> BEFORE UPDATE ON Printers
    -> FOR EACH ROW
    -> BEGIN
    ->     INSERT INTO Printer_Backup(PR_Model, Old_Price)
    ->     VALUES (OLD.PR_Model, OLD.PR_Price);
    ->     SET NEW.PR_Price = OLD.PR_Price * 2;
    -> END //
Query OK, 0 rows affected (0.004 sec)

MariaDB [Stocks]> DELIMITER ;
MariaDB [Stocks]> CREATE TABLE Deleted_Printers (
    ->     PR_Model INT,
    ->     Colour BOOLEAN,
    ->     PR_Type VARCHAR(20),
    ->     PR_Price INT
    -> );
Query OK, 0 rows affected (0.015 sec)

MariaDB [Stocks]> DELIMITER //
MariaDB [Stocks]> CREATE TRIGGER archive_deleted_printers
    -> BEFORE DELETE ON Printers
    -> FOR EACH ROW
    -> BEGIN
    ->     INSERT INTO Deleted_Printers VALUES
    ->     (OLD.PR_Model, OLD.Colour, OLD.PR_Type, OLD.PR_Price);
    -> END //
Query OK, 0 rows affected (0.006 sec)

MariaDB [Stocks]> DELIMITER ;
MariaDB [Stocks]> EXIT;
Bye