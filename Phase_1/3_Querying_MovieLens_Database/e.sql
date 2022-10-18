/* Critiques say that some words used in tags to convey emotions are very recurrent. To
convey positive and negative emotions, the words 'good' and 'bad', respectively, are used
predominantly in tags. 

Print all movie titles whose audience opinion is split (i.e., has at
least one audience who expresses positive emotion and at least one who expresses negative
emotion).*/

SELECT DISTINCT g.title
FROM
    (SELECT *
         FROM movies,
              tags,
              tag_names
         WHERE tags.mid = movies.mid
           AND tags.tid = tag_names.tid
           AND tag_names.tag LIKE '%good%') as g,
    (SELECT *
         FROM movies, tags, tag_names
         WHERE tags.mid = movies.mid
           AND tags.tid = tag_names.tid
           AND tag_names.tag LIKE '%bad%') as b
WHERE g.title IN (b.title)
