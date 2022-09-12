

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


--How many TV shows vs Movies
SELECT type, COUNT(type)
    AS Movies_vs_Shows
FROM netflix 
GROUP BY type;

--Most featured director
SELECT director, COUNT(director)
    AS most_feat_director
FROM netflix
WHERE director IS NOT ''
GROUP BY director
ORDER BY COUNT(director)DESC
LIMIT 1;

-- What is the top 3 most featured genres produced in the US?
SELECT listed_in AS genre, COUNT(country)
    AS top_us_genre
FROM netflix
WHERE country LIKE '%United States%'
GROUP BY genre
ORDER BY COUNT(country)DESC
LIMIT 3;