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
    (5, 'Robert Brown', 'HR Specialist', 65000.00, 'Human Resources', '2022-11-05'),
    (6, 'Yossi Cohen', 'Marketing Specialist', 62000.00, 'Marketing', '2023-06-15'),
    (7, 'Alex Turner', 'Accountant', 58000.00, 'Finance', '2021-05-12'),
    (8, 'Omer Adam', 'Graphic Designer', 52000.00, 'Design', '2022-09-20');
