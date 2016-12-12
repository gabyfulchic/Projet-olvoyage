SELECT COUNT(c.customer_id) "NOMBRE REDUCTIONS SENIOR "
FROM T_CUSTOMER c
JOIN T_PASS p
ON p.pass_id = c.pass_id
JOIN T_RESERVATION r
ON r.buyer_id = c.customer_id
JOIN T_TICKET ti
ON ti.reservation_id = r.reservation_id
JOIN T_WAGON_TRAIN wagon_tr
ON wagon_tr.wag_tr_id = ti.wag_tr_id
JOIN T_TRAIN t
ON t.train_id = wagon_tr.wag_tr_id
WHERE p.pass_name = 'Senior' AND buy_method IS NOT NULL
AND TO_CHAR(t.post_time, 'MM/YYYY') = '04/2012'
