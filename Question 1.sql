-- 1)	Write a SQL query that gets the attempt for each user that has the highest score amongst all of that user’s attempts.

WITH score_table AS
(
	SELECT 
		userID, 
		attempt, 
		RANK() OVER(PARTITION BY userID ORDER BY (COUNT(CASE WHEN iscorrect THEN 1 END))) AS score_rank --Ranking based on sum of correct answers
	FROM User_answers
	GROUP BY userID, attempt
)
SELECT userID, attempt
FROM score_table
WHERE score_rank = 1