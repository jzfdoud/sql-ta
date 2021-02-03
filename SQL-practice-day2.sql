select s.Id, concat(s.Firstname,' ', s.Lastname) 'student full name', s.GPA, s.SAT, m.Description "major"
	from Student s
	join Major m 
		on s.MajorId = m.Id
	where s.GPA > 3.5 
		and (m.Description = 'engineering' 
			or m.Description= 'finance')
--remember PEMDAS* / truth tables
	order by s.GPA desc, s.Lastname