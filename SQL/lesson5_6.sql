DROP TABLE IF EXISTS stations;

CREATE TABLE IF NOT EXISTS stations(
 stationCode INT PRIMARY KEY,
 stationName VARCHAR(20) NOT NULL,
 stationEName VARCHAR(50),
 name VARCHAR(20),
 ename VARCHAR(50),
 stationAddrTw VARCHAR(255),
 stationAddrEn VARCHAR(255),
 stationTel VARCHAR(20),
 gps VARCHAR(50),
 youbike BOOL
);

SELECT * FROM stations;
