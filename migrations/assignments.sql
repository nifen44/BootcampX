CREATE TABLE assignments(
	id SERIAL PRIMARY KEY NOT NULL,
  	name VARCHAR(50),
  	content TEXT,
	day int,
	chapter int,
	duration int	
);