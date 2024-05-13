--SELECT '2023-02-19':: DATE
-- Get job title, location, and location type
SELECT
    job_title_short AS title, -- Short job title
    job_location AS location, -- Job location
    CASE
        WHEN job_location = 'Anywhere' THEN 'Remote' -- If location is 'Anywhere', set to 'Remote'
        WHEN job_location = 'New York, NY' THEN 'Local' -- If location is 'New York, NY', set to 'Local'
        ELSE 'Onsite' -- Otherwise, set to 'Onsite'
    END AS location_type -- Location type based on job location
FROM
    -- Table containing job posting data
    job_postings_fact 