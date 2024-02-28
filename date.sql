show timezone;

SELECT now();

create Table timeZone(ts TIMESTAMP without TIME zone, tsz TIMESTAMP with time zone);

INSERT into timeZone VALUES('2024-01-12 10:55', '2024-01-12 10:55');

SELECT * FROM timeZone;

SELECT CURRENT_DATE;

SELECT now()::date;

SELECT now()::time;

SELECT to_char(now(), 'dd-Mon-yyyy');

SELECT age(CURRENT_DATE, '1987-08-30')

SELECT dob, age(CURRENT_DATE, dob) from students;

SELECT extract(YEAR FROM dob) FROM students;

SELECT 1::BOOLEAN;