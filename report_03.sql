SELECT r.reservation_id, r.creation_date, e.last_name "Nom Employ�e", e.first_name "Pr�nom Employ�e", c.last_name "Nom Acheteur", c.first_name "Pr�nom Acheteur"
FROM t_reservation r
JOIN t_employee e
ON e.employee_id = r.employee_id
JOIN t_customer c
ON customer_id = reservation_id 
WHERE creation_date =
	(SELECT MIN(creation_date)
	FROM t_reservation)
