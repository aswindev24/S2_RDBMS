-- Step 1: Create the sample table and insert data
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

INSERT INTO employees (name) VALUES
('Alice'),
('Bob'),
('Charlie');

-- Step 2: Create the stored procedure with a cursor
DELIMITER $$

CREATE PROCEDURE ListEmployees()
BEGIN
    DECLARE done INT DEFAULT 0;
    DECLARE employee_name VARCHAR(100);
    
    DECLARE employee_cursor CURSOR FOR
    SELECT name FROM employees;
    
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;

    OPEN employee_cursor;
    
    read_loop: LOOP
        FETCH employee_cursor INTO employee_name;
        
        IF done THEN
            LEAVE read_loop;
        END IF;
        
        SELECT employee_name;
    END LOOP;

    CLOSE employee_cursor;
END$$

DELIMITER ;

-- Step 3: Call the stored procedure
CALL ListEmployees();
