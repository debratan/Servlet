CREATE TABLE employee (
    empid NUMBER(10) PRIMARY KEY,
    name VARCHAR2(100),
    age NUMBER(3),
    desg VARCHAR2(50),
    salary NUMBER(10, 2)
);

INSERT INTO employee (empid, name, age, desg, salary)
VALUES (101, 'Alice Smith', 30, 'Developer', 75000.00);

INSERT INTO employee (empid, name, age, desg, salary)
VALUES (102, 'Bob Johnson', 28, 'Designer', 65000.00);

INSERT INTO employee (empid, name, age, desg, salary)
VALUES (103, 'Charlie Brown', 35, 'Manager', 90000.00);

INSERT INTO employee (empid, name, age, desg, salary)
VALUES (104, 'David Wilson', 40, 'Analyst', 85000.00);

INSERT INTO employee (empid, name, age, desg, salary)
VALUES (105, 'Eva Green', 25, 'Tester', 55000.00);
