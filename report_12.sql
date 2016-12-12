SELECT pass_name "Nom d'abonnements", COUNT(T_CUSTOMER.pass_id) "Nombre d'abonnements"
FROM T_PASS p JOIN T_CUSTOMER c
ON p.pass_id=c.pass_id
GROUP BY c.pass_id, pass_name
ORDER BY COUNT(c.pass_id)DESC
