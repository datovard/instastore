ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'secret';
flush privileges;

-- MySQL Script generated by MySQL Workbench
-- Tue Jan 12 13:56:52 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema instastore
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `instastore` ;

-- -----------------------------------------------------
-- Schema instastore
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `instastore` DEFAULT CHARACTER SET utf8 ;
USE `instastore` ;

-- -----------------------------------------------------
-- Table `instastore`.`Store`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `instastore`.`Store` ;

CREATE TABLE IF NOT EXISTS `instastore`.`Store` (
  `StoreId` INT NOT NULL AUTO_INCREMENT,
  `StoreName` VARCHAR(45) NULL,
  `CoordinateLatitude` DOUBLE NULL,
  `CoordinateLongitude` DOUBLE NULL,
  PRIMARY KEY (`StoreId`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `instastore`.`Schedule`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `instastore`.`Schedule` ;

CREATE TABLE IF NOT EXISTS `instastore`.`Schedule` (
  `ScheduleId` INT NOT NULL AUTO_INCREMENT,
  `StoreId` INT NOT NULL,
  `WeekDay` TINYINT NOT NULL,
  `StartsAt` TIME NULL,
  `EndsAt` TIME NULL,
  PRIMARY KEY (`ScheduleId`, `StoreId`),
  INDEX `fk_Schedule_Store_idx` (`StoreId` ASC) VISIBLE,
  CONSTRAINT `fk_Schedule_Store`
    FOREIGN KEY (`StoreId`)
    REFERENCES `instastore`.`Store` (`StoreId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

USE instastore;

INSERT INTO Store ( StoreName, CoordinateLatitude, CoordinateLongitude ) VALUES 
("Instastore Chapinero",      4.654785762862241,  -74.05578614891417),
("Instastore Engativá",       4.711543761226306,  -74.11313411769943),
("Instastore Bucaramanga",    7.117868334978774,  -73.11107685466604),
("Instastore Barrios Unidos", 4.673915288066488,  -74.06346781843864),
("Instastore Kennedy",        4.609393346720635,  -74.15202185751941),
("Instastore Cartagena",      10.398395548795275, -75.5614983607275),
("Instastore Barranquilla",   10.992250418883538, -74.81068998503024),
("Instastore Santa Marta",    11.157870079944303, -74.22320614933257),
("Instastore Fontibón",       4.672304296414278,  -74.14532893043037);


INSERT INTO `instastore`.`Schedule` ( StoreId, WeekDay, StartsAt, EndsAt )  VALUES
(1, 0, "008:00:00", "017:00:00"),
(1, 1, "008:00:00", "017:00:00"),
(1, 2, "008:00:00", "017:00:00"),
(1, 3, "008:00:00", "017:00:00"),
(1, 4, "008:00:00", "017:00:00"),
(1, 5, "009:00:00", "014:00:00"),
(2, 0, "008:00:00", "017:00:00"),
(2, 1, "008:00:00", "017:00:00"),
(2, 2, "008:00:00", "017:00:00"),
(2, 3, "008:00:00", "017:00:00"),
(2, 4, "008:00:00", "017:00:00"),
(2, 5, "009:00:00", "014:00:00"),
(3, 0, "007:00:00", "017:00:00"),
(3, 1, "007:00:00", "017:00:00"),
(3, 2, "007:00:00", "017:00:00"),
(3, 3, "007:00:00", "017:00:00"),
(3, 4, "007:00:00", "017:00:00"),
(3, 5, "007:00:00", "012:00:00"),
(3, 6, "007:00:00", "012:00:00"),
(4, 0, "008:00:00", "017:00:00"),
(4, 1, "008:00:00", "017:00:00"),
(4, 2, "008:00:00", "017:00:00"),
(4, 3, "008:00:00", "017:00:00"),
(4, 4, "008:00:00", "017:00:00"),
(4, 5, "009:00:00", "014:00:00"),
(5, 0, "008:00:00", "017:00:00"),
(5, 1, "008:00:00", "017:00:00"),
(5, 2, "008:00:00", "017:00:00"),
(5, 3, "008:00:00", "017:00:00"),
(5, 4, "008:00:00", "017:00:00"),
(5, 5, "009:00:00", "014:00:00"),
(6, 0, "007:00:00", "018:00:00"),
(6, 1, "007:00:00", "018:00:00"),
(6, 2, "007:00:00", "018:00:00"),
(6, 3, "007:00:00", "018:00:00"),
(6, 4, "007:00:00", "018:00:00"),
(6, 5, "007:00:00", "013:00:00"),
(7, 0, "009:00:00", "016:00:00"),
(7, 1, "009:00:00", "016:00:00"),
(7, 2, "009:00:00", "016:00:00"),
(7, 3, "009:00:00", "016:00:00"),
(7, 4, "009:00:00", "016:00:00"),
(8, 0, "008:00:00", "017:00:00"),
(8, 1, "008:00:00", "017:00:00"),
(8, 2, "008:00:00", "017:00:00"),
(8, 3, "008:00:00", "017:00:00"),
(8, 4, "008:00:00", "017:00:00"),
(8, 5, "009:00:00", "014:00:00"),
(9, 0, "007:00:00", "017:00:00"),
(9, 1, "007:00:00", "017:00:00"),
(9, 2, "007:00:00", "017:00:00"),
(9, 3, "007:00:00", "017:00:00"),
(9, 4, "007:00:00", "017:00:00"),
(9, 5, "007:00:00", "014:00:00");


DROP FUNCTION IF EXISTS `instastore`.`haversine`;

DELIMITER $$
CREATE FUNCTION `instastore`.`haversine` ( lat1 DECIMAL(8,6),  lng1 DECIMAL(8,6),  lat2 DECIMAL(8,6), lng2 DECIMAL(8,6)) 
RETURNS DECIMAL(30,20)
DETERMINISTIC
BEGIN
    DECLARE R INT;
    DECLARE dLat DECIMAL(30,20);
    DECLARE dLng DECIMAL(30,20);
    DECLARE a1 DECIMAL(30,20);
    DECLARE a2 DECIMAL(30,20);
    DECLARE a DECIMAL(30,20);
    DECLARE c DECIMAL(30,20);
    DECLARE d DECIMAL(30,20);

    SET R = 6371; -- Earth's radius in kilometers
    SET dLat = RADIANS( lat2 ) - RADIANS( lat1 );
    SET dLng = RADIANS( lng2 ) - RADIANS( lng1 );
    SET a1 = SIN( dLat / 2 ) * SIN( dLat / 2 );
    SET a2 = SIN( dLng / 2 ) * SIN( dLng / 2 ) * COS( RADIANS( lat1 )) * COS( RADIANS( lat2 ) );
    SET a = a1 + a2;
    SET c = 2 * ATAN2( SQRT( a ), SQRT( 1 - a ) );
    SET d = R * c;
    RETURN d;
END$$
DELIMITER ;