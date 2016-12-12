SELECT *
FROM(SELECT UPPER(e.last_name) ||' '|| e.first_name  EMPLOYEE
FROM T_EMPLOYEE e
JOIN T_RESERVATION r
ON r.employee_id = e.employee_id
GROUP BY e.last_name, e.first_name
ORDER BY COUNT(r.reservation_id)DESC)
WHERE ROWNUM <2
