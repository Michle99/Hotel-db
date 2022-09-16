use hotel;

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
 -- select * from room rm
--    inner join roomReservation on rm.roomId=roomReservation.roomId
-- 	 inner join reservation r on roomReservation.reservationId=r.reservationId
--     where maximumOccupancy >= 3 and startDate <= '2023-04-30' and endDate >= '2023-04-01';
    
select ro.roomNumber, ro.maximumOccupancy, startDate, endDate from reservation r
inner join roomReservation on r.reservationId = roomReservation.reservationId
inner join room ro on roomReservation.roomId = ro.roomId
where startDate <= '2023-04-30' and endDate >= '2023-04-01' and maximumOccupancy >= 3;
    
-- '304', '4', '2023-03-31', '2023-04-05'
-- '301', '4', '2023-04-09', '2023-04-13'


   
/** 6
Write a query that returns a list of all guest names and the number of reservations per guest, 
sorted starting with the guest with the most reservations and then by the guest's last name. 
 */
  select g.firstname, g.lastname, count(*) count
  from guest g
  inner join reservation r on g.guestId=r.guestId
  group by g.lastname
  order by count desc;
    
---------------------------------------------------- 
select * from roomamenity;
select * from room;
select * from guest;
select * from reservation;
select * from roomReservation;
-----------------------------------------------------
 /*  7
  Write a query that displays the name, address, and phone number of a guest based on their phone number. 
  (Choose a phone number from the existing data.)
  */
  select  g.firstname, g.lastname, g.street, g.city, g.state, g.zipcode, g.phoneNumber
  from guest g
  where phoneNumber = '(216) 626-9875';
  