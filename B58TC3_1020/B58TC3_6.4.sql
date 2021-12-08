MariaDB [feladat1]> CREATE TABLE termekek(
    -> tkod INT PRIMARY KEY,
    -> nev VARCHAR(50) NOT NULL,
    -> ear INT CHECK (EAR > 0),
    -> kategoria CHAR(20));
Query OK, 0 rows affected (0.011 sec)

MariaDB [feladat1]> describe termekek;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| tkod      | int(11)     | NO   | PRI | NULL    |       |
| nev       | varchar(50) | NO   |     | NULL    |       |
| ear       | int(11)     | YES  |     | NULL    |       |
| kategoria | char(20)    | YES  |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
4 rows in set (0.013 sec)

MariaDB [feladat1]> ALTER TABLE termekek
    -> MODIFY COLUMN tkod INT AUTO_INCREMENT PRIMARY KEY;
ERROR 1068 (42000): Multiple primary key defined
MariaDB [feladat1]> ALTER TABLE termekek
    -> MODIFY COLUMN tkod INT AUTO_INCREMENT;
Query OK, 0 rows affected (0.025 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [feladat1]> describe termekek;
+-----------+-------------+------+-----+---------+----------------+
| Field     | Type        | Null | Key | Default | Extra          |
+-----------+-------------+------+-----+---------+----------------+
| tkod      | int(11)     | NO   | PRI | NULL    | auto_increment |
| nev       | varchar(50) | NO   |     | NULL    |                |
| ear       | int(11)     | YES  |     | NULL    |                |
| kategoria | char(20)    | YES  |     | NULL    |                |
+-----------+-------------+------+-----+---------+----------------+
4 rows in set (0.010 sec)

MariaDB [feladat1]> INSERT INTO termekek(nev, ear, kategoria)
    -> VALUES('seprü', '1200', 'K1'), ('lapat', '50', 'K1'), ('sör', '250', 'K2'), ('whiskey', '3500', 'K2'), ('Fazek', '4800', 'K3');
Query OK, 5 rows affected (0.004 sec)
Records: 5  Duplicates: 0  Warnings: 0

MariaDB [feladat1]> select * from termekek;
+------+---------+------+-----------+
| tkod | nev     | ear  | kategoria |
+------+---------+------+-----------+
|    1 | seprü   | 1200 | K1        |
|    2 | lapat   |   50 | K1        |
|    3 | sör     |  250 | K2        |
|    4 | whiskey | 3500 | K2        |
|    5 | Fazek   | 4800 | K3        |
+------+---------+------+-----------+
5 rows in set (0.000 sec)

MariaDB [feladat1]> select * from termekek where kategoria ='K2';
+------+---------+------+-----------+
| tkod | nev     | ear  | kategoria |
+------+---------+------+-----------+
|    3 | sör     |  250 | K2        |
|    4 | whiskey | 3500 | K2        |
+------+---------+------+-----------+
2 rows in set (0.000 sec)

MariaDB [feladat1]> select * from termekek where kategoria ='K2' ORDER BY ear DESC;
+------+---------+------+-----------+
| tkod | nev     | ear  | kategoria |
+------+---------+------+-----------+
|    4 | whiskey | 3500 | K2        |
|    3 | sör     |  250 | K2        |
+------+---------+------+-----------+
2 rows in set (0.006 sec)