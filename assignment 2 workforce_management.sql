CREATE DATABASE workforce_management;
USE workforce_management;
CREATE TABLE tbl_department (dept_id INT PRIMARY KEY,
		dept_name VARCHAR(50) UNIQUE,
		location VARCHAR(50),
		budget DECIMAL(10,2)
        );
        
        CREATE TABLE tbl_employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE,
    hire_date DATE ,
    salary DECIMAL(10, 2) CHECK (salary >= 15000),
    dept_id INT,
    manager_id INT,
    FOREIGN KEY (dept_id) REFERENCES tbl_department(dept_id),
    FOREIGN KEY (manager_id) REFERENCES tbl_employee(emp_id)
);


CREATE TABLE tbl_project (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(100) NOT NULL,
    start_date DATE,
    end_date DATE,
    status ENUM('Active', 'Completed', 'On Hold'),
    budget DECIMAL(12, 2)
);

CREATE TABLE tbl_employee_project (
    emp_id INT,
    proj_id INT,
    allocation_percentage INT CHECK (allocation_percentage > 0 AND allocation_percentage <= 100),
    assigned_date DATE,
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES tbl_employee(emp_id),
    FOREIGN KEY (proj_id) REFERENCES tbl_project(proj_id)
);

CREATE TABLE tbl_performance_review (
    review_id INT PRIMARY KEY,
    emp_id INT,
    review_date DATE,
    score INT CHECK (score BETWEEN 1 AND 5),
    reviewer_id INT,
    FOREIGN KEY (emp_id) REFERENCES tbl_employee(emp_id),
    FOREIGN KEY (reviewer_id) REFERENCES tbl_employee(emp_id)
);

INSERT INTO tbl_department (dept_id, dept_name, location, budget)
VALUES 
(1, 'IT', 'New York', 1000000.00),
(2, 'HR', 'San Francisco', 300000.00),
(3, 'Finance', 'Chicago', 500000.00);

INSERT INTO tbl_employee (emp_id, emp_name, email, salary, dept_id, manager_id)
VALUES
(101, 'Alice Johnson', 'alice@company.com', 95000.00, 1, NULL),       
(102, 'Bob Smith', 'bob@company.com', 80000.00, 1, 101),
(103, 'Charlie Lee', 'charlie@company.com', 78000.00, 2, 101),
(104, 'Diana Prince', 'diana@company.com', 85000.00, 3, 101);

INSERT INTO tbl_Project (proj_id, proj_name, start_date, end_date, status, budget)
VALUES
(201, 'Apollo', '2024-01-01', '2024-12-31', 'Active', 500000.00),
(202, 'Zephyr', '2023-03-15', '2023-10-30', 'Completed', 200000.00),
(203, 'Orion', '2024-06-01', NULL, 'On Hold', 150000.00);

INSERT INTO tbl_Employee_Project (emp_id, proj_id, allocation_percentage, assigned_date)
VALUES
(101, 201, 50, '2024-01-01'),
(102, 201, 70, '2024-01-01'),
(103, 203, 30, '2024-06-01'),
(104, 202, 60, '2023-03-20');

INSERT INTO tbl_Performance_Review (review_id, emp_id, review_date, score, reviewer_id)
VALUES
(1, 102, '2024-12-15', 4, 101),
(2, 103, '2024-11-10', 5, 101),
(3, 104, '2024-10-01', 3, 101);

SELECT * FROM tbl_department;
SELECT * FROM tbl_employee;
SELECT * FROM tbl_Project;
SELECT * FROM tbl_Employee_Project;
SELECT * FROM tbl_Performance_Review;

-- 1.  List top 5 employees with the highest average performance score.
SELECT e.emp_name, e.emp_id, AVG (pr.score) as avg_score
FROM tbl_performance_review pr
JOIN tbl_employee e ON pr.emp_id = e.emp_id
GROUP BY e.emp_id, e.emp_name
ORDER BY avg_score DESC
LIMIT 5;

-- 3.	List employees who have never received a performance review.
	SELECT e.emp_id, e.emp_name
FROM tbl_employee e
LEFT JOIN tbl_Performance_Review pr ON e.emp_id = pr.emp_id
WHERE pr.review_id IS NULL;

-- 5.	List all employees with their department name, manager name, and count of projects they’re working on.
SELECT e.emp_id, e.emp_name, d.dept_name, m.emp_name AS manager_name, COUNT(ep.proj_id) AS project_count
FROM tbl_employee e
LEFT JOIN tbl_department d ON e.dept_id = d.dept_id
LEFT JOIN tbl_employee m ON e.manager_id = m.emp_id
LEFT JOIN tbl_employee_project ep ON e.emp_id = ep.emp_id
GROUP BY e.emp_id, e.emp_name, d.dept_name, m.emp_name;

-- 6.	Show each department’s name and the project count where their employees are working.
SELECT 
    d.dept_name,
    COUNT(ep.proj_id) AS project_count
FROM tbl_Department d
JOIN tbl_Employee e ON d.dept_id = e.dept_id
JOIN tbl_Employee_Project ep ON e.emp_id = ep.emp_id
GROUP BY d.dept_name;

-- 7.	Find employees who are working on all active projects.
SELECT ep.emp_id
FROM tbl_Employee_Project ep
JOIN tbl_Project p ON ep.proj_id = p.proj_id
WHERE p.status = 'Active'
GROUP BY ep.emp_id
HAVING COUNT(DISTINCT ep.proj_id) = (
    SELECT COUNT(*) FROM tbl_Project WHERE status = 'Active'
);

-- 8.	Use UNION to list:
	-- •	Employees with salary > 1,00,000
	-- •	Employees with review scores of 5
-- (Avoid duplicates)
SELECT DISTINCT e.emp_id, e.emp_name
FROM tbl_Employee e
WHERE e.salary > 100000

UNION

SELECT DISTINCT e.emp_id, e.emp_name
FROM tbl_Employee e
JOIN tbl_Performance_Review pr ON e.emp_id = pr.emp_id
WHERE pr.score = 5;

-- 9.	Find all projects that have no employees assigned.
	SELECT p.proj_id, p.proj_name
FROM tbl_Project p
LEFT JOIN tbl_Employee_Project ep ON p.proj_id = ep.proj_id
WHERE ep.emp_id IS NULL;

-- 11.	Detect employees assigned to multiple projects where the total allocation exceeds 100%.
SELECT emp_id, SUM(allocation_percentage) AS total_allocation
FROM tbl_Employee_Project
GROUP BY emp_id
HAVING SUM(allocation_percentage) > 100;


-- doubts
-- 12.	Identify departments with more than 3 employees whose performance score is < 3 in last 6 months.
-- 10.	Display average score for each employee and rank them using a window function.
-- 2. Find departments where average employee salary exceeds department budget / employee count.
-- 4.	Display all employees and how many days they’ve been with the company.