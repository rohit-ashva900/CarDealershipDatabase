CREATE DATABASE cars;
USE cars;
-- READ DATA --
SELECT * FROM car_dekho;

-- TOTAL CARS:TO GET A COUNT OF TOTAL RECORDS --

SELECT COUNT(Name) FROM car_dekho;
-- SELECT COUNT(*) FROM car_dekho;

-- THE MANAGER ASKED THE EMPLOYEE HOW MANY CARS WILL BE AVAILABLE IN 2023? --
SELECT COUNT(*) FROM car_dekho WHERE year = 2023;

-- HOW MANY CAR AVAILABLE IN 2020, 2021, 2022 --

SELECT year, COUNT(*) FROM car_dekho WHERE year in(2020, 2021, 2022) GROUP BY year;


-- THIS FOR ALL YEAR CAR -- 
SELECT year, COUNT(*)
FROM car_dekho GROUP BY year;

-- clint asked to car dealer agent how many diesel cars will there be in 2020 .. ? --

SELECT year, COUNT(*), fuel FROM car_dekho WHERE year = 2020 AND fuel = "diesel";

-- clint requested a car dealer agent How many petrol cars will there be in 2020? --
SELECT year , COUNT(*), fuel FROM car_dekho WHERE year = 2020 AND fuel = "petrol";

-- print the all years fuel cars only --
Select year, fuel, COUNT(*) FROM car_dekho WHERE fuel = "petrol" GROUP BY YEAR;
Select year, fuel, COUNT(*) FROM car_dekho WHERE fuel = "diesel" GROUP BY YEAR;
Select year, fuel, COUNT(*) FROM car_dekho WHERE fuel = "CNG" GROUP BY YEAR;

-- MANAGER SAID THERE WERE MORE THAN 100 CARS IN A GIVEN YAER ,--
-- WHICH YAER HAD MORE THAN 100 CARS --

SELECT year, COUNT(*) FROM car_dekho GROUP BY year HAVING count(*) > 100;

-- MANEGER SAID TO THE EMPLOYEE ALL CAR --
-- COUNT DETAILS BETWEEN 2015 TO 2023 WE COMPLETE LIST --

SELECT COUNT(*) FROM car_dekho WHERE year BETWEEN 2015 AND 2023;

-- manager said to the employee all cars delails --
-- between 2015 to 2023 we need complete list--

SELECT * FROM car_dekho WHERE year BETWEEN 2015 AND 2023;




-- end