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
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("2012689240", "3.241418", "438046415", "7");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1959382915", "9820.4", "1566159716", "0");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("796298857", "454.86348", "1973890163", "9");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1474505939", "93.9", "1067918162", "9");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("1227902987", "670", "1381430748", "0");
 INSERT INTO EMPLOYEE (employeeNum, wage, jobNum, floorNum) VALUES  ("159822639", "11565.15", "1871093277", "8");
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
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1915065909", "reiciendis");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1562626792", "quia");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("232229183", "explicabo");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("640946760", "qui");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("211640765", "corrupti");
 INSERT INTO JOB (jobNum, jobTitle) VALUES  ("1663414533", "illum");
COMMIT;

-- ROOMTYPE TABLE
CREATE TABLE ROOMTYPE (id INT AUTO_INCREMENT,
 typeNum varchar(255),
 description varchar(255),
 maxNumGuests varchar(255),
 cost varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("2134750372", "ea", "69313", "31399.349740729");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("273284596", "et", "3118", "353643963.6518");
 INSERT INTO ROOMTYPE (typeNum, description, maxNumGuests, cost) VALUES  ("2134750372", "magnam", "53619333", "32405358.431033");
COMMIT;

-- PAYMENT TABLE
CREATE TABLE PAYMENT (id INT AUTO_INCREMENT,
 paymentNum varchar(255),
 guestNum varchar(255),
 resNum varchar(255),
 total varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("474673705", "1122488044", "1636497606", "14432062");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("574668814", "205145286", "1228357906", "15.593545");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("888603113", "395740637", "907743443", "42.13605");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("2007225649", "1674220866", "1471844770", "7.8018");
 INSERT INTO PAYMENT (paymentNum, guestNum, resNum, total) VALUES  ("1050766499", "763897972", "2085671292", "34.06");
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
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("1613364770", "2127793188", "Benton", "Ernser", "magnam", "44", "287.410.6392 x853", "ashtyn97@huels.com", "42866 Bernier Creek", "Herminaview", "Oklahoma", "65177");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("346385419", "737339892", "Kaden", "Bashirian", "quos", "1", "+1-283-791-7939", "sally47@rath.com", "741 Dickens Courts Apt. 409", "North Myrl", "Tennessee", "73486");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("964909979", "875624995", "Coleman", "Beahan", "et", "51", "(387) 389-7014", "shanahan.dorris@murphy.org", "2027 Okuneva Falls", "North Eleanoreton", "California", "59009");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("520917390", "695021519", "Kamryn", "Fisher", "odit", "592362501", "+1 (873) 438-0077", "regan.romaguera@cronin.org", "44026 Eleanore Landing", "Maximeland", "Nebraska", "39516");
 INSERT INTO GUEST (guestNum, resNum, FName, LName, carType, licensePlate, phone, email, address, city, state, zipcode) VALUES  ("1920503518", "816132348", "Emelia", "Deckow", "tempore", "160802021", "1-350-756-8673 x3619", "lrippin@pacocha.info", "770 Lavonne Junctions Suite 591", "Vonchester", "Oregon", "09572-7045");
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
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("719726322", "1020545916", "1983-04-15", "1984-07-29", "223");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1215322034", "544076460", "1996-03-18", "1973-02-24", "233637");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("576836280", "936731891", "1989-01-22", "2001-06-28", "298017682");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("1980432982", "1960317146", "1989-01-01", "1992-11-27", "976443605");
 INSERT INTO RESERVATION (resNum, guestNum, checkIn, checkOut, roomNum) VALUES  ("2070654177", "287420505", "2008-10-28", "2000-08-09", "61029436");
COMMIT;

-- ROOM TABLE
CREATE TABLE ROOM (id INT AUTO_INCREMENT,
 roomNum varchar(255),
 typeNum varchar(255),
 floorNum varchar(255),
 cleaned varchar(255),
 roomNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("881859", "1317514114", "9", "");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("74554143", "180980604", "5534", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("7153", "919156004", "760369", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("30471", "700751579", "2172", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("2624900", "1620670434", "99", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("9822663", "1599289444", "3050905", "");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("39593834", "689937361", "1691", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("578624459", "1932841905", "96543393", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("672", "1474073496", "58156", "1");
 INSERT INTO ROOM (roomNum, typeNum, floorNum, cleaned, roomNum) VALUES  ("988529", "1130613695", "6562830", "1");
COMMIT;

-- FLOOR TABLE
CREATE TABLE FLOOR (id INT AUTO_INCREMENT,
 floorNum varchar(255),
 restaurantNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO FLOOR (floorNum, restaurantNum) VALUES  ("41", "1744155030");
 INSERT INTO FLOOR (floorNum, restaurantNum) VALUES  ("830", "955706302");
COMMIT;

-- PARKINGLOT TABLE
CREATE TABLE PARKINGLOT (id INT AUTO_INCREMENT,
 lotNum varchar(255),
 spotNum varchar(255),
 guestNum varchar(255),
 employeeNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO PARKINGLOT (lotNum, spotNum, guestNum, employeeNum) VALUES  ("4", "92345", "1130167057", "1140395978");
 INSERT INTO PARKINGLOT (lotNum, spotNum, guestNum, employeeNum) VALUES  ("4", "31350418", "1270235679", "1086852048");
COMMIT;

-- VALET TABLE
CREATE TABLE VALET (id INT AUTO_INCREMENT,
 ticketNum varchar(255),
 lotNum varchar(255),
 spotNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("651501065", "4", "7717");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1942641746", "0", "714");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("234573375", "2", "255437765");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("922650012", "2", "736");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("314471920", "7", "0");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1404240441", "8", "5");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1944778198", "3", "440");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1984128693", "9", "5522563");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("277141507", "6", "7");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("1515329838", "2", "52651");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("135603210", "0", "6434");
 INSERT INTO VALET (ticketNum, lotNum, spotNum) VALUES  ("771266178", "5", "3");
COMMIT;

-- MENU TABLE
CREATE TABLE MENU (id INT AUTO_INCREMENT,
 menuNum varchar(255),
 appetizer varchar(255),
 dessert varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO MENU (menuNum, appetizer, dessert) VALUES  ("1118202231", "non", "ut");
 INSERT INTO MENU (menuNum, appetizer, dessert) VALUES  ("714713285", "tempore", "et");
 INSERT INTO MENU (menuNum, appetizer, dessert) VALUES  ("1161730486", "dolore", "dolor");
COMMIT;

-- RESTAURANT TABLE
CREATE TABLE RESTAURANT (id INT AUTO_INCREMENT,
 restaurantNum varchar(255),
 restaurantName varchar(255),
 menuNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("1993739448", "consequatur", "501276442");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("1387803850", "quos", "1052830646");
 INSERT INTO RESTAURANT (restaurantNum, restaurantName, menuNum) VALUES  ("845405183", "quis", "578287571");
COMMIT;

-- ROOMSERVICE TABLE
CREATE TABLE ROOMSERVICE (id INT AUTO_INCREMENT,
 orderNum varchar(255),
 roomNum varchar(255),
 restaurantNum varchar(255),
 PRIMARY KEY (id));

START TRANSACTION;
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("289179810", "972", "1189415901");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("451840484", "1", "968800338");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("880086876", "115362864", "939213798");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1978292594", "395728", "96576333");
 INSERT INTO ROOMSERVICE (orderNum, roomNum, restaurantNum) VALUES  ("1588108074", "1", "1755272735");
COMMIT;
