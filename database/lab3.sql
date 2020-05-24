-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `test` ;

-- -----------------------------------------------------
-- Schema test
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `test` DEFAULT CHARACTER SET utf8 ;
USE `test` ;

-- -----------------------------------------------------
-- Table `test`.`t_campus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_campus` ;

CREATE TABLE IF NOT EXISTS `test`.`t_campus` (
  `campus_id` VARCHAR(45) NOT NULL,
  `campus_name` VARCHAR(45) NOT NULL,
  `campus_address` VARCHAR(45) NULL DEFAULT NULL,
  UNIQUE INDEX `id_UNIQUE` (`campus_id` ASC) VISIBLE,
  PRIMARY KEY (`campus_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_profession`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_profession` ;

CREATE TABLE IF NOT EXISTS `test`.`t_profession` (
  `profession_id` VARCHAR(45) NOT NULL,
  `profession_name` VARCHAR(45) NOT NULL,
  `profession_address` VARCHAR(45) NULL DEFAULT NULL,
  `profession_campus_id` VARCHAR(45) NULL,
  `profession_teacher_id` VARCHAR(45) NULL,
  PRIMARY KEY (`profession_id`),
  UNIQUE INDEX `id_UNIQUE` (`profession_id` ASC) VISIBLE,
  INDEX `fk_t_profession_campus1_idx` (`profession_campus_id` ASC) VISIBLE,
  INDEX `fk_t_profession_t_teacher2_idx` (`profession_teacher_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_profession_campus1`
    FOREIGN KEY (`profession_campus_id`)
    REFERENCES `test`.`t_campus` (`campus_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_profession_t_teacher2`
    FOREIGN KEY (`profession_teacher_id`)
    REFERENCES `test`.`t_teacher` (`teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_teacher`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_teacher` ;

CREATE TABLE IF NOT EXISTS `test`.`t_teacher` (
  `teacher_id` VARCHAR(45) NOT NULL,
  `teacher_person_id` VARCHAR(45) NOT NULL,
  `teacher_person_id_type` VARCHAR(45) NOT NULL,
  `teacher_name` VARCHAR(45) NOT NULL,
  `teacher_sex` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_title` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_birthday` DATE NULL DEFAULT NULL,
  `teacher_country` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_phone_number` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_address` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_PC` VARCHAR(10) NULL DEFAULT NULL,
  `teacher_start_year` DATE NULL DEFAULT NULL,
  `teacher_email` VARCHAR(45) NULL DEFAULT NULL,
  `teacher_profession_id` VARCHAR(45) NULL,
  INDEX `fk_t_teacher_t_profession2_idx` (`teacher_profession_id` ASC) VISIBLE,
  PRIMARY KEY (`teacher_id`),
  UNIQUE INDEX `id_UNIQUE` (`teacher_id` ASC) VISIBLE,
  UNIQUE INDEX `person_id_UNIQUE` (`teacher_person_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_teacher_t_profession2`
    FOREIGN KEY (`teacher_profession_id`)
    REFERENCES `test`.`t_profession` (`profession_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_clazz`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_clazz` ;

CREATE TABLE IF NOT EXISTS `test`.`t_clazz` (
  `clazz_id` VARCHAR(45) NOT NULL,
  `clazz_name` VARCHAR(45) NOT NULL,
  `clazz_date` DATE NULL DEFAULT NULL,
  `clazz_grade` INT NULL DEFAULT NULL,
  `clazz_teacher_id` VARCHAR(45) NULL,
  `clazz_profession_id` VARCHAR(45) NULL,
  PRIMARY KEY (`clazz_id`),
  UNIQUE INDEX `id_UNIQUE` (`clazz_id` ASC) VISIBLE,
  INDEX `fk_t_clazz_t_teacher2_idx` (`clazz_teacher_id` ASC) VISIBLE,
  INDEX `fk_t_clazz_t_profession2_idx` (`clazz_profession_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_clazz_t_teacher2`
    FOREIGN KEY (`clazz_teacher_id`)
    REFERENCES `test`.`t_teacher` (`teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_clazz_t_profession2`
    FOREIGN KEY (`clazz_profession_id`)
    REFERENCES `test`.`t_profession` (`profession_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_student`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_student` ;

CREATE TABLE IF NOT EXISTS `test`.`t_student` (
  `student_id` VARCHAR(45) NOT NULL,
  `student_person_id` VARCHAR(45) NOT NULL,
  `student_person_id_type` VARCHAR(45) NOT NULL,
  `student_name` VARCHAR(45) NOT NULL,
  `student_sex` VARCHAR(45) NULL DEFAULT NULL,
  `student_birthday` DATE NULL DEFAULT NULL,
  `student_country` VARCHAR(45) NULL DEFAULT NULL,
  `student_phone_number` VARCHAR(45) NULL DEFAULT NULL,
  `student_address` VARCHAR(45) NULL DEFAULT NULL,
  `student_PC` VARCHAR(10) NULL DEFAULT NULL,
  `student_start_year` DATE NULL DEFAULT NULL,
  `student_email` VARCHAR(45) NULL DEFAULT NULL,
  `student_clazz_id` VARCHAR(45) NULL,
  UNIQUE INDEX `id_UNIQUE` (`student_id` ASC) VISIBLE,
  PRIMARY KEY (`student_id`),
  UNIQUE INDEX `person_id_UNIQUE` (`student_person_id` ASC) VISIBLE,
  INDEX `fk_t_student_t_clazz2_idx` (`student_clazz_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_student_t_clazz2`
    FOREIGN KEY (`student_clazz_id`)
    REFERENCES `test`.`t_clazz` (`clazz_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_course`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_course` ;

CREATE TABLE IF NOT EXISTS `test`.`t_course` (
  `course_id` VARCHAR(45) NOT NULL,
  `course_name` VARCHAR(45) NOT NULL,
  `course_assess_type` VARCHAR(45) NULL DEFAULT NULL,
  `course_profession_id` VARCHAR(45) NULL,
  PRIMARY KEY (`course_id`),
  UNIQUE INDEX `id_UNIQUE` (`course_id` ASC) VISIBLE,
  INDEX `fk_t_course_t_profession2_idx` (`course_profession_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_course_t_profession2`
    FOREIGN KEY (`course_profession_id`)
    REFERENCES `test`.`t_profession` (`profession_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_score`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_score` ;

CREATE TABLE IF NOT EXISTS `test`.`t_score` (
  `course_id` VARCHAR(45) NOT NULL,
  `student_id` VARCHAR(45) NOT NULL,
  `score` FLOAT NULL,
  PRIMARY KEY (`student_id`, `course_id`),
  INDEX `fk_t_course1_idx` (`course_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_course1`
    FOREIGN KEY (`course_id`)
    REFERENCES `test`.`t_course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `test`.`t_student` (`student_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_downgrade`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_downgrade` ;

CREATE TABLE IF NOT EXISTS `test`.`t_downgrade` (
  `downgrade_id` VARCHAR(45) NOT NULL,
  `date` DATE NULL,
  `cause` VARCHAR(45) NULL,
  `last_clazz_id` VARCHAR(45) NULL,
  `now_clazz_id` VARCHAR(45) NULL,
  `student_id` VARCHAR(45) NULL,
  PRIMARY KEY (`downgrade_id`),
  UNIQUE INDEX `id_UNIQUE` (`downgrade_id` ASC) VISIBLE,
  INDEX `fk_t_downgrade_t_student1_idx` (`student_id` ASC) VISIBLE,
  UNIQUE INDEX `t_student_id_UNIQUE` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_downgrade_t_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `test`.`t_student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_switch`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_switch` ;

CREATE TABLE IF NOT EXISTS `test`.`t_switch` (
  `switch_id` VARCHAR(45) NOT NULL,
  `date` DATE NULL,
  `member` VARCHAR(45) NULL,
  `last_clazz_id` VARCHAR(45) NULL,
  `now_clazz_id` VARCHAR(45) NULL,
  `student_id` VARCHAR(45) NULL,
  PRIMARY KEY (`switch_id`),
  UNIQUE INDEX `id_UNIQUE` (`switch_id` ASC) VISIBLE,
  INDEX `fk_t_switch_t_student1_idx` (`student_id` ASC) VISIBLE,
  UNIQUE INDEX `student_id_UNIQUE` (`student_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_switch_t_student1`
    FOREIGN KEY (`student_id`)
    REFERENCES `test`.`t_student` (`student_id`)
    ON DELETE CASCADE
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `test`.`t_course_start`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `test`.`t_course_start` ;

CREATE TABLE IF NOT EXISTS `test`.`t_course_start` (
  `course_start_date` DATE NOT NULL,
  `course_start_season` VARCHAR(45) NOT NULL,
  `course_start_time` VARCHAR(45) NULL,
  `course_start_course_id` VARCHAR(45) NOT NULL,
  `course_start_teacher_id` VARCHAR(45) NULL,
  INDEX `fk_t_course_start_t_course1_idx` (`course_start_course_id` ASC) VISIBLE,
  PRIMARY KEY (`course_start_course_id`),
  INDEX `fk_t_course_start_t_teacher1_idx` (`course_start_teacher_id` ASC) VISIBLE,
  CONSTRAINT `fk_t_course_start_t_course1`
    FOREIGN KEY (`course_start_course_id`)
    REFERENCES `test`.`t_course` (`course_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_t_course_start_t_teacher1`
    FOREIGN KEY (`course_start_teacher_id`)
    REFERENCES `test`.`t_teacher` (`teacher_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
