SELECT UPPER(c.last_name) || ' ' || c.first_name "CLIENT", p.pass_name "NOM ABONNEMENT",
CASE
	WHEN MONTHS_BETWEEN('01/01/2012', c.pass_date) > 12 THEN 'PERIME !'
	WHEN MONTHS_BETWEEN('01/01/2012', pass_date) IS NULL THEN 'AUCUN'
	WHEN MONTHS_BETWEEN('01/01/2012', c.pass_date) < 12 THEN 'VALIDE'
END "ETAT ABONNEMENT"
FROM T_CUSTOMER c
LEFT OUTER JOIN T_PASS p
ON c.pass_id = p.pass_id
ORDER BY c.pass_date, UPPER(last_name) || ' ' || first_name
