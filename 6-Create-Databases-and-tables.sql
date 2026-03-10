--Create Table
CREATE TABLE account(
    user_id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(50) NOT NULL,
    email VARCHAR(250) UNIQUE NOT NULL,
    created_on TIMESTAMP NOT NULL,
    last_login TIMESTAMP
)

--Insert values to a table
INSERT INTO account(username, password,email,created_on)
VALUES
('Mohammad', 'password', 'mohammad@gmail.com', CURRENT_TIMESTAMP)

--Update a value
UPDATE account
SET last_login = CURRENT_TIMESTAMP

--Delete a row
DELETE FROM job
WHERE job_name = 'Cowboy'
RETURNING job_id, job_name

--ALTER Table
ALTER TABLE information
RENAME TO new_info

ALTER TABLE new_info
RENAME COLUMN person TO people

ALTER TABLE new_info
ALTER COLUMN people DROP NOT NULL

--Drop column
ALTER TABLE new_info
DROP COLUMN people

--CHECK Constraint
CREATE TABLE employees(
emp_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
birthdate DATE CHECK (birthdate > '1900-01-01'),
hire_date DATE CHECK (hire_date > birthdate),
salary INTEGER CHECK (salary > 0)
)