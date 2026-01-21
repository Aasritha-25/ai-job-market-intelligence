-- 1. View all job market data
SELECT * 
FROM job_market_data;

-- 2. Count of jobs by role
SELECT role, COUNT(*) AS job_count
FROM job_market_data
GROUP BY role
ORDER BY job_count DESC;

-- 3. Fresher vs Experienced demand
SELECT experience_level, COUNT(*) AS job_count
FROM job_market_data
GROUP BY experience_level;

-- 4. Job demand by location
SELECT location, COUNT(*) AS job_count
FROM job_market_data
GROUP BY location
ORDER BY job_count DESC;

-- 5. Average salary by role
SELECT role, AVG(salary_lpa) AS avg_salary_lpa
FROM job_market_data
GROUP BY role;

-- 6. Skill demand frequency (conceptual analysis)
-- Skills column can be further split for deeper analysis
SELECT skills, COUNT(*) AS frequency
FROM job_market_data
GROUP BY skills
ORDER BY frequency DESC;
