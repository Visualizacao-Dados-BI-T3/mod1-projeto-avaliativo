-- Query 1 — Salário por Departamento e Cargo
-- EMPLOYEES com LEFT JOIN em DEPARTMENTS e JOBS

-- HR.EMPLOYEES
SELECT
    EMPLOYEE_ID, -- PK - PRIMARY KEY
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    PHONE_NUMBER,
    HIRE_DATE,
    JOB_ID,  -- FK - foreign key
    SALARY,
    COMMISSION_PCT,
    MANAGER_ID,
    DEPARTMENT_ID -- FK - foreign key
FROM
    HR.EMPLOYEES;


-- hr.departaments
SELECT
    DEPARTMENT_ID, -- pk
    DEPARTMENT_NAME,
    MANAGER_ID,
    LOCATION_ID
FROM
    HR.DEPARTMENTS;


-- hr.jobs
SELECT
    JOB_ID, -- pk
    JOB_TITLE,
    MIN_SALARY,
    MAX_SALARY
FROM
    HR.JOBS;

select count(*) from hr.EMPLOYEES

-- ctrl + K + U - DEIXA
SELECT 
FUNCIONARIOS.EMPLOYEE_ID, 
FUNCIONARIOS.FIRST_NAME, 
FUNCIONARIOS.LAST_NAME,
FUNCIONARIOS.SALARY, 
DEPARTAMENTOS.DEPARTMENT_NAME,
CARGO.JOB_TITLE
FROM HR.EMPLOYEES funcionarios
LEFT JOIN HR.DEPARTMENTS departamentos
ON funcionarios.DEPARTMENT_ID = departamentos.DEPARTMENT_ID
LEFT JOIN HR.JOBS cargo
ON funcionarios.JOB_ID = cargo.JOB_ID
