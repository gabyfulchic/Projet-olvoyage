SELECT t.train_id " N�TRAIN ", a.city ||'(' || TO_CHAR(t.post_time, 'DD/MM/YYYY HH24:MI') || ')' || '-' || b.city || '(' || TO_CHAR(t.arrival_time, 'DD/MM/YYYY HH24:MI') || ')' "VILLE ET DATE ", t.distance " DISTANCE ", t.price "PRIX "
FROM T_TRAIN t
JOIN T_STATION a
ON t.departure_id = a.station_id
JOIN T_STATION b
ON t.arrival_id = b.station_id
ORDER BY t.train_id
