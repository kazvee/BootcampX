SELECT AVG(total_students) AS average_students
FROM (
  SELECT COUNT(students) AS total_students, cohorts.name AS cohort_name
  FROM students
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) AS totals_table;

-- FROM sub select table

-- The result of a select is effectively a table that can be used as you would use a table
-- So a select statement may be used as a data source of another select statement

-- SELECT * FROM (
--   SELECT something_id
--   FROM someTable
--   WHERE something
-- ) AS sub_table;