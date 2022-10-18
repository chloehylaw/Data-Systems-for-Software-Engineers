-- Print names of the cast of the movie ’The Dark Knight’ in an ascending alphabetical order.

SELECT a.name
FROM movies m, actors a
WHERE m.title = 'The Dark Knight'
    AND m.mid = a.mid
ORDER BY name;
