-- query 1: Write a query to list all courses, concatenating the course_name and semester fields with a hyphen between them

SELECT CONCAT(course_name, ' - ', semester) 
AS course_semester
FROM courses;

-- Query 2: Write a query to find all courses that have a lab session scheduled on Friday. 
SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

-- Query 3: Write a query to list all assignments with a due date after the current date.

SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE; 

-- Query 4: Write a query to count the number of assignments for each status (e.g., "Not Started", "In Progress", "Completed").

SELECT status, COUNT(*) AS assignment_count
FROM assignments
GROUP BY status;
-- Query 5: Write a query to find the course with the longest course_name. Use the length() function to compare the lengths.
SELECT 
    course_name,
    LENGTH(course_name) AS name_length
FROM 
    courses
ORDER BY 
    name_length DESC;
    
-- Query 6: Write a query to return a list of all course names in uppercase.

SELECT upper(course_name) 
FROM courses;

-- Query 7: Write a query to list the titles of all assignments that are due in September, regardless of year. Use the LIKE operator to filter due_date.

SELECT title
From assignments
WHERE due_date like '%-09-%';

-- Query 8: Write a query to find all assignments where the due_date is missing.

SELECT COUNT(*) AS total, 
   COUNT(due_date) AS null_due_dates
FROM assignments;







