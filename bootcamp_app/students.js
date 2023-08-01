const { Pool } = require('pg');

const pool = new Pool({
  user: 'labber',
  password: 'labber',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`
SELECT id, name, cohort_id
FROM students
LIMIT 5;
`)
  .then(res => {
    console.log(res.rows); // logging `res` returns an object that has much more information
  })
  .catch(err => console.error('query error', err.stack));