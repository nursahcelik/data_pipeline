
CREATE DATABASE Gans;

USE Gans;

-- DROP TABLE cities;
CREATE TABLE cities (
city_id INT NOT NULL AUTO_INCREMENT,
city VARCHAR(200),
country VARCHAR(50),
PRIMARY KEY (city_id)
);

-- DROP TABLE populations;
CREATE TABLE populations (
	city_id INT,
    population VARCHAR(50),
    latitude VARCHAR(50),
    longitude VARCHAR(50),
    FOREIGN KEY (city_id) REFERENCES cities(city_id)
);


-- DROP TABLE weathers;
CREATE TABLE weathers (
id INT NOT NULL AUTO_INCREMENT,
city_id INT,
forecast_time DATETIME,
outlook VARCHAR(50),
temperature FLOAT(6),
temperature_feels_like FLOAT(6),
wind_speed FLOAT (6),
rain FLOAT (6),
humidity INT,
PRIMARY KEY (id),
FOREIGN KEY (city_id) REFERENCES cities (city_id)
);

CREATE TABLE airports (
airport_icao VARCHAR(50),
airport_name VARCHAR(50),
PRIMARY KEY (airport_icao)
);

-- DROP TABLE flights;
CREATE TABLE flights (
flight_id INT NOT NULL AUTO_INCREMENT,
flight_number VARCHAR(50),
departure_icao VARCHAR(50),
arrival_icao VARCHAR(50),
arrival_time_local DATETIME,
departure_city VARCHAR(50),
PRIMARY KEY (flight_id),
FOREIGN KEY (arrival_icao) REFERENCES airports (airport_icao)
);

CREATE TABLE cities_airport (
city_id INT,
airport_icao VARCHAR (50),
FOREIGN KEY (city_id) REFERENCES cities (city_id),
FOREIGN KEY (airport_icao) REFERENCES airports (airport_icao)
);


 SELECT * FROM populations;
 SELECT * FROM cities;