

use airbnb;



#1)Write a query to show names from Listings table
select name from listing l  ;

#2.	Write a query to fetch total listings from the listings table

select count(id) from listing l ;

#4.	Write a query to fetch total listing_id from the booking_details table

select count(listing_id) from booking b ;

#5.	Write a query to fetch host ids from listings table

select host_id from listing l ;

#6.	Write a query to fetch all unique host name from listings table

select distinct host_name from listing l ;

#7.	Write a query to show all unique neighbourhood_group from listings table

select distinct neighbourhood_group from listing l ;

#8.	Write a query to show all unique neighbourhood from listings table

select distinct neighbourhood from listing l ;

#9.	Write a query to fetch unique room_type from listings tables

select distinct room_type from listing l ;

#10.Write a query to show all values of Brooklyn & Manhattan from listings tables

select * from listing l where neighbourhood_group in ("Brooklyn","Manhattan") ;

#11.Write a query to show maximum price from booking_details table

select max(price) as max_price from booking b ;

#12.Write a query to show minimum price fron booking_details table
select min(price) as min_price from booking b ;

#13.Write a query to show average price from booking_details table

select avg(price) as avg_price from booking b ;

#14.Write a query to show minimum value of minimum_nights from booking_details table

select min(minimum_nights) as min_value_of_minimum_nights from booking b ;

#15.Write a query to show maximum value of minimum_nights from booking_details table

select max(minimum_nights) as max_value_of_minimum_nights from booking b ;

#16.Write a query to show average availability_365 

select avg(availability_365) as avg_availability_365 from booking b ;

#17.Write a query to show id , availability_365 and all availability_365 values greater than 300

select listing_id,availability_365 from booking b 
where availability_365 >=300;

#18.Write a query to show count of id where price is in between 300 to 400

select count(listing_id) as count_id from booking b where price between 300 and 400 ;

#19.Write a query to show count of id where minimum_nights spend is less than 5

select count(listing_id) as count_id from booking b where minimum_nights <5;

#20.Write a query to show count where minimum_nights spend is greater than 100

select count(listing_id) as count_id from booking b where minimum_nights>100;

#21.Write a query to show all data of listings & booking_details

select * from listing l join booking b on l.id =b.listing_id ;

select * from listing l ;
select * from booking b ;

#22.Write a query to show host name and price 

select distinct l.host_name,b.price from listing l join booking b on l.id =b.listing_id ;

#23.Write a query to show room_type and price

select distinct l.host_name,b.price,l.room_type from listing l join booking b on l.id =b.listing_id ;

#24.Write a query to show neighbourhood_group & minimum_nights spend

select distinct l.neighbourhood_group,b.minimum_nights,price from listing l join booking b on l.id =b.listing_id ;

#25.Write a query to show neighbourhood & availability_365

select l.neighbourhood,b.availability_365 from listing l join booking b on l.id =b.listing_id ;

#26.Write a query to show total price by neighbourhood_group

select distinct l.neighbourhood,count(price) as total_price from listing l join booking b on l.id =b.listing_id
group by l.neighbourhood ;

#27.Write a query to show maximum price by neighbourhood_group

select distinct l.neighbourhood,max(price) as total_price from listing l join booking b on l.id =b.listing_id
group by l.neighbourhood ;

#28.Write a query to show maximum night spend by neighbourhood_group

select distinct l.neighbourhood_group,minimum_nights from listing l join booking b on l.id =b.listing_id
order by minimum_nights desc ;

#29.Write a query to show maximum reviews_per_month spend by neighbourhood

select l.neighbourhood,b.reviews_per_month from listing l join booking b on l.id =b.listing_id ;
 
#30.Write a query to show maximum price by room type

select l.room_type,max(price) as max_price from listing l join booking b on l.id =b.listing_id
group by l.room_type ;

#31.Write a query to show average number_of_reviews by room_type

select avg(b.number_of_reviews) as avg_rating , l.room_type from listing l join booking b on l.id =b.listing_id
group by l.room_type ;

#32.Write a query to show average price by room type

select l.room_type,avg(price) as avg_price from listing l join booking b on l.id =b.listing_id
group by l.room_type ;

#33.Write a query to show average night spend by room type

select l.room_type,avg(b.minimum_nights) average_nights from listing l join booking b on l.id =b.listing_id
group by l.room_type ;

#34.Write a query to show average price by room type but average price is less than 100


select l.room_type,avg(b.price) avg_price from listing l join booking b on l.id =b.listing_id
group by l.room_type ;

#35.Write a query to show average night by neighbourhood and average_nights is greater than 5

select l.neighbourhood ,avg(b.minimum_nights) avg_nights from listing l join booking b on l.id =b.listing_id
group by l.neighbourhood having avg_nights>5 ;

#36.Write a query to show all data from listings where price is greater than 200 using sub-query.

select listing_id from booking b where price>200 ;

select * from listing l where id in (select listing_id from booking b where price>200);

#37.Write a query to show all values from booking_details table where host id is 314941 using sub-query.

select id from listing l where host_id =314941;

select * from booking b where listing_id in (select id from listing l where host_id =314941);

#38.Find all pairs of id having the same host id, each pair coming once only.

#39.Write an sql query to show fetch all records that have the term cozy in name

select name from listing l where name like "%cozy%";

#40.Write an sql query to show price, host id, neighbourhood_group of manhattan neighbourhood_group

select b.price,l.host_id,l.neighbourhood_group from listing l join booking b on l.id = b.listing_id 
where l.neighbourhood_group="Manhattan";

#41.Write a query to show id , host name, neighbourhood and price but only for Upper
# West Side & Williamsburg neighbourhood, also make sure price is greater than 100

select b.listing_id ,l.host_name ,l.neighbourhood_group,b.price from listing l join booking b on l.id = b.listing_id
where l.neighbourhood in ("West Side","Williamsburg") and price>=100;

#42.Write a query to show id , host name, neighbourhood and price for host name Elise and neighbourhood is Bedford-Stuyvesant


select b.listing_id ,l.host_name ,l.neighbourhood_group,b.price from listing l join booking b on l.id = b.listing_id
where l.host_name ="Elise" and l.neighbourhood ="Bedford-Stuyvesant";

#43.Write a query to show host_name, availability_365,minimum_nights only for 100+ availability_365 and minimum_nights

select l.host_name,b.availability_365,b.minimum_nights from listing l join booking b on l.id = b.listing_id
where availability_365 >100;

#44.Write a query to show to fetch id , host_name , number_of_reviews, and reviews_per_month but 
#show only that records where number of reviews are 500+ and review per month is 5+

select l.id ,l.host_name,b.number_of_reviews,b.reviews_per_month from listing l join booking b on l.id = b.listing_id
where reviews_per_month >5 and number_of_reviews >500 ;

#45.Write a query to show neighbourhood_group which have most total number of review 

select l.neighbourhood_group,sum(b.number_of_reviews) total_number from listing l join booking b on l.id = b.listing_id
group by l.neighbourhood_group order by total_number desc ;

#46.Write a query to show host name which have most cheaper total price 

select distinct l.host_name, sum(price) as total_price  from booking b join listing l on b.listing_id=l.id
group by l.host_name order by  total_price asc limit 1;

#47.Write a query to show host name which have most costly total price 
select distinct l.host_name, sum(price) as total_price  from booking b join listing l on b.listing_id=l.id
group by l.host_name order by  total_price desc limit 1;

#48.Write a query to show host name which have max price using sub-query

select distinct l.host_name, max(price) as total_price  from booking b join listing l on b.listing_id=l.id
group by l.host_name order by  total_price desc limit 1;

#49.Write a query to show neighbourhood_group where price is less than 100

select l.neighbourhood_group,(price) as total_pric from booking b join listing l on b.listing_id=l.id
where price <100;


#50.Write a query to find max price, average availability_365 for each room type and order in ascending by maximum price.

select max(price) max_price , avg(availability_365) as avg_availab,room_type from booking b join listing l on b.listing_id=l.id
group by room_type order by  max_price asc ;

#51. Rank Listings by Price within Each Neighborhood Group

select price,l.neighbourhood_group, rank() over(partition by l.neighbourhood_group order by price desc) as price_rank 
from booking b join listing l on b.listing_id=l.id

#52. Top 3 Rank Listings by Price within Each Neighborhood Group

select * from (select price,l.neighbourhood_group, rank() over(partition by l.neighbourhood_group order by price desc) as price_rank 
from booking b join listing l on b.listing_id=l.id)x
where x.price_rank<4;

#53. Calculate Running Total of Reviews by Neighborhood

select neighbourhood,listing_id,sum(number_of_reviews) over(partition by l.neighbourhood order by listing_id desc) as total_reviews 
from booking b join listing l on b.listing_id=l.id order by  neighbourhood,listing_id;

#54. Find Average Price per Host with Multiple Listings

select  listing_id, price,host_id,avg(price) over(partition by l.host_id) as average_price_per_host 
from booking b join listing l on b.listing_id=l.id 
where l.host_id in (select host_id from listing l2 group by host_id having count(*)>1);

#55. Calculate Monthly Review Trend for Listings

select listing_id,
    reviews_per_month,avg(reviews_per_month) over(ORDER BY listing_id ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) 
        AS cumulative_avg_reviews
FROM booking b ;

#56. Determine Most Available Listings by Neighborhood Group

select * from booking b ;
select * from listing l ;

select availability_365,neighbourhood_group,name ,dense_rank() over(partition by neighbourhood_group order by availability_365 desc ) availability_rank
from booking b join listing l on b.listing_id=l.id ; 

#57. Find Listings with the Highest Price per Neighborhood
select * from booking b ;
select * from listing l ;

select price,neighbourhood,price_rank from (select price,l.neighbourhood, rank() over(partition by l.neighbourhood order by price desc) as price_rank 
from booking b join listing l on b.listing_id=l.id)x
where x.price_rank=1;

#7. Find Total Listings and Average Price per Host

SELECT 
    host_id,
    host_name,
    id,
    price,
    COUNT(id) OVER (PARTITION BY host_id) AS total_listings_per_host,
    AVG(price) OVER (PARTITION BY host_id) AS average_price
FROM 
    listing l 
JOIN 
    booking b 
    ON l.id = b.listing_id ;


# get luxury and good property base on price ;
select *,
case 
	when price>=5000 then "luxury_property"
	when price>=1000 then "good_property"
	when price<=1000 then "normal_property"
end property
from(
select id,name,room_type,availability_365,price ,ntile(10) over(order by price desc) as high_price_property
from booking b join listing l on b.listing_id=l.id)t where price between 1000 and 5000 ;

-- 
-- select *,concat(round(pre_room_revenue*100,1),"%") per_erning,
-- case 
-- 	when pre_room_revenue<=1 then "high_profit"
-- 	when pre_room_revenue>=0.8 then "medium_profit"
-- 	when pre_room_revenue>=0.8 then "low_profit"
-- end profit_erning
-- from(
-- select room_type,price ,cume_dist() over(partition by room_type order by price desc) pre_room_revenue
-- from booking b join listing l on b.listing_id=l.id)t order by pre_room_revenue asc ;


select * ,first_value(number_of_reviews) over(order by number_of_reviews )
from booking b join listing l on b.listing_id=l.id;

select * ,last_value(number_of_reviews) over(order by number_of_reviews  ROWS BETWEEN UNBOUNDED PRECEDING AND unbounded following)
from booking b join listing l on b.listing_id=l.id;



select * from booking b ;
select * from listing l ;

#get those peoperty which available 365 and those host_name who stay 365 days 

with max_night  as 
      (select listing_id,max(price) as price ,max(availability_365) max_time_avilable ,max(minimum_nights) as max_stay 
            from booking b group by listing_id 
                 having max(minimum_nights)=365 order by max_stay  desc )
      select room_type,host_name,name,price,neighbourhood_group,max_time_avilable,max_stay
            from max_night m join listing l
                on m.listing_id = l.id  order by price desc ;








