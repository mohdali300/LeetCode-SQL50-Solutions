select e.machine_id, round(avg(e.timestamp-s.timestamp),3) as processing_time
from Activity e join Activity s
on e.process_id=s.process_id
and e.machine_id=s.machine_id
where s.activity_type='start'
and e.activity_type='end'
group by e.machine_id