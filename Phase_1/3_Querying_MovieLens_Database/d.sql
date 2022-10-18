-- For each year, print the movie title, year, and rating, sorted in the ascending order of year and the descending order of movie rating.

SELECT m.title, m.year, m.rating
FROM movies m
ORDER BY m.year ASC, m.rating DESC
