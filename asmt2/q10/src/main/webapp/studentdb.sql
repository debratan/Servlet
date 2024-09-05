CREATE TABLE student_marks (
    register_no VARCHAR2(20) PRIMARY KEY,
    name VARCHAR2(100),
    marks NUMBER
);

-- Insert data into the student_marks table
INSERT INTO student_marks (register_no, name, marks) VALUES ('REG001', 'John Doe', 85);
INSERT INTO student_marks (register_no, name, marks) VALUES ('REG002', 'Jane Smith', 90);
INSERT INTO student_marks (register_no, name, marks) VALUES ('REG003', 'Jim Brown', 78);
INSERT INTO student_marks (register_no, name, marks) VALUES ('REG004', 'Emily Davis', 92);
