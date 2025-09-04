-- Insert initial test data
-- File: init-scripts/02-data.sql

-- Insert departments
INSERT INTO department (name, description) VALUES
                                               ('Engineering', 'Software development and technical operations'),
                                               ('Human Resources', 'Employee relations and talent management'),
                                               ('Marketing', 'Product marketing and customer acquisition'),
                                               ('Finance', 'Financial planning and accounting'),
                                               ('Sales', 'Revenue generation and customer relations');

-- Insert employees
INSERT INTO employee (first_name, last_name, email, phone, hire_date, salary, department_id) VALUES
-- Engineering employees
('John', 'Smith', 'john.smith@company.com', '+1-555-0101', '2023-01-15', 75000.00, 1),
('Sarah', 'Johnson', 'sarah.johnson@company.com', '+1-555-0102', '2023-02-20', 80000.00, 1),
('Mike', 'Wilson', 'mike.wilson@company.com', '+1-555-0103', '2023-03-10', 85000.00, 1),
('Lisa', 'Brown', 'lisa.brown@company.com', '+1-555-0104', '2023-04-05', 70000.00, 1),

-- HR employees
('Amanda', 'Davis', 'amanda.davis@company.com', '+1-555-0201', '2023-01-20', 60000.00, 2),
('Robert', 'Miller', 'robert.miller@company.com', '+1-555-0202', '2023-05-15', 65000.00, 2),

-- Marketing employees
('Jennifer', 'Garcia', 'jennifer.garcia@company.com', '+1-555-0301', '2023-02-28', 58000.00, 3),
('David', 'Martinez', 'david.martinez@company.com', '+1-555-0302', '2023-06-12', 62000.00, 3),
('Emily', 'Anderson', 'emily.anderson@company.com', '+1-555-0303', '2023-07-08', 55000.00, 3),

-- Finance employees
('Christopher', 'Taylor', 'christopher.taylor@company.com', '+1-555-0401', '2023-01-10', 70000.00, 4),
('Michelle', 'Thomas', 'michelle.thomas@company.com', '+1-555-0402', '2023-03-25', 68000.00, 4),

-- Sales employees
('Kevin', 'Jackson', 'kevin.jackson@company.com', '+1-555-0501', '2023-02-14', 72000.00, 5),
('Rachel', 'White', 'rachel.white@company.com', '+1-555-0502', '2023-04-18', 74000.00, 5),
('Daniel', 'Harris', 'daniel.harris@company.com', '+1-555-0503', '2023-05-22', 71000.00, 5),

-- Employee without department
('Alex', 'Thompson', 'alex.thompson@company.com', '+1-555-0999', '2023-08-01', 50000.00, NULL);