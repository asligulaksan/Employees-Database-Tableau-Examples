# SQL-Tableau-Integration
In this repository, my aim is to practice my Tableu and SQL skills using Employees sample database [[1]](#1). All the sql files for the queries shown below are given in the <a href="https://github.com/asligulaksan/SQL-Tableau-Integration/tree/main/SQL%20queries">SQL queries</a> folder. SQL codes are written in MySQL.

## SQL Query 1
Create a visualization that provides a breakdown between the male and female employees working in the company each year, starting from 1990.

### SQL output (limit 5)
| **calendar_year** | **gender** | **num_of_employees** |
|-------------------|------------|----------------------|
| 1998              | M          | 8929                 |
| 1990              | F          | 5470                 |
| 1992              | M          | 8480                 |
| 1993              | F          | 5623                 |
| 1999              | M          | 9199                 |

### Tableu visualization
![Alt text](https://github.com/asligulaksan/SQL-Tableau-Integration/blob/main/Tableau%20Outputs/Task-1.png?raw=true "Query 1")

## SQL Query 2
Compare the number of male managers to the number of female managers from different departments for each year, starting from 1990.

### SQL output (limit 5)
| **dept_name** | **gender** | **emp_no** | **from_date** | **to_date** | **calendar_year** | **active** |
|---------------|------------|------------|---------------|-------------|-------------------|------------|
| Marketing     | M          | 110022     | 1995-12-30    | 1998-12-29  | 1990              | 0          |
| Marketing     | M          | 110022     | 1995-12-30    | 1998-12-29  | 1991              | 0          |
| Marketing     | M          | 110022     | 1995-12-30    | 1998-12-29  | 1992              | 0          |
| Marketing     | M          | 110022     | 1995-12-30    | 1998-12-29  | 1993              | 0          |
| Marketing     | M          | 110022     | 1995-12-30    | 1998-12-29  | 1994              | 0          |

### Tableu visualization
![Alt text](https://github.com/asligulaksan/SQL-Tableau-Integration/blob/main/Tableau%20Outputs/Task-2.png?raw=true "Query 2")

## SQL Query 3
Compare the average salary of female versus male employees in the entire company until year 2002, and add a filter allowing you to see that per each department.

### SQL output (limit 5)
| **gender** | **dept_name** | **salary** | **calendar_year** |
|------------|---------------|------------|-------------------|
| M          | Marketing     | 58895.85   | 1990              |
| M          | Marketing     | 59232.75   | 1991              |
| M          | Marketing     | 59743.08   | 1992              |
| M          | Marketing     | 60436.85   | 1993              |
| M          | Marketing     | 64547.55   | 1994              |

### Tableu visualization
![Alt text](https://github.com/asligulaksan/SQL-Tableau-Integration/blob/main/Tableau%20Outputs/Task-3.png?raw=true "Query 3")

## SQL Query 4
Create an SQL stored procedure that will allow you to obtain the average male and female salary per department within a certain salary range.

### SQL output (limit 5)
| **gender** | **salary** | **dept_name**    |
|------------|------------|------------------|
| F          | 62343.95   | Customer Service |
| M          | 62957.63   | Customer Service |
| M          | 62924.43   | Development      |
| F          | 61963.68   | Development      |
| F          | 67420.69   | Finance          |

### Tableu visualization
![Alt text](https://github.com/asligulaksan/SQL-Tableau-Integration/blob/main/Tableau%20Outputs/Task-4.png?raw=true "Query 4")

## References
<a id="1">[1]</a> https://relational.fit.cvut.cz/dataset/Employee
