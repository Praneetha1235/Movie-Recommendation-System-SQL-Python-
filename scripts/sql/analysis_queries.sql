-- Total content count
SELECT COUNT(*) FROM netflix;

-- Movies vs TV Shows
SELECT type, COUNT(*) 
FROM netflix
GROUP BY type;

-- Top 10 countries producing content
SELECT country, COUNT(*) as total
FROM netflix
GROUP BY country
ORDER BY total DESC
LIMIT 10;

-- Content released per year
SELECT release_year, COUNT(*) as total
FROM netflix
GROUP BY release_year
ORDER BY release_year;

-- Most common genres
SELECT listed_in, COUNT(*) as total
FROM netflix
GROUP BY listed_in
ORDER BY total DESC;
