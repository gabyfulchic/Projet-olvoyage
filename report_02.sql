SELECT DISTINCT UPPER(c.last_name) ||' '|| c.first_name CLIENT
FROM T_CUSTOMER c
JOIN T_RESERVATION r
ON r.buyer_id = c.customer_id
JOIN T_TICKET ti
ON ti.reservation_id = r.reservation_id
WHERE r.buyer_id != ti.customer_id
ORDER BY UPPER(c.last_name) ||' '||c.first_name
