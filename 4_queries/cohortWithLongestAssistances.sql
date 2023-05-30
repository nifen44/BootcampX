select c.name, avg(a.completed_at - a.started_at) as average_assistance_time from assistance_requests a inne
r join students s on a.student_id = s.id inner join cohorts c on s.cohort_id = c.id group by c.name order by average_ass
istance_time desc limit 1;