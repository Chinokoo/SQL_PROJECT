/*
Answering the question: What are the top paying jobs skills in the database?
    -identify the top 10 jobs by average salary
    -connect  with the skills table to identify the top skills for each job
*/

WITH
    top_paying_jobs AS (
        SELECT
            job_id,
            job_title,
            salary_year_avg,
            name As company_name
        FROM
            job_postings_fact
            LEFT JOIN company_dim ON job_postings_fact.company_id = company_dim.company_id
        WHERE
            job_title = 'Data Scientist'
            AND job_location = 'Johannesburg, South Africa'
            AND salary_year_avg IS NOT NULL
        ORDER BY
            salary_year_avg DESC
        LIMIT
            20
    )
SELECT
    top_paying_jobs.*,
    skills
FROM
    top_paying_jobs
    INNER JOIN skills_job_dim ON top_paying_jobs.job_id = skills_job_dim.job_id
    INNER JOIN skills_dim ON skills_job_dim.skill_id = skills_dim.skill_id
ORDER BY
    salary_year_avg DESC