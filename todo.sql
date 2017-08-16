CREATE TABLE todos (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    details TEXT NULL,
    priority INTEGER NOT NULL DEFAULT '1',
    created_at TIMESTAMP NOT NULL,
    completed_at TIMESTAMP NULL
);

INSERT INTO todos (title, details, created_at, completed_at)
    VALUES ('soccer', 'i will soccer with my friends', '2017-08-29', 00:00:00', '1999-12-31 10:19:59');

INSERT INTO todos (title, details, priority, created_at)
    VALUES ('bootcamp', 'i will attend bootcamp in December', '33', '2017-12-20 10:10:00');

INSERT INTO todos (title, priority, created_at)
    VALUES ('Have a talk with my sister from France', '80', '2017-12-07 08:10:00');

INSERT INTO todos (title, details, priority, created_at)
    VALUES ('market', ' i will buy some goods for home', '38', '2017-09-27 17:09:11');

INSERT INTO todos (title, details, created_at)
    VALUES ('workout', 'it has to be done', '2017-09-21 04:27:02');

-- all incomplete tasks
SELECT * FROM todos WHERE completed_at IS NULL;

-- all tasks with priority above 1
SELECT * FROM todos WHERE priority > 1;

-- complete a task by id
UPDATE todos SET completed_at = '2017-06-27 17:00:02' WHERE id = 4;

-- delete all completed tasks
DELETE FROM todos WHERE completed_at IS NOT NULL;
