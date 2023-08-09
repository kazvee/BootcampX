SELECT assignments.name
FROM assignments 
WHERE id NOT IN
(
  SELECT assignment_id
  FROM assignment_submissions
  JOIN students ON students.id = student_id
  WHERE students.name = 'Ibrahim Schimmel'
);

-- Search within a result set IN

-- A sub query's results can also be used within the WHERE clause of a query
-- This is perhaps the most common way of using a sub select

-- SELECT * FROM table
-- WHERE id IN (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- );