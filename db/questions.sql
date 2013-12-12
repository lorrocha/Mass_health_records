
-- What 3 towns have the highest population of citizens
-- that are 65 years and older?
SELECT geography FROM town_health_records
WHERE geography != 'Massachusetts Total'
ORDER BY over65_2005 DESC
LIMIT 3;

-- What 3 towns have the highest population of citizens
-- that are 19 years and younger?
SELECT geography FROM town_health_records
WHERE geography != 'Massachusetts Total'
ORDER BY ages_0to19_2005 DESC
LIMIT 3;

-- What 5 towns have the lowest per capita income?
SELECT geography FROM town_health_records
WHERE geography != 'Massachusetts Total'
ORDER BY per_capita_income_2000
LIMIT 5;

-- Omitting Boston, Becket, and Beverly, what
-- town has the highest percentage of teen births?
SELECT geography FROM town_health_records
WHERE geography != 'Massachusetts Total' AND geography != 'Boston' AND geography != 'Becket' AND geography != 'Beverly'
ORDER BY percent_teen_births_2005_2008 DESC
LIMIT 1;

-- Omitting Boston, what town has the highest
-- number of infant mortalities?
SELECT geography FROM town_health_records
WHERE geography != 'Massachusetts Total' AND geography != 'Boston'
ORDER BY number_of_infant_deaths_2005_2008 DESC
LIMIT 1;
