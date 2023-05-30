select avg(total_duration) as average_total_duration from (select sum(a.completed_at - started_at) as total_
duration from assistance_requests a inner join students s on s.id = a.student_id inner join cohorts c on c.id = s.cohort
_id group by c.name order by total_duration) as total_durations;
 average_total_duration