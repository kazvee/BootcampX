SELECT SUM(assignment_submissions.duration) AS total_duration
FROM assignment_submissions
JOIN students ON students.id = student_id
JOIN cohorts ON cohorts.id = cohort_id
WHERE cohorts.name = 'FEB12';


-- My Solution: 
-- The below is even more precise in defining the JOIN than the provided solution. 
-- It's perfectly acceptable, and sometimes encouraged, to explicitly mention the column names along with their table names when dealing with JOINs. 
-- It makes the code more readable and safe, especially in situations when there is more than one table with the same field names.

-- SELECT SUM(assignment_submissions.duration) AS total_duration
-- FROM assignment_submissions
-- JOIN students ON students.id = assignment_submissions.student_id
-- JOIN cohorts ON cohorts.id = students.cohort_id
-- WHERE cohorts.name = 'FEB12';


-- Mentor Advice: 
-- When joining tables, we could also use an alias to make it shorter, so we'll still know where each column comes from without having to type the entire thing:

-- SELECT SUM(a_s.duration) AS total_duration
-- FROM assignment_submissions AS a_s
-- JOIN students AS s ON s.id = a_s.student_id
-- JOIN cohorts AS c ON c.id = s.cohort_id
-- WHERE c.name = 'FEB12';