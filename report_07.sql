SELECT *
FROM(SELECT DISTINCT (t.train_id) "N�TRAIN" , a.city || '-' || b.city " TRAIN ", COUNT(ticket_id) " NOMBRE TICKETS "
FROM T_TRAIN t
JOIN T_STATION a
ON t.departure_id = a.station_id
JOIN T_STATION b
ON t.arrival_id = b.station_id
JOIN T_WAGON_TRAIN w
ON t.train_id=w.train_id
JOIN T_TICKET ti
ON ti.wag_tr_id = w.wag_tr_id
GROUP BY t.train_id, a.city, b.city
ORDER BY COUNT(ticket_id) DESC)
WHERE ROWNUM <6
