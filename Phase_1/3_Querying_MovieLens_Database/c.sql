-- Print the distinct genres in the database and their corresponding number of movies N where N is greater than 1000, sorted in the ascending order of N.

SELECT genre, COUNT AS num_movies
FROM (
    SELECT genre, COUNT(movies.title) as count
    FROM movies, genres
    WHERE movies.mid = genres.mid
    GROUP BY genres.genre
    ORDER BY count ASC
) as gc
WHERE gc.count > 1000
