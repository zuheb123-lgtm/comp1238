-- Query 1:  Write a query to display the title and due_date of assignments for the course COMP1234.
SELECT title, due_date
FROM assignments
WHERE course_id = 'COMP1234';

-- Query 2: Write a query to find the earliest assignment due date in the assignments table. Hint: use SELECT min()
SELECT min(due_date)
FROM assignments;

-- Query 3: Write a query to find the latest assignment due date in the assignments table.
SELECT max(due_date)
FROM assignments;

-- Query 4: Write a query to find the title and course_id of assignments due on 2024-10-08.
SELECT corse_id, title
FROM assignments
WHERE due_date = '2024-10-08';

-- Query 5: Write a query to display the title and due_date of assignments due in October 2024.
SELECT  title, due_date
FROM assignments
WHERE due_date LIKE '2024-10';

-- Query 6: Write a query to find the most recent due_date of assignments with a status of "Completed"
SELECT due_date
FROM assignments
WHERE status = 'completed';


