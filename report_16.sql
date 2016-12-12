SELECT e.salary+100 " SALAIRE AUGMENTE ", e.employee_id "Num employee", UPPER(e.last_name) || ' ' || e.first_name "NOM ET PRENOM"
FROM T_EMPLOYEE e
WHERE e.employee_id = ANY
(SELECT DISTINCT empl.employee_id
FROM T_EMPLOYEE empl
JOIN T_RESERVATION r
ON r.employee_id = empl.employee_id)
