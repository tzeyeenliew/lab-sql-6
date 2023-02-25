### LAB | SQL QUERIES 6

USE sakila;

### Instructions
### 1. Add new films to the database


### Redundant command due to Table Data Import Wizard, but entered the code here due to lab instructions

drop table if exists films_2020;
CREATE TABLE `films_2020` (
  `film_id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `description` text,
  `release_year` year(4) DEFAULT NULL,
  `language_id` tinyint(3) unsigned NOT NULL,
  `original_language_id` tinyint(3) unsigned DEFAULT NULL,
  `rental_duration` int(6),
  `rental_rate` decimal(4,2),
  `length` smallint(5) unsigned DEFAULT NULL,
  `replacement_cost` decimal(5,2) DEFAULT NULL,
  `rating` enum('G','PG','PG-13','R','NC-17') DEFAULT NULL,
  PRIMARY KEY (`film_id`),
  CONSTRAINT FOREIGN KEY (`original_language_id`) REFERENCES `language` (`language_id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=utf8;

### Redundant command due to Table Data Import Wizard 


show variables like 'local_infile';
set global local_infile = 1;


SELECT * FROM films_2020;



### 2. Update information on rental_duration, rental_rate, and replacement_cost.

### Just checking if all the columns are well and truly empty

SELECt rental_duration
FROM films_2020;

SELECT rental_rate
FROM films_2020;

SELECT replacement_cost
FROM films_2020;

DESCRIBE films_2020;


### I sliced it into three lines rather than one giant line for clarity:

UPDATE films_2020 SET rental_duration ='3';
UPDATE films_2020 SET rental_rate="2.99";
UPDATE films_2020 SET replacement_cost= "8.99";


### Checking if the data was entered correctly

SELECT * FROM films_2020
LIMIT 5;





