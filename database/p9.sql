/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.4.21-MariaDB-log : Database - p9
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`p9` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `p9`;

/*Table structure for table `datos` */

DROP TABLE IF EXISTS `datos`;

CREATE TABLE `datos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `short_url` varchar(255) DEFAULT NULL,
  `large_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `datos` */

insert  into `datos`(`id`,`short_url`,`large_url`) values 
(1,'fGz','https://youtu.be/sflGudN4vbo'),
(2,'Lou','https://youtu.be/sflGudN4vbo'),
(3,'Ku7','https://youtu.be/eJGP-hK7VeQ'),
(4,'c6v','https://youtu.be/yp03t_e4buc');

/*Table structure for table `empresas` */

DROP TABLE IF EXISTS `empresas`;

CREATE TABLE `empresas` (
  `id_empresa` int(10) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(20) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `celular` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `empresas` */

insert  into `empresas`(`id_empresa`,`nombre`,`descripcion`,`imagen`,`celular`,`direccion`) values 
(7,'comidas','Fresas','2022-05-2619430732452161504-frederika.jpg','3112370862','kjdkjhdskj');

/*Table structure for table `productos` */

DROP TABLE IF EXISTS `productos`;

CREATE TABLE `productos` (
  `id_producto` int(10) NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `id_empresa` int(10) DEFAULT NULL,
  `id_usuario` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_empresa` (`id_empresa`),
  KEY `id_usuario` (`id_usuario`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`),
  CONSTRAINT `productos_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id_producto`,`imagen`,`descripcion`,`precio`,`id_empresa`,`id_usuario`) values 
(5,'2022-05-261955297692161504-frederika.jpg','FRESAS',1000,7,7);

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id_usuario` int(10) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `contraseña` varchar(255) DEFAULT NULL,
  `confirmacion` varchar(1) DEFAULT '0',
  `id_empresa` int(10) DEFAULT NULL,
  PRIMARY KEY (`id_usuario`),
  KEY `id_empresa` (`id_empresa`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`id_empresa`) REFERENCES `empresas` (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`email`,`contraseña`,`confirmacion`,`id_empresa`) values 
(7,'alejandrojp877@gmail.com','bdea70b82df2ab2ac29044f2a1d5ff7fa5fcb85850603062480bdf4c2fd2feb4','1',7);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
