select sum(a.duration) as total_duration 
from assignment_submissions a 
inner join students s on s.id = a.student_id 
where s.id in (select st.id from students st 
inner join cohorts co on st.cohort_id = co.id 
where co.name = 'FEB12');