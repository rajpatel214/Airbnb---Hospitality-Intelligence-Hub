# Airbnb---Hospitality-Intelligence-Hub


### Description

Airbnb is a leading online marketplace that offers accommodations across various neighborhoods in New York City and around the world. To enhance business operations, Airbnb has developed a 'Hospitality Intelligence Hub' that leverages MySQL to analyze data, providing insights into customer preferences, pricing trends, and availability.

This repository contains SQL queries that analyze Airbnb data, specifically focusing on listings and booking details in New York City. These queries help in extracting meaningful insights such as pricing trends, room availability, popular neighborhoods, and customer behavior patterns.

## Dataset Information

We have two tables in our dataset:

## Listings Table

This table contains information about available listings, their hosts, and their locations.

**id:** Unique identifier for each listing.

**name:** Name of the listing.

**host_id:** Unique identifier for the host.

**host_name:** Name of the host.

**neighbourhood_group:** Group of neighborhoods where the listing is located.

**neighbourhood:** Specific neighborhood of the listing.

**room_type:** Type of room (e.g., private room, entire home/apartment).

## Booking_Details Table

This table includes pricing and availability details for each listing.

**listing_id:** Unique identifier for each listing.

**price:** Nightly price of the listing.

**minimum_nights:** Minimum number of nights required for booking.

**number_of_reviews:** Total number of reviews for the listing.

**reviews_per_month:** Average number of reviews per month.

**calculated_host_listings_count:** Number of listings owned by the host.

**availability_365:** Number of days the listing is available in a year.

## SQL Queries and Insights

**This repository includes 50+ SQL queries covering various aspects of Airbnb listings and bookings:**

**Basic Queries**

Fetching listing names, total listings, and host details.

Identifying unique neighborhoods, room types, and host names.

**Price Analysis**

Finding the maximum, minimum, and average prices of listings.

Identifying the total price per neighborhood and price trends by room type.

**Availability and Booking Trends**

Checking the number of nights available for booking.

Analyzing booking trends based on availability and minimum stay duration.

Filtering data for high-availability listings (availability_365 > 300 days).

**Neighborhood and Host Analysis**

Identifying the neighborhood with the most listings.

Finding the hosts with the most affordable and most expensive total listings.

Finding the neighborhood group with the highest total reviews.

**Advanced Queries**

Using subqueries to find listings with high prices or specific host IDs.

Identifying hosts with the highest and lowest total earnings.

Finding listings that contain specific keywords in their names.


## Insights Gained

**Pricing Insights:** Helps Airbnb optimize pricing strategies by understanding the highest and lowest price trends in various neighborhoods.

**Availability Trends:** Determines which listings have the highest availability and helps in demand forecasting.

**Host and Neighborhood Analysis:** Identifies top-performing hosts and popular neighborhoods based on reviews and booking trends.

**Customer Preferences:** Helps Airbnb improve user experience by analyzing booking trends and room-type popularity.


## Conclusion
The SQL analysis of Airbnb data provides valuable insights into pricing strategies, room availability, and customer preferences. By leveraging SQL queries, we can identify high-demand neighborhoods, top-performing hosts, and optimal pricing trends, helping Airbnb enhance its business operations. This analysis serves as a foundation for further data-driven decision-making, such as predicting seasonal price fluctuations and optimizing booking strategies. Future enhancements, including advanced SQL queries and data visualizations, will further improve the depth of insights derived from this dataset.
