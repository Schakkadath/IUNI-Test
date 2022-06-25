--2) Write a SQL query that fetches all attempts and total scores for each attempt for a given user, defined by that user’s initials.  You may assume that each user has unique initials. 

WITH score_table AS
(
	SELECT 
		userID, 
		attempt, 
		SUM(CASE WHEN iscorrect THEN 1 END) as score --scores for each attempt
	FROM User_answers
	GROUP BY userID, attempt
)
SELECT 
	users.initials, 
	st.attempt, 
	st.score
FROM score_table st
INNER JOIN users on users.userID  = st.userID 
WHERE users.initials = 'XX' --put initials here 