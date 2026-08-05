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








