SELECT UPPER(e.last_name) || ' ' || e.first_name "NOM ET PRENOM", COUNT(r.reservation_id) "NOMBRE DE RESERVATIONS"
FROM T_EMPLOYEE e LEFT OUTER JOIN T_RESERVATION r
ON e.employee_id = r.employee_id
WHERE e.manager_id IS NOT NULL
GROUP BY manager_id, r.employee_id, e.last_name, e.first_name
ORDER BY manager_id
