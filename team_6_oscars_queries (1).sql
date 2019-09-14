use oscars;

/#Query 1#/
SELECT pro_comp_name 
FROM production_companies
WHERE pro_comp_street_address = "45 Folgate Street";

/#Query 2#/
SELECT CONCAT(act_first_name,", ",act_last_name) AS full_name 
FROM actors
INNER JOIN actors_roles USING(actor_id)
WHERE roles = 'Batman';

/#Query 3#/
SELECT movies.movie_title
FROM movies
JOIN movie_genres USING(movie_id)
JOIN genres USING (genre_id)
WHERE genre_name = "Western";

/#Query 4#/
SELECT COUNT(winner)
FROM movies_awards_join
JOIN movies USING(movie_id)
WHERE winner = "Y" and movie_title = "12 Years a Slave";

/#Query 5#/
SELECT FORMAT(SUM(worldwide_gross),2) AS total_gross #5
FROM movies
JOIN production_companies USING(pro_comp_id)
WHERE pro_comp_state != "CA";

/#Query 6#/
SELECT movies.movie_title, FORMAT((worldwide_gross-budget),2) AS difference 
FROM movies
WHERE pro_comp_id IN
(SELECT pro_comp_id
FROM production_companies
WHERE pro_comp_state ="CA")
ORDER BY movie_title ASC;

 /#Query 7#/
 SELECT ROUND(AVG(rotten_tomatoes_review),2)
 FROM movies
 JOIN movies_directors USING(movie_id)
 JOIN directors USING (director_id)
 WHERE dir_last_name = "Nolan";

 
