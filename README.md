This project involves the design and implementation of a relational database system to manage the data of employees, departments, and projects in an organization. It includes data modeling, constraints, data manipulation, and advanced SQL queries for reporting and analysis.

📂 Database Tables & Descriptions
1. Department
Purpose: Stores department-related information.

Fields:

dept_id (INT, Primary Key): Unique identifier for each department.

dept_name (VARCHAR, UNIQUE, NOT NULL): Name of the department.

2. Employee
Purpose: Maintains employee personal and work-related details.

Fields:

emp_id (INT, Primary Key): Unique employee ID.

emp_name (VARCHAR, NOT NULL): Name of the employee.

email (VARCHAR, UNIQUE): Employee's unique email address.

salary (DECIMAL): Monthly salary (must be > 10,000).

dept_id (INT, Foreign Key): References Department.

hire_date (DATE): Date of hiring. Defaults to current date via a trigger.

Constraints & Triggers:

email must be unique.

salary must be greater than 10,000 (enforced via a trigger).

hire_date defaults to current date if not provided (trigger-based).

3. Project
Purpose: Holds project data managed by the organization.

Fields:

proj_id (INT, Primary Key): Unique project ID.

proj_name (VARCHAR, NOT NULL): Name of the project.

budget (DECIMAL): Project's allocated budget.

4. Employee_Project
Purpose: Junction table for many-to-many relationship between employees and projects.

Fields:

emp_id (Foreign Key): References Employee.

proj_id (Foreign Key): References Project.

assigned_date (DATE): Date the employee was assigned.

Constraints:

Composite Primary Key on (emp_id, proj_id) prevents duplicate assignments.

📤 Data Insertions (DML)
5 entries per table were inserted with meaningful data.

Data includes:

Employees with varied salaries, departments, and hire dates.

Projects with different budgets and scopes.

Relationships between employees and projects.

🧠 SQL Features Used
✅ Constraints & Integrity
Primary Keys and Foreign Keys

UNIQUE and NOT NULL constraints

Triggers for enforcing business logic (default dates and salary validation)

✅ Queries Implemented
Basic Queries:
Filter by salary, hire year, department name

Joins:
Retrieve employee & department data

List projects with or without employees

Find departments with no employees

Aggregations:
Calculate average salary by department

Count employees per department

Subqueries:
Compare salary to average

Find employees on more than 2 projects

UNION:
Combine employee names and project names into a single list

Advanced Queries (Extra Credit):
Highest paid employee per department

Employees not assigned to any project

Update salaries conditionally

Delete inactive employees (not assigned to any project in the last year)

💻 Technical Tools & Technologies
RDBMS: MySQL

IDE: MySQL Workbench / phpMyAdmin / VS Code

Version Control: Git & GitHub

Language: SQL (DDL, DML, Queries, Triggers)# assignment1.sql
