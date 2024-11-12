-- Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';


-- Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT min(due_date)
FROM assignments;



