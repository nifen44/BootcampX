select distinct(t.name) as teacher, c.name as cohort from assistance_requests ar inner join teachers t on ar
.teacher_id = t.id inner join students s on ar.student_id = s.id inner join cohorts c on s.cohort_id = c.id where c.name
 = 'JUL02' order by t.name;