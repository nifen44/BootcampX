CREATE TABLE assistance_requests(
	id SERIAL PRIMARY KEY NOT NULL,
	assignment_id int REFERENCES assignments(id) on delete cascade,
	student_id int REFERENCES students(id) on delete cascade,
	teacher_id int REFERENCES teachers(id) on delete cascade,
	created_at TIMESTAMP,
	started_at TIMESTAMP,
	completed_at TIMESTAMP,
	student_feedback text,
	teacher_feedback text
);
  	