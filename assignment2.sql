CREATE DATABASE assignment2;
USE assignment2;

CREATE TABLE airlines_info (
	airline_id int,
    name varchar(100),
    country_code varchar(10),
    founded_year int,
    status varchar(20)
);

CREATE TABLE country_info (
	country_id int,
    name varchar(100),
    iso_code varchar(2),
    continent varchar(50),
    population int
);

CREATE TABLE state_info(
	state_id int,
    name varchar(100),
    country_id int,
    capital varchar(100),
    population int
);

ALTER TABLE airlines_info
	ADD ceo_name varchar(100),
    ADD headquarter_city varchar(100),
    ADD fleet_size int;
    
ALTER TABLE country_info
	ADD official_language varchar(50),
	ADD currency varchar(50),
	ADD gdp double;
    
ALTER TABLE state_info
	ADD area_sq_km double,
	ADD official_language varchar(50),
	ADD established_year int;
    
ALTER TABLE airlines_info
	RENAME COLUMN name TO airline_name,
	RENAME COLUMN country_code TO base_country,
	RENAME COLUMN status TO operational_status;
    
ALTER TABLE country_info
	RENAME COLUMN name TO country_name,
	RENAME COLUMN iso_code TO country_code,
	RENAME COLUMN population TO total_population;
    
ALTER TABLE state_info
	RENAME COLUMN name TO state_name,
	RENAME COLUMN capital TO capital_city,
	RENAME COLUMN population TO state_population;
    
DESC airlines_info;
DESC country_info;
DESC state_info;

ALTER TABLE airlines_info
	MODIFY COLUMN base_country varchar(100),
    MODIFY column operational_status varchar(100),
    modify column fleet_size smallint;
    
ALTER TABLE country_info
	modify column continent varchar(100),
    modify column total_population bigint,
    modify column official_language varchar(70);
    
ALTER TABLE state_info
	modify column state_population bigint,
	modify column area_sq_km float,
    modify column established_year smallint;
    
SELECT * FROM airlines_info;
INSERT INTO airlines_info VALUES 
(1, 'Air India', 'IN', 1932, 'Active', 'Campbell Wilson', 'New Delhi', 120),
(2, 'IndiGo', 'IN', 2006, 'Active', 'Pieter Elbers', 'Gurgaon', 300),
(3, 'Emirates', 'AE', 1985, 'Active', 'Tim Clark', 'Dubai', 270),
(4, 'Qatar Airways', 'QA', 1993, 'Active', 'Akbar Al Baker', 'Doha', 234),
(5, 'Lufthansa', 'DE', 1953, 'Active', 'Carsten Spohr', 'Cologne', 280);

INSERT INTO airlines_info VALUES 
(6, 'Delta Airlines', 'US', 1924, 'Active', 'Ed Bastian', 'Atlanta', 900),
(7, 'American Airlines', 'US', 1930, 'Active', 'Robert Isom', 'Fort Worth', 950),
(8, 'British Airways', 'UK', 1974, 'Active', 'Sean Doyle', 'London', 250),
(9, 'Singapore Airlines', 'SG', 1947, 'Active', 'Goh Choon Phong', 'Singapore', 140),
(10, 'Turkish Airlines', 'TR', 1933, 'Active', 'Bilal Ekşi', 'Istanbul', 310),
(11, 'Etihad Airways', 'AE', 2003, 'Active', 'Antonoaldo Neves', 'Abu Dhabi', 120),
(12, 'United Airlines', 'US', 1926, 'Active', 'Scott Kirby', 'Chicago', 850),
(13, 'Cathay Pacific', 'HK', 1946, 'Active', 'Ronald Lam', 'Hong Kong', 150),
(14, 'KLM', 'NL', 1919, 'Active', 'Marjan Rintel', 'Amstelveen', 160),
(15, 'Air France', 'FR', 1933, 'Active', 'Anne Rigail', 'Tremblay-en-France', 210),
(16, 'ANA', 'JP', 1952, 'Active', 'Shinichi Inoue', 'Tokyo', 250),
(17, 'Qantas', 'AU', 1920, 'Active', 'Vanessa Hudson', 'Sydney', 150),
(18, 'Alaska Airlines', 'US', 1932, 'Active', 'Ben Minicucci', 'Seattle', 300),
(19, 'Spirit Airlines', 'US', 1983, 'Active', 'Ted Christie', 'Florida', 180),
(20, 'Jet Airways', 'IN', 1992, 'Inactive', 'Naresh Goyal', 'Mumbai', 110);

SELECT * FROM country_info;
INSERT INTO country_info VALUES
(1, 'India', 'IN', 'Asia', 1393409038, 'Hindi', 'INR', 2875.14),
(2, 'United States', 'US', 'North America', 331002651, 'English', 'USD', 21137.00),
(3, 'China', 'CN', 'Asia', 1444216107, 'Mandarin', 'CNY', 14722.73),
(4, 'Germany', 'DE', 'Europe', 83783942, 'German', 'EUR', 4200.45),
(5, 'France', 'FR', 'Europe', 65273511, 'French', 'EUR', 2900.67),
(6, 'United Kingdom', 'UK', 'Europe', 67886011, 'English', 'GBP', 3100.34),
(7, 'Japan', 'JP', 'Asia', 126476461, 'Japanese', 'JPY', 5050.80),
(8, 'Australia', 'AU', 'Oceania', 25499884, 'English', 'AUD', 1589.71),
(9, 'Canada', 'CA', 'North America', 37742154, 'English', 'CAD', 1937.68),
(10, 'Russia', 'RU', 'Europe', 145934462, 'Russian', 'RUB', 1483.23),
(11, 'Brazil', 'BR', 'South America', 212559417, 'Portuguese', 'BRL', 1444.73),
(12, 'South Korea', 'KR', 'Asia', 51269185, 'Korean', 'KRW', 1789.67),
(13, 'South Africa', 'ZA', 'Africa', 59308690, 'English', 'ZAR', 351.43),
(14, 'Mexico', 'MX', 'North America', 128932753, 'Spanish', 'MXN', 1075.09),
(15, 'Italy', 'IT', 'Europe', 60461826, 'Italian', 'EUR', 2100.23),
(16, 'Netherlands', 'NL', 'Europe', 17134872, 'Dutch', 'EUR', 902.34),
(17, 'UAE', 'AE', 'Asia', 9890402, 'Arabic', 'AED', 501.89),
(18, 'Turkey', 'TR', 'Asia', 84339067, 'Turkish', 'TRY', 720.75),
(19, 'Singapore', 'SG', 'Asia', 5850342, 'Malay/English', 'SGD', 396.32),
(20, 'Qatar', 'QA', 'Asia', 2881053, 'Arabic', 'QAR', 183.45);

SELECT * FROM state_info;
INSERT INTO state_info VALUES
(1, 'Maharashtra', 1, 'Mumbai', 123144223, 307713, 'Marathi', 1960),
(2, 'California', 2, 'Sacramento', 39538223, 423967, 'English', 1850),
(3, 'Bavaria', 4, 'Munich', 13124737, 70550, 'German', 1949),
(4, 'Queensland', 8, 'Brisbane', 5184847, 1852642, 'English', 1859),
(5, 'Ontario', 9, 'Toronto', 14734014, 1076395, 'English/French', 1867),
(6, 'Île-de-France', 5, 'Paris', 12160000, 12012, 'French', 1790),
(7, 'New South Wales', 8, 'Sydney', 8166369, 809444, 'English', 1788),
(8, 'Texas', 2, 'Austin', 29145505, 695662, 'English', 1845),
(9, 'Guangdong', 3, 'Guangzhou', 126012510, 179800, 'Mandarin', 1949),
(10, 'Sao Paulo', 11, 'São Paulo', 46289333, 248209, 'Portuguese', 1822),
(11, 'Seoul', 12, 'Seoul', 9776000, 605, 'Korean', 1946),
(12, 'Western Cape', 13, 'Cape Town', 7000000, 129462, 'English', 1994),
(13, 'Lombardy', 15, 'Milan', 10060574, 23863, 'Italian', 1946),
(14, 'Tokyo', 7, 'Tokyo', 13929286, 2194, 'Japanese', 1943),
(15, 'British Columbia', 9, 'Victoria', 5110917, 944735, 'English', 1871),
(16, 'Dubai', 17, 'Dubai', 3300000, 4114, 'Arabic', 1971),
(17, 'North Holland', 16, 'Haarlem', 2890000, 4091, 'Dutch', 1840),
(18, 'Ankara', 18, 'Ankara', 5700000, 25121, 'Turkish', 1923),
(19, 'Karnataka', 1, 'Bangalore', 67562686, 191791, 'Kannada', 1956),
(20, 'Doha Municipality', 20, 'Doha', 956457, 234, 'Arabic', 1972);

