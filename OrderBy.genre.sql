SELECT *
FROM
 movie_data.movies
WHERE
 Genre = "Comedy"
 AND Revenue > 300000000
ORDER BY Release_Date DESC