/*
Answering the question: What are the top paying jobs skills in the database?
- Look at the average salary associated with each skill for Data Scientist jobs in Johannesburg, South Africa.
-Focus on roles with specified salaries
why do we need this? it reveals the skills that are most in demand for a data scientist and help identify the
most in demand skills for a data scientist.
*/

SELECT skills,
    ROUND(AVG(salary_year_avg),0) AS avg_salary
FROM job_postings_fact
INNER JOIN skills_job_dim ON job_postings_fact.job_id = skills_job_dim.job_id
INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
WHERE job_title = 'Data Scientist' AND job_location = 'Johannesburg, South Africa'
AND salary_year_avg IS NOT NULL
GROUP BY skills 
ORDER BY avg_salary DESC
LiMIT 25;