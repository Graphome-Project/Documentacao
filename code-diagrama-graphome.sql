-- MySQL Script generated by MySQL Workbench
-- Mon May  9 09:57:55 2022
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_graphome
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_graphome
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_graphome` ;
USE `db_graphome` ;

-- -----------------------------------------------------
-- Table `db_graphome`.`tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_graphome`.`tb_temas` (
  `id` BIGINT NULL DEFAULT NULL AUTO_INCREMENT,
  `resumo` VARCHAR(100) NOT NULL,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `db_graphome`.`tb_usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_graphome`.`tb_usuario` (
  `id` BIGINT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `user` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL DEFAULT NULL,
  `bio` VARCHAR(500) NULL,
  `tipo` VARCHAR(255) NULL,
  PRIMARY KEY (`id`));


-- -----------------------------------------------------
-- Table `db_graphome`.`tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_graphome`.`tb_postagens` (
  `id` BIGINT NULL DEFAULT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `texto` VARCHAR(1000) NULL DEFAULT NULL,
  `midia` VARCHAR(255) NULL DEFAULT NULL,
  `data` DATE NULL DEFAULT NULL,
  `curtir` BIGINT NULL DEFAULT NULL,
  `temas_id` BIGINT NOT NULL,
  `usuario_id` BIGINT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX (`temas_id` ASC) VISIBLE,
  INDEX (`usuario_id` ASC) VISIBLE,
  CONSTRAINT ``
    FOREIGN KEY (`temas_id`)
    REFERENCES `db_graphome`.`tb_temas` (`id`),
  CONSTRAINT ``
    FOREIGN KEY (`usuario_id`)
    REFERENCES `db_graphome`.`tb_usuario` (`id`));


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
