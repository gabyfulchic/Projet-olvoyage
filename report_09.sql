SELECT a.city||'-'||b.city " TRAIN ", ROUND((distance/((arrival_time-post_time)*24)),0) || ' km/h'  " VITESSE "
FROM T_TRAIN t
JOIN T_STATION a
ON a.station_id = t.departure_id
JOIN T_STATION b
ON b.station_id = t.arrival_id
