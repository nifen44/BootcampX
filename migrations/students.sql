CREATE TABLE students(
	id int PRIMARY KEY NOT NULL,
	cohort_id int,
  	name VARCHAR(50),
  	email VARCHAR(50),
  	phone VARCHAR(15),
  	github VARCHAR(50),
  	start_date DATE,
  	end_date DATE,
  	FOREIGN KEY (cohort_id) REFERENCES cohorts(id) 
);