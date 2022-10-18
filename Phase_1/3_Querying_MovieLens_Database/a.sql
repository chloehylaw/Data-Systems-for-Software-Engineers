-- Print all movie titles starring ’Daniel Craig’, sorted in an ascending alphabetical order.

SELECT movies.title
FROM movies, actors
WHERE actors.mid = movies.mid
    AND actors.name = 'Daniel Craig'
ORDER BY movies.title;
