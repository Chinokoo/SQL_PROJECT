--ALTER TABLE job_applied ADD COLUMN contact varchar(100);

UPDATE job_applied SET contact = '1234567890' WHERE job_id = 1;
UPDATE job_applied SET contact = '1234598767' WHERE job_id = 2;
UPDATE job_applied SET contact = '1234599999' WHERE job_id = 3;
UPDATE job_applied SET contact = '1234561111' WHERE job_id = 4;
UPDATE job_applied SET contact = '1234561010' WHERE job_id = 7;
SELECT * FROM job_applied;