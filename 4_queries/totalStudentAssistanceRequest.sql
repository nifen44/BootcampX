select count(a.id) as total_assistances, s.name from assistance_requests a inner join students s on a.studen
t_id = s.id where s.name = 'Elliot Dickinson' group by s.name;