#  SQL Query Vault: Data Science Bootcamp

A structured repository tracking my progress through the SQL module of the Comprehensive Data Science Bootcamp. This vault contains foundational-to-advanced PostgreSQL queries, database creation scripts, and personal cheatsheets for rapid syntax reference.

##  Objective
To master relational database management and data extraction for downstream analysis in Python and Tableau. 

##  Repository Structure
The files are organized sequentially to mirror the course curriculum. Each file contains annotated queries acting as both a functional script and a study guide.

* `/01_statement_fundamentals/` - Core extraction (SELECT, WHERE, ORDER BY, LIMIT)
* `/02_group_by_statements/` - Aggregations and conditional filtering (GROUP BY, HAVING)
* `/03_joins_and_unions/` - Combining tables and relational mapping 
* `/04_advanced_sql_commands/` - Timestamps, string functions, and subqueries 

##  Course Progress Tracker
- [x] **Section 1:** Statement Fundamentals
- [x] **Section 2:** GROUP BY Statements
- [x] **Section 3:** JOINS
- [x] **Section 4:** Advanced SQL Commands
- [ ] **Section 5:** Database & Table Creation (DDL)

##  Tech Stack
* **RDBMS:** PostgreSQL
* **IDE/Interface:** pgAdmin 4 / PyCharm
* **Concepts:** DDL, DML, DQL, Relational Database Design

##  Highlighted Concept: The HAVING Clause
*A quick reference example from my notes:*

```sql
-- Find customers who have spent more than $100 total
SELECT customer_id, SUM(amount)
FROM payment
GROUP BY customer_id
HAVING SUM(amount) > 100
ORDER BY SUM(amount) DESC;
