SELECT
jobs.JOB_TITLE AS 'Cargo',
ROUND(AVG(SALARY), 2) AS 'Média salarial',
CASE
WHEN AVG(SALARY) BETWEEN 2000 AND 5800 THEN 'Júnior'
WHEN AVG(SALARY) BETWEEN 5801 AND 7500 THEN 'Pleno'
WHEN AVG(SALARY) BETWEEN 7501 AND 10500 THEN 'Sênior'
WHEN AVG(SALARY) > 10500 THEN 'CEO'
END AS 'Senioridade'
FROM hr.employees
INNER JOIN hr.jobs
ON employees.JOB_ID = jobs.JOB_ID
GROUP BY Cargo
ORDER BY `Média salarial`, Cargo;