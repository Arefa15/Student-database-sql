CREATE TABLE students (
  id INT(11) NOT NULL AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL,
  age INT(11) NOT NULL,
  email VARCHAR(50) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE results (
  id INT(11) NOT NULL AUTO_INCREMENT,
  student_id INT(11) NOT NULL,
  subject VARCHAR(50) NOT NULL,
  marks INT(11) NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (student_id) REFERENCES students(id)
);

INSERT INTO students (name, age, email) VALUES ('John Smith', 20, 'john@example.com');
INSERT INTO students (name, age, email) VALUES ('Jane Doe', 22, 'jane@example.com');

INSERT INTO results (student_id, subject, marks) VALUES (1, 'Maths', 85);
INSERT INTO results (student_id, subject, marks) VALUES (1, 'Science', 92);

INSERT INTO results (student_id, subject, marks) VALUES (2, 'Maths', 78);
INSERT INTO results (student_id, subject, marks) VALUES (2, 'Science', 89);

SELECT s.name, s.email, r.subject, r.marks
FROM students s
JOIN results r ON s.id = r.student_id;
