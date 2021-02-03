select c.Code, c.Subject, c.Section, CONCAT(i.lastname, ', ', i.Firstname) 'Instructor'
from Class c
join Instructor i on i.id = c.InstructorId