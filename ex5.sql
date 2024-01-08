mysql> create table Departments(
    -> department_id INT PRIMARY KEY,
    -> department_name VARCHAR(255) NOT NULL,
    -> location VARCHAR(255)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> create table Employees(
    -> employeeId INT PRIMARY KEY,
    -> name VARCHAR(255) NOT NULL,
    -> department_id INT,
    -> FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    -> );
Query OK, 0 rows affected (0.07 sec)

mysql> INSERT INTO Departments VALUES(1, 'Back-end developer', 'Berlin'),(2, 'HR', 'Istanbul');
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from Departments;
+---------------+--------------------+----------+
| department_id | department_name    | location |
+---------------+--------------------+----------+
|             1 | Back-end developer | Berlin   |
|             2 | HR                 | Istanbul |
+---------------+--------------------+----------+
2 rows in set (0.00 sec)

mysql> INSERT INTO Employees VALUES(148, 'Stafen Ge', 1),(149, 'Seven Sa', 2);
Query OK, 2 rows affected (0.01 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from Employees;
+------------+-----------+---------------+
| employeeId | name      | department_id |
+------------+-----------+---------------+
|        145 | Shadi Sha |             1 |
|        146 | Lala Lu   |             2 |
|        148 | Stafen Ge |             1 |
|        149 | Seven Sa  |             2 |
+------------+-----------+---------------+
4 rows in set (0.00 sec)

mysql> INSERT INTO Departments VALUES(3, 'IT', NULL);
Query OK, 1 row affected (0.01 sec)

mysql> select * from Departments;
+---------------+--------------------+----------+
| department_id | department_name    | location |
+---------------+--------------------+----------+
|             1 | Back-end developer | Berlin   |
|             2 | HR                 | Istanbul |
|             3 | IT                 | NULL     |
+---------------+--------------------+----------+
3 rows in set (0.00 sec)

mysql> UPDATE Employees SET department_id = 3 WHERE employeeId = 150;
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> UPDATE Departments SET location = 'Istanbul' WHERE department_name = 'Back-end developer';
Query OK, 1 row affected (0.05 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> DELETE FROM Employees WHERE name = 'Shadi Sha';
Query OK, 1 row affected (0.01 sec)
