-- #1
SELECT title, rating FROM movies ORDER BY rating ASC LIMIT 50;

-- #2
SELECT title FROM movies WHERE rating is NULL ORDER BY title;

-- #3
SELECT title FROM movies WHERE synopsis LIKE '%thrilling%';

-- #4
SELECT title, year, rating FROM movies WHERE genre_id = 17 AND year > 1979 AND year < 1990 ORDER BY rating DESC;

-- #5
SELECT cast_members.character, actors.name,movies.title,movies.year
FROM cast_members
JOIN actors
ON actors.id = cast_members.actor_id
JOIN movies
ON movies.id = cast_members.movie_id
WHERE character LIKE '%James Bond%'
ORDER BY year ASC;

-- #6
SELECT movies.title,movies.year,genres.name
FROM actors
JOIN cast_members
ON actors.id = cast_members.actor_id
JOIN movies
ON movies.id = cast_members.movie_id
JOIN genres
ON movies.genre_id = genres.id
WHERE actors.name LIKE '%Julianne Moore%'
ORDER BY genres.name, movies.title;

-- #7
SELECT movies.title,movies.year,studios.name
FROM genres
JOIN movies
ON movies.genre_id = genres.id
JOIN studios
ON studios.id = movies.studio_id
WHERE genres.id = 2
ORDER BY movies.year
movies LIMIT 5;



