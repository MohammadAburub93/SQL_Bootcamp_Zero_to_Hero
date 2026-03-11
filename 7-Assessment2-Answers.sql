-- Creating Tables
CREATE TABLE students(
student_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number SMALLINT NOT NULL,
phone VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(250) NOT NULL UNIQUE,
graduation_year SMALLINT
)

CREATE TABLE teachers(
teacher_id SERIAL PRIMARY KEY,
first_name VARCHAR(50) NOT NULL,
last_name VARCHAR(50) NOT NULL,
homeroom_number SMALLINT NOT NULL,
department VARCHAR(50) NOT NULL,
phone VARCHAR(50) NOT NULL UNIQUE,
email VARCHAR(250) NOT NULL UNIQUE
)

--Insert rows
INSERT INTO students(
first_name,
last_name,
homeroom_number,
phone,
email,
graduation_year)
VALUES
(
'Mark',
'Watney',
5,
'777-555-1234',
'NAN',
2035
)

INSERT INTO teachers(
first_name,
last_name,
homeroom_number,
phone,
email,
department)
VALUES
(
'Jonas',
'Slak',
5,
'777-555-4321',
'jsalk@school.org',
'Biology'
)

