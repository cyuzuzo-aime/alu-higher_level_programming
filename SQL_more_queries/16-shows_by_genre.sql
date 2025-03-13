-- Use the provided database
USE hbtn_0d_tvshows;

-- List all shows and their linked genres (or NULL if no genre linked)
SELECT tv_shows.title, genres.name
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
LEFT JOIN genres ON tv_show_genres.genre_id = genres.id
ORDER BY tv_shows.title ASC, genres.name ASC;
