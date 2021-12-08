MariaDB [feladat1]> CREATE TABLE gyarto(
    -> adoszam INT NOT NULL PRIMARY KEY,
    -> nev CHAR(30),
    -> telephely VARCHAR(50) NOT NULL);
Query OK, 0 rows affected (0.022 sec)

MariaDB [feladat1]> describe gyarto;
+-----------+-------------+------+-----+---------+-------+
| Field     | Type        | Null | Key | Default | Extra |
+-----------+-------------+------+-----+---------+-------+
| adoszam   | int(11)     | NO   | PRI | NULL    |       |
| nev       | char(30)    | YES  |     | NULL    |       |
| telephely | varchar(50) | NO   |     | NULL    |       |
+-----------+-------------+------+-----+---------+-------+
3 rows in set (0.015 sec)

MariaDB [feladat1]> CREATE TABLE termek(
    -> tkod INT PRIMARY KEY,
    -> nev CHAR(50),
    -> ear INT(20),
    -> gyartok INT REFERENCES gyarto(adoszam));
Query OK, 0 rows affected (0.016 sec)

MariaDB [feladat1]> describe termek;
+---------+----------+------+-----+---------+-------+
| Field   | Type     | Null | Key | Default | Extra |
+---------+----------+------+-----+---------+-------+
| tkod    | int(11)  | NO   | PRI | NULL    |       |
| nev     | char(50) | YES  |     | NULL    |       |
| ear     | int(20)  | YES  |     | NULL    |       |
| gyartok | int(11)  | YES  |     | NULL    |       |
+---------+----------+------+-----+---------+-------+
4 rows in set (0.014 sec)

MariaDB [feladat1]>