CREATE DATABASE UBER;
USE UBER;
SELECT COUNT(*) FROM BOOKINGS;

# 1. Retrieve all successful bookings:
CREATE VIEW Successful_Bookings AS
SELECT * FROM BOOKINGS 
WHERE Booking_Status = 'Success';

# 2. Find the average ride distance for each vehicle type:
CREATE VIEW Avg_Ride_Distance AS
SELECT Vehicle_Type, AVG(Ride_Distance)
AS Avg_distance FROM BOOKINGS
GROUP BY Vehicle_Type;

# 3. Get the total number of cancelled rides by customers:
CREATE VIEW Rides_Cancelled_by_Customers AS
SELECT COUNT(*) FROM BOOKINGS
WHERE Booking_Status = 'Cancelled by Customers';

# 4. List the top 5 customers who booked the highest number of rides:
CREATE VIEW Top_5_Customers AS
SELECT Customer_ID, COUNT(Booking_ID) AS total_rides
FROM BOOKINGS
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;

# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
CREATE VIEW Cancelled_by_Drivers_P_C_issues AS
SELECT COUNT(*) FROM BOOKINGS
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';

# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings: 
CREATE VIEW Max_Min_Rating AS
SELECT MAX(Driver_Ratings) AS max_rating,
MIN(Driver_Ratings) AS min_rating
FROM BOOKINGS
WHERE Vehicle_Type = 'Prime Sedan';

# 7. Retrieve all rides where payment was made using UPI:
CREATE VIEW Paid_by_UPI AS
SELECT * FROM BOOKINGS
WHERE Payment_Method = 'UPI';

# 8. Find the average customer rating per vehicle type:
CREATE VIEW Avg_Customer_Rating AS
SELECT Vehicle_Type, AVG(Customer_Rating) AS avg_customer_rating
FROM BOOKINGS
GROUP BY Vehicle_Type;

# 9. Calculate the total booking value of rides completed successfully:
CREATE VIEW Successful_Booking_Value AS
SELECT SUM(Booking_Value) as total_successful_value
FROM BOOKINGS
WHERE Booking_Status = 'Success';

# 10. List all incomplete rides along with the reason:
CREATE VIEW Incomplete_Rides AS
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM BOOKINGS
WHERE Incomplete_Rides = 'Yes';

# 1. Retrieve all successful bookings:
Select * From Successful_Bookings;
# 2. Find the average ride distance for each vehicle type:
Select * from Avg_Ride_Distance;
# 3. Get the total number of cancelled rides by customers:
Select * from Rides_Cancelled_by_Customers;
# 4. List the top 5 customers who booked the highest number of rides:
Select * from Top_5_Customers;
# 5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Select * from Cancelled_by_Drivers_P_C_issues;
# 6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
Select * from Max_Min_Rating;
# 7. Retrieve all rides where payment was made using UPI:
Select * from Paid_by_UPI;
# 8. Find the average customer rating per vehicle type:
Select * from AVG_Customer_Rating;
# 9. Calculate the total booking value of rides completed successfully:
Select * from Successful_Booking_Value;
# 10. List all incomplete rides along with the reason:
Select * from Incomplete_Rides;