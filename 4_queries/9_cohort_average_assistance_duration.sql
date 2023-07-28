SELECT AVG(total_duration) AS average_total_duration
FROM (
  SELECT cohorts.name AS cohort, SUM(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts on cohorts.id = cohort_id
  GROUP BY cohorts.name
  ORDER BY total_duration
) AS alias_for_derived_table;

-- When a subquery is used in the FROM clause to create a derived table, it must be given an alias as a temporary name, even if the alias is not direcly used in the outer query.
-- The alias (shown above in Line 9) allows the database to treat the subquery result as a virtual table, which can be referenced and manipulated in the outer query. 
-- Without the alias, the database would be unable to interact with the subquery's result, leading to errors in the query execution. 
-- The alias is essential for establishing a connection between the subquery and the outer query, ensuring that the data from the subquery can be accessed and processed in the final result.