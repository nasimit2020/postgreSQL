CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE Table post(
    id SERIAL PRIMARY KEY,
    title TEXT not NULL,
    user_id INTEGER REFERENCES "user"(id)
)

ALTER Table post
    alter COLUMN user_id set NOT NULL;



INSERT INTO "user" (username)
    VALUES
    ('nasim'),
    ('rana'),
    ('khalid'),
    ('badol'),
    ('baizid')


INSERT INTO post (title, user_id)
    VALUES
    ('O Akash Tumi jaw', 2),
    ('Nodi boya jai', 5),
    ('Borsa badol jai koi', 3),
    ('Batas as misti sumodur', 5),
    ('Gun gun gan gaya jai nil vomoraya', 3);

INSERT into post (title, user_id)
VALUES
('Ami akas batas chai', 1)

-- for Deleting when using REFERENCES id in a TABLE to another TABLE, then 4 types of work to need down.

-- Deletion constraint on DELETE user
-- Restrict Deletion -> ON DELETE RESTRICT/ ON DELETE NO ACTION (default)
-- Cascading Deletion -> ON DELETE CASCADE
-- SETTING NULL -> ON DELETE SET NULL
-- SET DEFAULT VALUE -> ON DELETE SET DEFAULT

DELETE FROM "user"
    WHERE id= 3;


SELECT * from "user";

SELECT * from post;


-- Join 2 tables data

SELECT * FROM post as p
    JOIN "user" as u on p.user_id = u.id;

-- Left JOIN
SELECT * from post 
    LEFT JOIN "user" on post.user_id = "user".id;


