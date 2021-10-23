MariaDB [feladat1]> CREATE TABLE egysegek(
    -> aru INT,
    -> db INT NOT NULL);
Query OK, 0 rows affected (0.016 sec)

MariaDB [feladat1]> CREATE TABLE alkatresz(
    -> akod INT PRIMARY KEY,
    -> nev CHAR(50));
Query OK, 0 rows affected (0.020 sec)

MariaDB [feladat1]> CREATE TABLE komponens(
    -> termek INT REFERENCES termek(tkod),
    -> alkatresz INT REFERENCES alkatresz(akod));
Query OK, 0 rows affected (0.017 sec)

MariaDB [feladat1]> describe gyarto
    -> ;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| adoszam   | int(11)     | NO   | PRI | NULL    |       |
| nev       | char(30)    | YES  |     | NULL    |       |
| telephely | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.013 sec)

MariaDB [feladat1]> describe termek;
+---------+----------+------+-----+---------+-------+
| Field   | Type     | Null | Key | Default | Extra |
+---------+----------+------+-----+---------+-------+
| tkod    | int(11)  | NO   | PRI | NULL    |       |
| nev     | char(50) | YES  |     | NULL    |       |
| ear     | int(20)  | YES  |     | NULL    |       |
| gyartok | int(11)  | YES  |     | NULL    |       |
+---------+----------+------+-----+---------+-------+
4 rows in set (0.013 sec)

MariaDB [feladat1]> describe egysegek;
+-------+---------+------+-----+---------+-------+
| Field | Type    | Null | Key | Default | Extra |
+-------+---------+------+-----+---------+-------+
| aru   | int(11) | YES  |     | NULL    |       |
| db    | int(11) | NO   |     | NULL    |       |
+-------+---------+------+-----+---------+-------+
2 rows in set (0.017 sec)

MariaDB [feladat1]> describe komponens;
+-----------+---------+------+-----+---------+-------+
| Field     | Type    | Null | Key | Default | Extra |
+-----------+---------+------+-----+---------+-------+
| termek    | int(11) | YES  |     | NULL    |       |
| alkatresz | int(11) | YES  |     | NULL    |       |
+-----------+---------+------+-----+---------+-------+
2 rows in set (0.009 sec)