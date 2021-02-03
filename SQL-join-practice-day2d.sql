--select m.Description 'Major', c.Code, c.Subject
--	from Major m
--	join MajorClass mc on mc.MajorId = m.Id
--	join Class c on c.Id = mc.ClassId

	select  c.Code, c.Subject, m.Description 'Major'
	from Class c
	join MajorClass mc on mc.ClassId = c.Id
	join Major m on m.Id = mc.MajorId
	order by c.Code