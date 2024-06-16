use football;
CREATE TABLE TEAM
(
TEAMNAME VARCHAR(20) PRIMARY KEY,
ABB VARCHAR(3),
WEBSITE VARCHAR(30),
CITY VARCHAR(20),
POINTS INT(5)
);
CREATE TABLE CONTRACT
(
CONTRACTID INT(5) PRIMARY KEY,
EMPLOYER VARCHAR(20),
STARTDATE DATE,
ENDDATE DATE,
SALARY INT(10)
);
CREATE TABLE PLAYER
(
PLAYERID INT PRIMARY KEY,
FNAME VARCHAR(20),
MNAME VARCHAR(20),
LNAME VARCHAR(20),
DOB DATE,
POSITION VARCHAR(10),
WEIGHT INT,
HEIGHT INT(1),
NATIONALITY VARCHAR(20),
KITNUMBER INT,
TEAMNAME VARCHAR(20),
CONTRACTID INT,
FOREIGN KEY (CONTRACTID) REFERENCES CONTRACT(CONTRACTID),
FOREIGN KEY (TEAMNAME) REFERENCES TEAM(TEAMNAME)
);
CREATE TABLE MANAGER
(
MANAGERID INT PRIMARY KEY,
FNAME VARCHAR(10),
MNAME VARCHAR(10),
LNAME VARCHAR(10),
DOB DATE,
PHONENO INT(11),
CONTRACTID INT,
TEAMNAME VARCHAR(20),
FOREIGN KEY (TEAMNAME) REFERENCES TEAM(TEAMNAME),
FOREIGN KEY (CONTRACTID) REFERENCES CONTRACT(CONTRACTID)
);
CREATE TABLE COACH
(
COACHID INT PRIMARY KEY,
FNAME VARCHAR(10),
MNAME VARCHAR(10),
LNAME VARCHAR(10),
DOB DATE,
PHONENO INT,
CONTRACTID INT,
TYPE VARCHAR(10),
TEAMNAME VARCHAR(20),
FOREIGN KEY (CONTRACTID) REFERENCES CONTRACT(CONTRACTID),
FOREIGN KEY (TEAMNAME) REFERENCES TEAM(TEAMNAME)
);
DESC PLAYER;
DESC CONTRACT;
DESC TEAM;
INSERT INTO TEAM VALUES ('Almeria','ALM','www.almeriaunited.com','Mediterraneos',0);
INSERT INTO TEAM VALUES ('Athletic Bilbao','ATH','www.athleticunited.com','Bilbao',0);
INSERT INTO TEAM VALUES ('Barcelona','BAR','www.barcelonaunited.com','Barcelona',0);
INSERT INTO TEAM VALUES ('Espanyol','ESP','www.espanyolunited.com','Estadi Olimpic',0);
INSERT INTO TEAM VALUES ('Getafe','GAT','www.getafeunited.com','Getafe',0);
INSERT INTO TEAM VALUES ('Malaga','MAL','www.malagaunited.com','Malaga',0);
INSERT INTO TEAM VALUES ('Mallorca','MLL','www.mallorcaunited.com','Balearic Islands',0);
INSERT INTO TEAM VALUES ('Numancia','NUM','www.numanciaunited.com','Los Pajaritos',0);
INSERT INTO TEAM VALUES ('Osasuna','OSA','www.osasunaunited.com','Navarra',0);
INSERT INTO TEAM VALUES ('Real Madrid','RMD','www.realmunited.com','Madrid',0);
INSERT INTO TEAM VALUES ('Sevilla','SEV','www.sevillaunited.com','Ramón Sánchez',0);
INSERT INTO TEAM VALUES ('Valencia','VAL','www.valenciaunited.com','Mestalla',0);
INSERT INTO TEAM VALUES ('Arsenal','ARS','www.arsenalunited.com','Emirates',0);
INSERT INTO TEAM VALUES ('Manchester United','AST','www.astonvunited.com','Aston',0);
INSERT INTO TEAM VALUES ('Chelsea','CHE','www.chelseaunited.com','Chelsea',0);
INSERT INTO TEAM VALUES ('Everton','EVR','www.evertonunited.com','Goodison Park',0);
INSERT INTO TEAM VALUES ('Fulham','FUL','www.fulhamunited.com','Craven Cottage',0);
INSERT INTO TEAM VALUES ('Liverpool','LIV','www.liverpoolunited.com','Anfield',0);
INSERT INTO TEAM VALUES ('Portsmouth','POR','www.portsmouthunited.com','Fratton Park',0);
INSERT INTO TEAM VALUES ('Sunderland','SUR','www.sunderlandunited.com','White Hart',0);
SELECT * FROM TEAM;
INSERT INTO CONTRACT VALUES (1,'FIFAWALE','2011-12-23','2018-12-23',43464301.13);
INSERT INTO CONTRACT VALUES (2,'FIFAWALE','2013-01-25','2019-01-25',50076701.23);
INSERT INTO CONTRACT VALUES (3,'FIFAWALE','2014-07-17','2015-07-17',70065101.33);
INSERT INTO CONTRACT VALUES (4,'FIFAWALE','2012-08-02','2018-08-02',80086201.43);
INSERT INTO CONTRACT VALUES (5,'FIFAWALE','2015-11-30','2017-11-30',90071201.53);
INSERT INTO CONTRACT VALUES (6,'FIFAWALE','2013-12-05','2015-12-05',80068301.63);
INSERT INTO CONTRACT VALUES (7,'FIFAWALE','2012-01-15','2016-01-15',40002301.73);
INSERT INTO CONTRACT VALUES (8,'FIFAWALE','2014-02-19','2018-02-19',30003201.83);
INSERT INTO CONTRACT VALUES (9,'FIFAWALE','2015-09-20','2019-09-20',50050301.93);
INSERT INTO CONTRACT VALUES (10,'FIFAWALE','2014-05-22','2017-05-22',70560001.03);
INSERT INTO CONTRACT VALUES (101,'Almeria','2015-08-14','2018-08-14',20546001.13);
INSERT INTO CONTRACT VALUES (102,'Almeria','2015-08-14','2018-08-14',20560001.23);
INSERT INTO CONTRACT VALUES (103,'Almeria','2012-08-14','2018-08-14',26410001.33);
INSERT INTO CONTRACT VALUES (104,'Athletic Bilbao','2014-07-17','2015-07-17',70065101.43);
INSERT INTO CONTRACT VALUES (105,'Athletic Bilbao','2014-07-17','2015-07-17',70485101.53);
SELECT * FROM CONTRACT;
insert into PLAYER values(1,'Christiano','K','Ronaldo','1990-03-14','gk',70,6.1,'Portugese',7,'Almeria',101);
insert into player values(2,'Angel','Di','Maria','1989-05-17','st',65,5.10,'Argentinian',13,'Almeria',102);
insert into player values(3,'Sergio','X','Ramos','1991-12-19','lb',75,6.5,'Spanish',15,'Almeria',103);
insert into player values(4,'Iker','F','Casillas','1989-09-21','gk',70,6.6,'Spanish',21,'Athletic Bilbao',104);
insert into player values(5,'Mario','S','Gotze','1990-02-14','st',62,5.8,'Italian',54,'Athletic Bilbao',105);
insert into player values(6,'Lionel','O','Messi','1989-09-17','lb',60,5.6,'Argentinian',10,'Athletic Bilbao',1);
insert into player values(7,'David','G','Villa','1992-01-22','gk',65,5.8,'Spanish',12,'Barcelona',2);
insert into player values(8,'Sergio','F','Ronaldinho','1985-02-12','mid',68,6.0,'Brazilian',13,'Barcelona',3);
insert into player values(9,'Xavier','X','Puyol','1990-11-28','lb',70,6.5,'Spanish',02,'Barcelona',4);
insert into player values(10,'Luis','F','Suarez','1990-06-15','gk',63,6.0,'English',50,'Espanyol',5);
insert into player values(11,'Gareth','G','Bale','1989-12-30','mid',65,5.9,'Costa Rican',12,'Espanyol',6);
insert into player values(12,'Wayne','L','Rooney','1990-06-19','rb',60,5.8,'English',08,'Espanyol',8);
insert into player values(13,'Roger','K','Ferdinand','1987-10-20','gk',67,6.1,'English',09,'Getafe',7);
insert into player values(14,'Steven','F','Gerrard','1986-11-30','mid',60,5.9,'English',12,'Getafe',9);
insert into player values(15,'Adityam','Aparna','Kumar','2003-11-21','mid', 64, 5.8,'Indian',8,'Real Madrid',10);
SELECT * FROM PLAYER;
insert into manager values(1,'Shivang','Kumar','Raj','1985-01-16',94561238,101,'Almeria');
insert into manager values(2,'Sumeet','','Singh','1990-03-25',765431890,8,'Athletic Bilbao');
insert into manager values(3,'Kanav','Singh','Sethi','1970-07-04',87687980,6,'Espanyol');
insert into manager values(4,'Shivam','','Anand','1968-02-05',998876655,7,'Getafe');
insert into manager values(5,'Nikhil','Ramesh','Patwari','1990-03-11',983120800,103,'Barcelona');
insert into manager values(6,'Saksham','K','Sehrawet','1978-09-13',965432789,5,'Malaga');
insert into manager values(7,'Dhruv','L','Sirohi','1985-03-21',983167432,4,'Mallorca');
insert into manager values(8,'Prashant','K','Mishra','1960-10-10',990321467,2,'Numancia');
insert into manager values(9,'Samar','G','Singh','1960-10-10',998898877,3,'Osasuna');
insert into manager values(10,'Dhruv','K','Moudgil','1974-07-07',987654310,1,'Real Madrid');
insert into manager values(11,'Ronak','S','Jindal','1992-05-12',887766532,9,'Sevilla');
insert into manager values(12,'Ramesh','B','Gupta','1989-02-11',988767654,10,'Valencia');
insert into manager values(13,'Varun','L','Jjwala','1990-01-07',976565432,102,'Arsenal');
insert into manager values(14,'Victor','Von','Doom','1969-06-09',789643213,104,'Aston Villa');
insert into manager values(15,'Steve','','Rogers','1992-04-09',987656789,105,'Chelsea');
SELECT * FROM MANAGER;
INSERT INTO COACH VALUES (1,'Jose','A','Mourinho','1963-01-12',956321476,101,'Head','Almeria');
INSERT INTO COACH VALUES (2,'Carlo','','Ancelotti','1959-06-11',854765354,2,'Head','Athletic Bilbao');
INSERT INTO COACH VALUES (3,'Alex','F','Ferguson','1941-12-31',876545156,103,'Head','Barcelona');
INSERT INTO COACH VALUES (4,'Arsene','E','Wenger','1949-10-1',745688844,104,'Head','Espanyol');
INSERT INTO COACH VALUES (5,'Louis','Van','Gaal','1951-08-08',954888742,5,'Head','Getafe');
INSERT INTO COACH VALUES (6,'Marcello','','Lippi','1948-04-09',745965145,6,'Head','Malaga');
INSERT INTO COACH VALUES (7,'Manuel','L','Pellegrini','1953-09-16',896321475,1,'Head','Mallorca');
INSERT INTO COACH VALUES (8,'Johan','A','Cruyff','1947-05-25',804562158,8,'Head','Numancia');
INSERT INTO COACH VALUES (9,'Vicente','Del','Bosque','1950-12-3',852154848,9,'Head','Osasuna');
INSERT INTO COACH VALUES (10,'David','','Moyes','1963-08-14',753265865,10,'Head','Real Madrid');
INSERT INTO COACH VALUES (11,'Guus','D','Hiddink','1946-11-19',854564785,3,'Head','Sevilla');
INSERT INTO COACH VALUES (12,'Massi','','Allegri','1967-09-11',859658542,102,'Head','Valencia');
INSERT INTO COACH VALUES (13,'Arrigo','T','Sacchi','1946-04-01',855455555,7,'Head','Arsenal');
INSERT INTO COACH VALUES (14,'Luis','I','Enrique','1970-05-07',877445214,4,'Head','Aston Villa');
INSERT INTO COACH VALUES (15,'Rinus','','Michels','1955-06-04',959622365,105,'Head','Chelsea');
SELECT * FROM PLAYER WHERE POSITION = 'mid';
SELECT * FROM PLAYER WHERE DOB < '1990-01-01';
SELECT POSITION, COUNT(*) FROM PLAYER GROUP BY POSITION;
SELECT FNAME, LNAME, PHONENO
FROM MANAGER
WHERE DOB > '1980-01-01';
SELECT FNAME, LNAME, TEAMNAME FROM MANAGER
WHERE PHONENO LIKE '98%';
SELECT COUNT(*) FROM MANAGER WHERE DOB < '1980-01-01';
SELECT TEAMNAME, AVG(PHONENO) FROM MANAGER GROUP BY TEAMNAME;
SELECT * FROM MANAGER ORDER BY PHONENO ASC; 
SELECT * FROM MANAGER ORDER BY PHONENO DESC; 



