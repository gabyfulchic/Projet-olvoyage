SELECT UPPER(last_name) ||' '|| first_name "NOM ET PRENOM", address "ADRESSE"
FROM T_CUSTOMER 
WHERE pass_id IS NULL
ORDER BY last_name, first_name
