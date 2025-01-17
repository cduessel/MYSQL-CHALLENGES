SELECT UCASE(CONCAT(e.FIRST_NAME, ' ', e.LAST_NAME)) AS 'Nome completo',
h.START_DATE AS 'Data de início', 
e.SALARY AS 'Salário'
FROM hr.job_history AS h
INNER JOIN hr.employees AS e
ON  h.EMPLOYEE_ID = e.EMPLOYEE_ID
WHERE MONTH(h.START_DATE) IN(01, 02, 03)
ORDER BY 1,2;
