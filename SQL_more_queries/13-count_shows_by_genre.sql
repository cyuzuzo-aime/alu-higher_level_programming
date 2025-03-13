-- Use the provided database

-- List genres and the number of shows linked to each genre, sorted by the number of shows in descending order
SELECT genres.name AS genre, COUNT(tv_show_genres.tv_show_id) AS number_of_shows
FROM genres
JOIN tv_show_genres ON genres.id = tv_show_genres.genre_id
GROUP BY genres.name
HAVING COUNT(tv_show_genres.tv_show_id) > 0
ORDER BY number_of_shows DESC;
