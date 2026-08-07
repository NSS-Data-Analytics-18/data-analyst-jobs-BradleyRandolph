SELECT * 
FROM data_analyst_jobs;

SELECT COUNT(title) 
FROM data_analyst_jobs;


SELECT *
FROM data_analyst_jobs
     LIMIT 10;


SELECT COUNT(data_analyst_jobs) AS TN_listings
FROM data_analyst_jobs
WHERE location ='TN';



SELECT *
FROM data_analyst_jobs
WHERE location ='TN' OR location ='KY';


SELECT COUNT(data_analyst_jobs) AS TN_KY_listings
FROM data_analyst_jobs
WHERE location ='TN' OR location ='KY';



SELECT COUNT(data_analyst_jobs) AS star_over_4
FROM data_analyst_jobs
WHERE location ='TN'
   AND star_rating >4;



SELECT COUNT(review_count) AS review_count_between_500_1000
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;


SELECT location AS state, ROUND(AVG(star_rating),2) AS AVG_rating
FROM data_analyst_jobs
WHERE location IS NOT NULL
AND star_rating IS NOT NULL
GROUP BY location;



SELECT DISTINCT title
FROM data_analyst_jobs;



SELECT COUNT(DISTINCT title) AS unique_job_titles
FROM data_analyst_jobs;



SELECT COUNT(DISTINCT title) AS CA_unique_job_titles
FROM data_analyst_jobs
WHERE location ='CA';



SELECT company, AVG(star_rating), SUM(review_count)
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000;


SELECT company, ROUND(AVG(star_rating),2) AS avg_star_rating, 
SUM(review_count) AS review_count
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000;



SELECT company, ROUND(AVG(star_rating),2) AS avg_star_rating, 
SUM(review_count) AS review_count
FROM data_analyst_jobs
GROUP BY company
HAVING SUM(review_count)>5000
ORDER BY review_count DESC;


SELECT title
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';



SELECT COUNT(title) AS analyst_jobs
FROM data_analyst_jobs
WHERE title ILIKE '%analyst%';




SELECT title
FROM data_analyst_jobs
WHERE title NOT ILIKE '%analyst%'
   AND title NOT ILIKE '%analytics%';




SELECT skill
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%';


SELECT domain, COUNT(*) AS job_count
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
   AND days_since_posting >21
   AND domain IS NOT NULL
   GROUP BY domain;



SELECT domain, COUNT(*) AS job_count
FROM data_analyst_jobs
WHERE skill ILIKE '%SQL%'
   AND days_since_posting >21
   AND domain IS NOT NULL
   GROUP BY domain
   ORDER BY job_count DESC
   LIMIT 3;



