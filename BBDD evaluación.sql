-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`paises`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`paises` (
  `idpaisesididestado` INT NOT NULL AUTO_INCREMENT,
  `nombre_pais:` VARCHAR(45) NULL,
  `nombre_provincia` VARCHAR(45) NULL,
  `latitud` DECIMAL NULL,
  `Longitud` DECIMAL NULL,
  PRIMARY KEY (`idpaisesididestado`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`universidades`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`universidades` (
  `iduniversidades` INT NOT NULL AUTO_INCREMENT,
  `nombre_universidad` VARCHAR(45) NULL,
  `pagina_web` VARCHAR(45) NULL,
  `paises_idestado` INT NOT NULL,
  PRIMARY KEY (`iduniversidades`),
  INDEX `fk_universidades_paises_idx` (`paises_idestado` ASC) VISIBLE,
  CONSTRAINT `fk_universidades_paises`
    FOREIGN KEY (`paises_idestado`)
    REFERENCES `mydb`.`paises` (`idpaisesididestado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
