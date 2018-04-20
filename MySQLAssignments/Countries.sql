SELECT * FROM languages 
WHERE language LIKE "Slovene" 
ORDER BY percentage DESC;

SELECT cities.name, cities.population FROM countries 
JOIN cities ON cities.country_id = countries.id 
WHERE cities.population >= 500000 AND countries.name="Mexico" 
ORDER BY cities.population DESC;

SELECT languages.Language, languages.percentage FROM languages 
JOIN countries ON languages.country_id = countries.id 
WHERE Percentage>=89 
ORDER by languages.percentage DESC;

SELECT government_form, capital, life_expectancy FROM countries 
WHERE government_form = "Constitutional Monarchy" AND capital >= 200 AND life_expectancy >= 75;

SELECT name, surface_area, population FROM countries 
WHERE surface_area <501 AND population >100000;

SELECT countries.name, cities.name, cities.district, cities.population 
FROM cities
JOIN countries ON cities.country_id = countries.id 
WHERE cities.district = "Buenos Aires" AND cities.population >= 500000;

SELECT region, COUNT(id) 
FROM countries 
GROUP BY region 
ORDER BY COUNT(id) DESC;

SELECT countries.name, COUNT(cities.id)
FROM countries
JOIN cities ON cities.country_id=countries.id
group by countries.id
ORDER BY COUNT(cities.id) DESC;
