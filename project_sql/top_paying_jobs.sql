--Answering the question: What are the top paying jobs in the database?
/*
    -identify the top 10 jobs by average salary
    -focus on the job postings with specific salaries (not average)
*/

SELECT 
    job_id,
    job_title,
    job_location,
    job_schedule_type,
    salary_year_avg,
    job_posted_date,
    name As company_name
FROM
    job_postings_fact
LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
WHERE
    job_title = 'Data Scientist' AND 
    job_location = 'Johannesburg, South Africa' AND
    salary_year_avg IS NOT NULL
ORDER BY salary_year_avg DESC
LIMIT 20;
 