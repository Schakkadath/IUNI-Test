--3) Write a SQL query that will update the user’s initials based on their fullname.  

UPDATE users set initials = LEFT(SPLIT_PART(Fullname, ' ', 1),1)||LEFT(SPLIT_PART(Fullname, ' ', 2),1) 

