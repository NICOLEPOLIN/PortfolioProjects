-- CREATING THE TABLE
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    job_title VARCHAR(50),
    salary DECIMAL(10, 2),
    department VARCHAR(50),
    hire_date DATE
);

-- Insert  data into the employees table
INSERT INTO employees (employee_id, name, job_title, salary, department, hire_date)
VALUES
    (1, 'John Smith', 'Software Engineer', 75000.00, 'Engineering', '2022-01-15'),
    (2, 'Jane Doe', 'Data Analyst', 60000.00, 'Analytics', '2021-08-10'),
    (3, 'Michael Johnson', 'Project Manager', 90000.00, 'Management', '2020-03-22'),
    (4, 'Emily Williams', 'Sales Representative', 55000.00, 'Sales', '2023-02-01'),
    (5, 'Robert Brown', 'HR Specialist', 65000.00, 'Human Resources, '2022-11-05'),
    (6, 'Yossi Cohen', 'Marketing Specialist', 62000.00, 'Marketing', '2023-06-15'),
    (7, 'Alex Turner', 'Accountant', 58000.00, 'Finance', '2021-05-12'),
    (8, 'Omer Adam', 'Graphic Designer', 52000.00, 'Design', '2022-09-20');
    (9, 'William Johnson', 'Marketing Manager', 80000.00, 'Marketing', '2022-07-18'),
    (10, 'Sophia Lee', 'Business Analyst', 65000.00, 'Analytics', '2023-04-30'),
    (11, 'James Miller', 'Product Designer', 70000.00, 'Design', '2021-11-22'),
    (12, 'Ella Wilson', 'Customer Support', 55000.00, 'Customer Service', '2022-03-05'),
    (13, 'Liam Anderson', 'Software Developer', 72000.00, 'Engineering', '2023-08-12'),
    (14, 'Ava Martinez', 'Finance Analyst', 60000.00, 'Finance', '2022-06-10');
    (15, 'Noah Taylor', 'IT Support Specialist', 54000.00, 'IT', '2023-09-08'),
    (16, 'Mia Hernandez', 'Quality Assurance', 59000.00, 'Engineering', '2022-12-17'),
    (17, 'Ethan Lewis', 'Operations Manager', 85000.00, 'Management', '2020-09-02'),
    (18, 'Isabella Scott', 'Data Scientist', 75000.00, 'Analytics', '2021-10-25'),
    (19, 'Lucas Green', 'Sales Manager', 78000.00, 'Sales', '2023-03-30'),
    (20, 'Aria Hall', 'HR Manager', 72000.00, 'Human Resources', '2022-05-15');

--Employees in a Specific Department:
SELECT * FROM employees WHERE department = 'Marketing';

--Employees Hired After a Certain Date:
SELECT * FROM employees WHERE hire_date > '2022-01-01';

-- Highest-Paid Employee:
SELECT * FROM employees ORDER BY salary DESC LIMIT 1;

-- Lowest-Paid Employee
SELECT * FROM employees ORDER BY salary ASC LIMIT 1;

