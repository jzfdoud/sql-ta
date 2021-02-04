
----1) "Having" example

select m.Description 'Major', AVG(GPA) 'AVG GPA'
from Student s
right join Major m on m.id = s.MajorId
group by m.Description
having AVG(GPA) >= 3.0

----2) Practice from my bootcamp, now able to do! yay!
select DATEDIFF(SECOND,'1997-10-29','2021-02-04')

----2a) Date and Time Functions- slide 119
declare @purchdate datetime = '2021-02-03'

select DATEADD(dd,2,@purchdate)