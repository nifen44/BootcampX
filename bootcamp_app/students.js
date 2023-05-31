const { Pool } = require('pg');

const pool = new Pool({
    user: 'vagrant',
    password: '123',
    host: 'localhost',
    database: 'bootcampx'
  });

  const args = process.argv.slice(2);

  pool.query(`select s.id, s.name as student, c.name as cohort from students s inner join cohorts c on s.cohort_id = c.id where c.name LIKE '${args[0]}%' limit ${args[1]};`)
  .then(res => {
  res.rows.forEach(user => {
    console.log(`${user.student} has an id of ${user.id} and was in the ${user.cohort} cohort`);
  })  
});