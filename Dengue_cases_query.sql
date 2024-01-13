
-- 1. How many individuals are there in the dataset?

-- Using a Aggregate Function COUNT()
SELECT COUNT(*)
FROM dengue_cases


-- 2. How many individuals have Dengue?

SELECT COUNT(dengue)
FROM dengue_cases
WHERE dengue LIKE 'YES'


-- 3. List the names of individuals who have all symptoms (Fever, Headache, JointPain, Bleeding) but no Dengue.

SELECT name
FROM dengue_cases
WHERE fever = 'YES' AND
	headache = 'YES' AND
	jointpain = 'YES' AND
	bleeding = 'YES' AND
	dengue = 'NO'


-- 4. What is the percentage of individuals with Fever?

SELECT ((COUNT(CASE WHEN fever = 'YES' THEN 1 END)* 100) / COUNT(*)) AS fever_percentage
FROM dengue_cases


-- 5. Identify individuals with JointPain and Bleeding, but no other symptoms.

SELECT COUNT(name) AS jointpain_n_bleeding_list
FROM dengue_cases
WHERE fever = 'NO' AND
	headache = 'NO' AND
	jointpain = 'YES' AND
	bleeding = 'YES' AND
	dengue = 'NO'


-- 6. How many individuals have at least two symptoms?
	
SELECT COUNT(*) AS Numofindividuals
FROM dengue_cases
WHERE (CASE WHEN Fever = 'YES' THEN 1 ELSE 0 END +
       CASE WHEN Headache = 'YES' THEN 1 ELSE 0 END +
       CASE WHEN JointPain = 'YES' THEN 1 ELSE 0 END +
       CASE WHEN Bleeding = 'YES' THEN 1 ELSE 0 END +
	   CASE WHEN Dengue = 'YES' THEN 1 ELSE 0 END) >= 2;

	
-- 7. List the names of individuals with no symptoms.

SELECT name AS Nosymptoms_list
FROM dengue_cases
WHERE fever = 'NO' AND
	headache = 'NO' AND
	jointpain = 'NO' AND
	bleeding = 'NO' AND
	dengue = 'NO'


-- 8. What is the percentage of individuals with each symptom (Fever, Headache, JointPain, Bleeding, Dengue)?

SELECT ((COUNT(CASE WHEN fever = 'YES' THEN 1 END)* 100)/COUNT(*)) as fever_percentage,
((COUNT(CASE WHEN headache = 'YES'THEN 1 END)* 100)/COUNT(*)) as headache_percentage,
((COUNT(CASE WHEN jointpain = 'YES' THEN 1 END)* 100)/ COUNT(*)) as jointpain_percentage,
((COUNT(CASE WHEN bleeding = 'YES' THEN 1 END)* 100)/ COUNT(*)) as bleeding_percentage,
((COUNT(CASE WHEN dengue = 'YES' THEN 1 END)* 100)/ COUNT(*)) as dengue_percentage
FROM dengue_cases


-- 9. List the names of individuals with Fever but without Dengue.

SELECT name AS dengue_without_fever
FROM dengue_cases
WHERE fever = 'YES' AND dengue = 'NO'


-- 10. How many individuals have experienced Bleeding?

SELECT COUNT(name)
FROM dengue_cases
WHERE bleeding = 'YES'


-- 11. List the names of individuals who have neither JointPain nor Headache.

SELECT name
FROM dengue_cases
WHERE jointpain = 'NO' AND headache = 'NO'

-- 12. How many individuals have all symptoms (Fever, Headache, JointPain, Bleeding, Dengue)?

SELECT COUNT(name) AS all_symptoms
FROM dengue_cases
WHERE fever = 'YES' AND
	headache = 'YES' AND
	jointpain = 'YES' AND
	bleeding = 'YES' AND
	dengue = 'YES'


-- 13. How many individuals have exactly three symptoms?

SELECT COUNT(*) AS three_symptoms
FROM dengue_cases
WHERE (CASE WHEN Fever = 'YES' THEN 1 ELSE 0 END +
	   CASE WHEN headache = 'YES' THEN 1 ELSE 0 END +
	   CASE WHEN jointpain = 'YES' THEN 1 ELSE 0 END +
	   CASE WHEN bleeding = 'YES' THEN 1 ELSE 0 END +
	   CASE WHEN dengue = 'YES' THEN 1 ELSE 0 END) = 3; 
	   

-- 14. List the names of individuals who don't have a Headache but may have other symptoms.

-- Using CTE 
WITH no_headache AS
	(SELECT *
	 FROM dengue_cases
	 WHERE headache = 'NO')
	
SELECT name
FROM no_headache
WHERE fever = 'YES' OR jointpain = 'YES' OR bleeding = 'YES' OR dengue = 'YES'


-- 15. Count the number of individuals for each unique combination of symptoms, including Dengue.

-- Using CONCAT Function and GROUP BY Clause
SELECT
    CONCAT(Fever, Headache, JointPain, Bleeding, Dengue) AS SymptomCombination,
    COUNT(*) AS NumberOfIndividuals
FROM dengue_cases
GROUP BY SymptomCombination;
