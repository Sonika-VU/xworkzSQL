create database assignment3;

use assignment3;

create table guests (
	guest_id int,
    first_name varchar(20),
    last_name varchar(50),
    gender varchar(10),
    phone varchar(15),
    email varchar(100),
     check_in_date varchar(10),
     check_out_date varchar(10)
);

create table rooms (
	room_id int,
    room_number varchar(10),
    room_type varchar(30),
    rent_per_day bigint,
    max_occupancy int,
    status varchar(20),
    floor int,
    view_type varchar(50)
);

create table bookings(
	booking_id int,
    guest_id int,
    room_id int,
    booking_date varchar(10),
    check_in_date varchar(10),
    check_out_date varchar(10),
    total_amount bigint,
    payment_status varchar(50)
);

INSERT INTO guests VALUES
(1, 'John', 'Doe', 'Male', '9876543210', 'john@example.com', '2025-04-01', '2025-04-05'),
(2, 'Jane', 'Smith', 'Female', '9123456789', 'jane@example.com', '2025-04-02', '2025-04-06'),
(3, 'Alice', 'Brown', 'Female', '9988776655', 'alice@example.com', '2025-04-03', '2025-04-07'),
(4, 'Bob', 'White', 'Male', '9876123456', 'bob@example.com', '2025-04-04', '2025-04-08'),
(5, 'Emma', 'Watson', 'Female', '9123984756', 'emma@example.com', '2025-04-05', '2025-04-09'),
(6, 'David', 'Lee', 'Male', '9988111222', 'david@example.com', '2025-04-06', '2025-04-10'),
(7, 'Sophia', 'Green', 'Female', '9876234567', 'sophia@example.com', '2025-04-07', '2025-04-11'),
(8, 'Chris', 'Black', 'Male', '9765432100', 'chris@example.com', '2025-04-08', '2025-04-12'),
(9, 'Mia', 'Clark', 'Female', '9432123456', 'mia@example.com', '2025-04-09', '2025-04-13'),
(10, 'Liam', 'Young', 'Male', '9876554321', 'liam@example.com', '2025-04-10', '2025-04-14'),
(11, 'Olivia', 'King', 'Female', '9312345678', 'olivia@example.com', '2025-04-11', '2025-04-15'),
(12, 'Noah', 'Scott', 'Male', '9654321987', 'noah@example.com', '2025-04-12', '2025-04-16'),
(13, 'Ava', 'Harris', 'Female', '9876512345', 'ava@example.com', '2025-04-13', '2025-04-17'),
(14, 'Ethan', 'Lewis', 'Male', '9345671234', 'ethan@example.com', '2025-04-14', '2025-04-18'),
(15, 'Isabella', 'Walker', 'Female', '9765432123', 'isabella@example.com', '2025-04-15', '2025-04-19'),
(16, 'James', 'Hall', 'Male', '9321456789', 'james@example.com', '2025-04-16', '2025-04-20'),
(17, 'Charlotte', 'Allen', 'Female', '9876987654', 'charlotte@example.com', '2025-04-17', '2025-04-21'),
(18, 'Benjamin', 'Wright', 'Male', '9767876543', 'benjamin@example.com', '2025-04-18', '2025-04-22'),
(19, 'Amelia', 'Hill', 'Female', '9345123789', 'amelia@example.com', '2025-04-19', '2025-04-23'),
(20, 'Lucas', 'Adams', 'Male', '9123678901', 'lucas@example.com', '2025-04-20', '2025-04-24');

INSERT INTO rooms VALUES
(1, '101', 'Deluxe', 2500.00, 2, 'Available', 1, 'Sea View'),
(2, '102', 'Standard', 1800.00, 2, 'Occupied', 1, 'Garden View'),
(3, '103', 'Suite', 4000.00, 4, 'Available', 1, 'Sea View'),
(4, '104', 'Deluxe', 2500.00, 2, 'Maintenance', 1, 'Pool View'),
(5, '105', 'Standard', 1800.00, 2, 'Available', 1, 'City View'),
(6, '201', 'Deluxe', 2600.00, 2, 'Available', 2, 'Sea View'),
(7, '202', 'Suite', 4200.00, 4, 'Occupied', 2, 'Garden View'),
(8, '203', 'Standard', 1900.00, 2, 'Available', 2, 'Pool View'),
(9, '204', 'Deluxe', 2500.00, 2, 'Occupied', 2, 'Garden View'),
(10, '205', 'Suite', 4300.00, 4, 'Available', 2, 'Sea View'),
(11, '301', 'Standard', 1700.00, 2, 'Available', 3, 'Mountain View'),
(12, '302', 'Suite', 4400.00, 4, 'Maintenance', 3, 'Sea View'),
(13, '303', 'Deluxe', 2550.00, 2, 'Available', 3, 'Garden View'),
(14, '304', 'Standard', 1750.00, 2, 'Occupied', 3, 'City View'),
(15, '305', 'Deluxe', 2600.00, 2, 'Available', 3, 'Sea View'),
(16, '401', 'Suite', 4500.00, 4, 'Available', 4, 'Sea View'),
(17, '402', 'Standard', 1800.00, 2, 'Occupied', 4, 'Garden View'),
(18, '403', 'Suite', 4600.00, 4, 'Maintenance', 4, 'Mountain View'),
(19, '404', 'Deluxe', 2650.00, 2, 'Available', 4, 'Pool View'),
(20, '405', 'Standard', 1850.00, 2, 'Occupied', 4, 'Garden View');


INSERT INTO bookings VALUES
(1, 1, 2, '2025-03-28', '2025-04-01', '2025-04-05', 7200.00, 'Paid'),
(2, 2, 4, '2025-03-29', '2025-04-02', '2025-04-06', 10000.00, 'Pending'),
(3, 3, 1, '2025-03-30', '2025-04-03', '2025-04-07', 10000.00, 'Paid'),
(4, 4, 3, '2025-03-31', '2025-04-04', '2025-04-08', 16000.00, 'Paid'),
(5, 5, 5, '2025-04-01', '2025-04-05', '2025-04-09', 7200.00, 'Pending'),
(6, 6, 6, '2025-04-02', '2025-04-06', '2025-04-10', 10400.00, 'Paid'),
(7, 7, 7, '2025-04-03', '2025-04-07', '2025-04-11', 16800.00, 'Pending'),
(8, 8, 8, '2025-04-04', '2025-04-08', '2025-04-12', 7600.00, 'Paid'),
(9, 9, 9, '2025-04-05', '2025-04-09', '2025-04-13', 10000.00, 'Paid'),
(10, 10, 10, '2025-04-06', '2025-04-10', '2025-04-14', 17200.00, 'Pending'),
(11, 11, 11, '2025-04-07', '2025-04-11', '2025-04-15', 6800.00, 'Paid'),
(12, 12, 12, '2025-04-08', '2025-04-12', '2025-04-16', 17600.00, 'Pending'),
(13, 13, 13, '2025-04-09', '2025-04-13', '2025-04-17', 10200.00, 'Paid'),
(14, 14, 14, '2025-04-10', '2025-04-14', '2025-04-18', 7000.00, 'Pending'),
(15, 15, 15, '2025-04-11', '2025-04-15', '2025-04-19', 10400.00, 'Paid'),
(16, 16, 16, '2025-04-12', '2025-04-16', '2025-04-20', 18000.00, 'Paid'),
(17, 17, 17, '2025-04-13', '2025-04-17', '2025-04-21', 7200.00, 'Pending'),
(18, 18, 18, '2025-04-14', '2025-04-18', '2025-04-22', 18400.00, 'Paid'),
(19, 19, 19, '2025-04-15', '2025-04-19', '2025-04-23', 10600.00, 'Pending'),
(20, 20, 20, '2025-04-16', '2025-04-20', '2025-04-24', 7400.00, 'Paid');

desc guests;
UPDATE guests SET phone = '9111111111' WHERE guest_id = 1;
UPDATE guests SET email = 'newjane@example.com' WHERE guest_id = 2;
UPDATE guests SET last_name = 'Goinka' WHERE guest_id = 3;
UPDATE guests SET check_out_date = '2025-04-10' WHERE guest_id = 4;
UPDATE guests SET first_name = 'Emilia' WHERE guest_id = 5;
UPDATE guests SET last_name = 'Johnson' WHERE guest_id = 6;
UPDATE guests SET gender = 'Other' WHERE guest_id = 7;
UPDATE guests SET check_in_date = '2025-04-10' WHERE guest_id = 8;
UPDATE guests SET email = 'miaclark2025@gmail.com' WHERE guest_id = 9;
UPDATE guests SET phone = '9000000000' WHERE guest_id = 10;

desc rooms;
UPDATE Rooms SET status = 'Occupied' WHERE room_id = 1;
UPDATE Rooms SET room_type = 'Executive' WHERE room_id = 2;
UPDATE Rooms SET rent_per_day = 4600 WHERE room_id = 3;
UPDATE Rooms SET view_type = 'City View' WHERE room_id = 4;
UPDATE Rooms SET max_occupancy = 3 WHERE room_id = 5;
UPDATE Rooms SET floor = 5 WHERE room_id = 6;
UPDATE Rooms SET status = 'Maintenance' WHERE room_id = 7;
UPDATE Rooms SET room_number = '208' WHERE room_id = 8;
UPDATE Rooms SET room_type = 'Presidential Suite' WHERE room_id = 9;
UPDATE Rooms SET rent_per_day = 5000 WHERE room_id = 10;


desc bookings;
select * from bookings;
UPDATE Bookings SET payment_status = 'Paid' WHERE booking_id = 2 AND total_amount = 7200;
UPDATE Bookings SET total_amount = 9000.00 WHERE booking_date = '2025-03-30';
UPDATE Bookings SET check_in_date = '2025-04-01' WHERE guest_id = 4;
UPDATE Bookings SET check_out_date = '2025-04-07' WHERE room_id = 3;
UPDATE Bookings SET booking_date = '2025-04-01' WHERE payment_status = 'Paid';
UPDATE Bookings SET payment_status = 'Pending' WHERE booking_date = '2025-04-03';
UPDATE Bookings SET total_amount = 9999.99 WHERE room_id = 7;
UPDATE Bookings SET check_in_date = '2025-04-10' WHERE total_amount = 18400;
UPDATE Bookings SET check_out_date = '2025-04-15' WHERE guest_id = 18;
UPDATE Bookings SET payment_status = 'Paid' WHERE booking_id = 12;

DELETE FROM Guests WHERE guest_id = 20;

DELETE FROM Rooms WHERE status = 'Maintenance' AND floor = 4;

DELETE FROM Bookings WHERE booking_id = 16 OR booking_id = 17;

DELETE FROM Bookings WHERE booking_id IN (12, 13, 14);

DELETE FROM Rooms WHERE room_id NOT IN (1, 2, 3, 4, 5);

DELETE FROM Rooms WHERE rent_per_day BETWEEN 1700 AND 1900;

DELETE FROM Rooms WHERE room_id NOT BETWEEN 6 AND 10;

SELECT * FROM rooms;
SELECT * FROM guests;
SELECT * FROM bookings;

SELECT * FROM guests WHERE first_name = 'John';
SELECT * FROM guests WHERE gender = 'Male' and phone = '9111111111';
SELECT * FROM guests WHERE first_name = 'While' or last_name = 'Goinka';
SELECT * FROM guests WHERE not first_name = 'John';
SELECT * FROM bookings WHERE booking_date between '2025-04-01' and '2025-05-01';
SELECT * FROM bookings WHERE check_in_date  not between '2025-04-01' and '2025-04-03';
SELECT * FROM bookings WHERE room_id in (5,8,7);
SELECT * FROM bookings WHERE guest_id not in (5,8,7);


