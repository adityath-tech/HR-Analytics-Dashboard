-- 02_analysis_queries.sql
-- 7 simple queries: HR Employee Attrition analysis
-- (Attrition = 'Yes' means the employee left the company)

-- Q1. How many employees left and stayed?
SELECT Attrition, COUNT(*) AS total
FROM hr_attrition
GROUP BY Attrition;

-- Q2. Department wise: how many employees left?
SELECT Department, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY Department
ORDER BY employees_left DESC;

-- Q3. Job role wise: how many employees left?
SELECT JobRole, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY JobRole
ORDER BY employees_left DESC;

-- Q4. Does overtime affect attrition?
SELECT OverTime, Attrition, COUNT(*) AS total
FROM hr_attrition
GROUP BY OverTime, Attrition
ORDER BY OverTime;

-- Q5. Average salary of employees who left vs stayed
SELECT Attrition, ROUND(AVG(MonthlyIncome), 2) AS avg_monthly_income
FROM hr_attrition
GROUP BY Attrition;

-- Q6. Average age and average years at company (left vs stayed)
SELECT Attrition,
       ROUND(AVG(Age), 1)            AS avg_age,
       ROUND(AVG(YearsAtCompany), 1) AS avg_years_at_company
FROM hr_attrition
GROUP BY Attrition;

-- Q7. Marital status wise: how many employees left?
SELECT MaritalStatus, COUNT(*) AS employees_left
FROM hr_attrition
WHERE Attrition = 'Yes'
GROUP BY MaritalStatus
ORDER BY employees_left DESC;
