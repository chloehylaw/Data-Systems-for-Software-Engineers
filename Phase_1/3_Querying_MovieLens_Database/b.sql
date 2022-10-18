-- Print all movie titles starring ’Daniel Craig’, sorted in an ascending alphabetical order

SELECT a.name
FROM movies m, actors a
WHERE m.title = 'The Dark Knight'
    AND m.mid = a.mid
ORDER BY name;
