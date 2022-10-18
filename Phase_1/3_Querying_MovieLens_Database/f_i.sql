/*
One would expect that the movie with the highest number of user ratings is either the
highest rated movie or perhaps the lowest rated movie. Let’s find out if this is the case here.

i. Print all information (mid, title, year, num ratings, rating) for the movie(s) with the
highest number of ratings.
*/

SELECT *
FROM movies m
WHERE m.num_ratings in (
	SELECT max(movies.num_ratings) 
	FROM movies)
