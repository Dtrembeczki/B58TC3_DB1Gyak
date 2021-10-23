MariaDB [feladat1]> CREATE TABLE Tanfolyam( tkod INT PRIMARY KEY, ar INT NOT NULL, tipus CHAR(50), megnevezes CHAR(100) NOT NULL);
Query OK, 0 rows affected (0.015 sec)

MariaDB [feladat1]> CREAT TABLE resztvevo(
    -> tajszam INT(9) PRIMARY KEY,
    -> lakcim VARCHAR NOT NULL,
    -> nev VARCHAR(90) NOT NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREAT TABLE resztvevo(
tajszam INT(9) PRIMARY KEY,
lakcim VARCHAR NOT NULL,
n...' at line 1
MariaDB [feladat1]> CREAT TABLE resztvevo(
    -> tajszam INT(9) PRIMARY KEY,
    -> lakcim VARCHAR(90) NOT NULL,
    -> nev VARCHAR(90) NOT NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREAT TABLE resztvevo(
tajszam INT(9) PRIMARY KEY,
lakcim VARCHAR(90) NOT NUL...' at line 1
MariaDB [feladat1]> CREAT TABLE resztvevo(tajszam INT(9) NOT NULL PRIMARY KEY, nev CHAR(50) NOT NULL, lakcim CHAR(50) NOT NULL);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near 'CREAT TABLE resztvevo(tajszam INT(9) NOT NULL PRIMARY KEY, nev CHAR(50) NOT N...' at line 1
MariaDB [feladat1]> CREATE TABLE resztvevo(
    -> tajszam INT(9) PRIMARY KEY,
    -> lakcim VARCHAR(90) NOT NULL,
    -> nev VARCHAR(90) NOT NULL);
Query OK, 0 rows affected (0.018 sec)

MariaDB [feladat1]> CREATE TABLE befizetes(
    -> befizetes BOOL,
    -> tanfolyam INT REFERENCES Tanfolyam(tkod),
    -> resztvevo INT REFERENCES resztvevo(tajszam));
Query OK, 0 rows affected (0.016 sec)

MariaDB [feladat1]> describe tanfolyam;
+------------+-----------+------+-----+---------+-------+
| Field      | Type      | Null | Key | Default | Extra |
+------------+-----------+------+-----+---------+-------+
| tkod       | int(11)   | NO   | PRI | NULL    |       |
| ar         | int(11)   | NO   |     | NULL    |       |
| tipus      | char(50)  | YES  |     | NULL    |       |
| megnevezes | char(100) | NO   |     | NULL    |       |
+------------+-----------+------+-----+---------+-------+
4 rows in set (0.013 sec)

MariaDB [feladat1]> describe resztvevo;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| tajszam | int(9)      | NO   | PRI | NULL    |       |
| lakcim  | varchar(90) | NO   |     | NULL    |       |
| nev     | varchar(90) | NO   |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
3 rows in set (0.010 sec)

MariaDB [feladat1]> describe befizetes;
+-----------+------------+------+-----+---------+-------+
| Field     | Type       | Null | Key | Default | Extra |
+-----------+------------+------+-----+---------+-------+
| befizetes | tinyint(1) | YES  |     | NULL    |       |
| tanfolyam | int(11)    | YES  |     | NULL    |       |
| resztvevo | int(11)    | YES  |     | NULL    |       |
+-----------+------------+------+-----+---------+-------+
3 rows in set (0.009 sec)