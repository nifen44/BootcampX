const { Pool } = require('pg');

const pool = new Pool({
    user: 'vagrant',
    password: '123',
    host: 'localhost',
    database: 'bootcampx'
  });

  const args = process.argv.slice(2);

  pool.query(`select c.name as cohort, t.name as teacher from assistance_requests a inner join teachers t on a.teacher_id = t.id inner join students s on s.id = a.student_id inner join cohorts c on c.id = s.cohort_id where c.name LIKE '%${args[0]}%' group by c.id, t.id;`)
  .then(res=>{
    res.rows.forEach(ele=>{
        console.log(`${ele.cohort}: ${ele.teacher}`);
    })
  })
  .catch(err=>{
    console.error('query error:', err.stack);
  });