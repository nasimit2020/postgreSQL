CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) VALUES
('John', 'Doe', 18, 'A', 'Mathematics', 'john.doe@example.com', '2003-05-15', 'O+', 'USA'),
('Jane', 'Smith', 17, 'B', 'Science', 'jane.smith@example.com', '2004-02-20', 'A-', 'Canada'),
('Michael', 'Johnson', 19, 'C', 'History', 'michael.johnson@example.com', '2002-09-10', 'B+', 'UK'),
('Emily', 'Brown', 18, 'A', 'English', 'emily.brown@example.com', '2003-07-28', 'AB-', 'Australia'),
('Daniel', 'Martinez', 17, 'B', 'Computer Science', 'daniel.martinez@example.com', '2004-01-03', 'O-', 'Mexico'),
('Olivia', 'Taylor', 19, 'C', 'Physics', 'olivia.taylor@example.com', '2002-11-25', 'A+', 'New Zealand'),
('William', 'Anderson', 18, 'A', 'Chemistry', 'william.anderson@example.com', '2003-06-12', 'B-', 'Germany'),
('Sophia', 'Thomas', 17, 'B', 'Geography', 'sophia.thomas@example.com', '2004-03-30', 'O+', 'France'),
('James', 'Hernandez', 19, 'C', 'Economics', 'james.hernandez@example.com', '2002-08-05', 'AB+', 'Spain'),
('Isabella', 'Young', 18, 'A', 'Biology', 'isabella.young@example.com', '2003-09-18', 'A-', 'Italy'),
('Benjamin', 'Lee', 17, 'B', 'Art', 'benjamin.lee@example.com', '2004-04-22', 'O-', 'Japan'),
('Mia', 'Garcia', 19, 'C', 'Music', 'mia.garcia@example.com', '2002-12-08', 'B+', 'Brazil'),
('Ethan', 'Wilson', 18, 'A', 'Physical Education', 'ethan.wilson@example.com', '2003-10-11', 'AB-', 'India'),
('Charlotte', 'Lopez', 17, 'B', 'Psychology', 'charlotte.lopez@example.com', '2004-05-14', 'O+', 'China'),
('Alexander', 'Hill', 19, 'C', 'Sociology', 'alexander.hill@example.com', '2002-07-02', 'A+', 'South Africa'),
('Amelia', 'Scott', 18, 'A', 'Political Science', 'amelia.scott@example.com', '2003-11-27', 'B-', 'Russia'),
('Daniel', 'Green', 17, 'B', 'Anthropology', 'daniel.green@example.com', '2004-06-19', 'O-', 'South Korea'),
('Evelyn', 'Adams', 19, 'C', 'Languages', 'evelyn.adams@example.com', '2002-10-03', 'AB+', 'Argentina'),
('Michael', 'Baker', 18, 'A', 'Literature', 'michael.baker@example.com', '2003-12-30', 'A-', 'Netherlands'),
('Emma', 'Gonzalez', 17, 'B', 'Philosophy', 'emma.gonzalez@example.com', '2004-07-25', 'B+', 'Sweden');


SELECT * FROM students ORDER BY age DESC;

SELECT country FROM students ORDER BY country ASC;

SELECT DISTINCT blood_group from students;

SELECT * FROM students WHERE country = 'USA';

SELECT * FROM students
    WHERE grade = 'A';

SELECT * FROM students
    WHERE grade = 'A' AND course = 'English';

SELECT * FROM students
    WHERE blood_group = 'A+';

SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia';

SELECT * FROM students
    WHERE (country = 'USA' OR country = 'Australia') AND age = 20;

SELECT * FROM students
    WHERE age != 18;

SELECT upper(first_name) as student_first_name, * FROM students;

SELECT concat(first_name, ' ', last_name), * FROM students;

SELECT avg(age) from students;

SELECT MAX(age) from students;


SELECT min(age) from students;

SELECT sum(age) from students;

SELECT count(*) from students;

SELECT max(length(first_name)) from students;

SELECT first_name
FROM students
WHERE LENGTH(first_name) = (SELECT MAX(LENGTH(first_name)) FROM students);

SELECT * FROM students
    WHERE NOT country = 'USA' ;

SELECT * FROM students;

SELECT * FROM students
    WHERE email is NOT NULL;

SELECT COALESCE(email, 'No Email') from students;

SELECT * FROM students
    WHERE country = 'USA' OR country = 'Australia' OR country = 'UK';

SELECT * FROM students
    WHERE country in ('USA', 'UK');

SELECT * FROM students
    WHERE country NOT in ('USA', 'UK');

SELECT * FROM students
    WHERE age BETWEEN 17 AND 18;

SELECT * FROM students
    WHERE dob BETWEEN '2003-01-01' AND '2003-12-31' ORDER BY dob;

SELECT * FROM students
    WHERE first_name LIKE 'E%';

-- Catch SENSITIVE (LIKE)
SELECT * FROM students
    WHERE first_name LIKE '__e%';

-- Catch INSENSITIVE (ILIKE)
SELECT * FROM students
    WHERE first_name ILIKE 'A%';