use jobs_in_data;
# checked the data in Excel prior importing to MYSQL and was clean no errors found
#check the columns and rows
select*
from
jobs_in_data;

# Job trends overtime 
Select
work_year,
job_category,
count(*) as jobs_count
From
   jobs_in_data
group by work_year, job_category
order by jobs_count DESC;

# average salary by job category, experience level
select
job_category,
experience_level,
count(*) as number_of_experience,
AVG(salary_in_usd) as average_salary
from
 jobs_in_data
group by job_category, experience_level
order by average_salary DESC;

# average salary by work setting and year
select
   work_year, 
   work_setting,
   count(*) as number_of_worksetting,
   avg(salary_in_usd) as average_salary
from
   jobs_in_data
group by work_setting, work_year
order by average_salary DESC;
   
# correlation between job category and company size
select 
company_size,
job_category,
count(*) as job_counts
from 
  jobs_in_data
group by company_size, job_category
order by job_counts DESC;

# average salary by location
select 
company_location,
AVG(salary_in_usd) as avg_salary
from 
  jobs_in_data
group by company_location
order by avg_salary DESC;

# Total average salary per year

SELECT 
 AVG(salary_in_usd) AS total_average_salary
FROM jobs_in_data
WHERE
 work_year BETWEEN 2020 AND 2023;
 
 # highest number of employment type
SELECT 
employment_type, 
COUNT(*) AS num_employments
FROM 
 jobs_in_data
WHERE
  work_year BETWEEN 2020 AND 2023
GROUP BY employment_type
ORDER BY num_employments DESC
LIMIT 1;

 







 
 
 