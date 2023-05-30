CREATE TABLE teachers(
	id SERIAL PRIMARY KEY NOT NULL,
	name VARCHAR(50) not null,
	start_date Date,
	end_date Date,
	is_active boolean default true
);