CREATE TABLE teachers (
id SERIAL PRIMARY KEY NOT NULL,
name VARCHAR(255) NOT NULL,
start_date DATE,
end_date DATE,
is_active BOOLEAN
);


CREATE TABLE assistance_request (
id SERIAL PRIMARY KEY NOT NULL,
assignment_id INTEGER REFERENCES assignments(id) ON DELETE CASCADE,
student_id INTEGER REFERENCES students(id) ON DELETE CASCADE,
teacher_id INTEGER REFERENCES teachers(id) ON DELETE CASCADE,
created_at INTEGER,
started_at INTEGER,
completed_at INTEGER,
student_feedback TEXT,
teacher_feedback TEXT
);
