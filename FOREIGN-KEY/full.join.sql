-- full join 
SELECT * FROM post as p 
    FULL JOIN "user" as u on p.user_id = u.id