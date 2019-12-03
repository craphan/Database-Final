-- HOTEL TABLE
CREATE TABLE HOTEL (
 hotelNum varchar(4),
 address varchar(30),
 city varchar(30),
 state varchar(20),
 zipcode varchar(15),
 PRIMARY KEY (hotelNum));

 INSERT INTO HOTEL (hotelNum, address, city, state, zipcode) VALUES  ("4638428", "65733 Juwan Hill", "Port Carolinaview", "Montana", "69917-8696");

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE (
 employeeNum varchar(15),
 wage float,
 jobNum varchar(15),
 floorNum varchar(4),
 PRIMARY KEY (employeeNum),
 FOREIGN KEY (jobNum) REFERENCES JOB,
 FOREIGN KEY (floorNum) REFERENCES FLOOR);

START TRANSACTION;
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("2012689240", "10.00", "1915065909", "NULL");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1959382915", "10.00", "1915065909", "NULL");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("796298857", "12.00", "1562626792", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1474505939", "14.50", "1562626792", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1227902987", "12.50", "1562626792", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "12.50", "1562626792", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1474505939", "14.50", "1562626792", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1227902987", "12.00", "1562626792", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "12.50", "1562626792", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1474505939", "32.50", "232229183", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1227902987", "25.00", "232229183", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "30.00", "232229183", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1474505939", "12.00", "211640765", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1227902987", "10.00", "211640765", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "10.00", "211640765", "2");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "18.00", "640946760", "1");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "18.00", "640946760", "1");
COMMIT;

-- EVENT TABLE
CREATE TABLE EVENT (
 eventNum varchar(15),
 eventType varchar(30),
 location varchar(30),
 eventDate date,
 eventTime time,
 resNum varchar(15),
 employeeNum varchar(15),
 PRIMARY KEY (eventNum),
 FOREIGN KEY (resNum) REFERENCES RESERVATION,
 FOREIGN KEY (employeeNum) REFERENCES EMPLOYEE);

START TRANSACTION;
 INSERT INTO EVENT (eventNum, eventType, location, eventDate, eventTime, resNum, employeeNum) VALUES  ("1801416930", "non", "nam", "2001-04-06", "22:32:35", "1879494939", "1669996248");
 INSERT INTO EVENT (eventNum, eventType, location, eventDate, eventTime, resNum, employeeNum) VALUES  ("1997502070", "maiores", "asperiores", "1978-08-14", "02:09:53", "1565769581", "789076410");
 INSERT INTO EVENT (eventNum, eventType, location, eventDate, eventTime, resNum, employeeNum) VALUES  ("891133523", "architecto", "eius", "2016-11-08", "12:07:34", "1757701406", "1164530717");
COMMIT;

-- JOB TABLE
CREATE TABLE JOB (
 jobNum varchar(15),
 jobTitle varchar(30),
 PRIMARY KEY (jobNum));

START TRANSACTION;
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1915065909", "Valet Attendant");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1562626792", "Waitor");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("232229183", "Chef");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("640946760", "Receptionist");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("211640765", "Housekeeping");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("211640765", "Event Planner");
COMMIT;

-- ROOMTYPE TABLE
CREATE TABLE ROOMTYPE (
 typeNum varchar(15),
 description varchar(30),
 maxNumGuests smallint,
 cost float,
 PRIMARY KEY (typeNum));

START TRANSACTION;
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("2134750372", "Single Room - 1 King Bed", "2", "100.00");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("273284596", "Single Room - 2 Queen Beds", "4", "125.00");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("298379057", "Double Room - 4 Queen Beds", "8", "180.00");
COMMIT;

-- PAYMENT TABLE
CREATE TABLE PAYMENT (
 paymentNum varchar(15),
 guestNum varchar(15),
 resNum varchar(15),
 total float,
 PRIMARY KEY (paymentNum),
 FOREIGN KEY (guestNum) REFERENCES GUEST,
 FOREIGN KEY (resNum) REFERENCES RESERVATION);

START TRANSACTION;
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1636497606", "1613364770", "719726322", "510.22");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1228357906", "346385419", "1215322034", "520.68");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("907743443", "964909979", "576836280", "470.22");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1471844770", "520917390", "1980432982", "406.60");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("2085671292", "1920503518", "2070654177", "580.70");
COMMIT;

-- GUEST TABLE
CREATE TABLE GUEST (
 guestNum varchar(15),
 resNum varchar(15),
 FName varchar(30),
 LName varchar(30),
 ticketNum varchar(15),
 phone varchar(15),
 email varchar(40),
 address varchar(30),
 city varchar(30),
 state varchar(20),
 zipcode varchar(15),
 PRIMARY KEY (guestNum),
 FOREIGN KEY (resNum) REFERENCES RESERVATION,
 FOREIGN KEY (ticketNum) REFERENCES VALETSERVICE);

START TRANSACTION;
 INSERT INTO GUEST (guestNum, resNum, FName, LName, ticketNum, phone, email, address, city, state, zipcode) VALUES  ("1613364770", "719726322", "Benton", "Ernser", "6382738", "(862)542-7482", "ashtyn97@huels.com", "42866 Bernier Creek", "Herminaview", "Oklahoma", "65177");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, ticketNum, phone, email, address, city, state, zipcode) VALUES  ("346385419", "1215322034", "Kaden", "Bashirian", "2628276", "(973)974-0031", "sally47@rath.com", "741 Dickens Courts Apt. 409", "North Myrl", "Tennessee", "73486");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, ticketNum, phone, email, address, city, state, zipcode) VALUES  ("964909979", "576836280", "Coleman", "Beahan", "7393657", "(917)332-2311", "shanahan.dorris@murphy.org", "2027 Okuneva Falls", "North Eleanoreton", "California", "59009");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, ticketNum, phone, email, address, city, state, zipcode) VALUES  ("520917390", "1980432982", "Kamryn", "Fisher", "9036271", "(212)980-3392", "regan.romaguera@cronin.org", "44026 Eleanore Landing", "Maximeland", "Nebraska", "39516");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, ticketNum, phone, email, address, city, state, zipcode) VALUES  ("1920503518", "2070654177", "Emelia", "1728465", "1BN-NMJ", "(732)389-7014", "lrippin@pacocha.info", "770 Lavonne Junctions Suite 591", "Vonchester", "Oregon", "09572-7045");
COMMIT;

-- RESERVATION TABLE
CREATE TABLE RESERVATION (
 resNum varchar(15),
 guestNum varchar(15),
 checkIn date,
 checkOut date),
 roomNum varchar(4),
 PRIMARY KEY (resNum),
 FOREIGN KEY (guestNum) REFERENCES GUEST,
 FOREIGN KEY (roomNum) REFERENCES ROOM);

START TRANSACTION;
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("719726322", "1613364770", "2019-04-15", "2019-04-20", "101");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1215322034", "346385419", "2019-04-18", "2019-04-24", "104");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("576836280", "964909979", "2019-05-22", "2019-05-25", "202");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1980432982", "520917390", "2019-06-01", "2019-06-06", "204");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("2070654177", "1920503518", "2019-10-28", "2019-10-30", "206");
COMMIT;

-- ROOM TABLE
CREATE TABLE ROOM (
 roomNum varchar(15),
 typeNum varchar(15),
 floorNum varchar(4),
 cleaned BOOL,
 resNum varchar(15),
 PRIMARY KEY (roomNum),
 FOREIGN KEY (typeNum) REFERENCES ROOMTYPE,
 FOREIGN KEY (floorNum) REFERENCES FLOOR,
 FOREIGN KEY (resNum) REFERENCES RESERVATION);

START TRANSACTION;
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("101", "2134750372", "1", "0", "7291820");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("102", "273284596", "1", "1", "7294466");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("103", "2134750372", "1", "1", "7728846");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("104", "298379057", "1", "0", "6251142");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("105", "298379057", "1", "1", "7726142");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("106", "2134750372", "1", "0", "8271622");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("201", "2134750372", "2", "1", "0291012");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("202", "298379057", "2", "0", "7102658");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("203", "2134750372", "2", "1", "2615263");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("204", "273284596", "2", "0", "2815275");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("205", "2134750372", "2", "1", "2017294");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, resNum) VALUES  ("206", "273284596", "2", "0", "1726575");

COMMIT;

-- FLOOR TABLE
CREATE TABLE FLOOR (
 floorNum varchar(4),
 hotelNum varchar(4),
 PRIMARY KEY (floorNum),
 FOREIGN KEY (hotelNum) REFERENCES HOTEL);

START TRANSACTION;
 INSERT INTO FLOOR (floorNum, hotelNum) VALUES  ("1", "19937394");
 INSERT INTO FLOOR (floorNum, hotelNum) VALUES  ("1", "13878038");
 INSERT INTO FLOOR (floorNum, hotelNum) VALUES  ("2", "84540518");
COMMIT;

-- VALETSERVICE TABLE
CREATE TABLE VALETSERVICE (
 ticketNum varchar(15),
 lotNum varchar(15),
 spotNum varchar(15),
 price float,
 PRIMARY KEY (ticketNum));

START TRANSACTION;
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("651501065", "1", "111", 40.50);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("1942641746", "2", "212", 40.00);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("234573375", "2", "232", 50.00);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("922650012", "2", "214", 70.00);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("314471920", "1", "122", 70.00);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("1404240441", "1", "114", 60.39);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("1944778198", "1", "104", 60.39);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("1984128693", "1", "103", 60.39);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("277141507", "1", "105", 50.15);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("1515329838", "2", "211", 50.15);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("135603210", "2", "208", 40.25);
 INSERT INTO VALETSERVICE (ticketNum, lotNum, spotNum, price) VALUES  ("771266178", "2", "201", 40.25);
COMMIT;

-- MENU TABLE
CREATE TABLE MENU (
 menuNum varchar(15),
 appetizer varchar(40),
 entre varchar(40),
 dessert varchar(40),
 PRIMARY KEY (menuNum));

START TRANSACTION;
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("1118202231", "Fried Calamari", "Chicken Alfredo", "NY Cheesecake");
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("714713285", "Deviled Eggs", "Vegetable Omelet", "Chocolate Crepe");
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("1161730486", "Nachos", "Panther Burger", "Chocolate Cake");
COMMIT;

-- RESTAURANT TABLE
CREATE TABLE RESTAURANT (
 restaurantNum varchar(15),
 restaurantName varchar(40),
 menuNum varchar(15),
 floorNum varchar(4),
 employeeNum varchar(15),
 PRIMARY KEY (restaurantNum),
 FOREIGN KEY (floorNum) REFERENCES FLOOR,
 FOREIGN KEY (employeeNum) REFERENCES EMPLOYEE);

START TRANSACTION;
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum, floorNum, employeeNum) VALUES  ("1993739448", "La Cucina", "1118202231", "28925517", "2910025162");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum, floorNum, employeeNum) VALUES  ("1387803850", "Hotel Cafe", "714713285", "88263712", "9200162539");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum, floorNum, employeeNum) VALUES  ("845405183", "Panther Bar & Grill", "1161730486", "72812264", "8291002533");
COMMIT;

-- ROOMSERVICE TABLE
CREATE TABLE ROOMSERVICE (
 orderNum varchar(15),
 roomNum varchar(15),
 restaurantNum varchar(15),
 PRIMARY KEY (orderNum),
 FOREIGN KEY (roomNum) REFERENCES ROOM,
 FOREIGN KEY (restaurantNum) REFERENCES RESTAURANT);

START TRANSACTION;
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("289179810", "101", "1993739448");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("451840484", "202", "1387803850");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("880086876", "203", "845405183");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1978292594", "105", "845405183");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1588108074", "104", "1387803850");
COMMIT;
