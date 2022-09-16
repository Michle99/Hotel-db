USE hotel;

insert into guest (FirstName, LastName, street, city, state, zipcode, phoneNumber) values 
	('Michael', 'Oroyo', '3941 Tanglewood Rd', 'Snellville', 'GA', '30039', '(216) 626-5398'),
    ('Mack', 'Simmer', '379 Old Shore Street', 'Council Bluffs', 'IA', '51501', '(291) 553-0508'),
	('Bettyann', 'Seery', '750 Wintergreen Dr.', 'Wasilla', 'AK', '99654', '(478) 277-9632'),
	('Duane', 'Cullison', '9662 Foxrun Lane', 'Harlingen', 'TX', '78552', '(308) 494-0198'),
    ('Karie',  'Yang', '9378 W. Augusta Ave.', 'West Deptford', 'NJ', '08096', '(214) 730-0298'),
	('Aurore', 'Lipton',	'762 Wild Rose Street',	'Saginaw',	'MI',	'48601',	'(377) 507-0974'),
	('Zachery', 'Luechtefeld',	'7 Poplar Dr.',	'Arvada',	'CO',	'80003',	'(814) 485-2615'),
	('Jeremiah', 'Pendergrass',	'70 Oakwood St.',	'Zion',	'IL',	'60099',	'(279) 491-0960'),
	('Walter', 'Holaway',	'7556 Arrowhead St.',	'Cumberland',	'RI',	'02864',	'(446) 396-6785'),
	('Wilfred', 'Vise',	'77 West Surrey Street',	'Oswego',	'NY',	'13126',	'(834) 727-1001'),
	('Maritza', 'Tilton',	'939 Linda Rd.',	'Burke',	'VA',	'22015',	'(446) 351-6860'),
	('Joleen', 'Tison',	'87 Queen St.',	'Drexel Hill',	'PA',	'19026',	'(231) 893-2755');
        
select * from guest;


desc reservation;

insert into reservation (guestId, adult, children, startDate, endDate, totalRoomCost) values 
	(2,	1,	0,	'2023-02-02',	'2023-02-04',	'299.98'),(3,	2,	1,	'2023-02-05',   '2023-02-10',	'999.95'),
	(4,	2,	0,	'2023-02-22',	'2023-02-24',	'349.98'),(5,	2,	2,	'2023-03-06',	'2023-03-07',	'199.99'),
	(1,	1,	1,	'2023-03-17',	'2023-03-20',	'524.97'),(6,	3,	0,	'2023-03-18',	'2023-03-23',	'924.95'),
	(7,	2,	2,	'2023-03-29',	'2023-03-31',	'349.98'),(8,	2,	0,	'2023-03-31',	'2023-04-05',	'874.95'),
	(9,	1,	0,	'2023-04-09',	'2023-04-13',	'799.96'),(10, 1,	1,	'2023-04-23',	'2023-04-24',	'174.99'),
	(11, 2,	4,	'2023-05-30',	'2023-06-02',	'1199.97'),(12, 2,	0,	'2023-06-10',	'2023-06-14',	'599.96'),
	(12, 1,	0,	'2023-06-10',	'2023-06-14',	'599.96'),(6,	3,	0,	'2023-06-17',	'2023-06-18',	'184.99'),
	(1,	2,	0,	'2023-06-28',	'2023-07-02',	'699.96'),(9,	3,	1,	'2023-07-13',	'2023-07-14',	'184.99'),
	(10, 4,	2,	'2023-07-18',	'2023-07-21',	'1259.97'),(3,	2,	1,	'2023-07-28',	'2023-07-29',	'199.99'),
	(3,	1,	0,	'2023-08-30',	'2023-09-01',	'349.98'),(2,	2,	0,	'2023-09-16',	'2023-09-17',	'149.99'),
	(5,	2,	2,	'2023-09-13', '2023-09-15',	'399.98'),(4,	2,	2,	'2023-11-22',	'2023-11-25',	'1199.97'),
	(2,	2,	0,	'2023-11-22',	'2023-11-25',	'449.97'),(2,	2,	2,	'2023-11-22',	'2023-11-25',	'599.97'),
	(11, 2,	0,	'2023-12-24',	'2023-12-28',	'699.96');
   
   
select * from reservation;
    
    
desc room;
select * from room;
drop table reservation;
insert into room (roomNumber, adaAcessible, standardOccupancy, maximumOccupancy, basePrice, extraPerson) values 
	(201, 'No', 2, 4, '199.99', '10'),(202, 'Yes', 2, 4, '174.99', '10'),(203, 'No', 2, 4, '199.99', '10'),
	(204, 'Yes', 2, 4, '174.99', '10'),(205, 'No', 2, 2, '174.99', '0'),(206, 'Yes', 2, 2, '149.99', '0'),
	(207, 'No', 2, 2, '174.99', '0'),(208, 'Yes', 2, 2, '149.99', '0'),(301, 'No', 2, 4, '199.99', '10'),
    (302, 'Yes', 2, 4, '174.99', '10'),(303, 'No', 2, 4, '199.99', '10'),(304, 'Yes', 2, 4, '174.99', '10'),
    (305, 'No', 2, 2, '174.99', '0'),(306, 'Yes', 2, 2, '149.99', '0'),(307, 'No', 2, 2, '174.99', '0'),
	(308, 'Yes', 2, 2, '149.99', '0'),(401, 'Yes', 3, 8, '399.99', '20'),(402, 'Yes', 3, 8, '399.99', '20');
    
    
desc amenity;

insert into amenity(amenityName, extraCost) values
    ('Jacuzzi', '25'),
    ('Microwave', '0'),
    ('Oven', '0'),
    ('Refrigerator', '0');
    
desc roomtype;
select * from roomtype;
insert into roomtype (roomId, roomTypeName) values
		(1, 'Double'),(2, 'Double'),(3, 'Double'),(4, 'Double'),(5, 'Single'),(6, 'Single'),(7, 'Single'),(8, 'Single'),
        (9, 'Double'),(10, 'Double'),(11, 'Double'),(12, 'Double'),(13, 'Single'),(14, 'Single'),(15, 'Single'),
        (16, 'Single'),(17, 'Suite'),(18, 'Suite');
        
desc roomreservation;
select * from roomreservation;

select * from reservation;
insert into roomreservation (reservationId, roomId) values 
	(1,16),(2,3),(3,13),(4 ,1),(5, 15),(6, 10),(7, 2),(8, 12),(9, 9),(10, 7),
	(11, 17),(12, 6),(13, 8),(14, 12),(15, 5),(16, 4),(17, 17),(18, 11),(19, 13),
	(20, 9),(21, 3),(22, 17),(23, 6),(24, 9),(25 ,10);
    
    
    
desc roomamenity; -- need to figure out how to insert more amenities into the table
select * from amenity;

insert into roomamenity (roomId, amenityId) values  
		(1, 1), (1,2), 
		(2, 4), (3, 2), (3,1),(4,4),(5,2),(5,4),(5,1),(6,2),(6,4),(7,2),(7,4),(7,1),(8,2),(8,4),(9,2),(9,1),
        (10,4),(11,2),(11,1),(12,4),(13,2),(13,4),(13,1),(14,2),(14,4),(15,2),(15,4),(15,1),(16,2),(16,4),(17,2),(17,4),(17,3),
        (18,2),(18,4),(18,3);
        
-- QUERIES
/** 1 
Write a query that returns a list of reservations that end in July 2023, 
including the name of the guest, the room number(s), and the reservation dates*/

select g.firstname, g.lastname, r.startDate, r.endDate, rm.roomNumber
 from reservation r
	inner join guest g on g.guestId=r.guestId
	inner join roomReservation on r.reservationId=roomReservation.reservationId
	inner join room rm on roomReservation.roomId=rm.roomId
  where (endDate between '2023-07-01' and '2023-07-31');
  
select * from reservation;
desc roomReservation;

/** 2
Write a query that returns a list of all reservations for rooms with a jacuzzi, displaying the guest's name, the room number, and the dates of the reservation.
*/
select g.firstname, g.lastname, r.startDate, r.endDate, rm.roomNumber
 from reservation r
	inner join guest g on g.guestId=r.guestId
	inner join roomReservation on r.reservationId=roomReservation.reservationId
	inner join room rm on roomReservation.roomId=rm.roomId
     inner join roomamenity ra on rm.roomId=ra.roomId
     inner join amenity a on ra.amenityId=a.amenityId
		 where a.amenityName = 'Jacuzzi';
         
         
         
/** 3
Write a query that returns all the rooms reserved for a specific guest, including the guest's name, the room(s) reserved, 
the starting date of the reservation, and how many people were included in the reservation. (Choose a guest's name from the existing data.) */
select  rm.roomNumber, g.firstname, g.lastname,r.startDate, (r.adult + r.children) people
  from reservation r
  inner join guest g on g.guestId=r.guestId
	inner join roomReservation on r.reservationId=roomReservation.reservationId
	inner join room rm on roomReservation.roomId=rm.roomId
    where g.lastname = 'Oroyo';
    

/** 4
 Write a query that returns a list of rooms, reservation ID, and per-room cost for each reservation. 
The results should include all rooms, whether or not there is a reservation associated with the room.**/
select  rm.roomNumber, r.reservationId, ifnull(r.totalRoomCost, rm.basePrice) as price
  from reservation r
	inner join roomReservation on r.reservationId=roomReservation.reservationId
	right join room rm on roomReservation.roomId=rm.roomId;

/** 5
Write a query that returns all rooms with a capacity of three or more and that are reserved on any date in April 2023
 */
 select rm.roomNumber, (adult+children) as people, r.startDate, r.endDate
  from reservation r
  inner join roomReservation on r.reservationId=roomReservation.reservationId
	inner join room rm on roomReservation.roomId=rm.roomId
  where ((adult+children) >= 3)
   and (r.startDate between '2023-04-01' and '2023-04-30');
   --   and (r.endDate between '2023-04-01' and '2023-04-30');
   
/** 6
Write a query that returns a list of all guest names and the number of reservations per guest, 
sorted starting with the guest with the most reservations and then by the guest's last name. 
 */
  select g.firstname, g.lastname, count(*) count
  from guest g
  inner join reservation r on g.guestId=r.guestId
  group by g.lastname
  order by count desc;
    
  /*  7
  Write a query that displays the name, address, and phone number of a guest based on their phone number. 
  (Choose a phone number from the existing data.)
  */
select * from roomamenity;
select * from room;
select * from guest;
select * from reservation;
select * from roomReservation;
  select  g.firstname, g.lastname, g.street, g.city, g.state, g.zipcode, g.phoneNumber
  from guest g
  where phoneNumber = '(216) 626-5398';
  
  
-- Part3 
delete from reservation
where reservation.reservationId = 1;

delete from roomReservation rr where rr.reservationId=1;
delete from reservation r where r.guestId = 2;
delete from guest g where g.guestId =2;