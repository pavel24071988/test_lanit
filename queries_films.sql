
-- запрос, который позволит получить для каждого актера все жанры.

SELECT a.name, g.name
  FROM links_fag lfag
  JOIN actors a ON lfag.actorId = a.id
  JOIN genres g ON lfag.genreId = g.id
    GROUP BY g.id
      ORDER BY lfag.actorId


-- запрос, который позволяет получить количество фильмов где больше 10 актеров

SELECT COUNT(res.filmId)
  FROM (SELECT lfag.filmId
           FROM links_fag lfag
             GROUP BY lfag.filmId
             HAVING COUNT(lfag.actorId) > 10) as res