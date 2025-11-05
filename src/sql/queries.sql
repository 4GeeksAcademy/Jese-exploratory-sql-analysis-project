-- PLEASE READ THIS BEFORE RUNNING THE EXERCISE

-- ⚠️ IMPORTANT: This SQL file may crash due to two common issues: comments and missing semicolons.

-- ✅ Suggestions:
-- 1) Always end each SQL query with a semicolon `;`
-- 2) Ensure comments are well-formed:
--    - Use `--` for single-line comments only
--    - Avoid inline comments after queries
--    - Do not use `/* */` multi-line comments, as they may break execution

-- -----------------------------------------------
-- queries.sql
-- Complete each mission by writing your SQL query
-- directly below the corresponding instruction
-- -----------------------------------------------

SELECT * FROM regions;
--SELECT * FROM species;
--SELECT * FROM climate;
SELECT * FROM observations;


-- MISSION 1
-- Your query here;
SELECT * FROM observations
LIMIT 10;

-- MISSION 2
-- Your query here;
SELECT DISTINCT region_id 
FROM observations;

-- MISSION 3
-- Your query here;
SELECT COUNT(DISTINCT species_id) 
FROM observations;

-- MISSION 4
SELECT COUNT(*)
FROM observations
WHERE region_id = 2;

-- MISSION 5
SELECT COUNT(*)
FROM observations
WHERE observation_date = '1998-08-08';

-- MISSION 6
SELECT region_id, COUNT(*) AS total
FROM observations
GROUP BY region_id
ORDER BY total DESC 
LIMIT 1;

-- MISSION 7
SELECT species_id, COUNT(*) AS frecuence
FROM observations
GROUP BY species_id
ORDER BY frecuence DESC
LIMIT 5;
-- MISSION 8
SELECT species_id, COUNT(*) AS records
FROM observations
GROUP BY species_id
HAVING records < 5
ORDER BY records ASC;
--MISSION 9;
SELECT observer, COUNT (*) AS total_observer
FROM observations
GROUP BY observer
ORDER BY total_observer DESC
--MISSION 10;
SELECT observations.id, regions.name AS region_name, observations.observation_date
FROM observations
JOIN regions ON observations.region_id = regions.id;
--MISSION 11;
SELECT observations.id, species.scientific_name
FROM observations
JOIN species ON observations.species_id = species.id;
--MISSION 12
SELECT regions.name AS region, species.scientific_name, COUNT(*) AS total
FROM observations
JOIN species ON observations.species_id = species.id
JOIN regions ON observations.region_id = regions.id
GROUP BY region, species.scientific_name
ORDER BY region, total DESC
