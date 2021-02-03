select c.Subject, c.Section, concat(i.Lastname,', ', i.firstname) 'Instructor', i.YearsExperience, i.IsTenured 
from Class c
join Instructor i on i.Id=c.InstructorId
--where i.YearsExperience in (10,21)
where i.YearsExperience > 9
order by i.Lastname , c.Subject