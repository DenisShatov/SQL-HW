CREATE TABLE IF NOT EXISTS employee
(
	employee_id INT PRIMARY KEY,
	employee_name VARCHAR(128) NOT NULL,
	employee_department VARCHAR(128) NOT NULL,
	employee_chief INT REFERENCES employee(employee_id)
)