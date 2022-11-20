SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

DROP DATABASE IF EXISTS `restaurante`;
CREATE DATABASE IF NOT EXISTS `restaurante`;

CREATE SCHEMA IF NOT EXISTS `restaurante` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci ;
USE `restaurante`;

-- -----------------------------------------------------
-- Table `restaurante`.`menus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurante`.`menus` ;

CREATE  TABLE IF NOT EXISTS `restaurante`.`menus` (
  `menu_id` INT NOT NULL AUTO_INCREMENT ,
  `menu_nombre` VARCHAR(45) NULL ,
  `menu_precio` DECIMAL(2) NULL ,
  PRIMARY KEY (`menu_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurante`.`platos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurante`.`platos` ;

CREATE  TABLE IF NOT EXISTS `restaurante`.`platos` (
  `plato_id` INT NOT NULL AUTO_INCREMENT ,
  `plato_nombre` VARCHAR(45) NULL ,
  `plato_calorias` INT NULL ,
  `plato_cuchara` BOOLEAN NULL DEFAULT false ,
  PRIMARY KEY (`plato_id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurante`.`menus_platos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurante`.`menus_platos` ;

CREATE  TABLE IF NOT EXISTS `restaurante`.`menus_platos` (
  `mp_tipo` VARCHAR(10) NULL ,
  `plato_id` INT NOT NULL ,
  `menu_id` INT NOT NULL ,
  PRIMARY KEY (`plato_id`, `menu_id`) ,
  INDEX `mp_fk_platos` (`plato_id` ASC) ,
  INDEX `mp_fk_menus` (`menu_id` ASC) ,
  CONSTRAINT `mp_fk_platos`
    FOREIGN KEY (`plato_id` )
    REFERENCES `restaurante`.`platos` (`plato_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `mp_fk_menus`
    FOREIGN KEY (`menu_id` )
    REFERENCES `restaurante`.`menus` (`menu_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `restaurante`.`ingredientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `restaurante`.`ingredientes` ;

CREATE  TABLE IF NOT EXISTS `restaurante`.`ingredientes` (
  `plato_id` INT NOT NULL ,
  `ingrediente_nombre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`plato_id`, `ingrediente_nombre`) ,
  INDEX `ing_fk_platos` (`plato_id` ASC) ,
  CONSTRAINT `ing_fk_platos`
    FOREIGN KEY (`plato_id` )
    REFERENCES `restaurante`.`platos` (`plato_id` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;



SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
