select r.Title, r.Web_Address, r.Description
from resources_t r inner join courseresource_t cr on r.Resource_ID = cr.Resource_ID
inner join courses_t c on cr.Course_ID = c.Course_ID
where c.Course_ID = 3; 


--Books
select r.Title, r.Author, r.Publication_date, r.Web_Address, r.Description
from resources_t r inner join courseresource_t cr on r.Resource_ID = cr.Resource_ID
inner join courses_t c on cr.Course_ID = c.Course_ID
where c.Course_ID = $courseID