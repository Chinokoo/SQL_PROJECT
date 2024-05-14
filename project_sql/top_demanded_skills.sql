/*
question: what are the top demanding skills for a data scientist?
-join the job postings table with the skills table
-identify the top skills for each job.
-focus on all job postings. 
*/

SELECT skills,
COUNT(skills_job_dim.job_id) AS Demand
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title = 'Data Scientist' AND job_location = 'Johannesburg, South Africa'
GROUP BY skills
ORDER BY Demand DESC
LiMIT 5;