--select s.lastname, m.description 'Major'
--from Student s 
--left join Major m on m.id = s.MajorId
--where s.Id <= 10

select concat(s.Firstname,' ',s.Lastname) 'Student Name',concat(c.Subject,' - ',c.Section) 'Course'
from Student s
	join StudentClass sc on sc.StudentId = s.Id
	right join Class c on c.Id = sc.ClassId

--select * 
--from Student
--where MajorId is null