DROP DATABASE IF EXISTS `chat`;

CREATE DATABASE chat;

USE chat;

/* Create other tables and define schemas for them here! */




/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'user'
--
-- ---

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` CHAR(20) NOT NULL DEFAULT 'NULL',
  PRIMARY KEY (`id`),
KEY (`name`)
);

-- ---
-- Table 'messages'
--
-- ---

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `user` INTEGER DEFAULT NULL,
  `room` INTEGER NOT NULL,
  `text` CHAR(140) NOT NULL,
  PRIMARY KEY (`id`),
KEY (`user`),
KEY (`room`),
KEY (`text`)
);

-- ---
-- Table 'room'
--
-- ---

DROP TABLE IF EXISTS `room`;

CREATE TABLE `room` (
  `id` INTEGER NOT NULL AUTO_INCREMENT,
  `name` CHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
KEY (`name`)
);

-- ---
-- Foreign Keys
-- ---

ALTER TABLE `messages` ADD FOREIGN KEY (user) REFERENCES `user` (`id`);
ALTER TABLE `messages` ADD FOREIGN KEY (room) REFERENCES `room` (`id`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `messages` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `room` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `user` (`id`,`name`) VALUES
-- ('','');
-- INSERT INTO `messages` (`id`,`user`,`room`,`text`) VALUES
-- ('','','','');
-- INSERT INTO `room` (`id`,`name`) VALUES
-- ('','');