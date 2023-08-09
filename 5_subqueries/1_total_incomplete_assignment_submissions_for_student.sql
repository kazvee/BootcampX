SELECT (
  SELECT COUNT(assignments)
  FROM assignments
)-COUNT(assignment_submissions) AS total_incomplete
FROM assignment_submissions
JOIN students ON students.id = student_id
WHERE students.name = 'Ibrahim Schimmel';

-- As a column in SELECT

-- If a query returns a single value, we can use it in our SELECT statement just like any other value

-- SELECT (
--   SELECT count(*)
--   FROM table_name
-- ) AS total, other_column
-- FROM other_table_name
-- ORDER BY total;