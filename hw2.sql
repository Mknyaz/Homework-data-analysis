SELECT 'Князятов Михаил';
-- первый запрос
SELECT * FROM ratings LIMIT 10;
SELECT * FROM links WHERE imbdId LIKE '%42' AND movieId BETWEEN 100 AND 1000;

-- второй запрос
SELECT imbdId FROM links INNER JOIN ratings ON links.movieId = ratings.movieId WHERE ratings.rating = 5;

-- третий запрос
SELECT COUNT(*) FROM ratings WHERE rating IS NULL;
SELECT userId, avg(rating) FROM ratings GROUP BY userId HAVING avg(rating)>3.5 ORDER BY avg(rating) DESC LIMIT 10;

-- четвёртый запрос
SELECT imbdId, avg(rating) FROM links INNER JOIN ratings ON links.movieId = ratings.movieId GROUP BY imbdId HAVING avg(rating)>3.5  LIMIT 10;
SELECT avg(avg_rating) FROM (SELECT avg(rating) AS avg_rating FROM ratings GROUP BY userId HAVING COUNT(userId)>10) AS avg_ratings;
