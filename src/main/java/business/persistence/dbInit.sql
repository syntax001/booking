/*
    You might want to rename the database to your own needs.
    If so, please substitute `startcode` with whatever your project is called.
 */

CREATE DATABASE  IF NOT EXISTS `booking`;

USE `booking`;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(90) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(20) NOT NULL DEFAULT 'student',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `users` WRITE;
INSERT INTO `users` VALUES 
(1,'barbie@world.dk','jensen','student'),
(2,'ken@world.com','jensen','student'),
(3,'robin@gotham.com','batman','administrator');
UNLOCK TABLES;


/*------------------------ SQL for item list ------------------------*/

CREATE TABLE `equipment` (
    `id` varchar(45) NOT NULL,
    `item_name` varchar(90) NOT NULL,
    `item_description` varchar(45) NOT NULL,
    PRIMARY KEY (`id`),
    UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `equipment` WRITE;
INSERT INTO `equipment` VALUES
('vr-1','Oculus Quest 2','Virtual Reality Headset'),
('vr-2','Oculus Quest 2','Virtual Reality Headset'),
('vr-3','Oculus Quest 2','Virtual Reality Headset'),
('vr-4','Oculus Quest 2','Virtual Reality Headset'),
('vr-5','Oculus Quest 2','Virtual Reality Headset'),
('vr-6','Oculus Quest 2','Virtual Reality Headset'),
('vr-7','Oculus Rift S','Virtual Reality Headset'),
('vr-8','Oculus Rift S','Virtual Reality Headset'),
('pc-1','Desktop PC','Desktop PC for workstation purposes'),
('printer-1','HP Printer','Printer for posters'),
('3d-1','Creatlity CR-10 S5','3D Printer'),
('3d-2','Creatlity CR-10 S5','3D Printer'),
('3d-3','Creatlity CR-10 S5','3D Printer'),
('3d-4','Creatlity CR-10 S5','3D Printer'),
('3d-5','Creatlity CR-10 S5','3D Printer'),
('3d-6','Creatlity CR-10 S5','3D Printer'),
('3d-7','Creatlity CR-10 S5','3D Printer'),
('3d-8','Creatlity CR-10 S5','3D Printer'),
('camera-1','Canon EOS 90D','Photography Camera'),
('camera-2','Canon EOS 90D','Photography Camera'),
('camera-3','Canon EOS 90D','Photography Camera'),
('camera-4','Panasonic 4K','Cinema Camera'),
('studio-1','Photography Studio','Photography Studio');

UNLOCK TABLES;


/*------------------------ SQL for booking ------------------------*/

USE `booking`;

DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
    `booking_id` int(11) NOT NULL AUTO_INCREMENT,
    `booking_date` varchar(45) NOT NULL,
    `day_amount` int(11) NOT NULL,
    `comment` varchar(45) NOT NULL,
    `booking_status` varchar(20) NOT NULL,
    PRIMARY KEY (`booking_id`),
    UNIQUE KEY `booking_id_UNIQUE` (`booking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `booking` WRITE;
INSERT INTO `booking` VALUES
(1,'24-07-2021',3,'test booking','booked');
UNLOCK TABLES;

/*------------------------ SQL for room ------------------------*/

USE `booking`;

DROP TABLE IF EXISTS `room`;
CREATE TABLE `room` (
    `room_number` int(11) NOT NULL,
    `description` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

LOCK TABLES `room` WRITE;
INSERT INTO `room` VALUES
(212,'MediaLab'),
(210,'MakerLab');
UNLOCK TABLES;