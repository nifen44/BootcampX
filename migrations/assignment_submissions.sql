CREATE TABLE assignment_submissions(
	id int PRIMARY KEY NOT NULL,
	assignment_id int,
	student_id int,
	duration int,
	submission_date Date,
  	FOREIGN KEY (assignment_id) REFERENCES assignments(id),
  	FOREIGN KEY (student_id) REFERENCES students(id)
);