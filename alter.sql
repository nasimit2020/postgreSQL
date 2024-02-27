-- Active: 1708993774600@@127.0.0.1@5432@ph
SELECT * from person2;

ALTER Table person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'nasimitjesbd@gmail.com' NOT NULL;

ALTER Table person2
    DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;

ALTER TABLE person2
    alter COLUMN user_name type VARCHAR(50);

ALTER Table person2
    alter COLUMN user_age set NOT NULL;

ALTER table person2
    alter COLUMN user_age DROP NOT NULL;

ALTER table person2
    ADD constraint unique_person2_id UNIQUE(id);

ALTER TABLE person2
    DROP constraint person2_user_name_age_key;

INSERT INTO person2 VALUES(3, 'Fohan', 45);

