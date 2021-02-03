select m.Id'Major', mc.MajorId'MajorID', mc.ClassId'ClassId', c.Id'Class', c.InstructorId'InstId', i.Id' Inst'
from Major m
join MajorClass mc on mc.MajorId = m.id
join Class c on c.Id = mc.ClassId
join Instructor i on i.Id = c.InstructorId