SELECT 
     DATETIME_TRUNC(starttime, MONTH) as monthtrip
	,start_station_id
	,end_station_id
	,usertype
	,count(tripduration) AS trips
	,sum(tripduration) AS tripduration
FROM `bigquery-public-data.new_york_citibike.citibike_trips`
GROUP BY DATETIME_TRUNC(starttime, MONTH)
	,start_station_id
	,end_station_id
	,usertype;