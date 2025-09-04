-- Create database schema
-- File: init-scripts/01-schema.sql

-- Create Department table
CREATE TABLE IF NOT EXISTS department (
                                          id SERIAL PRIMARY KEY,
                                          name VARCHAR(100) NOT NULL UNIQUE,
                                          description TEXT,
                                          created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                          updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create Employee table
CREATE TABLE IF NOT EXISTS employee (
                                        id SERIAL PRIMARY KEY,
                                        first_name VARCHAR(50) NOT NULL,
                                        last_name VARCHAR(50) NOT NULL,
                                        email VARCHAR(100) NOT NULL UNIQUE,
                                        phone VARCHAR(20),
                                        hire_date DATE NOT NULL,
                                        salary DECIMAL(10, 2),
                                        department_id INTEGER REFERENCES department(id) ON DELETE SET NULL,
                                        created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
                                        updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Create indexes for better performance
CREATE INDEX idx_employee_department_id ON employee(department_id);
CREATE INDEX idx_employee_email ON employee(email);
CREATE INDEX idx_department_name ON department(name);

-- Create a function to update the updated_at timestamp
CREATE OR REPLACE FUNCTION update_updated_at_column()
    RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ language 'plpgsql';

-- Create triggers to automatically update updated_at
CREATE TRIGGER update_department_updated_at
    BEFORE UPDATE ON department
    FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();

CREATE TRIGGER update_employee_updated_at
    BEFORE UPDATE ON employee
    FOR EACH ROW
EXECUTE FUNCTION update_updated_at_column();