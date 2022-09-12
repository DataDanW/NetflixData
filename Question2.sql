SELECT * FROM netflix;

-- Quantity of US content per age rating
SELECT rating, COUNT(rating) AS No_per_rating
FROM netflix
WHERE country LIKE '%United States%'
GROUP BY rating
ORDER BY COUNT(rating)DESC;


-- Number of releases per country
SELECT country, COUNT(country)
FROM netflix
WHERE country IS NOT ""
GROUP BY country
ORDER BY COUNT(country)DESC;


-- Most (US) content added by month
SELECT date_added, COUNT(date_added) AS most_added
FROM netflix
WHERE country LIKE '%United States%'
GROUP BY date_added
ORDER BY COUNT(date_added) DESC;


-- 10 Oldest released movies
SELECT Title, type, release_year
FROM netflix
WHERE type LIKE 'Movie'
ORDER BY release_year ASC
LIMIT 10;


--Number of movies vs tv shows
SELECT type, COUNT(type)AS total
FROM netflix
GROUP BY type;

-- Next) Amend date format, attempt to clean duration and split comma delinated cells
SELECT date_added FROM netflix
ORDER BY date_added;

SELECT MIN(date_added) 
FROM netflix
WHERE date_added IS NOT "" AND date_added IS NOT NULL;

