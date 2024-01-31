select count(1) from yellow_taxi_data_2019 
where date(lpep_pickup_datetime) = '2019-09-18' and date(lpep_dropoff_datetime) = '2019-09-18'

select date(lpep_pickup_datetime), max(trip_distance) cnt from yellow_taxi_data_2019 
group by 1
order by cnt desc


with cte as (select "DOLocationID", "Zone", tip_amount
from yellow_taxi_data_2019 as y
join zones z on y."DOLocationID" = z."LocationID"
where "PULocationID" = 7)

select "Zone", max(tip_amount) 
from cte 
group by 1
order by 2 desc

