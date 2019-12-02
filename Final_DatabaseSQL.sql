-- HOTEL TABLE
CREATE TABLE HOTEL (id INT AUTO_INCREMENT,
 hotelNum varchar(255),
 address varchar(255),
 city varchar(255),
 state varchar(255),
 zipcode varchar(255),
 PRIMARY KEY (id));

 INSERT INTO HOTEL (hotelNum, address, city, state, zipcode) VALUES  ("4638428", "65733 Juwan Hill", "Port Carolinaview", "Montana", "69917-8696");

-- EMPLOYEE TABLE
CREATE TABLE EMPLOYEE (id INT AUTO_INCREMENT,
 employeeNum varchar(255),
 wage varchar(255),
 jobNum varchar(255),
 floorNum varchar(255),
 PRIMARY KEY (id));

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
CREATE TABLE EVENT (id INT AUTO_INCREMENT,
 eventNum varchar(255),
 eventType varchar(255),
 location varchar(255),
 date varchar(255),
 time varchar(255),
 resNum varchar(255),
 employeeNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO EVENT (eventNum, eventType, location, date, time, resNum, employeeNum) VALUES  ("1801416930", "non", "nam", "2001-04-06", "22:32:35", "1879494939", "1669996248");
 INSERT INTO EVENT (eventNum, eventType, location, date, time, resNum, employeeNum) VALUES  ("1997502070", "maiores", "asperiores", "1978-08-14", "02:09:53", "1565769581", "789076410");
 INSERT INTO EVENT (eventNum, eventType, location, date, time, resNum, employeeNum) VALUES  ("891133523", "architecto", "eius", "2016-11-08", "12:07:34", "1757701406", "1164530717");
COMMIT;

-- JOB TABLE
CREATE TABLE JOB (id INT AUTO_INCREMENT,
 jobNum varchar(255),
 jobTitle varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1915065909", "Valet Attendant");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1562626792", "Waitor");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("232229183", "Chef");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("640946760", "Receptionist");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("211640765", "Housekeeping");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("211640765", "Event Planner");
COMMIT;

-- ROOMTYPE TABLE
CREATE TABLE ROOMTYPE (id INT AUTO_INCREMENT,
 typeNum varchar(255),
 description varchar(255),
 maxNumGuests varchar(255),
 cost varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("2134750372", "Single Room - 1 King Bed", "2", "100.00");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("273284596", "Single Room - 2 Queen Beds", "4", "125.00");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("298379057", "Double Room - 4 Queen Beds", "8", "180.00");
COMMIT;

-- PAYMENT TABLE
CREATE TABLE PAYMENT (id INT AUTO_INCREMENT,
 paymentNum varchar(255),
 guestNum varchar(255),
 resNum varchar(255),
 total varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1636497606", "1613364770", "719726322", "510.22");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1228357906", "346385419", "1215322034", "520.68");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("907743443", "964909979", "576836280", "470.22");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1471844770", "520917390", "1980432982", "406.60");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("2085671292", "1920503518", "2070654177", "580.70");
COMMIT;

-- GUEST TABLE
CREATE TABLE GUEST (id INT AUTO_INCREMENT,
 guestNum varchar(255),
 resNum varchar(255),
 FName varchar(255),
 LName varchar(255),
 carType varchar(255),
 licensePlate varchar(255),
 phone varchar(255),
 email varchar(255),
 address varchar(255),
 city varchar(255),
 state varchar(255),
 zipcode varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("1613364770", "719726322", "Benton", "Ernser", "Ford Focus", "4B4-221", "(862)542-7482", "ashtyn97@huels.com", "42866 Bernier Creek", "Herminaview", "Oklahoma", "65177");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("346385419", "1215322034", "Kaden", "Bashirian", "Mazda 6", "AL1-3SS", "(973)974-0031", "sally47@rath.com", "741 Dickens Courts Apt. 409", "North Myrl", "Tennessee", "73486");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("964909979", "576836280", "Coleman", "Beahan", "Jeep Wrangler", "110-2BG", "(917)332-2311", "shanahan.dorris@murphy.org", "2027 Okuneva Falls", "North Eleanoreton", "California", "59009");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("520917390", "1980432982", "Kamryn", "Fisher", "Toyota Prius", "5LP-OBG", "(212)980-3392", "regan.romaguera@cronin.org", "44026 Eleanore Landing", "Maximeland", "Nebraska", "39516");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("1920503518", "2070654177", "Emelia", "Deckow", "BMW 328i", "1BN-NMJ", "(732)389-7014", "lrippin@pacocha.info", "770 Lavonne Junctions Suite 591", "Vonchester", "Oregon", "09572-7045");
COMMIT;

-- RESERVATION TABLE
CREATE TABLE RESERVATION (id INT AUTO_INCREMENT,
 resNum varchar(255),
 guestNum varchar(255),
 checkIn varchar(255),
 checkOut varchar(255),
 roomNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("719726322", "1613364770", "2019-04-15", "2019-04-20", "101");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1215322034", "346385419", "2019-04-18", "2019-04-24", "104");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("576836280", "964909979", "2019-05-22", "2019-05-25", "202");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1980432982", "520917390", "2019-06-01", "2019-06-06", "204");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("2070654177", "1920503518", "2019-10-28", "2019-10-30", "206");
COMMIT;

-- ROOM TABLE
CREATE TABLE ROOM (id INT AUTO_INCREMENT,
 roomNum varchar(255),
 typeNum varchar(255),
 floorNum varchar(255),
 cleaned varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("101", "2134750372", "1", "0");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("102", "273284596", "1", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("103", "2134750372", "1", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("104", "298379057", "1", "0");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("105", "298379057", "1", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("106", "2134750372", "1", "");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("201", "2134750372", "2", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("202", "298379057", "2", "0");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("203", "2134750372", "2", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("204", "273284596", "2", "0");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("205", "2134750372", "2", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned) VALUES  ("206", "273284596", "2", "0");

COMMIT;

-- FLOOR TABLE
CREATE TABLE FLOOR (id INT AUTO_INCREMENT,
 floorNum varchar(255),
 restaurantNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO FLOOR (floorNum, restaurantNum) VALUES  ("1", "1993739448");
 INSERT INTO FLOOR (floorNum, restaurantNum) VALUES  ("1", "1387803850");
 INSERT INTO FLOOR (floorNum, restaurantNum) VALUES  ("2", "845405183");
COMMIT;

-- VALET TABLE
CREATE TABLE VALET (id INT AUTO_INCREMENT,
 ticketNum varchar(255),
 lotNum varchar(255),
 spotNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("651501065", "1", "111");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1942641746", "2", "212");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("234573375", "2", "232");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("922650012", "2", "214");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("314471920", "1", "122");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1404240441", "1", "114");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1944778198", "1", "104");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1984128693", "1", "103");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("277141507", "1", "105");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1515329838", "2", "211");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("135603210", "2", "208");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("771266178", "2", "201");
COMMIT;

-- MENU TABLE
CREATE TABLE MENU (id INT AUTO_INCREMENT,
 menuNum varchar(255),
 appetizer varchar(255),
 entre varchar(255),
 dessert varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("1118202231", "Fried Calamari", "Chicken Alfredo", "NY Cheesecake");
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("714713285", "Deviled Eggs", "Vegetable Omelet", "Chocolate Crepe");
 INSERT INTO MENU (menuNum, appetizer, entre, dessert) VALUES  ("1161730486", "Nachos", "Panther Burger", "Chocolate Cake");
COMMIT;

-- RESTAURANT TABLE
CREATE TABLE RESTAURANT (id INT AUTO_INCREMENT,
 restaurantNum varchar(255),
 restaurantName varchar(255),
 menuNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("1993739448", "La Cucina", "1118202231");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("1387803850", "Hotel Cafe", "714713285");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("845405183", "Panther Bar & Grill", "1161730486");
COMMIT;

-- ROOMSERVICE TABLE
CREATE TABLE ROOMSERVICE (id INT AUTO_INCREMENT,
 orderNum varchar(255),
 roomNum varchar(255),
 restaurantNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("289179810", "101", "1993739448");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("451840484", "202", "1387803850");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("880086876", "203", "845405183");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1978292594", "105", "845405183");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1588108074", "104", "1387803850");
COMMIT;
