
select country, avg(age) from students
    GROUP BY country;

select country, avg(age) from students
    GROUP BY country
        HAVING avg(age) > 17;

SELECT extract(YEAR FROM dob) as birth_year, count(*)
    FROM students
    GROUP BY birth_year;



SELECT * FROM students;