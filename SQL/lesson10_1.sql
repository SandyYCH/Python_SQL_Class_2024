DROP TABLE student;

CREATE TABLE IF NOT EXISTS student(
	id SERIAL PRIMARY KEY,
	name VARCHAR(20),
	chinese SMALLINT,
	english SMALLINT,
	math SMALLINT	
);

SELECT *
FROM student;