# Introduction

I Dive into the data job market! focusing on data science roles, this project explores the top paying jobs, skills and high salary in south africa.

SQL Queries? check them out here: [project_sql](/project_sql/)

# Background

The SQL queries in the project_sql folder analyze job data from various sources to identify trends and insights related to data science roles in South Africa. The queries explore factors such as job titles, required skills, salary ranges, and geographic distribution of high-paying data science positions.

By examining this data, we aim to provide valuable information for individuals interested in pursuing careers in the data science field within the South African job market.

All the Data of this project hails from the [lukebarousse.com](https://www.lukebarousse.com/sql) website.

### insight that i was looking for in this project.

1. [What are the top paying data science jobs in Johannesburg, South Africa?](/project_sql/top_paying_jobs.sql)
2. [what are the job skills required for a data scientist in Johannesburg?](/project_sql/top_paying_job_skills.sql)
3. [what are the top paying data science skills?](/project_sql/top_paying_skills.sql)
4. [what are the top paying data science skills in the south african job market?](/project_sql/top_demanded_skills.sql)

# Tools

The main tools used in this project are:

- _SQL_: Used for querying and analyzing the job data from various sources.
- _PostgreSQL_: The database management system used to store and manage the job data.
- _VS Code_: The code editor used for writing and managing SQL queries.
- _Git_: The version control system used for tracking changes and managing the project's codebase.
- _GitHub_: The online platform used for hosting and sharing the project's code repository.

# Lesson Learnt

- The importance of data analysis in understanding job market trends and identifying high-paying opportunities.
- How to effectively use SQL to query and analyze job data from various sources.
- The value of exploring different data sources and combining insights to gain a comprehensive understanding of a topic.
- The significance of version control and collaboration tools (Git and GitHub) in managing and sharing code projects.

# Conclusion

This project aimed to provide valuable insights into the data science job market in South Africa, particularly in Johannesburg. By analyzing job data from various sources, we identified the top-paying data science roles, the required skills, and the most in-demand skills in the industry.

### sample code.

```sql
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
```

Through this analysis, we gained a better understanding of the job market trends and the skills that are highly valued by employers. This information can be beneficial for individuals interested in pursuing a career in data science or for professionals looking to upskill and enhance their employability.

### Standard Bank Group and Luno offer the same average annual salary of $157,500.

### Inlumi offers a slightly lower average annual salary of $90,670.

Overall, this project demonstrated the power of data analysis and the importance of leveraging tools like SQL, databases, and version control systems to extract meaningful insights from data. By combining different data sources and applying analytical techniques, we were able to uncover valuable information that can guide career decisions and help individuals navigate the competitive job market.
