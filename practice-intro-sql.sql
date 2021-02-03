select concat(firstname,' ', lastname) as 'student full name', m.Description as 'major'
from Student s
join major m on m.id = s.MajorId
where s.Lastname 
like '%r%'
and s.SAT >900
and s.MajorId = 6
