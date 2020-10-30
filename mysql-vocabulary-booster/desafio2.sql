SELECT JOB_TITLE as Cargo,
CASE
WHEN MAX_SALARY < 10001 THEN 'Baixo'
WHEN MAX_SALARY > 10000 AND MAX_SALARY < 20001 THEN 'Médio'
WHEN MAX_SALARY > 20000 AND MAX_SALARY< 30001 THEN 'Alto'
WHEN MAX_SALARY > 30000 THEN 'Altíssimo'
ELSE 'CARGO SEM SALÁRIO'
END AS Nível
FROM hr.jobs
ORDER BY JOB_TITLE;