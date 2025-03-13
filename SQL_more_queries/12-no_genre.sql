-- Use the provided database
USE hbtn_0d_tvshows;

-- List tv shows without a genre linked, sorted by tv shows title
SELECT tv_shows.title, tv_show_genres.genre_id
FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id = tv_show_genres.tv_show_id
WHERE tv_show_genres.genre_id IS NULL
ORDER BY tv_shows.title ASC;
