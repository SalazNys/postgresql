
CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  details VARCHAR(9000) NULL,
  priority INTEGER DEFAULT 1 NOT NULL,
  created_at TIMESTAMP NOT NULL,
  completed_at TIMESTAMP NULL
);


INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'Clean Bathroom',
  'i will clean my Bathroom',
  2,
  TO_TIMESTAMP('2017-08-29 11:13:56', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'pub',
  'i will go the pub with my wife ',
  1,
  TO_TIMESTAMP('2017-08-28 10:59:09', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'do dishes',
  'because i will have to cook for party',
  1,
  TO_TIMESTAMP('2017-08-26 08:02:07', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'wrestling',
  'john cena will fight against the rock',
  3,
  TO_TIMESTAMP('2017-08-07 10:15:43', 'YYYY-MM-DD HH24:MI:SS'),
  NULL
);

INSERT INTO todo (
  title,
  details,
  priority,
  created_at,
  completed_at
) VALUES (
  'coding',
  'I will learn javascript',
  4,
  TO_TIMESTAMP('2017-08-25 01:24:40', 'YYYY-MM-DD HH24:MI:SS'),
);


SELECT * FROM todo WHERE completed_at IS NULL;

SELECT * FROM todo WHERE priority > 1;


UPDATE todo SET completed_at = TO_TIMESTAMP('2017-08-08 03:35:27', 'YYYY-MM-DD HH24:MI:SS') WHERE id = 5;



DELETE FROM todo WHERE title = 'do dishes';
