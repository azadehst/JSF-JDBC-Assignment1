-- ----------------------------------------------------------------
-- Create Schema and User
--
-- Uncomment following statements only if you did NOT use the 'prelab-databank.sql'
--   file during your MySQL Setup.  You MUST be logged in as MySQL superuser
--   account 'root@'localhost' for these statements to work:
-- DROP SCHEMA IF EXISTS `databank`;
-- CREATE SCHEMA IF NOT EXISTS `databank` DEFAULT CHARACTER SET utf8mb4;
-- DROP USER IF EXISTS `cst8277`@`localhost`;
-- CREATE USER IF NOT EXISTS 'cst8277'@'localhost' IDENTIFIED BY '8277';
-- GRANT ALL ON `databank`.* TO 'cst8277'@'localhost';
--
-- ----------------------------------------------------------------

-- -----------------------------------------------------
-- Create Table `databank`.`physician`
-- -----------------------------------------------------
USE `databank`;
CREATE TABLE IF NOT EXISTS `databank`.`physician`(
  `id` INT NOT NULL AUTO_INCREMENT,
  `last_name` VARCHAR(50) NOT NULL,
  `first_name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(100) NULL,
  `phone` VARCHAR(10) NULL,
  `specialty` VARCHAR(45) NULL,
  `created` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `databank`.`specialty`(
  `name` VARCHAR(45) NULL)
ENGINE = InnoDB;

INSERT INTO `databank`.`specialty`(`name`) VALUES ('Anatomical Pathology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Anesthesiology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Cardiology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Cardiovascular/Thoracic Surgery');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Clinical Immunology/Allergy');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Critical Care Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Dermatology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Diagnostic Radiology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Emergency Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Endocrinology and Metabolism');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Family Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Gastroenterology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('General Internal Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('General Surgery');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('General/Clinical Pathology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Geriatric Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Hematology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Medical Biochemistry');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Medical Genetics');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Medical Microbiology and Infectious Diseases');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Medical Oncology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Nephrology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Neurology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Neurosurgery');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Nuclear Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Obstetrics/Gynecology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Occupational Medicine');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Ophthalmology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Orthopedic Surgery');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Otolaryngology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Pediatrics');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Physical Medicine and Rehabilitation (PM & R)');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Plastic Surgery');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Psychiatry');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Public Health and Preventive Medicine (PhPm)');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Radiation Oncology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Respirology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Rheumatology');
INSERT INTO `databank`.`specialty`(`name`) VALUES ('Rheumatology');
