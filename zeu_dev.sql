-- MySQL dump 10.17  Distrib 10.3.25-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: zeu_dev
-- ------------------------------------------------------
-- Server version	10.3.25-MariaDB-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Recordatorios`
--

DROP TABLE IF EXISTS `Recordatorios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Recordatorios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha` datetime NOT NULL,
  `usuario` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_BE34123A6B4CBDDB` (`usuario_mod`),
  KEY `IDX_BE34123A2265B05D` (`usuario`),
  CONSTRAINT `FK_BE34123A2265B05D` FOREIGN KEY (`usuario`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_BE34123A6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Recordatorios`
--

LOCK TABLES `Recordatorios` WRITE;
/*!40000 ALTER TABLE `Recordatorios` DISABLE KEYS */;
INSERT INTO `Recordatorios` VALUES (1,1,'2020-07-27 11:50:36',0,'Recortdatorio de Prueba','Descripción de Prueba','2020-07-27 00:00:00',1),(2,1,'2020-07-27 11:51:39',1,'Recortdatorio de Prueba','Descripción de Prueba','2020-07-28 00:00:00',1),(3,1,'2020-07-27 15:00:28',0,'Recordatorio de Seguimiento','Dar seguimiento a ACTIVOS Martinez de Prueba 2','2020-07-27 00:00:00',1),(4,1,'2020-07-27 15:01:24',0,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','2020-07-27 15:01:24',1),(5,1,'2020-07-27 15:02:10',0,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','2020-07-27 00:00:00',1),(6,1,'2020-07-27 15:04:48',1,'Recordatorio de Seguimiento','Dar seguimiento a ACTIVOS Martinez de Prueba 2','2020-08-03 00:00:00',1);
/*!40000 ALTER TABLE `Recordatorios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `departamento` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `acronimo` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_58B0B25C40E497EB` (`departamento`),
  KEY `IDX_58B0B25C6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_58B0B25C40E497EB` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_58B0B25C6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` VALUES (1,1,'Facturación Y Cobranza','FYC',1,'2020-07-09 00:00:00',1),(2,1,'Compras','CO',1,'2020-07-09 00:00:00',1),(3,1,'CXP','CP',1,'2020-07-09 00:00:00',1),(4,1,'Tesorería','FT',1,'2020-07-09 00:00:00',1),(5,1,'Contabilidad','CT',1,'2020-07-09 00:00:00',1),(6,1,'Mantenimiento de Vehículos e Infrestructura','MVI',1,'2020-07-09 00:00:00',1),(7,1,'Enlace al Cliente','EC',1,'2020-07-09 00:00:00',1),(8,3,'Comercial','CO',1,'2020-07-09 00:00:00',1),(9,3,'Marketing','MK',1,'2020-07-09 00:00:00',1),(10,3,'Ventas','VE',1,'2020-07-09 00:00:00',1),(11,5,'Desarrollo de Software','DS',1,'2020-07-09 00:00:00',1),(12,5,'Soporte Tecnico','ST',1,'2020-07-09 00:00:00',1),(13,5,'Redes y Seguridad','RS',1,'2020-07-09 00:00:00',1),(14,5,'Mantenimiento Equipos de Computo','MT',1,'2020-07-09 00:00:00',1),(15,6,'Gestión de la documentación','GD',1,'2020-07-09 00:00:00',1),(16,6,'Acciones Correctivas','AC',1,'2020-07-09 00:00:00',1),(17,6,'Auditorias','AU',1,'2020-07-09 00:00:00',1),(18,6,'Medición y Mejora','MM',1,'2020-07-09 00:00:00',1),(19,2,'Planeación de Operaciones','PO',1,'2020-07-09 00:00:00',1),(20,2,'Logistica de Personal','LP',1,'2020-07-09 00:00:00',1),(21,2,'Ejecución de Operaciones','EO',1,'2020-07-09 00:00:00',1),(22,4,'Reclutamiento y Selección','RS',1,'2020-07-09 00:00:00',1),(23,4,'Contratación','CT',1,'2020-07-09 00:00:00',1),(24,4,'Relaciones Laborales','RL',1,'2020-07-09 00:00:00',1),(25,4,'Comunicación Interna','CI',1,'2020-07-09 00:00:00',1),(26,4,'Servicio Social','SS',1,'2020-07-09 00:00:00',1),(27,4,'Capacitación','CP',1,'2020-07-09 00:00:00',1);
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_5E9F836C6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_5E9F836C6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Aseguramiento de Calidad','2020-05-28 00:00:00',1,NULL),(2,'Retrabajos\n\n','2020-05-28 00:00:00',1,NULL),(3,'Representación de Proveedores','2020-05-28 00:00:00',1,NULL),(4,'Packaging & Kiteo','2020-05-28 00:00:00',1,NULL),(5,'Maquila y Ensambles','2020-06-16 13:01:37',1,1),(6,'Horas Hibridas','2020-05-28 00:00:00',1,NULL),(7,'Seguridad Privada','2020-05-28 00:00:00',1,NULL),(8,'Limpieza','2020-05-28 00:00:00',1,NULL),(9,'Logística','2020-05-28 00:00:00',1,NULL),(10,'Business Process Outsourcing (BPO)','2020-05-28 00:00:00',1,NULL),(11,'Sanitización & Desinfección','2020-05-28 00:00:00',1,NULL),(12,'Contabilidad y Fiscal','2020-05-28 00:00:00',1,NULL),(13,'Marketing','2020-05-28 00:00:00',1,NULL),(14,'Test','2020-06-16 12:44:47',1,NULL);
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `direccion_fiscal` int(11) DEFAULT NULL,
  `contacto_principal` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre_comercial` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `razon_social` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `giro` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rfc` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `direccion` int(11) DEFAULT NULL,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_50FE07D79010A02B` (`razon_social`),
  KEY `IDX_50FE07D76B4CBDDB` (`usuario_mod`),
  KEY `IDX_50FE07D744023640` (`direccion_fiscal`),
  KEY `IDX_50FE07D782EF3FCD` (`contacto_principal`),
  KEY `IDX_50FE07D7F384BE95` (`direccion`),
  CONSTRAINT `FK_50FE07D744023640` FOREIGN KEY (`direccion_fiscal`) REFERENCES `direcciones` (`id`),
  CONSTRAINT `FK_50FE07D76B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_50FE07D782EF3FCD` FOREIGN KEY (`contacto_principal`) REFERENCES `clientes_contactos` (`id`),
  CONSTRAINT `FK_50FE07D7F384BE95` FOREIGN KEY (`direccion`) REFERENCES `direcciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,NULL,NULL,NULL,'2020-11-04 15:33:33',1,'Prueba 1','Eberspaecher',NULL,'Camión de servicio pesado',NULL,NULL,'Tier 1');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes_contactos`
--

DROP TABLE IF EXISTS `clientes_contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes_contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `cliente_id` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `correo` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `correo_personal` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `idioma` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `celular` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `telefono` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `telefono_personal` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `puesto` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `departamento` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_cumpleanios` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_694245EE77040BC9` (`correo`),
  KEY `IDX_694245EE6B4CBDDB` (`usuario_mod`),
  KEY `IDX_694245EEDE734E51` (`cliente_id`),
  CONSTRAINT `FK_694245EE6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_694245EEDE734E51` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes_contactos`
--

LOCK TABLES `clientes_contactos` WRITE;
/*!40000 ALTER TABLE `clientes_contactos` DISABLE KEYS */;
INSERT INTO `clientes_contactos` VALUES (1,NULL,1,'2020-11-04 15:33:33',1,'daniel','Perez','test_user@atcorp.mx','pablo@test.com','ES','8441463678','8442463678','','Desarrollador','OPERACIONES','2020-07-09 15:45:44','');
/*!40000 ALTER TABLE `clientes_contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `acronimo` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2C96106C6B4CBDDB` (`usuario_mod`),
  KEY `IDX_2C96106C10174714` (`division`),
  CONSTRAINT `FK_2C96106C10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_2C96106C6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (1,1,6,'Finanzas','FN','2020-07-07 16:17:47',1),(2,1,1,'Operaciones','OP','2020-07-07 21:26:52',1),(3,1,6,'Comercial','CO','2020-07-07 21:24:50',1),(4,1,6,'Recursos Humanos','RH','2020-07-08 11:10:50',1),(5,1,6,'Tecnologías de la Información','TI','2020-07-07 21:26:27',1),(6,1,6,'Calidad','CD','2020-07-07 21:27:16',1),(7,1,3,'Operaciones','OP','2020-07-07 21:27:40',1),(8,1,3,'Recursos Humanos','RH','2020-07-07 21:27:51',1);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `direcciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `calle` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `numero_exterior` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `numero_interior` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `colonia` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `codigo_postal` int(11) NOT NULL,
  `municipio` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pais` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B0B0BECB6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_B0B0BECB6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division`
--

DROP TABLE IF EXISTS `division`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_comercial` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `razon_social` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `acronimo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_101747146B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_101747146B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division`
--

LOCK TABLES `division` WRITE;
/*!40000 ALTER TABLE `division` DISABLE KEYS */;
INSERT INTO `division` VALUES (1,'A&T SORT ','A&T SORT COMPANY SA DE CV','d41d8cd98f00b204e9800998ecf8427e.png','2020-05-28 00:00:00',1,1,'https://www.atsorting.com/','A&T'),(2,'A&T SORTING ','A&T SORTING COMPANY SA DE CV','9301c2a72c0f099d0313099f1cd54799.png','2020-05-28 00:00:00',1,1,'https://www.atsorting.com/','A&T'),(3,'Koolibri BPO','Koolibri BPO COMPANY','76d4f68a8dcc1d1f17832323d3fa412d.png','2020-05-28 00:00:00',1,1,'https://www.koolibri.mx/','KOO'),(4,'Alcon MX','Alcon MX','2d0ac987f2742d80be501b9334b9f064.png','2020-06-16 15:22:57',1,1,'https://www.alconmx.com','ALC'),(5,'DarkPost','DarkPost Agency','DC7302F98046864440F60E93EE951892.png','2020-05-28 00:00:00',1,1,'https://www.darkpostagency.com','DKP'),(6,'GRUPO ZEU','GRUPO ZEU','9AD49046BE0CA1BBCA921CDC4017B96D.png','2020-07-07 15:57:11',1,1,'https://www.grupozeu.com','ZEU');
/*!40000 ALTER TABLE `division` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_servicio`
--

DROP TABLE IF EXISTS `division_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division_servicio` (
  `division_id` int(11) NOT NULL,
  `servicios_id` int(11) NOT NULL,
  PRIMARY KEY (`division_id`,`servicios_id`),
  KEY `IDX_969DCF1841859289` (`division_id`),
  KEY `IDX_969DCF18D96E005D` (`servicios_id`),
  CONSTRAINT `FK_969DCF1841859289` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_969DCF18D96E005D` FOREIGN KEY (`servicios_id`) REFERENCES `servicios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_servicio`
--

LOCK TABLES `division_servicio` WRITE;
/*!40000 ALTER TABLE `division_servicio` DISABLE KEYS */;
INSERT INTO `division_servicio` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,18),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,25),(1,26),(1,27),(1,28),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,22),(2,23),(2,24),(2,25),(2,26),(2,27),(2,28),(3,23),(3,24),(3,25),(3,26),(3,27),(3,28),(3,29),(3,30),(3,31),(3,32),(3,33),(3,34),(3,35),(3,36),(4,37),(4,38),(4,39),(4,40),(4,41),(4,42),(4,43),(4,44),(5,45),(5,46),(5,47),(5,48),(5,49);
/*!40000 ALTER TABLE `division_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `division_unidad`
--

DROP TABLE IF EXISTS `division_unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `division_unidad` (
  `division_id` int(11) NOT NULL,
  `unidad_id` int(11) NOT NULL,
  PRIMARY KEY (`division_id`,`unidad_id`),
  KEY `IDX_9C0A9A841859289` (`division_id`),
  KEY `IDX_9C0A9A89D01464C` (`unidad_id`),
  CONSTRAINT `FK_9C0A9A841859289` FOREIGN KEY (`division_id`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_9C0A9A89D01464C` FOREIGN KEY (`unidad_id`) REFERENCES `unidades_negocio` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `division_unidad`
--

LOCK TABLES `division_unidad` WRITE;
/*!40000 ALTER TABLE `division_unidad` DISABLE KEYS */;
INSERT INTO `division_unidad` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(3,5),(4,5),(5,5),(6,5);
/*!40000 ALTER TABLE `division_unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_controlados`
--

DROP TABLE IF EXISTS `documentos_controlados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_controlados` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `codigo` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rev` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo_documento` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `archivo_editable` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A6075BA710174714` (`division`),
  KEY `IDX_A6075BA740E497EB` (`departamento`),
  KEY `IDX_A6075BA7D7943D68` (`area`),
  KEY `IDX_A6075BA76B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_A6075BA710174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_A6075BA740E497EB` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_A6075BA76B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_A6075BA7D7943D68` FOREIGN KEY (`area`) REFERENCES `areas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_controlados`
--

LOCK TABLES `documentos_controlados` WRITE;
/*!40000 ALTER TABLE `documentos_controlados` DISABLE KEYS */;
INSERT INTO `documentos_controlados` VALUES (1,1,2,21,1,' Manual de Ventas',' ZEU-VE-M01',' A','2020-09-12 10:25:27',1,'Manual','2945b535192f03f87951646a9b5a0737.xlsx','8b5c882c859bb1a1513671a838eb52a9.xlsx'),(2,6,1,1,1,'Manual de Ventas','ZEU-FYC-M01','A','2020-07-07 18:28:25',1,'Manual','4b8c8702e6e48174e040cf14cc6fbf15.jpg','5edd4bbe95f2899d45dfeea2341c7602.png'),(3,6,2,2,1,' Manual de Finanzas',' ZEU-FYC-M01',' A','2020-07-14 09:54:30',0,' Manual','8e833caa1b3641f8fbb21103b5842096.csv','1d0247a161d8c7547580e0f0aa361c94.csv'),(4,1,2,19,1,'ACTIVOS','ZEU-FYC-M01','A','2020-07-14 09:54:36',1,'Manual','68031a97db345e002252c214e8f62c7f.jpg','4b8c8702e6e48174e040cf14cc6fbf15.jpg'),(5,6,1,3,NULL,' Política de Control de Gastos de Viajes',' ZEU-FZ-CP-D01A',' A','2020-08-26 12:15:07',1,' Documentos','ca34a38c76b3b2002de920b37aee7189.csv','59b10c13b44059c61bcb7a8bcca52c35.csv'),(6,1,2,19,NULL,'Jessica','ZEU-FZ-TS-P01','A','2020-09-15 15:46:48',1,'Manual','e1e96a69f7ea5f717ad15e2439db5897.pdf','cd5bf7dae3fc09b3800cd9a7de3224be.docx');
/*!40000 ALTER TABLE `documentos_controlados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_controlados_solicitudes`
--

DROP TABLE IF EXISTS `documentos_controlados_solicitudes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_controlados_solicitudes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `documento` int(11) DEFAULT NULL,
  `usuario_alta` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `codigo` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rev` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `archivo` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `archivo_editable` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tipo_documento` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tipo_solicitud` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `afecta_otros` int(11) NOT NULL,
  `motivo_cambio` int(11) NOT NULL,
  `descripcion_alta` varchar(400) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_alta` datetime DEFAULT NULL,
  `descripcion_aprobacion` varchar(400) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_aprobacion` datetime DEFAULT NULL,
  `descripcion_autorizacion` varchar(400) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_autorizacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_7E3884066B4CBDDB` (`usuario_mod`),
  KEY `IDX_7E38840610174714` (`division`),
  KEY `IDX_7E38840640E497EB` (`departamento`),
  KEY `IDX_7E388406D7943D68` (`area`),
  KEY `IDX_7E388406B6B12EC7` (`documento`),
  KEY `IDX_7E388406FB8FEA12` (`usuario_alta`),
  CONSTRAINT `FK_7E38840610174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_7E38840640E497EB` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_7E3884066B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_7E388406B6B12EC7` FOREIGN KEY (`documento`) REFERENCES `documentos_controlados` (`id`),
  CONSTRAINT `FK_7E388406D7943D68` FOREIGN KEY (`area`) REFERENCES `areas` (`id`),
  CONSTRAINT `FK_7E388406FB8FEA12` FOREIGN KEY (`usuario_alta`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_controlados_solicitudes`
--

LOCK TABLES `documentos_controlados_solicitudes` WRITE;
/*!40000 ALTER TABLE `documentos_controlados_solicitudes` DISABLE KEYS */;
INSERT INTO `documentos_controlados_solicitudes` VALUES (1,1,6,1,1,1,1,'2020-09-14 00:00:00',1,'','','','','','','MODIFICAR',0,1,'Se requiere añadir informacion al manual','2020-09-14 00:00:00','prueba 2','0000-00-00 00:00:00','','0000-00-00 00:00:00'),(2,1,1,7,19,NULL,NULL,'2020-09-15 12:03:22',1,'Un documento','ZEU-FZ-TS-P01','A','dd40e6468c0e63ac41a7a7c2a9195d1c.pdf','96f8297e787c69a26ddf4a56fcdca56f.docx','Manual','ALTA',0,1,' test de nueva solicitud',NULL,'aprobado!',NULL,'testteste','2020-09-15 13:31:51'),(3,1,6,1,2,NULL,NULL,'2020-09-15 12:05:14',3,NULL,NULL,NULL,NULL,NULL,NULL,'ALTA',0,1,'Otra prueba',NULL,'mas','2020-09-15 13:14:26',NULL,NULL),(6,1,1,2,19,4,NULL,'2020-09-17 12:08:13',0,NULL,NULL,NULL,NULL,NULL,NULL,'MODIFICAR',0,3,'test',NULL,NULL,NULL,NULL,NULL),(7,1,6,2,2,3,NULL,'2020-09-17 12:37:49',2,NULL,NULL,NULL,NULL,NULL,NULL,'BAJA',0,2,'baja de doc',NULL,'baja','2020-09-17 12:59:33',NULL,NULL);
/*!40000 ALTER TABLE `documentos_controlados_solicitudes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos_externos`
--

DROP TABLE IF EXISTS `documentos_externos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `documentos_externos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cliente` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `rfq` varchar(5) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `archivo` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F44D66AA6B4CBDDB` (`usuario_mod`),
  KEY `IDX_F44D66AA10174714` (`division`),
  KEY `IDX_F44D66AA40E497EB` (`departamento`),
  KEY `IDX_F44D66AAD7943D68` (`area`),
  CONSTRAINT `FK_F44D66AA10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_F44D66AA40E497EB` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_F44D66AA6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_F44D66AAD7943D68` FOREIGN KEY (`area`) REFERENCES `areas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos_externos`
--

LOCK TABLES `documentos_externos` WRITE;
/*!40000 ALTER TABLE `documentos_externos` DISABLE KEYS */;
INSERT INTO `documentos_externos` VALUES (1,1,1,2,19,'2020-09-07 12:27:02',1,'Test','hola','1551','e24b35f4a77fc6d884967a84323d556c.pdf'),(2,1,1,2,19,'2018-09-11 00:00:00',1,'AFIL-02','IMSS','0','aa0509a1805da64c92637dc936d2be82.pdf'),(3,1,1,2,19,'2018-09-11 00:00:00',1,'AFIL-03','IMSS','0','dbface0cf32094ca6d4b49249b966fba.pdf'),(4,1,1,2,19,'2018-09-11 00:00:00',1,'AFIL-04','IMSS','0','0156c885c3a841e9eba709f4e58d3b06.pdf'),(5,1,1,2,19,'2018-09-11 00:00:00',1,'Solicitud de Regularización y_o Corrección de Datos Personales del Asegurado','IMSS','0','0e7bd10b6cbb59eb033f78a447da80cf.pdf'),(6,1,1,2,19,'2018-09-19 00:00:00',1,'ISO 9001:2015','ISO','0','a5ef5a5632546779ba629059cef32307.PDF'),(7,1,1,2,19,'2019-03-07 00:00:00',1,'PRO-3 Procedimiento para la publicación / anuncio de la certificación y el uso del logotipo de PJR, ','Perry Johnson  R.','0','316d2da2fe57bf65c7a3db52138e1659.doc'),(8,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de trabajo – Disposición de material NOOK','SMR','1551','baf9b303cb3b3ef6de2656f643663a0f.jpeg'),(9,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de trabajo – Retrabajo de Piezas Pintadas GM','SMR','1551','0ed0b7bd9d136c4425a36d0f781a0800.jpeg'),(10,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Retrabajo de Piezas Pintadas MAZDA','SMR','1551','0214146169f96d6fad512ef36949988f.jpeg'),(11,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Mover descarga de material pintado','SMR','1551','1d60d5f6a3efcc469a41702588cd4fb9.jpeg'),(12,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Empaque para Área de pulido de piezas pintadas','SMR','1551','de6ba6ccb2104feb6947fffcd2795e2a.jpeg'),(13,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Etiqueta individual de GM','SMR','1551','e7ccfc2324dd5e050f320dc799ea4f2a.jpeg'),(14,1,1,2,19,'2019-07-22 00:00:00',1,'Matriz de Equipo de Protección Personal','SMR','1551','5165ae4ec514f6fb043992f48d3aeb.jpeg'),(15,1,1,2,19,'2019-07-22 00:00:00',1,'Catálogos de Defectos – Inspección Piezas Pintadas','SMR','1551','10e0ff73173cbd06dcbf69138e1762ba.jpeg'),(16,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Retrabajo de Piezas Pintadas BMW','SMR','1551','7498a5dd253b1ba8ce271042b7cd9bfd.jpeg'),(17,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Inspección y Verificación GP12 A7','SMR','1551','5915fdf0f6aaeb9cc6b90ceafc5a28de.jpeg'),(18,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Pulido de Piezas Pintas','SMR','1551','eb5a654159559afaaa6e0acfb490b50a.jpeg'),(19,1,1,2,19,'2019-07-22 00:00:00',1,'Instrucción de Trabajo – Pulidos de moldura y antepechos','SMR','1551','9899bc64b827514647c882687e85ea03.jpeg'),(20,1,1,2,19,'2019-07-22 00:00:00',1,'Inspección  General','MFG Rheem','2016','48c0c36ef939e631a6da8a7e6e4e0bdb.pdf'),(21,1,1,2,19,'2019-09-06 00:00:00',1,'  I-HL-02 Control de accidentes','HI-LEX','68','63d45266ea558a7d183a0e4ba573ee.jpeg'),(22,1,1,2,19,'2019-09-02 00:00:00',1,'I-HL 05 Q de Calidad HI-LEX','HI-LEX','68','eb4b7ff543ffb22a25976ab2cf19ff18.jpeg'),(23,1,1,2,19,'2019-09-02 00:00:00',1,'Lista de asistencia de  HI LEX','HI-LEX','68','9bdb7ea34cca57296ecd18dbbb6feb3c.xlsx'),(24,1,1,2,19,'2019-07-22 00:00:00',1,'Auditoría de EPP y accesorios  de LOCK OUT TAG OUT','PLANTA FAURECIA','2352','debc92f95d577e0476c986ce9213aa84.jpeg'),(25,1,1,2,19,'2019-07-22 00:00:00',1,'Permiso de trabajo no rutinario','FAURECIA','2352','a32cba7795ae94267634d4b59a60f5f1.jpeg'),(26,1,1,2,19,'2019-07-22 00:00:00',1,'Containment Inspection Instructions','Summit P.','2355','ac3a336f359e3d517f56ca7d1b9f8a42.jpeg'),(27,1,1,2,19,'2019-07-22 00:00:00',1,'Croquis de área de inspección','Faurecia','2352','140da5bc161b9b8ef9f6013676cea531.jpeg'),(28,1,1,2,19,'2019-07-24 00:00:00',1,'WI-A&T-SLP-1551-1','SMR','1551','99495812ff7169110cde6241ab10f178.xlsx'),(29,1,1,2,19,'2019-07-24 00:00:00',1,'WI-A&T-SLP-2574-1','TEKNIA','2574','b761a879796c5493e6762a52b26a8b22.xlsx'),(30,1,1,2,19,'2019-11-08 00:00:00',1,'Formato de supervisión','HI-LEX','68','a229f6ca6b6dc7948531f22f0785fdc2.pdf'),(31,1,1,2,19,'2019-09-06 00:00:00',1,'Formato de inspección','HI-LEX','68','986f17e44896d1062e3d3d9294c10f15.pdf'),(32,1,1,2,19,'2019-09-06 00:00:00',1,'Formato de Reporte filtros de inspección Hilex','HI-LEX','68','9a2bde052a15b452457411ffd67aa241.xlsx'),(33,1,1,2,19,'2019-09-06 00:00:00',1,'Formato DS 2019 MY DM Complexity Chart All MCA','HI-LEX','68','7d9d782db862842cdc3b561dcd8be43d.xlsx'),(34,1,1,2,19,'2019-09-06 00:00:00',1,'FQ-001 Formato Modulos cancelados & Scrap','HI-LEX','68','8ae3d00d960cc9669589321cd60176e3.xlsx'),(35,1,1,2,19,'2019-09-06 00:00:00',1,'FQ-010 Formato de inventario de partes en resguardo','HI-LEX','68','24998653b5a586f3cb1792d14e707001.xlsx'),(36,1,1,2,19,'2019-09-06 00:00:00',1,'FQ-010 Formato de inventario de partes en resguardo','HI-LEX','68','fc836ec96191e6780cf1e715e5475a3d.xlsx'),(37,1,1,2,19,'2019-09-06 00:00:00',1,'LEBELS MATERIAL RECHAZADO','HI-LEX','68','5caad83e8b8a0ec5fed7c85093c3f546.pptx'),(38,1,1,2,19,'2019-09-06 00:00:00',1,'LEBELS CONTROL INTERNO DE REFACCIONES','HI-LEX','68','bcc508e0e9ef68eda8d63242d46b4f8c.pptx'),(39,1,1,2,19,'2019-10-10 00:00:00',1,'Bracket','TEKNIA','2574','140ef40745ccf288689b2515aee804a1.jpeg'),(40,1,1,2,19,'2019-10-10 00:00:00',1,'Bracket','TEKNIA','2574','95743f2d4b03f65fb637031e3000cdb9.jpeg'),(41,1,1,2,19,'2019-10-11 00:00:00',1,'Tarjeta de control de horario: metales','TEKNIA','2574','e5e90ae2030042ac2eedaa0a4675bb42.pdf'),(42,1,1,2,19,'2019-10-11 00:00:00',1,'Pieza Master Interna No Ok','TEKNIA','2574','414129a360a72b7e87967396a332f543.pdf'),(43,1,1,2,19,'2019-10-11 00:00:00',1,'Pieza Master Interna Maximo Aceptable','TEKNIA','2574','6984affe421ba711287d02639b12ff42.pdf'),(44,1,1,2,19,'2019-10-11 00:00:00',1,'Manual de Proceso Tesla Connecting Link PS','TEKNIA','2574','8113c95c08d993d146376a34565e1c58.pdf'),(45,1,1,2,19,'2019-11-01 00:00:00',1,'ATS Análisis de Seguridad en la Tarea - FSEG20-8 Rev 3','SMR AUTOMOTIVE VISION SYSTEMS','3267','6cb4f6a86801553c31ed71497829397f.pdf'),(46,1,1,2,19,'2019-11-25 00:00:00',1,'Asistencia Residencia Magna','MAGNA','2610','9fd272f125908da4af886809aa401300.xlsx'),(47,1,1,2,19,'2019-12-16 00:00:00',1,'Estampado J59W  Terminado','Hiruta','3429','dd4088dafceb9d70fd838cece0eb2a58.xlsx'),(48,1,1,2,19,'2019-12-16 00:00:00',1,'Soldadas  Sport J59W','Hiruta','3429','38e3710b07345a8a7328a642684a7490.xlsx'),(49,1,1,2,19,'2020-01-15 00:00:00',1,'Alerta de Calidad - MAGNA SAN LUIS P','Magna','3570','a6aa48445ea6ddf676ef6d8899e03cea.pdf'),(50,1,1,2,19,'2020-01-30 00:00:00',1,'DAILY VENDOR REPORT','DAIMLER VEHICULOS COMERCIALES','3585','8d731d92d8ad24a4e98a08042686c515.xlsx'),(51,1,1,2,19,'2020-06-03 00:00:00',1,'Formato de Scrap diario','Faurecia','3588','83bfd64a3e2ff22f0a72bdeae75bb289.xlsx');
/*!40000 ALTER TABLE `documentos_externos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empresas`
--

DROP TABLE IF EXISTS `empresas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empresas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `nombre_comercial` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `razon_social` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `parque_industrial` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `industria` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nivel` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_70DD49A56B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_70DD49A56B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empresas`
--

LOCK TABLES `empresas` WRITE;
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
INSERT INTO `empresas` VALUES (1,1,'Prueba 1','Mi Prueba 1 SA de CV','Un parque','Automotriz','Tier 1','2020-06-16 12:18:01','Ninguno',1),(3,1,'Prueba 2','Mi Prueba 2 SA de CV','Un parque','Automotriz','TIER 2','2020-05-28 00:00:00','Ninguno',1),(4,1,'Prueba 3','Mi Prueba 3','Automotriz','Autobús','Tier 2','2020-06-16 12:08:11','Nada',1),(5,1,'Prueba 4','Mi Prueba 4','Otro parque',NULL,NULL,'2020-06-11 01:15:40','Una nota',1),(6,1,'Empresa #5','Empresa 5','Un parque',NULL,NULL,'2020-06-11 10:28:41','Saludos',1),(7,1,'Nada','Nada 1','Un parque','Camión de servicio pesado','OEM','2020-06-16 12:08:33','Nada 2',1),(8,1,' Prueba 1',' Eberspaecher',' Otro parque',' Camión de servicio pesado',' Tier 1','2020-06-16 12:00:21',' ',1),(9,1,'Prueba 9','Eberspaecher','Otro parque','Camión de servicio pesado','Tier 1','2020-06-16 12:00:41','',1),(10,1,'Prueba 3','Mi Prueba 3','Automotriz','Aeroespacial y Defensa','Tier 1','2020-06-16 12:03:09','',1),(11,1,'Prueba 1','Mi Prueba 1 SA de CV','Un parque','Motores','OEM','2020-06-16 12:06:35','Hola!',1),(12,1,'Prueba 6','Mi Prueba 6','Otro parque','Motores','Tier 2','2020-06-17 09:09:50','otras notas 6',1),(13,1,'Prueba 1','Eberspaecher','Otro parque','Camión de servicio pesado','Tier 1','2020-07-09 15:45:15','',1),(14,12,'Eberspaecher1','Eberspaecher1','Un parque','Automotriz','OEM','2020-07-09 16:33:22','',1);
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_usuarios`
--

DROP TABLE IF EXISTS `erp_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_usuarios` (
  `user_id` int(11) NOT NULL,
  `erp_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`erp_id`),
  KEY `IDX_5D1C65E1A76ED395` (`user_id`),
  KEY `IDX_5D1C65E198D6305B` (`erp_id`),
  CONSTRAINT `FK_5D1C65E198D6305B` FOREIGN KEY (`erp_id`) REFERENCES `erps` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_5D1C65E1A76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_usuarios`
--

LOCK TABLES `erp_usuarios` WRITE;
/*!40000 ALTER TABLE `erp_usuarios` DISABLE KEYS */;
INSERT INTO `erp_usuarios` VALUES (1,1),(1,2),(2,1),(2,3),(3,1);
/*!40000 ALTER TABLE `erp_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erps`
--

DROP TABLE IF EXISTS `erps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9CFA3D636B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_9CFA3D636B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erps`
--

LOCK TABLES `erps` WRITE;
/*!40000 ALTER TABLE `erps` DISABLE KEYS */;
INSERT INTO `erps` VALUES (1,'Grupo ZEU','/?Home/index','14481bb3191b7a910942aa17cf94e778.jpg','2020-06-16 15:39:34',1,1),(2,'A&T SORT COMPANY','https://www.at-erp-system.com','334b236d55b1449d8cf993cfa1450c49.jpg','2020-05-28 19:15:22',1,NULL),(3,'A&T SORTING COMPANY','https://sorting.at-erp-system.com','a18307c9a972d0586af581122e16da66.jpg','2020-05-28 19:15:22',1,NULL),(4,'Kollibri BPO COMPANY','https://koolibri.at-erp-system.com','04554f624b10c5124feff67a2113cc91.jpg','2020-05-28 19:15:22',1,NULL);
/*!40000 ALTER TABLE `erps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enlace` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tipo_evento` int(11) NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `detalles` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6B23BD8F6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_6B23BD8F6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
INSERT INTO `eventos` VALUES (2,1,'2020-07-24 11:58:04',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(3,1,'2020-07-24 12:01:03',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(4,1,'2020-07-24 12:04:20',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(5,1,'2020-07-24 12:22:03',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(6,1,'2020-07-24 12:22:39',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(7,1,'2020-07-24 12:23:08',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(8,1,'2020-07-24 12:24:07',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(9,1,'2020-07-24 12:26:00',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(10,1,'2020-07-24 12:29:58',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(11,1,'2020-07-24 12:30:23',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(12,1,'2020-07-24 12:31:03',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(13,1,'2020-07-24 12:32:05',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(14,1,'2020-07-24 15:04:45',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(15,1,'2020-07-24 17:10:45',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(16,1,'2020-07-24 17:12:44',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(17,1,'2020-07-24 17:13:20',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(18,1,'2020-07-24 17:43:42',1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com',1,NULL,NULL),(19,1,'2020-07-24 17:47:52',1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com',1,NULL,NULL),(20,1,'2020-07-24 17:49:24',1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com',1,NULL,NULL),(21,1,'2020-07-24 17:52:53',1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com',1,NULL,NULL),(22,1,'2020-07-24 18:33:34',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,NULL,NULL),(23,1,'2020-07-27 10:49:37',1,'Recordatorio Cita','Este es un evento de prueba de recordatorio','https://erp.grupozeu.com',3,NULL,NULL),(24,1,'2020-07-27 11:58:56',1,'Recortdatorio de Prueba','Descripción de Prueba','https://erp.grupozeu.com',3,'usuario_1',NULL),(25,1,'2020-07-27 15:05:06',1,'Recordatorio de Seguimiento','Dar seguimiento a ACTIVOS Martinez de Prueba 2','https://erp.grupozeu.com',3,'usuario_1',NULL),(26,1,'2020-07-27 15:05:06',1,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','https://erp.grupozeu.com',3,'usuario_1',NULL),(27,1,'2020-07-27 15:05:06',1,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','https://erp.grupozeu.com',3,'usuario_1',NULL),(28,1,'2020-07-27 15:29:28',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,'incumplimiento_iwos',NULL),(29,1,'2020-08-05 13:40:01',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:50;}'),(30,1,'2020-08-05 13:44:08',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:51;}'),(31,1,'2020-08-05 13:44:52',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:52;}'),(32,1,'2020-08-05 13:46:04',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:53;}'),(33,1,'2020-08-05 15:04:03',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:54;}'),(34,1,'2020-08-05 15:06:10',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:55;}'),(35,1,'2020-08-05 15:11:50',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:56;}'),(36,1,'2020-08-05 15:14:35',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:57;}'),(37,1,'2020-08-05 15:23:20',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com/?Page/7/formulario/58',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:58;}'),(38,1,'2020-08-05 15:26:28',1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com/?Page/7/formulario/59',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:7;s:7:\"captura\";i:59;}'),(39,1,'2020-09-17 09:56:04',0,'Incumplimiento en IWOS: Promocion','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 0','https://erp.grupozeu.com/?Page/4/formulario/61',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:4;s:7:\"captura\";i:61;}'),(40,1,'2020-09-17 09:56:08',0,'Incumplimiento en IWOS: Promocion','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 0','https://erp.grupozeu.com/?Page/4/formulario/62',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:4;s:7:\"captura\";i:62;}'),(41,1,'2020-09-25 15:35:59',1,'prueba','','https://erp.grupozeu.com',3,'usuario_1',NULL),(42,1,'2020-09-25 15:41:37',0,'prueba','','https://erp.grupozeu.com',3,'usuario_1',NULL),(43,1,'2020-09-25 15:43:43',0,'prueba','','https://erp.grupozeu.com',3,'usuario_1',NULL),(44,1,'2020-09-30 09:39:00',0,'Incumplimiento en IWOS: Mi Prueba 1','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 71.88','https://erp.grupozeu.com/?Page/1/formulario/63',1,'incumplimiento_iwos','a:2:{s:4:\"iwos\";i:1;s:7:\"captura\";i:63;}'),(45,1,'2020-10-13 16:41:31',1,'Incumplimiento en IWOS: Mi Prueba 2','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 25.00','https://erp.grupozeu.com/?Page/2/formulario/69',1,'sgi','a:2:{s:4:\"iwos\";i:2;s:7:\"captura\";i:69;}'),(46,1,'2020-10-13 16:41:31',1,'Incumplimiento en IWOS: Mi Prueba 2','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 25.00','https://erp.grupozeu.com/?Page/2/formulario/69',1,'ti','a:2:{s:4:\"iwos\";i:2;s:7:\"captura\";i:69;}'),(47,1,'2020-10-13 16:44:16',1,'Incumplimiento en IWOS: Mi Prueba 2','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 25.00','https://erp.grupozeu.com/?Page/2/formulario/70',1,'sgi','a:2:{s:4:\"iwos\";i:2;s:7:\"captura\";i:70;}'),(48,1,'2020-10-13 16:44:16',1,'Incumplimiento en IWOS: Mi Prueba 2','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 25.00','https://erp.grupozeu.com/?Page/2/formulario/70',1,'ti','a:2:{s:4:\"iwos\";i:2;s:7:\"captura\";i:70;}'),(49,1,'2020-10-13 16:44:16',1,'Incumplimiento en IWOS: Mi Prueba 2','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 25.00','https://erp.grupozeu.com/?Page/2/formulario/70',1,'prueba_1','a:2:{s:4:\"iwos\";i:2;s:7:\"captura\";i:70;}');
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_calendario`
--

DROP TABLE IF EXISTS `eventos_calendario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos_calendario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `allDay` int(11) NOT NULL,
  `startDate` datetime NOT NULL,
  `endDate` datetime DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `className` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `editable` int(11) NOT NULL,
  `startEditable` int(11) NOT NULL,
  `durationEditable` int(11) NOT NULL,
  `rendering` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `overlap` int(11) NOT NULL,
  `constraintEvento` int(11) DEFAULT NULL,
  `sourceEvento` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `backgroundColor` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `textColor` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `anfitreon` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E5BE98AF6B4CBDDB` (`usuario_mod`),
  KEY `IDX_E5BE98AF64FA0869` (`anfitreon`),
  CONSTRAINT `FK_E5BE98AF64FA0869` FOREIGN KEY (`anfitreon`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_E5BE98AF6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_calendario`
--

LOCK TABLES `eventos_calendario` WRITE;
/*!40000 ALTER TABLE `eventos_calendario` DISABLE KEYS */;
INSERT INTO `eventos_calendario` VALUES (14,1,'2020-09-24 14:24:44',1,'hola',1,'2020-09-24 08:00:00','2020-09-24 09:30:00',NULL,'highlight-color-blue',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(15,1,'2020-09-25 08:28:25',1,'otro mas',1,'2020-09-24 11:00:00','2020-09-24 15:00:00',NULL,'highlight-color-purple',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(16,1,'2020-09-25 15:34:30',1,'prueba',1,'2020-09-25 16:00:00','2020-09-25 18:00:00',NULL,'highlight-color-blue',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(18,1,'2020-09-25 08:29:48',1,'hola2',1,'2020-09-23 13:00:00','2020-09-23 18:30:00',NULL,'highlight-color-red',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(19,1,'2020-09-25 08:29:54',1,'mas cambios !!!',1,'2020-09-26 08:00:00','2020-09-26 10:00:00',NULL,'highlight-color-green',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(20,1,'2020-09-25 08:28:39',1,'muchas pruebas',1,'2020-09-26 11:00:00','2020-09-26 13:00:00',NULL,'highlight-color-yellow',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(21,1,'2020-09-25 08:29:55',1,'cambio!',1,'2020-09-22 10:00:00','2020-09-22 12:00:00',NULL,'highlight-color-red',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(22,1,'2020-09-25 10:59:06',1,'Cambio',1,'2020-09-23 05:30:00','2020-09-23 07:30:00',NULL,'highlight-color-blue',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(23,1,'2020-09-25 08:29:46',1,'nuevo',1,'2020-09-21 12:30:00','2020-09-21 14:30:00',NULL,'highlight-color-blue',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(27,1,'2020-09-25 08:29:47',1,'saludos',1,'2020-09-23 10:30:00','2020-09-23 12:30:00',NULL,'highlight-color-green',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(29,1,'2020-09-25 08:29:40',1,'Evento de prueba',1,'2020-09-22 12:30:00','2020-09-22 14:30:00',NULL,NULL,1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(30,1,'2020-09-25 08:29:53',1,'Prueba',1,'2020-09-25 08:00:00','2020-09-25 10:00:00',NULL,'highlight-color-red',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1),(31,1,'2020-09-25 10:59:12',1,'Hola',1,'2020-09-21 01:30:00','2020-09-21 04:00:00',NULL,'highlight-color-purple',1,1,1,NULL,1,NULL,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `eventos_calendario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos_servicios`
--

DROP TABLE IF EXISTS `eventos_servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos_servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `mensajero_notificacion` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo_evento` int(11) NOT NULL,
  `mensajero_mail` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DD8F29DE6B4CBDDB` (`usuario_mod`),
  KEY `IDX_DD8F29DE4232699F` (`mensajero_notificacion`),
  KEY `IDX_DD8F29DE78F4F974` (`mensajero_mail`),
  CONSTRAINT `FK_DD8F29DE4232699F` FOREIGN KEY (`mensajero_notificacion`) REFERENCES `mensajero_notificaciones` (`id`),
  CONSTRAINT `FK_DD8F29DE6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_DD8F29DE78F4F974` FOREIGN KEY (`mensajero_mail`) REFERENCES `mensajero_mail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos_servicios`
--

LOCK TABLES `eventos_servicios` WRITE;
/*!40000 ALTER TABLE `eventos_servicios` DISABLE KEYS */;
INSERT INTO `eventos_servicios` VALUES (1,1,1,'2020-07-24 00:00:00',1,1,1);
/*!40000 ALTER TABLE `eventos_servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habilidades`
--

DROP TABLE IF EXISTS `habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `habilidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `promedio` decimal(3,2) NOT NULL,
  `usuario_mod` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nombre_ingles` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades`
--

LOCK TABLES `habilidades` WRITE;
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
INSERT INTO `habilidades` VALUES (1,0.80,'JUPITER','2020-11-10 00:00:00',1,'INSPECCION VISUAL','VISUAL INSPECTION'),(2,0.70,'FERNANDO','2020-11-11 00:00:00',1,'EMPAQUETADO','PACKAGING'),(3,0.60,'JUPITER','2020-11-16 00:00:00',1,'LIMADO','LIMED'),(4,0.50,'FERNANDO','2020-11-15 00:00:00',1,'PINTADO','PAINTED');
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos`
--

DROP TABLE IF EXISTS `iwos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `aplica_unidades` int(11) NOT NULL,
  `tipo_valor` int(11) NOT NULL,
  `meta` decimal(10,2) NOT NULL,
  `periodo` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `dentro` decimal(10,2) NOT NULL,
  `aceptable` decimal(10,2) NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `descripcion` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `departamento` int(11) DEFAULT NULL,
  `area` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `inverso` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `rev` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1DBD4EAE6B4CBDDB` (`usuario_mod`),
  KEY `IDX_1DBD4EAE10174714` (`division`),
  KEY `IDX_1DBD4EAE40E497EB` (`departamento`),
  KEY `IDX_1DBD4EAED7943D68` (`area`),
  CONSTRAINT `FK_1DBD4EAE10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_1DBD4EAE40E497EB` FOREIGN KEY (`departamento`) REFERENCES `departamentos` (`id`),
  CONSTRAINT `FK_1DBD4EAE6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_1DBD4EAED7943D68` FOREIGN KEY (`area`) REFERENCES `areas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos`
--

LOCK TABLES `iwos` WRITE;
/*!40000 ALTER TABLE `iwos` DISABLE KEYS */;
INSERT INTO `iwos` VALUES (1,1,'Mi Prueba 1',0,1,100.00,'Mensual',60.00,50.00,'2020-06-23 10:55:54',' Indicador de prueba',6,1,1,1,0,NULL,NULL),(2,1,'Mi Prueba 2',0,1,100.00,'Semanal',90.00,80.00,'2020-06-24 08:15:25','Indicador de prueba 2\r\n',6,1,1,1,0,NULL,NULL),(3,1,'Encuesta de satisfaccion',1,1,100.00,'Mensual',90.00,80.00,'2020-06-25 17:51:02','Prueba 3',6,1,1,1,0,NULL,NULL),(4,1,'Promocion',1,0,100.00,'Semanal',90.00,80.00,'2020-07-07 17:51:08','DATA',6,2,2,1,0,NULL,NULL),(5,1,'Balance general',0,1,100.00,'Mensual',90.00,80.00,'2020-07-08 11:03:50','',6,1,5,1,0,NULL,NULL),(6,1,'Encuesta de Salida',1,0,100.00,'Semanal',90.00,80.00,'2020-07-08 11:16:32','',6,4,24,1,0,NULL,NULL),(7,1,'Encuesta de satisfaccion',1,1,100.00,'Semanal',85.00,70.00,'2020-07-21 16:06:27','',6,1,7,1,0,NULL,NULL),(8,1,'Prueba de plantilla',1,1,100.00,'Semanal',90.00,80.00,'2020-08-26 11:17:12','test',6,1,1,1,0,'ZEU-FZ-TS-P01','A');
/*!40000 ALTER TABLE `iwos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_capturas`
--

DROP TABLE IF EXISTS `iwos_capturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_capturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iwos` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `periodo` datetime NOT NULL,
  `resultado` decimal(10,2) NOT NULL,
  `cumplimiento` int(11) NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `seguimiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6FD211BA1DBD4EAE` (`iwos`),
  KEY `IDX_6FD211BA10174714` (`division`),
  KEY `IDX_6FD211BA457CA3A9` (`unidad_negocio`),
  KEY `IDX_6FD211BA6B4CBDDB` (`usuario_mod`),
  KEY `IDX_6FD211BA1B2181D` (`seguimiento`),
  CONSTRAINT `FK_6FD211BA10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_6FD211BA1B2181D` FOREIGN KEY (`seguimiento`) REFERENCES `iwos_seguimiento` (`id`),
  CONSTRAINT `FK_6FD211BA1DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_6FD211BA457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_6FD211BA6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_capturas`
--

LOCK TABLES `iwos_capturas` WRITE;
/*!40000 ALTER TABLE `iwos_capturas` DISABLE KEYS */;
INSERT INTO `iwos_capturas` VALUES (1,3,1,1,1,'2020-06-26 00:00:00',100.00,1,'2020-06-26 00:00:00','',NULL),(6,3,1,1,1,'2020-06-26 13:03:45',100.00,1,'2020-06-26 13:03:45','',NULL),(7,3,1,1,1,'2020-06-26 13:09:08',100.00,1,'2020-06-26 13:09:08','',NULL),(8,3,1,1,1,'2020-07-01 09:29:01',100.00,1,'2020-07-01 09:29:01','',NULL),(9,5,1,1,1,'2020-07-08 11:06:48',100.00,1,'2020-07-08 11:06:48','',NULL),(10,1,1,1,1,'2020-07-10 10:15:15',100.00,1,'2020-07-10 10:15:15','',NULL),(11,1,1,1,1,'2020-07-10 10:16:53',30.00,-1,'2020-07-10 10:16:53','',NULL),(12,1,1,1,1,'2020-07-10 10:20:55',70.00,1,'2020-07-10 10:20:55','',NULL),(13,6,1,1,1,'2020-07-14 00:00:00',100.00,1,'2020-07-14 12:56:58','e7bb295eefa89be4ec3cf67007a82ed9',NULL),(14,6,3,5,1,'2020-07-14 00:00:00',100.00,1,'2020-07-14 12:59:32','d5d0edf5cd8682a878c28be28a558a59',NULL),(15,6,1,1,1,'2020-07-14 00:00:00',100.00,1,'2020-07-14 18:25:17','',NULL),(16,6,1,4,1,'2020-07-14 00:00:00',100.00,1,'2020-07-14 18:27:34','',NULL),(17,6,1,3,1,'2020-07-14 00:00:00',100.00,1,'2020-07-14 18:28:20','0a58b09d6328a07b5c7ee66d66c67d1e',NULL),(18,6,3,5,1,'2020-07-15 00:00:00',100.00,1,'2020-07-15 09:48:53','d5d0edf5cd8682a878c28be28a558a59',NULL),(19,1,6,5,1,'2020-07-16 00:00:00',55.00,0,'2020-07-16 17:22:43','bf03a521716b6ebec9691bd6e644bb97',NULL),(20,1,6,5,1,'2020-07-16 00:00:00',50.00,0,'2020-07-16 17:27:07','bf03a521716b6ebec9691bd6e644bb97',NULL),(21,1,6,5,1,'2020-07-16 00:00:00',100.00,1,'2020-07-16 17:27:56',' bf03a521716b6ebec9691bd6e644bb97',NULL),(22,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:29:21',' bf03a521716b6ebec9691bd6e644bb97',NULL),(23,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:34:51',' bf03a521716b6ebec9691bd6e644bb97',NULL),(24,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:37:21',' bf03a521716b6ebec9691bd6e644bb97',NULL),(25,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:37:38',' bf03a521716b6ebec9691bd6e644bb97',NULL),(26,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:42:19',' bf03a521716b6ebec9691bd6e644bb97',NULL),(27,1,6,5,1,'2020-07-16 00:00:00',0.00,-1,'2020-07-16 17:43:42',' bf03a521716b6ebec9691bd6e644bb97',NULL),(28,1,6,5,1,'2020-07-16 00:00:00',100.00,1,'2020-07-16 17:46:26',' bf03a521716b6ebec9691bd6e644bb97',NULL),(29,1,6,5,1,'2020-07-16 00:00:00',63.13,1,'2020-07-16 17:48:40',' bf03a521716b6ebec9691bd6e644bb97',NULL),(30,1,6,5,1,'2020-07-16 00:00:00',85.00,1,'2020-07-16 17:52:37','bf03a521716b6ebec9691bd6e644bb97',NULL),(31,1,3,5,1,'2020-07-21 00:00:00',96.38,1,'2020-07-21 11:58:05','9746153d848fb1065c075f07039a2849',NULL),(32,1,3,5,1,'2020-07-21 00:00:00',89.50,1,'2020-07-21 12:13:03','9746153d848fb1065c075f07039a2849',NULL),(34,7,1,1,1,'2020-07-21 00:00:00',91.67,1,'2020-07-21 16:52:45','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(35,7,1,1,1,'2020-07-21 00:00:00',66.67,-1,'2020-07-21 16:55:42','bdbc8d2f3560cf185577ec8ecdba8278',1),(36,7,1,1,1,'2020-07-21 00:00:00',100.00,1,'2020-07-21 17:46:28','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(37,7,1,1,1,'2020-07-22 00:00:00',66.67,-1,'2020-07-22 10:51:49','bdbc8d2f3560cf185577ec8ecdba8278',4),(38,7,1,2,1,'2020-07-22 00:00:00',75.00,0,'2020-07-22 17:03:12','',NULL),(39,7,1,1,1,'2020-07-22 00:00:00',41.67,-1,'2020-07-22 17:04:26','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(40,7,1,1,1,'2020-07-24 00:00:00',50.00,-1,'2020-07-24 18:31:01','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(41,7,1,1,1,'2020-07-24 00:00:00',50.00,-1,'2020-07-24 18:32:00',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(42,7,1,1,1,'2020-07-24 00:00:00',50.00,-1,'2020-07-24 18:33:03','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(43,7,1,1,1,'2020-07-24 00:00:00',50.00,-1,'2020-07-24 18:33:09',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(44,7,1,1,1,'2020-07-24 00:00:00',50.00,-1,'2020-07-24 18:33:33','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(45,7,1,1,1,'2020-07-27 00:00:00',50.00,-1,'2020-07-27 15:29:28','bdbc8d2f3560cf185577ec8ecdba8278',5),(46,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:38:24','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(47,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:38:34','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(48,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:38:52','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(49,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:39:28',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(50,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:40:00',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(51,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:44:08',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(52,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:44:52',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(53,7,1,1,1,'2020-08-05 00:00:00',50.00,-1,'2020-08-05 13:46:04',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(54,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:04:02',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(55,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:06:10',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(56,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:11:49',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(57,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:14:34',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(58,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:23:20',' bdbc8d2f3560cf185577ec8ecdba8278',NULL),(59,7,1,1,1,'2020-08-05 00:00:00',66.67,-1,'2020-08-05 15:26:27','bdbc8d2f3560cf185577ec8ecdba8278',NULL),(60,8,2,2,1,'2020-09-09 00:00:00',100.00,1,'2020-09-09 18:29:13','',NULL),(61,4,1,1,1,'2020-09-17 00:00:00',0.00,-1,'2020-09-17 09:56:03','',NULL),(62,4,1,1,1,'2020-09-17 00:00:00',0.00,-1,'2020-09-17 09:56:08','',NULL),(63,1,1,1,1,'2020-09-30 00:00:00',71.88,1,'2020-09-30 09:38:59','5f40f33d515bef91582692aefdb0b713',NULL),(64,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:39:25','',NULL),(65,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:39:30','',NULL),(66,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:40:25',' ',NULL),(67,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:41:00','',NULL),(68,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:41:18',' ',NULL),(69,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:41:31','',NULL),(70,2,1,1,1,'2020-10-13 00:00:00',25.00,-1,'2020-10-13 16:44:16','',NULL);
/*!40000 ALTER TABLE `iwos_capturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_enlaces`
--

DROP TABLE IF EXISTS `iwos_enlaces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_enlaces` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `iwos` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `token` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D3CC5B5E6B4CBDDB` (`usuario_mod`),
  KEY `IDX_D3CC5B5E1DBD4EAE` (`iwos`),
  KEY `IDX_D3CC5B5E10174714` (`division`),
  KEY `IDX_D3CC5B5E457CA3A9` (`unidad_negocio`),
  CONSTRAINT `FK_D3CC5B5E10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_D3CC5B5E1DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_D3CC5B5E457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_D3CC5B5E6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_enlaces`
--

LOCK TABLES `iwos_enlaces` WRITE;
/*!40000 ALTER TABLE `iwos_enlaces` DISABLE KEYS */;
INSERT INTO `iwos_enlaces` VALUES (1,1,1,1,1,'2020-07-10 14:26:38',1,'5f40f33d515bef91582692aefdb0b713'),(2,1,1,3,5,'2020-07-10 16:17:17',1,'9746153d848fb1065c075f07039a2849'),(3,1,1,4,5,'2020-07-10 16:22:37',1,'b6f76101bce1bb827b1de45c7fab36e3'),(4,1,1,5,5,'2020-07-10 16:22:53',1,'e8d35863215c7ba5ef5eed945303be3c'),(5,1,1,6,5,'2020-07-10 16:22:59',1,'bf03a521716b6ebec9691bd6e644bb97'),(6,1,6,1,1,'2020-07-14 10:43:16',1,'e7bb295eefa89be4ec3cf67007a82ed9'),(7,1,6,3,5,'2020-07-14 12:59:05',1,'d5d0edf5cd8682a878c28be28a558a59'),(8,1,6,1,2,'2020-07-14 15:46:25',1,'3129326b5f326ce48f34d3539f88b424'),(9,1,6,1,3,'2020-07-14 15:47:49',1,'0a58b09d6328a07b5c7ee66d66c67d1e'),(10,1,6,1,4,'2020-07-15 09:50:21',1,'315b0232ceb72620d91cfced6831511a'),(11,1,7,1,1,'2020-07-21 16:25:30',1,'bdbc8d2f3560cf185577ec8ecdba8278');
/*!40000 ALTER TABLE `iwos_enlaces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_items`
--

DROP TABLE IF EXISTS `iwos_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iwos` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `orden` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_541535031DBD4EAE` (`iwos`),
  KEY `IDX_541535036B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_541535031DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_541535036B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_items`
--

LOCK TABLES `iwos_items` WRITE;
/*!40000 ALTER TABLE `iwos_items` DISABLE KEYS */;
INSERT INTO `iwos_items` VALUES (1,1,1,'Ultima Seccion','2020-06-25 15:24:17',400),(2,1,1,'Salario','2020-07-13 08:31:11',200),(3,1,1,'Tercera Seccion','2020-06-25 15:22:28',300),(4,2,1,'Seccion 1','2020-06-24 08:16:49',0),(5,3,1,'Salario','2020-06-24 09:20:08',0),(6,3,1,'Seguridad','2020-06-24 09:22:56',0),(7,1,1,'Cuarta Seccion','2020-06-25 16:14:07',500),(8,5,1,'Reporte','2020-07-08 11:04:49',10),(9,6,1,'Salario','2020-07-14 10:39:46',2),(10,6,1,'Datos','2020-07-14 10:39:40',1),(11,6,1,'Cierre','2020-07-14 10:40:41',3),(12,7,1,'Datos','2020-07-21 16:06:45',1),(13,7,1,'Encuesta','2020-07-21 16:17:38',2),(14,8,1,'TEST','2020-07-29 12:27:58',1),(15,4,1,'test','2020-09-17 09:16:40',1);
/*!40000 ALTER TABLE `iwos_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_mailing`
--

DROP TABLE IF EXISTS `iwos_mailing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_mailing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `iwos` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `clave` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DF4678216B4CBDDB` (`usuario_mod`),
  KEY `IDX_DF4678211DBD4EAE` (`iwos`),
  KEY `IDX_DF46782110174714` (`division`),
  KEY `IDX_DF467821457CA3A9` (`unidad_negocio`),
  CONSTRAINT `FK_DF46782110174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_DF4678211DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_DF467821457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_DF4678216B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_mailing`
--

LOCK TABLES `iwos_mailing` WRITE;
/*!40000 ALTER TABLE `iwos_mailing` DISABLE KEYS */;
INSERT INTO `iwos_mailing` VALUES (1,1,2,1,1,'2020-10-13 11:37:28',1,'prueba_1'),(2,1,1,1,1,'2020-10-13 16:20:49',1,'prueba_1'),(3,1,1,1,2,'2020-10-13 16:20:54',1,'prueba_1'),(4,1,1,1,3,'2020-10-13 16:20:59',1,'prueba_2'),(5,1,1,2,1,'2020-10-13 16:21:05',1,'incumplimiento_iwos'),(6,1,2,2,2,'2020-10-13 16:38:02',1,'incumplimiento_iwos');
/*!40000 ALTER TABLE `iwos_mailing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_preguntas`
--

DROP TABLE IF EXISTS `iwos_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_preguntas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iwos` int(11) DEFAULT NULL,
  `iwos_item` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `pregunta` varchar(350) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tipo_valor` int(11) NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `orden` int(11) NOT NULL,
  `seguimiento` int(11) DEFAULT NULL,
  `obligatorio` int(11) NOT NULL,
  `normal` int(11) NOT NULL DEFAULT 1,
  `informativo` int(11) NOT NULL,
  `readonly` int(11) NOT NULL,
  `valor_defecto` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9FDE35C71DBD4EAE` (`iwos`),
  KEY `IDX_9FDE35C7C4085AA3` (`iwos_item`),
  KEY `IDX_9FDE35C76B4CBDDB` (`usuario_mod`),
  KEY `IDX_9FDE35C71B2181D` (`seguimiento`),
  CONSTRAINT `FK_9FDE35C71B2181D` FOREIGN KEY (`seguimiento`) REFERENCES `iwos_preguntas` (`id`),
  CONSTRAINT `FK_9FDE35C71DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_9FDE35C76B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_9FDE35C7C4085AA3` FOREIGN KEY (`iwos_item`) REFERENCES `iwos_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_preguntas`
--

LOCK TABLES `iwos_preguntas` WRITE;
/*!40000 ALTER TABLE `iwos_preguntas` DISABLE KEYS */;
INSERT INTO `iwos_preguntas` VALUES (1,1,1,1,'¿Es esta la primera pregunta?',3,'2020-06-24 08:08:09','Esta no es la primera pregunta',200,NULL,0,1,0,0,NULL),(2,1,3,1,'¿Es esta la segunda pregunta?',2,'2020-07-10 09:23:29','Esta es la segunda pregunta',100,NULL,0,1,0,0,NULL),(3,1,2,1,'¿Es esta la tercera pregunta?',3,'2020-06-23 17:32:33','Tercera pregunta',300,NULL,0,1,0,0,NULL),(4,1,3,1,'¿Es esta la cuarta pregunta?',4,'2020-07-10 09:23:38','cuarta pregunta',400,NULL,0,1,0,0,NULL),(5,2,4,1,'¿Es la primera pregunta?',3,'2020-06-24 08:28:10','Esta es la primera pregunta',200,NULL,0,1,0,0,NULL),(6,2,4,1,'¿Es esta la cuarta pregunta?',1,'2020-06-24 08:27:24','cuarta pregunta',300,NULL,0,1,0,0,NULL),(7,3,5,1,'¿Como consideras tu lugar de salario?',1,'2020-06-24 09:25:14','Considerando tus actividades contra el mercado',100,NULL,0,1,0,0,NULL),(8,1,2,1,'¿Es esta la Nueva Tercera pregunta?',1,'2020-06-25 15:36:58','Esta es la segunda pregunta',350,NULL,0,1,0,0,NULL),(9,1,2,1,'¿Es esta la Nueva Segunda pregunta?',0,'2020-09-08 11:25:58','Esta es la segundapregunta',150,46,0,1,0,0,''),(10,1,1,1,'¿Es esta la Nueva ultima pregunta?',1,'2020-06-25 15:37:23','Esta es la segunda pregunta',999,NULL,0,1,0,0,NULL),(11,1,7,1,'¿Es esta la nueva Ultima pregunta?',3,'2020-06-25 16:14:37','Considerando tus actividades contra el mercado',100,NULL,0,1,0,0,NULL),(12,3,6,1,'¿Es esta la tercera pregunta?',1,'2020-06-25 17:37:46','Considerando tus actividades contra el mercado',100,NULL,0,1,0,0,NULL),(13,5,8,1,'¿Es esta la primera pregunta?',3,'2020-07-08 11:05:17','Esta no es la primera pregunta',10,NULL,0,1,0,0,NULL),(14,5,8,1,'Esta es la nueva primera pregunta',3,'2020-07-08 11:05:57','descripcion',9,NULL,0,1,0,0,NULL),(15,6,9,1,'¿Que tal tu salario?',0,'2020-07-14 10:42:16','tu salario',1,NULL,0,1,0,0,NULL),(16,6,9,1,'¿Que tal tu salario de tu compañero?',0,'2020-07-14 10:42:42','tu salario',1,NULL,0,1,0,0,NULL),(17,6,9,1,'¿Que tal tu salario de tu amigo?',0,'2020-07-14 10:42:51','tu salario',3,NULL,0,1,0,0,NULL),(18,6,10,1,'Tu nombre Completo',2,'2020-07-14 10:40:16','Tu nombre',1,NULL,0,1,0,0,NULL),(19,6,11,1,'Escribe comentarios finales',4,'2020-07-14 10:41:36','Tus comentarios',1,NULL,0,1,0,0,NULL),(20,1,1,1,'¿Dinos por qué?',4,'2020-07-14 17:11:14','Ayudanos a mejorar',1,NULL,0,0,0,0,NULL),(21,1,1,1,'¿Es esta la segunda pregunta?',0,'2020-07-14 17:11:14','Esta es la segunda pregunta',1,20,1,1,0,0,NULL),(22,1,1,1,'¿Dinos por qué?',4,'2020-07-14 17:12:09','Ayudanos a mejorar',1,NULL,0,0,0,0,NULL),(23,1,1,1,'¿Es esta la segunda pregunta?',0,'2020-07-14 17:12:09','Esta es la segunda pregunta',1,22,1,1,0,0,NULL),(26,6,9,1,'¿Dinos por qué?',4,'2020-07-14 18:21:41','Ayudanos a mejorar',4,NULL,0,0,0,0,NULL),(27,6,9,1,'Pregunta con seguimiento',0,'2020-07-14 18:21:41','una pregunta con seguimiento',4,26,1,1,0,0,NULL),(28,6,9,1,'Pregunta fija',1,'2020-07-16 15:49:01','mi pregunta fija',1,NULL,1,1,1,1,'10'),(30,6,9,1,'Tu empresa?',2,'2020-07-16 15:57:36','tu empresa fija',2,NULL,1,1,1,1,'A&T'),(31,6,10,1,'Tu numero de empleado',1,'2020-07-16 16:08:24','# Empleado',2,NULL,1,1,1,1,'717'),(32,7,12,1,'¿Cual es tu Empresa?',2,'2020-07-21 16:17:12','Tu empresa',1,NULL,1,1,1,0,''),(33,7,12,1,'¿Cual es tu Nombre?',2,'2020-07-21 16:16:55','Tu nombre completo',2,NULL,1,1,1,0,''),(34,7,13,1,'¿Qué tan satisfecho estás con nuestros servicios?',3,'2020-07-22 15:59:22','',1,35,1,1,0,0,''),(35,7,13,1,'¿Dinos por qué?',4,'2020-07-21 16:23:55','Ayudanos a mejorar',1,NULL,0,0,1,0,''),(36,7,13,1,'¿Qué tan probable es que recomiende nuestro negocio a un amigo o colega?',3,'2020-07-22 15:59:39','',2,37,1,1,0,0,''),(37,7,13,1,'¿Dinos por qué?',4,'2020-07-21 16:24:32','Ayudanos a mejorar',2,NULL,0,0,1,0,''),(38,7,13,1,'En general, ¿Qué tan fácil fue resolver tu problema con A&T Sort Company?',3,'2020-07-22 16:01:29','',3,39,1,1,0,0,''),(39,7,13,1,'¿Dinos por qué?',4,'2020-07-21 16:25:10','Ayudanos a mejorar',3,NULL,0,0,1,0,''),(40,7,13,1,'Danos tu opinión',4,'2020-07-22 16:01:13','',4,NULL,0,1,0,0,''),(41,8,14,1,'Primera Pregunta',2,'2020-07-29 12:28:25','Esta es la primera pregunta',1,NULL,1,1,1,0,''),(42,8,14,1,'Segunda Pregunta',2,'2020-07-29 12:29:15','Esta es la segunda pregunta',2,NULL,1,1,1,0,''),(43,8,14,1,'Tercera Pregunta',2,'2020-07-29 12:29:00','Esta es la tercera pregunta',3,NULL,1,1,1,0,''),(44,6,11,1,'test',0,'2020-08-18 15:23:15','test',0,45,1,1,0,0,''),(45,6,11,1,'¿Dinos por qué?',4,'2020-08-18 15:23:15','Ayudanos a mejorar',0,NULL,0,0,1,0,''),(46,1,2,1,'¿Dinos por qué?',4,'2020-09-08 11:25:59','Ayudanos a mejorar',150,NULL,0,0,1,0,''),(47,8,14,1,'Cuarta Pregunta',0,'2020-09-08 11:26:57','Esta es la cuarta pregunta',4,48,1,1,0,0,''),(48,8,14,1,'¿Dinos por qué?',4,'2020-09-08 11:26:57','Ayudanos a mejorar',4,NULL,0,0,1,0,''),(49,8,14,1,'Quinta Pregunta',5,'2020-09-09 17:52:32','',5,NULL,1,1,1,0,''),(51,4,15,1,'Mejores Ingresos',6,'2020-09-17 09:46:20','SI: Responde ¿Cuánto te ofrecen?',1,NULL,1,1,1,0,'');
/*!40000 ALTER TABLE `iwos_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_respuestas`
--

DROP TABLE IF EXISTS `iwos_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iwos` int(11) DEFAULT NULL,
  `iwos_captura` int(11) DEFAULT NULL,
  `iwos_pregunta` int(11) DEFAULT NULL,
  `iwos_item` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `respuesta` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_42763BA41DBD4EAE` (`iwos`),
  KEY `IDX_42763BA46D0C2B83` (`iwos_captura`),
  KEY `IDX_42763BA46EBB1213` (`iwos_pregunta`),
  KEY `IDX_42763BA4C4085AA3` (`iwos_item`),
  KEY `IDX_42763BA46B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_42763BA41DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_42763BA46B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_42763BA46D0C2B83` FOREIGN KEY (`iwos_captura`) REFERENCES `iwos_capturas` (`id`),
  CONSTRAINT `FK_42763BA46EBB1213` FOREIGN KEY (`iwos_pregunta`) REFERENCES `iwos_preguntas` (`id`),
  CONSTRAINT `FK_42763BA4C4085AA3` FOREIGN KEY (`iwos_item`) REFERENCES `iwos_items` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=445 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_respuestas`
--

LOCK TABLES `iwos_respuestas` WRITE;
/*!40000 ALTER TABLE `iwos_respuestas` DISABLE KEYS */;
INSERT INTO `iwos_respuestas` VALUES (1,3,1,7,5,1,'100.00','2020-06-26 00:00:00'),(2,3,1,12,6,1,'100.00','2020-06-26 00:00:00'),(5,3,6,7,5,1,'90.00','2020-06-26 13:03:45'),(6,3,6,12,6,1,'90.00','2020-06-26 13:03:45'),(7,3,7,7,5,1,'80.00','2020-06-26 13:09:08'),(8,3,7,12,6,1,'80.00','2020-06-26 13:09:08'),(9,3,8,7,5,1,'100.00','2020-07-01 09:29:01'),(10,3,8,12,6,1,'100.00','2020-07-01 09:29:01'),(11,5,9,14,8,1,'100.00','2020-07-08 11:06:49'),(12,5,9,13,8,1,'75.00','2020-07-08 11:06:49'),(13,1,10,9,2,1,'Esta es una respuesta muy largaaaaaa muchas!','2020-07-10 10:15:15'),(14,1,10,3,2,1,'100','2020-07-10 10:15:15'),(15,1,10,8,2,1,'1','2020-07-10 10:15:15'),(16,1,10,2,3,1,'Esta es una respuesta muy largaaaaaa muchas!','2020-07-10 10:15:15'),(17,1,10,4,3,1,'Esta es una respuesta muy largaaaaaa muchas!','2020-07-10 10:15:15'),(18,1,10,1,1,1,'100','2020-07-10 10:15:15'),(19,1,10,10,1,1,'10','2020-07-10 10:15:15'),(20,1,10,11,7,1,'100','2020-07-10 10:15:15'),(21,1,11,9,2,1,'1','2020-07-10 10:16:53'),(22,1,11,3,2,1,'100','2020-07-10 10:16:53'),(23,1,11,8,2,1,'1','2020-07-10 10:16:53'),(24,1,11,2,3,1,'H1','2020-07-10 10:16:53'),(25,1,11,4,3,1,'H2','2020-07-10 10:16:53'),(26,1,11,1,1,1,'75','2020-07-10 10:16:53'),(27,1,11,10,1,1,'10','2020-07-10 10:16:53'),(28,1,11,11,7,1,'100','2020-07-10 10:16:53'),(29,1,12,9,2,1,'0','2020-07-10 10:20:55'),(30,1,12,3,2,1,'100','2020-07-10 10:20:55'),(31,1,12,8,2,1,'28','2020-07-10 10:20:55'),(32,1,12,2,3,1,'H3','2020-07-10 10:20:55'),(33,1,12,4,3,1,'H4','2020-07-10 10:20:55'),(34,1,12,1,1,1,'50','2020-07-10 10:20:55'),(35,1,12,10,1,1,'88','2020-07-10 10:20:55'),(36,1,12,11,7,1,'75','2020-07-10 10:20:55'),(37,6,13,18,10,1,'Jupiter Barrera','2020-07-14 12:56:58'),(38,6,13,15,9,1,'1','2020-07-14 12:56:58'),(39,6,13,16,9,1,'1','2020-07-14 12:56:58'),(40,6,13,17,9,1,'1','2020-07-14 12:56:58'),(41,6,13,19,11,1,'Hola','2020-07-14 12:56:58'),(42,6,14,18,10,1,'Enrique Castillo','2020-07-14 12:59:32'),(43,6,14,15,9,1,'1','2020-07-14 12:59:32'),(44,6,14,16,9,1,'1','2020-07-14 12:59:32'),(45,6,14,17,9,1,'1','2020-07-14 12:59:32'),(46,6,14,19,11,1,'Prueba 2','2020-07-14 12:59:32'),(47,6,15,18,10,1,' Jupiter Barrera','2020-07-14 18:25:17'),(48,6,15,15,9,1,' 1','2020-07-14 18:25:17'),(49,6,15,16,9,1,' 1','2020-07-14 18:25:17'),(50,6,15,17,9,1,' 1','2020-07-14 18:25:17'),(51,6,15,27,9,1,' 0','2020-07-14 18:25:17'),(52,6,15,26,9,1,' Probando seguimiento','2020-07-14 18:25:17'),(53,6,15,19,11,1,' finalizar','2020-07-14 18:25:17'),(54,6,16,18,10,1,'Enrique Castillo','2020-07-14 18:27:34'),(55,6,16,15,9,1,'1','2020-07-14 18:27:34'),(56,6,16,16,9,1,'1','2020-07-14 18:27:34'),(57,6,16,17,9,1,'1','2020-07-14 18:27:34'),(58,6,16,27,9,1,'0','2020-07-14 18:27:34'),(59,6,16,26,9,1,'test','2020-07-14 18:27:34'),(60,6,16,19,11,1,'test2','2020-07-14 18:27:34'),(61,6,17,18,10,1,'Jupiter Barrera 2','2020-07-14 18:28:20'),(62,6,17,15,9,1,'1','2020-07-14 18:28:20'),(63,6,17,16,9,1,'1','2020-07-14 18:28:20'),(64,6,17,17,9,1,'1','2020-07-14 18:28:20'),(65,6,17,27,9,1,'0','2020-07-14 18:28:20'),(66,6,17,26,9,1,'Hola!!!!','2020-07-14 18:28:20'),(67,6,17,19,11,1,'Prueba','2020-07-14 18:28:20'),(68,6,18,18,10,1,'Jupiter','2020-07-15 09:48:53'),(69,6,18,15,9,1,'1','2020-07-15 09:48:53'),(70,6,18,16,9,1,'1','2020-07-15 09:48:53'),(71,6,18,17,9,1,'1','2020-07-15 09:48:53'),(72,6,18,27,9,1,'0','2020-07-15 09:48:53'),(73,6,18,26,9,1,'Hola','2020-07-15 09:48:53'),(74,6,18,19,11,1,'Hola','2020-07-15 09:48:53'),(75,1,19,9,2,1,'1','2020-07-16 17:22:44'),(76,1,19,3,2,1,'100','2020-07-16 17:22:44'),(77,1,19,8,2,1,'100','2020-07-16 17:22:44'),(78,1,19,2,3,1,'Hola','2020-07-16 17:22:44'),(79,1,19,4,3,1,'test','2020-07-16 17:22:44'),(80,1,19,21,1,1,'1','2020-07-16 17:22:45'),(81,1,19,20,1,1,'','2020-07-16 17:22:45'),(82,1,19,23,1,1,'0','2020-07-16 17:22:45'),(83,1,19,22,1,1,'','2020-07-16 17:22:45'),(84,1,19,1,1,1,'100','2020-07-16 17:22:45'),(85,1,19,10,1,1,'50','2020-07-16 17:22:45'),(86,1,19,11,7,1,'100','2020-07-16 17:22:45'),(87,1,20,9,2,1,'1','2020-07-16 17:27:07'),(88,1,20,3,2,1,'50','2020-07-16 17:27:07'),(89,1,20,8,2,1,'80','2020-07-16 17:27:07'),(90,1,20,2,3,1,'H1','2020-07-16 17:27:07'),(91,1,20,4,3,1,'JU','2020-07-16 17:27:07'),(92,1,20,21,1,1,'0','2020-07-16 17:27:07'),(93,1,20,20,1,1,'test','2020-07-16 17:27:07'),(94,1,20,23,1,1,'1','2020-07-16 17:27:07'),(95,1,20,22,1,1,'','2020-07-16 17:27:07'),(96,1,20,1,1,1,'100','2020-07-16 17:27:07'),(97,1,20,10,1,1,'50','2020-07-16 17:27:07'),(98,1,20,11,7,1,'25','2020-07-16 17:27:07'),(99,1,21,9,2,1,' 1','2020-07-16 17:27:57'),(100,1,21,3,2,1,' 50','2020-07-16 17:27:57'),(101,1,21,8,2,1,' 80','2020-07-16 17:27:57'),(102,1,21,2,3,1,' H1','2020-07-16 17:27:57'),(103,1,21,4,3,1,' JU','2020-07-16 17:27:57'),(104,1,21,21,1,1,' 0','2020-07-16 17:27:57'),(105,1,21,20,1,1,' test','2020-07-16 17:27:57'),(106,1,21,23,1,1,' 1','2020-07-16 17:27:57'),(107,1,21,22,1,1,' ','2020-07-16 17:27:57'),(108,1,21,1,1,1,' 100','2020-07-16 17:27:57'),(109,1,21,10,1,1,' 50','2020-07-16 17:27:57'),(110,1,21,11,7,1,' 25','2020-07-16 17:27:57'),(111,1,22,9,2,1,' 1','2020-07-16 17:29:21'),(112,1,22,3,2,1,' 50','2020-07-16 17:29:21'),(113,1,22,8,2,1,' 80','2020-07-16 17:29:21'),(114,1,22,2,3,1,' H1','2020-07-16 17:29:21'),(115,1,22,4,3,1,' JU','2020-07-16 17:29:21'),(116,1,22,21,1,1,' 0','2020-07-16 17:29:21'),(117,1,22,20,1,1,' test','2020-07-16 17:29:21'),(118,1,22,23,1,1,' 1','2020-07-16 17:29:21'),(119,1,22,22,1,1,' ','2020-07-16 17:29:21'),(120,1,22,1,1,1,' 100','2020-07-16 17:29:21'),(121,1,22,10,1,1,' 50','2020-07-16 17:29:21'),(122,1,22,11,7,1,' 25','2020-07-16 17:29:21'),(123,1,23,9,2,1,' 1','2020-07-16 17:34:51'),(124,1,23,3,2,1,' 50','2020-07-16 17:34:51'),(125,1,23,8,2,1,' 80','2020-07-16 17:34:51'),(126,1,23,2,3,1,' H1','2020-07-16 17:34:51'),(127,1,23,4,3,1,' JU','2020-07-16 17:34:51'),(128,1,23,21,1,1,' 0','2020-07-16 17:34:51'),(129,1,23,20,1,1,' test','2020-07-16 17:34:51'),(130,1,23,23,1,1,' 1','2020-07-16 17:34:51'),(131,1,23,22,1,1,' ','2020-07-16 17:34:51'),(132,1,23,1,1,1,' 100','2020-07-16 17:34:51'),(133,1,23,10,1,1,' 50','2020-07-16 17:34:51'),(134,1,23,11,7,1,' 25','2020-07-16 17:34:51'),(135,1,24,9,2,1,' 1','2020-07-16 17:37:21'),(136,1,24,3,2,1,' 50','2020-07-16 17:37:21'),(137,1,24,8,2,1,' 80','2020-07-16 17:37:21'),(138,1,24,2,3,1,' H1','2020-07-16 17:37:21'),(139,1,24,4,3,1,' JU','2020-07-16 17:37:21'),(140,1,24,21,1,1,' 0','2020-07-16 17:37:21'),(141,1,24,20,1,1,' test','2020-07-16 17:37:21'),(142,1,24,23,1,1,' 1','2020-07-16 17:37:21'),(143,1,24,22,1,1,' ','2020-07-16 17:37:21'),(144,1,24,1,1,1,' 100','2020-07-16 17:37:21'),(145,1,24,10,1,1,' 50','2020-07-16 17:37:21'),(146,1,24,11,7,1,' 25','2020-07-16 17:37:21'),(147,1,25,9,2,1,' 1','2020-07-16 17:37:38'),(148,1,25,3,2,1,' 50','2020-07-16 17:37:38'),(149,1,25,8,2,1,' 80','2020-07-16 17:37:38'),(150,1,25,2,3,1,' H1','2020-07-16 17:37:38'),(151,1,25,4,3,1,' JU','2020-07-16 17:37:38'),(152,1,25,21,1,1,' 0','2020-07-16 17:37:38'),(153,1,25,20,1,1,' test','2020-07-16 17:37:38'),(154,1,25,23,1,1,' 1','2020-07-16 17:37:38'),(155,1,25,22,1,1,' ','2020-07-16 17:37:38'),(156,1,25,1,1,1,' 100','2020-07-16 17:37:38'),(157,1,25,10,1,1,' 50','2020-07-16 17:37:38'),(158,1,25,11,7,1,' 25','2020-07-16 17:37:38'),(159,1,26,9,2,1,' 1','2020-07-16 17:42:20'),(160,1,26,3,2,1,' 50','2020-07-16 17:42:20'),(161,1,26,8,2,1,' 80','2020-07-16 17:42:20'),(162,1,26,2,3,1,' H1','2020-07-16 17:42:20'),(163,1,26,4,3,1,' JU','2020-07-16 17:42:20'),(164,1,26,21,1,1,' 0','2020-07-16 17:42:20'),(165,1,26,20,1,1,' test','2020-07-16 17:42:20'),(166,1,26,23,1,1,' 1','2020-07-16 17:42:20'),(167,1,26,22,1,1,' ','2020-07-16 17:42:20'),(168,1,26,1,1,1,' 100','2020-07-16 17:42:20'),(169,1,26,10,1,1,' 50','2020-07-16 17:42:20'),(170,1,26,11,7,1,' 25','2020-07-16 17:42:20'),(171,1,27,9,2,1,' 1','2020-07-16 17:43:42'),(172,1,27,3,2,1,' 50','2020-07-16 17:43:42'),(173,1,27,8,2,1,' 80','2020-07-16 17:43:42'),(174,1,27,2,3,1,' H1','2020-07-16 17:43:42'),(175,1,27,4,3,1,' JU','2020-07-16 17:43:42'),(176,1,27,21,1,1,' 0','2020-07-16 17:43:42'),(177,1,27,20,1,1,' test','2020-07-16 17:43:42'),(178,1,27,23,1,1,' 1','2020-07-16 17:43:42'),(179,1,27,22,1,1,' ','2020-07-16 17:43:42'),(180,1,27,1,1,1,' 100','2020-07-16 17:43:42'),(181,1,27,10,1,1,' 50','2020-07-16 17:43:42'),(182,1,27,11,7,1,' 25','2020-07-16 17:43:42'),(183,1,28,9,2,1,' 1','2020-07-16 17:46:26'),(184,1,28,3,2,1,' 50','2020-07-16 17:46:26'),(185,1,28,8,2,1,' 80','2020-07-16 17:46:26'),(186,1,28,2,3,1,' H1','2020-07-16 17:46:26'),(187,1,28,4,3,1,' JU','2020-07-16 17:46:26'),(188,1,28,21,1,1,' 0','2020-07-16 17:46:26'),(189,1,28,20,1,1,' test','2020-07-16 17:46:26'),(190,1,28,23,1,1,' 1','2020-07-16 17:46:26'),(191,1,28,22,1,1,' ','2020-07-16 17:46:26'),(192,1,28,1,1,1,' 100','2020-07-16 17:46:26'),(193,1,28,10,1,1,' 50','2020-07-16 17:46:26'),(194,1,28,11,7,1,' 25','2020-07-16 17:46:26'),(195,1,29,9,2,1,' 1','2020-07-16 17:48:40'),(196,1,29,3,2,1,' 50','2020-07-16 17:48:40'),(197,1,29,8,2,1,' 80','2020-07-16 17:48:40'),(198,1,29,2,3,1,' H1','2020-07-16 17:48:40'),(199,1,29,4,3,1,' JU','2020-07-16 17:48:40'),(200,1,29,21,1,1,' 0','2020-07-16 17:48:40'),(201,1,29,20,1,1,' test','2020-07-16 17:48:40'),(202,1,29,23,1,1,' 1','2020-07-16 17:48:40'),(203,1,29,22,1,1,' ','2020-07-16 17:48:40'),(204,1,29,1,1,1,' 100','2020-07-16 17:48:40'),(205,1,29,10,1,1,' 50','2020-07-16 17:48:40'),(206,1,29,11,7,1,' 25','2020-07-16 17:48:40'),(207,1,30,9,2,1,'1','2020-07-16 17:52:38'),(208,1,30,3,2,1,'50','2020-07-16 17:52:38'),(209,1,30,8,2,1,'80','2020-07-16 17:52:38'),(210,1,30,2,3,1,'H1','2020-07-16 17:52:38'),(211,1,30,4,3,1,'JU','2020-07-16 17:52:38'),(212,1,30,21,1,1,'0','2020-07-16 17:52:38'),(213,1,30,20,1,1,'test','2020-07-16 17:52:38'),(214,1,30,23,1,1,'1','2020-07-16 17:52:38'),(215,1,30,22,1,1,'','2020-07-16 17:52:38'),(216,1,30,1,1,1,'100','2020-07-16 17:52:38'),(217,1,30,10,1,1,'50','2020-07-16 17:52:38'),(218,1,30,11,7,1,'25','2020-07-16 17:52:38'),(219,1,31,9,2,1,'1','2020-07-21 11:58:06'),(220,1,31,3,2,1,'100','2020-07-21 11:58:06'),(221,1,31,8,2,1,'84','2020-07-21 11:58:06'),(222,1,31,2,3,1,'Hola','2020-07-21 11:58:06'),(223,1,31,4,3,1,'hoila','2020-07-21 11:58:06'),(224,1,31,21,1,1,'1','2020-07-21 11:58:06'),(225,1,31,20,1,1,'','2020-07-21 11:58:06'),(226,1,31,23,1,1,'1','2020-07-21 11:58:06'),(227,1,31,22,1,1,'','2020-07-21 11:58:06'),(228,1,31,1,1,1,'100','2020-07-21 11:58:06'),(229,1,31,10,1,1,'87','2020-07-21 11:58:06'),(230,1,31,11,7,1,'100','2020-07-21 11:58:06'),(231,1,32,9,2,1,'1','2020-07-21 12:13:03'),(232,1,32,3,2,1,'100','2020-07-21 12:13:03'),(233,1,32,8,2,1,'85','2020-07-21 12:13:03'),(234,1,32,2,3,1,'hola','2020-07-21 12:13:03'),(235,1,32,4,3,1,'test','2020-07-21 12:13:03'),(236,1,32,21,1,1,'1','2020-07-21 12:13:03'),(237,1,32,20,1,1,'','2020-07-21 12:13:03'),(238,1,32,23,1,1,'1','2020-07-21 12:13:03'),(239,1,32,22,1,1,'','2020-07-21 12:13:03'),(240,1,32,1,1,1,'75','2020-07-21 12:13:03'),(241,1,32,10,1,1,'56','2020-07-21 12:13:03'),(242,1,32,11,7,1,'100','2020-07-21 12:13:03'),(250,7,34,32,12,1,'ALEJANDRO SANCHEZ','2020-07-21 16:52:45'),(251,7,34,33,12,1,'Alejandro Sanchez','2020-07-21 16:52:45'),(252,7,34,34,13,1,'1','2020-07-21 16:52:45'),(253,7,34,35,13,1,'','2020-07-21 16:52:45'),(254,7,34,36,13,1,'1','2020-07-21 16:52:45'),(255,7,34,37,13,1,'','2020-07-21 16:52:45'),(256,7,34,38,13,1,'75','2020-07-21 16:52:45'),(257,7,35,32,12,1,'BSB','2020-07-21 16:55:42'),(258,7,35,33,12,1,'Rodolfo Orta','2020-07-21 16:55:42'),(259,7,35,34,13,1,'0','2020-07-21 16:55:42'),(260,7,35,35,13,1,'Se tardaron mas de 2 horas','2020-07-21 16:55:42'),(261,7,35,36,13,1,'1','2020-07-21 16:55:42'),(262,7,35,37,13,1,'','2020-07-21 16:55:42'),(263,7,35,38,13,1,'100','2020-07-21 16:55:42'),(264,7,36,32,12,1,'BURGAFLEX NORTH AMERICA , LLC.','2020-07-21 17:46:28'),(265,7,36,33,12,1,'Rich Reid','2020-07-21 17:46:28'),(266,7,36,34,13,1,'1','2020-07-21 17:46:28'),(267,7,36,35,13,1,'','2020-07-21 17:46:28'),(268,7,36,36,13,1,'1','2020-07-21 17:46:28'),(269,7,36,37,13,1,'','2020-07-21 17:46:28'),(270,7,36,38,13,1,'100','2020-07-21 17:46:28'),(271,7,37,32,12,1,'BSB MANUFACTURING MEXICO S DE RL DE CV','2020-07-22 10:51:49'),(272,7,37,33,12,1,'Jim Wood','2020-07-22 10:51:49'),(273,7,37,34,13,1,'0','2020-07-22 10:51:49'),(274,7,37,35,13,1,'Prueba','2020-07-22 10:51:49'),(275,7,37,36,13,1,'1','2020-07-22 10:51:49'),(276,7,37,37,13,1,'','2020-07-22 10:51:49'),(277,7,37,38,13,1,'100','2020-07-22 10:51:49'),(278,7,38,32,12,1,'BSB','2020-07-22 17:03:13'),(279,7,38,33,12,1,'Rodolfo Orta','2020-07-22 17:03:13'),(280,7,38,34,13,1,'50','2020-07-22 17:03:13'),(281,7,38,36,13,1,'100','2020-07-22 17:03:13'),(282,7,38,38,13,1,'75','2020-07-22 17:03:13'),(283,7,38,40,13,1,'Test','2020-07-22 17:03:13'),(284,7,39,32,12,1,'BSB','2020-07-22 17:04:27'),(285,7,39,33,12,1,'Rodolfo Orta','2020-07-22 17:04:27'),(286,7,39,34,13,1,'0','2020-07-22 17:04:27'),(287,7,39,36,13,1,'50','2020-07-22 17:04:27'),(288,7,39,38,13,1,'75','2020-07-22 17:04:27'),(289,7,39,40,13,1,'','2020-07-22 17:04:27'),(290,7,40,32,12,1,'Mi Empresa','2020-07-24 18:31:01'),(291,7,40,33,12,1,'Jupiter Barrera','2020-07-24 18:31:01'),(292,7,40,34,13,1,'50','2020-07-24 18:31:01'),(293,7,40,36,13,1,'25','2020-07-24 18:31:01'),(294,7,40,38,13,1,'75','2020-07-24 18:31:01'),(295,7,40,40,13,1,'Falta Mejorar','2020-07-24 18:31:01'),(296,7,41,32,12,1,' Mi Empresa','2020-07-24 18:32:00'),(297,7,41,33,12,1,' Jupiter Barrera','2020-07-24 18:32:00'),(298,7,41,34,13,1,' 50','2020-07-24 18:32:00'),(299,7,41,36,13,1,' 25','2020-07-24 18:32:00'),(300,7,41,38,13,1,' 75','2020-07-24 18:32:00'),(301,7,41,40,13,1,' Falta Mejorar','2020-07-24 18:32:00'),(302,7,42,32,12,1,'Mi Empresa','2020-07-24 18:33:04'),(303,7,42,33,12,1,'Jupiter Barrera','2020-07-24 18:33:04'),(304,7,42,34,13,1,'50','2020-07-24 18:33:04'),(305,7,42,36,13,1,'25','2020-07-24 18:33:04'),(306,7,42,38,13,1,'75','2020-07-24 18:33:04'),(307,7,42,40,13,1,'Falta Mejorar','2020-07-24 18:33:04'),(308,7,43,32,12,1,' Mi Empresa','2020-07-24 18:33:10'),(309,7,43,33,12,1,' Jupiter Barrera','2020-07-24 18:33:10'),(310,7,43,34,13,1,' 50','2020-07-24 18:33:10'),(311,7,43,36,13,1,' 25','2020-07-24 18:33:10'),(312,7,43,38,13,1,' 75','2020-07-24 18:33:10'),(313,7,43,40,13,1,' Falta Mejorar','2020-07-24 18:33:10'),(314,7,44,32,12,1,'Mi Empresa','2020-07-24 18:33:34'),(315,7,44,33,12,1,'Jupiter Barrera','2020-07-24 18:33:34'),(316,7,44,34,13,1,'50','2020-07-24 18:33:34'),(317,7,44,36,13,1,'25','2020-07-24 18:33:34'),(318,7,44,38,13,1,'75','2020-07-24 18:33:34'),(319,7,44,40,13,1,'Falta Mejorar','2020-07-24 18:33:34'),(320,7,45,32,12,1,'BSB 2','2020-07-27 15:29:28'),(321,7,45,33,12,1,'Rodolfo Orta','2020-07-27 15:29:28'),(322,7,45,34,13,1,'95','2020-07-27 15:29:28'),(323,7,45,36,13,1,'85','2020-07-27 15:29:28'),(324,7,45,38,13,1,'65','2020-07-27 15:29:28'),(325,7,45,40,13,1,'Prueba','2020-07-27 15:29:28'),(326,7,46,32,12,1,'TEST','2020-08-05 13:38:25'),(327,7,46,33,12,1,'TEST','2020-08-05 13:38:25'),(328,7,46,34,13,1,'50','2020-08-05 13:38:25'),(329,7,46,36,13,1,'50','2020-08-05 13:38:25'),(330,7,46,38,13,1,'50','2020-08-05 13:38:25'),(331,7,46,40,13,1,'test','2020-08-05 13:38:25'),(332,7,47,32,12,1,'TEST','2020-08-05 13:38:34'),(333,7,47,33,12,1,'TEST','2020-08-05 13:38:34'),(334,7,47,34,13,1,'50','2020-08-05 13:38:34'),(335,7,47,36,13,1,'50','2020-08-05 13:38:34'),(336,7,47,38,13,1,'50','2020-08-05 13:38:34'),(337,7,47,40,13,1,'test','2020-08-05 13:38:34'),(338,7,48,32,12,1,'TEST','2020-08-05 13:38:52'),(339,7,48,33,12,1,'TEST','2020-08-05 13:38:52'),(340,7,48,34,13,1,'50','2020-08-05 13:38:52'),(341,7,48,36,13,1,'50','2020-08-05 13:38:52'),(342,7,48,38,13,1,'50','2020-08-05 13:38:52'),(343,7,48,40,13,1,'test','2020-08-05 13:38:52'),(344,7,49,32,12,1,' TEST','2020-08-05 13:39:28'),(345,7,49,33,12,1,' TEST','2020-08-05 13:39:28'),(346,7,49,34,13,1,' 50','2020-08-05 13:39:28'),(347,7,49,36,13,1,' 50','2020-08-05 13:39:28'),(348,7,49,38,13,1,' 50','2020-08-05 13:39:28'),(349,7,49,40,13,1,' test','2020-08-05 13:39:28'),(350,7,50,32,12,1,' TEST','2020-08-05 13:40:01'),(351,7,50,33,12,1,' TEST','2020-08-05 13:40:01'),(352,7,50,34,13,1,' 50','2020-08-05 13:40:01'),(353,7,50,36,13,1,' 50','2020-08-05 13:40:01'),(354,7,50,38,13,1,' 50','2020-08-05 13:40:01'),(355,7,50,40,13,1,' test','2020-08-05 13:40:01'),(356,7,51,32,12,1,' TEST','2020-08-05 13:44:08'),(357,7,51,33,12,1,' TEST','2020-08-05 13:44:08'),(358,7,51,34,13,1,' 50','2020-08-05 13:44:08'),(359,7,51,36,13,1,' 50','2020-08-05 13:44:08'),(360,7,51,38,13,1,' 50','2020-08-05 13:44:08'),(361,7,51,40,13,1,' test','2020-08-05 13:44:08'),(362,7,52,32,12,1,' TEST','2020-08-05 13:44:52'),(363,7,52,33,12,1,' TEST','2020-08-05 13:44:52'),(364,7,52,34,13,1,' 50','2020-08-05 13:44:52'),(365,7,52,36,13,1,' 50','2020-08-05 13:44:52'),(366,7,52,38,13,1,' 50','2020-08-05 13:44:52'),(367,7,52,40,13,1,' test','2020-08-05 13:44:52'),(368,7,53,32,12,1,' TEST','2020-08-05 13:46:04'),(369,7,53,33,12,1,' TEST','2020-08-05 13:46:04'),(370,7,53,34,13,1,' 50','2020-08-05 13:46:04'),(371,7,53,36,13,1,' 50','2020-08-05 13:46:04'),(372,7,53,38,13,1,' 50','2020-08-05 13:46:04'),(373,7,53,40,13,1,' test','2020-08-05 13:46:04'),(374,7,54,32,12,1,' TEST','2020-08-05 15:04:03'),(375,7,54,33,12,1,' TEST','2020-08-05 15:04:03'),(376,7,54,34,13,1,' 65','2020-08-05 15:04:03'),(377,7,54,36,13,1,' 50','2020-08-05 15:04:03'),(378,7,54,38,13,1,' 85','2020-08-05 15:04:03'),(379,7,54,40,13,1,' test','2020-08-05 15:04:03'),(380,7,55,32,12,1,' TEST','2020-08-05 15:06:10'),(381,7,55,33,12,1,' TEST','2020-08-05 15:06:10'),(382,7,55,34,13,1,' 65','2020-08-05 15:06:10'),(383,7,55,36,13,1,' 50','2020-08-05 15:06:10'),(384,7,55,38,13,1,' 85','2020-08-05 15:06:10'),(385,7,55,40,13,1,' test','2020-08-05 15:06:10'),(386,7,56,32,12,1,' TEST','2020-08-05 15:11:50'),(387,7,56,33,12,1,' TEST','2020-08-05 15:11:50'),(388,7,56,34,13,1,' 65','2020-08-05 15:11:50'),(389,7,56,36,13,1,' 50','2020-08-05 15:11:50'),(390,7,56,38,13,1,' 85','2020-08-05 15:11:50'),(391,7,56,40,13,1,' test','2020-08-05 15:11:50'),(392,7,57,32,12,1,' TEST','2020-08-05 15:14:35'),(393,7,57,33,12,1,' TEST','2020-08-05 15:14:35'),(394,7,57,34,13,1,' 65','2020-08-05 15:14:35'),(395,7,57,36,13,1,' 50','2020-08-05 15:14:35'),(396,7,57,38,13,1,' 85','2020-08-05 15:14:35'),(397,7,57,40,13,1,' test','2020-08-05 15:14:35'),(398,7,58,32,12,1,' SaarGummi Tennessee, Inc.','2020-08-05 15:23:20'),(399,7,58,33,12,1,' Alejandro Jimenez','2020-08-05 15:23:20'),(400,7,58,34,13,1,' 65','2020-08-05 15:23:20'),(401,7,58,36,13,1,' 50','2020-08-05 15:23:20'),(402,7,58,38,13,1,' 85','2020-08-05 15:23:20'),(403,7,58,40,13,1,' Personal communication on site of sorting.','2020-08-05 15:23:20'),(404,7,59,32,12,1,'TEST 4','2020-08-05 15:26:28'),(405,7,59,33,12,1,'TEST 5','2020-08-05 15:26:28'),(406,7,59,34,13,1,'100','2020-08-05 15:26:28'),(407,7,59,36,13,1,'50','2020-08-05 15:26:28'),(408,7,59,38,13,1,'50','2020-08-05 15:26:28'),(409,7,59,40,13,1,'test 7','2020-08-05 15:26:28'),(410,8,60,41,14,1,'tes','2020-09-09 18:29:13'),(411,8,60,42,14,1,'tes','2020-09-09 18:29:13'),(412,8,60,43,14,1,'tes','2020-09-09 18:29:13'),(413,8,60,47,14,1,'1','2020-09-09 18:29:13'),(414,8,60,48,14,1,'','2020-09-09 18:29:13'),(415,8,60,49,14,1,'2020-09-09','2020-09-09 18:29:13'),(416,4,61,51,15,1,'100','2020-09-17 09:56:04'),(417,4,62,51,15,1,'100','2020-09-17 09:56:08'),(418,1,63,9,2,1,'1','2020-09-30 09:38:59'),(419,1,63,46,2,1,'','2020-09-30 09:38:59'),(420,1,63,3,2,1,'95','2020-09-30 09:38:59'),(421,1,63,8,2,1,'8','2020-09-30 09:38:59'),(422,1,63,2,3,1,'tes','2020-09-30 09:38:59'),(423,1,63,4,3,1,'tes','2020-09-30 09:38:59'),(424,1,63,21,1,1,'1','2020-09-30 09:38:59'),(425,1,63,20,1,1,'','2020-09-30 09:38:59'),(426,1,63,23,1,1,'1','2020-09-30 09:38:59'),(427,1,63,22,1,1,'','2020-09-30 09:38:59'),(428,1,63,1,1,1,'85','2020-09-30 09:38:59'),(429,1,63,10,1,1,'2','2020-09-30 09:38:59'),(430,1,63,11,7,1,'85','2020-09-30 09:38:59'),(431,2,64,5,4,1,'50','2020-10-13 16:39:26'),(432,2,64,6,4,1,'0','2020-10-13 16:39:26'),(433,2,65,5,4,1,'50','2020-10-13 16:39:30'),(434,2,65,6,4,1,'0','2020-10-13 16:39:30'),(435,2,66,5,4,1,' 50','2020-10-13 16:40:26'),(436,2,66,6,4,1,' 0','2020-10-13 16:40:26'),(437,2,67,5,4,1,'50','2020-10-13 16:41:00'),(438,2,67,6,4,1,'0','2020-10-13 16:41:00'),(439,2,68,5,4,1,' 50','2020-10-13 16:41:18'),(440,2,68,6,4,1,' 0','2020-10-13 16:41:18'),(441,2,69,5,4,1,'50','2020-10-13 16:41:31'),(442,2,69,6,4,1,'0','2020-10-13 16:41:31'),(443,2,70,5,4,1,'50','2020-10-13 16:44:16'),(444,2,70,6,4,1,'0','2020-10-13 16:44:16');
/*!40000 ALTER TABLE `iwos_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iwos_seguimiento`
--

DROP TABLE IF EXISTS `iwos_seguimiento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `iwos_seguimiento` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `iwos` int(11) DEFAULT NULL,
  `iwos_captura` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `fecha_seguimiento` datetime NOT NULL,
  `accion_contencion` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `causa_raiz` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `accion_correctiva` varchar(1000) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `evidencia` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6C715AA36B4CBDDB` (`usuario_mod`),
  KEY `IDX_6C715AA31DBD4EAE` (`iwos`),
  KEY `IDX_6C715AA36D0C2B83` (`iwos_captura`),
  CONSTRAINT `FK_6C715AA31DBD4EAE` FOREIGN KEY (`iwos`) REFERENCES `iwos` (`id`),
  CONSTRAINT `FK_6C715AA36B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_6C715AA36D0C2B83` FOREIGN KEY (`iwos_captura`) REFERENCES `iwos_capturas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iwos_seguimiento`
--

LOCK TABLES `iwos_seguimiento` WRITE;
/*!40000 ALTER TABLE `iwos_seguimiento` DISABLE KEYS */;
INSERT INTO `iwos_seguimiento` VALUES (1,1,7,35,'2020-07-23 10:55:22',1,'2020-07-23 00:00:00',' Prueba1',' Prueba2',' Prueba3','b17cdfd21d585730e630dc240aad1384.pdf'),(2,1,7,37,'2020-07-23 15:30:39',1,'2020-07-23 00:00:00','Prueba2','Prueba2','Prueba2','303dfd372a9b9be10bfe35a3bc00ee1f.jpg'),(3,1,7,37,'2020-07-23 15:32:11',1,'2020-07-23 00:00:00',' Prueba2',' Prueba2',' Prueba2','a01faa0676e94faee78ff0cfe8bd121b.pdf'),(4,1,7,37,'2020-07-23 15:32:51',1,'2020-07-23 00:00:00','Prueba2','Prueba2','Prueba2','f692ff1ee720506d1dd076b9150550e7.jpg'),(5,1,7,45,'2020-07-27 15:30:28',1,'2020-07-27 00:00:00','Se habla con el cliente','Error de inspección','Pruebna','1fe9b124c14a9216aadc20366f397912.pdf');
/*!40000 ALTER TABLE `iwos_seguimiento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz_habilidades`
--

DROP TABLE IF EXISTS `matriz_habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriz_habilidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `periodo` datetime NOT NULL,
  `resultado` double DEFAULT NULL,
  `cumplimiento` int(11) DEFAULT NULL,
  `rfq` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B5E4805F6B4CBDDB` (`usuario_mod`),
  KEY `IDX_B5E4805F10174714` (`division`),
  KEY `IDX_B5E4805F457CA3A9` (`unidad_negocio`),
  KEY `IDX_B5E4805FBC91E8A7` (`rfq`),
  CONSTRAINT `FK_B5E4805F10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_B5E4805F457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_B5E4805F6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_B5E4805FBC91E8A7` FOREIGN KEY (`rfq`) REFERENCES `rfqs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz_habilidades`
--

LOCK TABLES `matriz_habilidades` WRITE;
/*!40000 ALTER TABLE `matriz_habilidades` DISABLE KEYS */;
INSERT INTO `matriz_habilidades` VALUES (1,1,1,1,'2020-12-03 10:15:17',1,'2020-11-01 00:00:00',61.203958333333,0,1);
/*!40000 ALTER TABLE `matriz_habilidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz_habilidades_capturas`
--

DROP TABLE IF EXISTS `matriz_habilidades_capturas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriz_habilidades_capturas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rfq` int(11) DEFAULT NULL,
  `matriz_habilidades` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `id_personal` int(11) NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `resultado` double DEFAULT NULL,
  `cumplimiento` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C271AC81BC91E8A7` (`rfq`),
  KEY `IDX_C271AC81B5E4805F` (`matriz_habilidades`),
  KEY `IDX_C271AC816B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_C271AC816B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_C271AC81B5E4805F` FOREIGN KEY (`matriz_habilidades`) REFERENCES `matriz_habilidades` (`id`),
  CONSTRAINT `FK_C271AC81BC91E8A7` FOREIGN KEY (`rfq`) REFERENCES `rfqs` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz_habilidades_capturas`
--

LOCK TABLES `matriz_habilidades_capturas` WRITE;
/*!40000 ALTER TABLE `matriz_habilidades_capturas` DISABLE KEYS */;
INSERT INTO `matriz_habilidades_capturas` VALUES (1,1,1,1,717,'2020-11-23 10:44:41',1,85.395,1),(2,1,1,1,800,'2020-11-19 00:00:00',1,93.25,1),(3,1,1,1,900,'2020-11-19 00:00:00',1,77.25,0),(10,1,1,1,12345,'2020-11-25 14:15:05',1,85.736666666667,1),(11,1,1,2,12345,'2020-12-01 13:39:29',1,26,-1),(12,1,1,2,717,'2020-12-01 13:42:59',1,26,-1),(13,1,1,2,717,'2020-12-01 15:16:52',1,26,-1),(14,1,1,2,717,'2020-12-03 09:50:24',1,70,0);
/*!40000 ALTER TABLE `matriz_habilidades_capturas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matriz_habilidades_respuestas`
--

DROP TABLE IF EXISTS `matriz_habilidades_respuestas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matriz_habilidades_respuestas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rfq` int(11) DEFAULT NULL,
  `matriz_habilidad` int(11) DEFAULT NULL,
  `matriz_habilidad_captura` int(11) DEFAULT NULL,
  `habilidad` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `resultado` double NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `id_personal` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CB14B60EBC91E8A7` (`rfq`),
  KEY `IDX_CB14B60E44545063` (`matriz_habilidad`),
  KEY `IDX_CB14B60EBF067906` (`matriz_habilidad_captura`),
  KEY `IDX_CB14B60E4D2A2AF7` (`habilidad`),
  KEY `IDX_CB14B60E6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_CB14B60E44545063` FOREIGN KEY (`matriz_habilidad`) REFERENCES `matriz_habilidades` (`id`),
  CONSTRAINT `FK_CB14B60E4D2A2AF7` FOREIGN KEY (`habilidad`) REFERENCES `habilidades` (`id`),
  CONSTRAINT `FK_CB14B60E6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_CB14B60EBC91E8A7` FOREIGN KEY (`rfq`) REFERENCES `rfqs` (`id`),
  CONSTRAINT `FK_CB14B60EBF067906` FOREIGN KEY (`matriz_habilidad_captura`) REFERENCES `matriz_habilidades_capturas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matriz_habilidades_respuestas`
--

LOCK TABLES `matriz_habilidades_respuestas` WRITE;
/*!40000 ALTER TABLE `matriz_habilidades_respuestas` DISABLE KEYS */;
INSERT INTO `matriz_habilidades_respuestas` VALUES (1,1,1,1,1,1,87.58,'2020-11-23 10:45:01',1,717),(2,1,1,1,2,1,69,'2020-11-20 00:00:00',1,717),(3,1,1,1,3,1,85,'2020-11-20 00:00:00',1,717),(4,1,1,2,1,1,89,'2020-11-20 00:00:00',1,800),(5,1,1,2,2,1,99,'2020-11-20 00:00:00',1,800),(6,1,1,2,3,1,85,'2020-11-20 00:00:00',1,800),(7,1,1,3,1,1,47,'2020-11-20 00:00:00',1,900),(8,1,1,3,2,1,87,'2020-11-20 00:00:00',1,900),(9,1,1,3,3,1,75,'2020-11-20 00:00:00',1,900),(30,1,1,11,1,2,52,'2020-12-01 13:39:29',1,12345),(31,1,1,11,2,2,25,'2020-12-01 13:39:29',1,12345),(32,1,1,11,3,2,15,'2020-12-01 13:39:29',1,12345),(33,1,1,11,4,2,12,'2020-12-01 13:39:29',1,12345),(34,1,1,12,1,2,52,'2020-12-01 13:42:59',1,717),(35,1,1,12,2,2,25,'2020-12-01 13:42:59',1,717),(36,1,1,12,3,2,15,'2020-12-01 13:42:59',1,717),(37,1,1,12,4,2,12,'2020-12-01 13:42:59',1,717),(38,1,1,13,1,2,52,'2020-12-01 15:16:52',1,717),(39,1,1,13,2,2,25,'2020-12-01 15:16:52',1,717),(40,1,1,13,3,2,15,'2020-12-01 15:16:52',1,717),(41,1,1,13,4,2,12,'2020-12-01 15:16:52',1,717),(42,1,1,14,1,2,40,'2020-12-03 09:50:24',1,717),(43,1,1,14,2,2,60,'2020-12-03 09:50:24',1,717),(44,1,1,14,3,2,80,'2020-12-03 09:50:24',1,717),(45,1,1,14,4,2,100,'2020-12-03 09:50:24',1,717);
/*!40000 ALTER TABLE `matriz_habilidades_respuestas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajero_mail`
--

DROP TABLE IF EXISTS `mensajero_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajero_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tipo` int(10) unsigned NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_78F4F9746B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_78F4F9746B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajero_mail`
--

LOCK TABLES `mensajero_mail` WRITE;
/*!40000 ALTER TABLE `mensajero_mail` DISABLE KEYS */;
INSERT INTO `mensajero_mail` VALUES (1,1,'2020-07-24 00:00:00',1,'Incumplimiento IWOS',1,'incumplimiento_iwos'),(3,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jupiter Barrera',2,'usuario_1'),(4,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Pablo Zaragoza',2,'usuario_2'),(5,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Enrique Castillo',2,'usuario_3'),(6,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario  enrique  Campos',2,'usuario_9'),(7,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario prueba 1',2,'usuario_10'),(8,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jessica Najar',2,'usuario_11'),(9,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jupiter 1',2,'usuario_12'),(10,NULL,'2020-07-27 10:56:51',1,'Mensajes usuario Berenice Salazar',2,'usuario_13'),(11,NULL,'2020-08-10 10:50:55',1,'Mensajes usuario Jupiter Barrera',2,'usuario_14'),(12,1,'2020-10-13 11:18:19',1,'Prueba',1,'prueba_1'),(13,1,'2020-10-13 13:06:14',1,'Prueba 2',1,'prueba_2'),(14,1,'2020-10-13 16:25:50',1,'SGI',1,'sgi'),(15,1,'2020-10-13 16:26:02',1,'TI',1,'ti');
/*!40000 ALTER TABLE `mensajero_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajero_notificaciones`
--

DROP TABLE IF EXISTS `mensajero_notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajero_notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tipo` int(10) unsigned NOT NULL,
  `clave` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_52E8A0806B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_52E8A0806B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajero_notificaciones`
--

LOCK TABLES `mensajero_notificaciones` WRITE;
/*!40000 ALTER TABLE `mensajero_notificaciones` DISABLE KEYS */;
INSERT INTO `mensajero_notificaciones` VALUES (1,1,'2020-07-24 00:00:00',1,'Incumplimiento IWOS',1,'incumplimiento_iwos'),(3,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jupiter Barrera',2,'usuario_1'),(4,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Pablo Zaragoza',2,'usuario_2'),(5,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Enrique Castillo',2,'usuario_3'),(6,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario  enrique  Campos',2,'usuario_9'),(7,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario prueba 1',2,'usuario_10'),(8,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jessica Najar',2,'usuario_11'),(9,NULL,'2020-07-27 10:41:51',1,'Mensajes usuario Jupiter 1',2,'usuario_12'),(10,NULL,'2020-07-27 10:56:51',1,'Mensajes usuario Berenice Salazar',2,'usuario_13'),(11,NULL,'2020-08-10 10:50:55',1,'Mensajes usuario Jupiter Barrera',2,'usuario_14'),(12,1,'2020-10-13 11:18:19',1,'Prueba',1,'prueba_1'),(13,1,'2020-10-13 13:06:14',1,'Prueba 2',1,'prueba_2'),(14,1,'2020-10-13 16:25:50',1,'SGI',1,'sgi'),(15,1,'2020-10-13 16:26:02',1,'TI',1,'ti');
/*!40000 ALTER TABLE `mensajero_notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas`
--

DROP TABLE IF EXISTS `metas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `meta_predefinida` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `objetivo_semanal` decimal(10,2) NOT NULL,
  `objetivo_mensual` decimal(10,2) NOT NULL,
  `puntuacion` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL,
  `responsable` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4D6AF93C10174714` (`division`),
  KEY `IDX_4D6AF93C457CA3A9` (`unidad_negocio`),
  KEY `IDX_4D6AF93C6B4CBDDB` (`usuario_mod`),
  KEY `IDX_4D6AF93CB951FD2C` (`meta_predefinida`),
  KEY `IDX_4D6AF93C52520D07` (`responsable`),
  CONSTRAINT `FK_4D6AF93C10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_4D6AF93C457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_4D6AF93C52520D07` FOREIGN KEY (`responsable`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_4D6AF93C6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_4D6AF93CB951FD2C` FOREIGN KEY (`meta_predefinida`) REFERENCES `metas_predefinidas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas`
--

LOCK TABLES `metas` WRITE;
/*!40000 ALTER TABLE `metas` DISABLE KEYS */;
INSERT INTO `metas` VALUES (1,1,1,1,1,'Meta Nuevos Prospectos','2020-06-19 00:00:00',8.00,32.00,0.00,1,1),(2,2,1,1,1,'Meta Precalificar','2020-06-19 00:00:00',5.00,20.00,0.00,1,1),(3,3,1,1,1,'Meta Presentar','2020-06-19 00:00:00',2.00,10.00,0.00,1,1),(4,4,1,1,1,'Meta Cierre','2020-06-19 00:00:00',1.00,4.00,0.00,1,1),(5,5,1,1,1,'Meta Corazonadas','2020-06-19 00:00:00',1.00,4.00,0.00,1,1),(6,6,1,1,1,'Meta Prospeccion de Venta','2020-06-19 00:00:00',11000.00,45000.00,0.00,1,1),(7,1,3,5,1,' Koolibti Prospectacion','2020-06-22 11:10:49',5.00,20.00,0.00,1,1),(8,2,4,5,1,'Autorizado','2020-06-22 16:30:37',10.00,40.00,0.00,1,1),(9,1,3,5,1,' Prospeccion Koolibri','2020-09-22 13:49:00',7.00,21.00,0.00,1,2),(10,1,3,5,2,' Prospeccion Koolibri','2020-09-22 12:57:49',5.00,20.00,0.00,1,2),(11,1,1,1,2,'Prospeccion A&T SORT','2020-09-22 13:30:25',10.00,40.00,0.00,1,2),(12,1,4,5,1,'Prospeccion Alcon','2020-09-22 15:09:13',20.00,5.00,0.00,1,2);
/*!40000 ALTER TABLE `metas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_predefinidas`
--

DROP TABLE IF EXISTS `metas_predefinidas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `metas_predefinidas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `modulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tipo_valor` int(11) NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CD9DF2CA6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_CD9DF2CA6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_predefinidas`
--

LOCK TABLES `metas_predefinidas` WRITE;
/*!40000 ALTER TABLE `metas_predefinidas` DISABLE KEYS */;
INSERT INTO `metas_predefinidas` VALUES (1,1,'Prospectar','MapeoDeVentas',0,'2020-06-19 11:08:58',1),(2,1,'Precalificar','MapeoDeVentas',0,'2020-06-19 11:09:15',1),(3,1,'Presentar-certidumbre','MapeoDeVentas',0,'2020-06-19 11:09:29',1),(4,1,'Cierre','MapeoDeVentas',0,'2020-06-19 11:09:35',1),(5,1,'Corazonadas','MapeoDeVentas',0,'2020-06-19 11:10:03',1),(6,1,'Prospección de Venta','MapeoDeVentas',2,'2020-06-19 11:10:19',1);
/*!40000 ALTER TABLE `metas_predefinidas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_cierre`
--

DROP TABLE IF EXISTS `mp_cierre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_cierre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapeo` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `fecha_cita` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `rfq` int(11) NOT NULL,
  `tipo_proyecto` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `numero_personal` int(11) NOT NULL,
  `tipo_personal` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `horas_dia` int(11) NOT NULL,
  `jornada` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL,
  `periodo` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `duracion` int(11) NOT NULL,
  `monto_total` decimal(10,2) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_53F627F7B56C5FFC` (`mapeo`),
  KEY `IDX_53F627F79797982E` (`vendedor`),
  CONSTRAINT `FK_53F627F79797982E` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_53F627F7B56C5FFC` FOREIGN KEY (`mapeo`) REFERENCES `mp_proceso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_cierre`
--

LOCK TABLES `mp_cierre` WRITE;
/*!40000 ALTER TABLE `mp_cierre` DISABLE KEYS */;
INSERT INTO `mp_cierre` VALUES (1,7,1,'2020-05-29 00:00:00','Ninguno',0,0,NULL,0,NULL,0,NULL,NULL,NULL,0,NULL,'2020-06-17 10:50:57'),(2,7,1,'2020-05-29 00:00:00','Ninguno 2',1,0,NULL,0,NULL,0,NULL,NULL,NULL,0,NULL,'2020-06-17 10:50:57'),(3,3,1,'2020-06-10 00:00:00','La ultima!',1,0,NULL,0,NULL,0,NULL,NULL,NULL,0,NULL,'2020-06-17 10:50:57'),(4,8,1,'2020-06-10 00:00:00','',1,0,NULL,0,NULL,0,NULL,NULL,NULL,0,NULL,'2020-06-17 10:50:57'),(5,12,1,'2020-06-12 00:00:00','',1,1551,'Eventual',5,'Inspector',10,'Lunes a Viernes',80.00,'Por Hora',15,8000.00,'2020-06-17 10:50:57'),(7,18,12,'2020-07-09 00:00:00','',1,1,'Eventual',0,'',0,'',0.00,'',15,200.00,'2020-07-09 16:38:58');
/*!40000 ALTER TABLE `mp_cierre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_precalificar`
--

DROP TABLE IF EXISTS `mp_precalificar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_precalificar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapeo` int(11) DEFAULT NULL,
  `status` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `justificacion` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `moneda` varchar(5) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_precalificacion` datetime NOT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `costo_actual` decimal(10,2) DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `acciones` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_DADEA057CB86F22A` (`servicio`),
  KEY `IDX_DADEA0579797982E` (`vendedor`),
  KEY `IDX_DADEA057B56C5FFC` (`mapeo`),
  CONSTRAINT `FK_DADEA0579797982E` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_DADEA057B56C5FFC` FOREIGN KEY (`mapeo`) REFERENCES `mp_proceso` (`id`),
  CONSTRAINT `FK_DADEA057CB86F22A` FOREIGN KEY (`servicio`) REFERENCES `servicios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_precalificar`
--

LOCK TABLES `mp_precalificar` WRITE;
/*!40000 ALTER TABLE `mp_precalificar` DISABLE KEYS */;
INSERT INTO `mp_precalificar` VALUES (1,3,'WIP','En Proceso\n','Pendiente',1,'MXN','2020-05-28 00:00:00',1,12.00,0,NULL,'2020-06-17 10:50:57'),(2,3,'SI','Posible Proyecto','Pendiente',1,'MXN','2020-05-28 00:00:00',1,24.00,0,NULL,'2020-06-17 10:50:57'),(3,4,'WIP','En Proceso\n','Pendiente',1,'MXN','2020-05-28 00:00:00',1,12.00,0,NULL,'2020-06-17 10:50:57'),(4,4,'NO','Costo','Pendiente',1,'MXN','2020-05-28 00:00:00',1,12.00,0,NULL,'2020-06-17 10:50:57'),(5,7,'WIP','Hola',' hola 2',2,'MXN','2020-06-10 00:00:00',1,50.00,1,NULL,'2020-06-17 10:50:57'),(6,1,'WIP','En Proceso','test',1,'MXN','2020-06-10 00:00:00',1,54.00,1,NULL,'2020-06-17 10:50:57'),(7,4,'WIP','En Proceso','si',1,'MXN','2020-06-10 00:00:00',1,12.00,0,NULL,'2020-06-17 10:50:57'),(10,8,'WIP','En Proceso','',1,'MXN','2020-06-10 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(11,8,'SI','Necesidad actual','',1,'MXN','2020-06-10 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(12,2,'WIP','En Proceso','',1,'USD','2020-06-11 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(14,2,'NO','No usan el servicio','',1,'USD','2020-06-11 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(16,10,'SI','Necesidad actual','',1,'USD','2020-06-11 00:00:00',1,7.00,0,NULL,'2020-06-17 10:50:57'),(17,11,'WIP','En Proceso','',1,'MXN','2020-06-11 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(18,11,'SI','Licitación','',1,'MXN','2020-06-11 00:00:00',1,50.00,0,NULL,'2020-06-17 10:50:57'),(19,12,'WIP','En Proceso','',1,'','2020-06-12 00:00:00',1,0.00,0,NULL,'2020-06-17 10:50:57'),(20,13,'WIP','En Proceso','',1,'','2020-06-12 00:00:00',1,0.00,0,NULL,'2020-06-17 10:50:57'),(21,12,'SI','Posible Proyecto','',1,'','2020-06-12 00:00:00',1,0.00,0,NULL,'2020-06-17 10:50:57'),(22,13,'SI','Posible Proyecto','',45,'','2020-06-17 00:00:00',1,0.00,0,NULL,'2020-06-17 10:50:57'),(23,18,'SI','Posible Proyecto','',1,'','2020-07-09 00:00:00',12,0.00,0,'Llamada Telefónica','2020-07-09 16:35:25'),(24,21,'SI','Posible Proyecto','',37,'','2020-07-27 00:00:00',1,0.00,1,'Llamada Telefónica','2020-07-27 15:01:50'),(25,19,'WIP','En Proceso','una semana',2,'','2020-07-27 00:00:00',1,0.00,1,'Llamada Telefónica','2020-07-27 15:03:45'),(26,20,'NO','No usan el servicio','',23,'','2020-07-27 00:00:00',1,0.00,1,'Envío Presentación','2020-07-27 15:04:48');
/*!40000 ALTER TABLE `mp_precalificar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_presentar`
--

DROP TABLE IF EXISTS `mp_presentar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_presentar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mapeo` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `tipo_presentacion` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `acciones` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `logros` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_seguimiento` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `activo` int(11) NOT NULL DEFAULT 1,
  `valor_confianza` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `corazonada` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'MEDIUM',
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2AC59FDDB56C5FFC` (`mapeo`),
  KEY `IDX_2AC59FDD9797982E` (`vendedor`),
  CONSTRAINT `FK_2AC59FDD9797982E` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_2AC59FDDB56C5FFC` FOREIGN KEY (`mapeo`) REFERENCES `mp_proceso` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_presentar`
--

LOCK TABLES `mp_presentar` WRITE;
/*!40000 ALTER TABLE `mp_presentar` DISABLE KEYS */;
INSERT INTO `mp_presentar` VALUES (1,5,1,'Email - Compra urgente','Envío Presentación','Próxima Cita','2020-05-28 00:00:00','Ninguno',1,NULL,'COLD','2020-06-17 10:50:57'),(2,3,1,'Email - Compra urgente','Llamada Telefónica','Alta Proveedor','2020-06-10 00:00:00','my test',0,NULL,'WARM','2020-06-17 10:50:57'),(3,8,1,'Email - Compra Programada','Envío Presentación','Próxima Cita','2020-06-10 00:00:00','',0,NULL,'DECLINADO','2020-06-17 10:50:57'),(4,8,1,'Email - Compra Programada','Envío Presentación','Próxima Cita','2020-06-10 00:00:00','Se cancela',0,NULL,'WARM','2020-06-17 10:50:57'),(7,10,1,'Email - Compra urgente','Envío de Cotización','Solicita Cotización','2020-06-11 00:00:00','',0,NULL,'CERRADO','2020-06-17 10:50:57'),(8,10,1,'Email - Compra urgente','Envío de Cotización','Cierre de Negocio','2020-06-11 00:00:00','',1,NULL,'HOT','2020-06-17 10:50:57'),(9,11,1,'Presentación Presencial','Envío Presentación','Próxima Cita','2020-06-11 00:00:00','',0,NULL,'WARM','2020-06-17 10:50:57'),(10,11,1,'Presentación Presencial','Envío de Cotización','Solicita Cotización','2020-06-11 00:00:00','',1,NULL,'WARM','2020-06-17 10:50:57'),(11,12,1,'Email - Compra Programada','Llamada Telefónica','Próxima Cita','2020-06-12 00:00:00','',0,'Correo Electrónico','WARM','2020-06-17 10:50:57'),(12,13,1,'Email - Compra urgente','Llamada Telefónica','Alta Proveedor','2020-06-17 00:00:00','',0,'Whatsapp','HOT','2020-06-17 17:04:32'),(13,13,1,'Licitación','Llamada Telefónica','Alta Proveedor','2020-06-17 00:00:00','dddd',1,'Correo Electrónico','WARM','2020-06-17 17:08:17'),(14,18,12,'Email - Compra urgente','Llamada Telefónica','Más Información','2020-07-09 00:00:00','',0,'Whatsapp','CERRADO','2020-07-09 16:35:51'),(15,2,1,'Email - Compra Programada','Llamada Telefónica','Próxima Cita','2020-07-27 00:00:00','',1,'Whatsapp','HOT','2020-07-27 15:02:10');
/*!40000 ALTER TABLE `mp_presentar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mp_proceso`
--

DROP TABLE IF EXISTS `mp_proceso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mp_proceso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `empresa` int(11) DEFAULT NULL,
  `prospecto` int(11) DEFAULT NULL,
  `vendedor` int(11) DEFAULT NULL,
  `tecnica` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_prospeccion` datetime NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `etapa` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `locacion` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `monto_estimado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B4465EAE10174714` (`division`),
  KEY `IDX_B4465EAE457CA3A9` (`unidad_negocio`),
  KEY `IDX_B4465EAEB8D75A50` (`empresa`),
  KEY `IDX_B4465EAE21725049` (`prospecto`),
  KEY `IDX_B4465EAE9797982E` (`vendedor`),
  CONSTRAINT `FK_B4465EAE10174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_B4465EAE21725049` FOREIGN KEY (`prospecto`) REFERENCES `prospectos` (`id`),
  CONSTRAINT `FK_B4465EAE457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_B4465EAE9797982E` FOREIGN KEY (`vendedor`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_B4465EAEB8D75A50` FOREIGN KEY (`empresa`) REFERENCES `empresas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mp_proceso`
--

LOCK TABLES `mp_proceso` WRITE;
/*!40000 ALTER TABLE `mp_proceso` DISABLE KEYS */;
INSERT INTO `mp_proceso` VALUES (1,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-05-28 00:00:00','Ninguno','PRECALIFICAR',NULL,500.00),(2,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-07-27 15:02:10','Ninguno','PRESENTAR-CERTIDUMBRE',NULL,500.00),(3,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-05-28 00:00:00','Ninguno','CIERRE',NULL,500.00),(4,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-05-28 00:00:00','Ninguno','PRECALIFICAR',NULL,500.00),(5,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-05-28 00:00:00','Ninguno','PRESENTAR-CERTIDUMBRE',NULL,500.00),(7,1,1,1,1,1,'Puerta fría (Cambaceo)','2020-05-28 00:00:00','2020-05-28 00:00:00','Ninguno','CIERRE',NULL,500.00),(8,4,1,3,5,1,'CRM, ERP datos de la empresa','2020-06-10 00:00:00','2020-06-10 22:47:52','','CIERRE',NULL,500.00),(10,1,1,3,6,1,'Prospección por Networking','2020-06-11 00:00:00','2020-06-11 12:18:39','','PRESENTAR-CERTIDUMBRE',NULL,500.00),(11,4,1,7,8,1,'CRM, ERP datos de la empresa','2020-06-11 00:00:00','2020-06-11 12:24:33','','PRESENTAR-CERTIDUMBRE',NULL,500.00),(12,3,5,5,7,1,'CRM, ERP datos de la empresa','2020-06-12 00:00:00','2020-06-12 09:26:45','','CIERRE',NULL,500.00),(13,5,5,7,8,1,'Prospección por Email','2020-06-12 00:00:00','2020-06-17 17:08:17','','PRESENTAR-CERTIDUMBRE',NULL,50000.00),(14,3,5,3,5,1,'Prospección por Networking','2020-06-03 00:00:00','2020-06-12 09:59:24','','PROSPECTAR',NULL,500.00),(15,1,2,1,1,1,'Prospección por Email','2020-06-17 00:00:00','2020-06-17 10:50:57','','PROSPECTAR','Saltillo coahuila',500.00),(16,2,2,1,1,3,'Puerta fría (Cambaceo)','2020-06-19 00:00:00','2020-06-19 09:36:31','','PROSPECTAR','Saltillo coahuila',8000.00),(17,2,1,13,10,1,'Puerta fría (Cambaceo)','2020-07-09 00:00:00','2020-07-09 15:45:57','','PROSPECTAR','Saltillo coahuila',0.00),(18,1,1,13,10,12,'Puerta fría (Cambaceo)','2020-07-09 00:00:00','2020-07-09 16:38:58','','CIERRE','Saltillo coahuila',0.00),(19,1,1,1,1,1,'CRM, ERP datos de la empresa','2020-07-27 00:00:00','2020-07-27 15:03:44','Testing','PRECALIFICAR','Saltillo coahuila',0.00),(20,3,5,3,9,1,'Puerta fría (Cambaceo)','2020-07-27 00:00:00','2020-07-27 15:04:48','','PRECALIFICAR','Saltillo coahuila',0.00),(21,4,5,1,1,1,'Búsqueda por internet','2020-07-27 00:00:00','2020-07-27 15:01:49','test','PRECALIFICAR','Saltillo coahuila',0.00);
/*!40000 ALTER TABLE `mp_proceso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificaciones`
--

DROP TABLE IF EXISTS `notificaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notificaciones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `destinatario` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo` int(11) NOT NULL,
  `titulo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `mensaje` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `enlace` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_lectura` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_6FFCB216B4CBDDB` (`usuario_mod`),
  KEY `IDX_6FFCB21A7399187` (`destinatario`),
  CONSTRAINT `FK_6FFCB216B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_6FFCB21A7399187` FOREIGN KEY (`destinatario`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificaciones`
--

LOCK TABLES `notificaciones` WRITE;
/*!40000 ALTER TABLE `notificaciones` DISABLE KEYS */;
INSERT INTO `notificaciones` VALUES (1,1,1,'2020-07-24 15:21:44',0,1,'Evento de prueba 1','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(2,1,1,'2020-07-24 15:21:44',0,1,'Evento de prueba 2','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(3,1,1,'2020-07-24 15:21:44',0,1,'Evento de prueba 3','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(4,1,1,'2020-07-24 18:26:37',0,1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(5,1,1,'2020-07-24 18:26:37',0,1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(6,1,1,'2020-07-24 18:26:37',0,1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(7,1,1,'2020-07-24 18:26:37',0,1,'Evento de prueba','Este es un evento de prueba que voy a usar','https://erp.grupozeu.com','2020-07-24 00:00:00'),(8,1,1,'2020-07-24 18:26:37',0,1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com','2020-07-24 00:00:00'),(9,1,1,'2020-07-24 18:26:37',0,1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com','2020-07-24 00:00:00'),(10,1,1,'2020-07-24 18:26:37',0,1,'Incumplimiento en IWOS','Este es un evento de prueba del incumplimiento de IWOS','https://erp.grupozeu.com','2020-07-24 00:00:00'),(11,1,1,'2020-07-27 08:25:13',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-07-27 00:00:00'),(12,1,1,'2020-07-27 10:56:17',0,1,'Recordatorio Cita','Este es un evento de prueba de recordatorio','https://erp.grupozeu.com','2020-07-27 00:00:00'),(13,1,1,'2020-07-27 12:01:24',0,1,'Recortdatorio de Prueba','Descripción de Prueba','https://erp.grupozeu.com','2020-07-27 00:00:00'),(14,1,1,'2020-07-27 15:06:10',0,1,'Recordatorio de Seguimiento','Dar seguimiento a ACTIVOS Martinez de Prueba 2','https://erp.grupozeu.com','2020-07-27 00:00:00'),(15,1,1,'2020-07-27 15:06:10',0,1,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','https://erp.grupozeu.com','2020-07-27 00:00:00'),(16,1,1,'2020-07-27 15:06:10',0,1,'Recordatorio de Seguimiento','Dar seguimiento a Pablo Zaragoza de Prueba 1','https://erp.grupozeu.com','2020-07-27 00:00:00'),(17,1,1,'2020-07-28 09:45:50',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-07-28 00:00:00'),(18,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-08-05 00:00:00'),(19,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-08-05 00:00:00'),(20,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-08-05 00:00:00'),(21,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 50.00','https://erp.grupozeu.com','2020-08-05 00:00:00'),(22,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com','2020-08-05 00:00:00'),(23,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com','2020-08-05 00:00:00'),(24,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com','2020-08-05 00:00:00'),(25,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com','2020-08-05 00:00:00'),(26,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com/?Page/7/formulario/58','2020-08-05 00:00:00'),(27,1,1,'2020-08-06 17:59:43',0,1,'Incumplimiento en IWOS: Encuesta de satisfaccion','Se detecto un incumplimiento el rango aceptable es: 70.00 y el resultado obtenido es: 66.67','https://erp.grupozeu.com/?Page/7/formulario/59','2020-08-05 00:00:00'),(28,1,1,'2020-09-25 09:59:27',0,1,'Incumplimiento en IWOS: Promocion','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 0','https://erp.grupozeu.com/?Page/4/formulario/61','2020-09-25 00:00:00'),(29,1,1,'2020-09-25 09:59:27',0,1,'Incumplimiento en IWOS: Promocion','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 0','https://erp.grupozeu.com/?Page/4/formulario/62','2020-09-25 00:00:00'),(30,1,1,'2020-09-25 15:36:34',0,1,'prueba','','https://erp.grupozeu.com','2020-09-25 00:00:00'),(31,NULL,1,'2020-09-25 15:41:37',1,1,'prueba','','https://erp.grupozeu.com',NULL),(32,NULL,1,'2020-09-25 15:43:43',1,1,'prueba','','https://erp.grupozeu.com',NULL),(33,NULL,1,'2020-09-30 09:39:00',1,1,'Incumplimiento en IWOS: Mi Prueba 1','Se detecto un incumplimiento el rango aceptable es: 80.00 y el resultado obtenido es: 71.88','https://erp.grupozeu.com/?Page/1/formulario/63',NULL);
/*!40000 ALTER TABLE `notificaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos`
--

DROP TABLE IF EXISTS `permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `erp` int(11) DEFAULT NULL,
  `nivel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C440BE3FC51BA91` (`erp`),
  CONSTRAINT `FK_C440BE3FC51BA91` FOREIGN KEY (`erp`) REFERENCES `erps` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos`
--

LOCK TABLES `permisos` WRITE;
/*!40000 ALTER TABLE `permisos` DISABLE KEYS */;
INSERT INTO `permisos` VALUES (1,1,'200','0000-00-00 00:00:00'),(2,1,'200','0000-00-00 00:00:00'),(3,1,'200','0000-00-00 00:00:00'),(4,1,'1','2020-06-22 14:50:44'),(5,1,'1','2020-06-22 15:23:09'),(6,1,'1','2020-06-22 15:34:08'),(7,1,'1','2020-07-01 17:15:53'),(8,1,'1','2020-07-09 16:18:56'),(9,1,'1','2020-07-27 10:56:50'),(10,1,'1','2020-08-10 10:50:55');
/*!40000 ALTER TABLE `permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permisos_roles`
--

DROP TABLE IF EXISTS `permisos_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `permisos_roles` (
  `permiso_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`permiso_id`,`role_id`),
  KEY `IDX_C66AAC686CEFAD37` (`permiso_id`),
  KEY `IDX_C66AAC68D60322AC` (`role_id`),
  CONSTRAINT `FK_C66AAC686CEFAD37` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  CONSTRAINT `FK_C66AAC68D60322AC` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permisos_roles`
--

LOCK TABLES `permisos_roles` WRITE;
/*!40000 ALTER TABLE `permisos_roles` DISABLE KEYS */;
INSERT INTO `permisos_roles` VALUES (1,1),(1,2),(2,1),(2,3),(3,1),(3,3),(4,1),(5,1),(6,1),(7,1),(8,1),(8,4),(9,1),(10,1);
/*!40000 ALTER TABLE `permisos_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prospectos`
--

DROP TABLE IF EXISTS `prospectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prospectos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `empresa_id` int(11) DEFAULT NULL,
  `nombre` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `apellidos` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `correo` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `idioma` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `celular` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `telefono` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `puesto` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `departamento` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `comentarios` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `correo_personal` varchar(80) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `telefono_personal` varchar(80) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_cumpleanios` datetime NOT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_142F446F77040BC9` (`correo`),
  KEY `IDX_142F446F521E1991` (`empresa_id`),
  KEY `IDX_142F446F6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_142F446F521E1991` FOREIGN KEY (`empresa_id`) REFERENCES `empresas` (`id`),
  CONSTRAINT `FK_142F446F6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prospectos`
--

LOCK TABLES `prospectos` WRITE;
/*!40000 ALTER TABLE `prospectos` DISABLE KEYS */;
INSERT INTO `prospectos` VALUES (1,1,1,'Pablo','Zaragoza','pzaragoza@atsorting.com','ES','8442463678','8442463678','CEO','Dirección','2020-06-17 17:40:59','Ninguno','pablo@test.com','555555','1988-01-20 00:00:00',1),(5,1,3,'Enrique','Castillo','pzaragoza@atcorp.mx','Español','8442463678','8442463678','CEO','Dirección','2020-05-28 00:00:00','Ninguno','',NULL,'0000-00-00 00:00:00',1),(6,1,3,'Jupiter','Barrera','jupiter.barrera@atcorp1.mx','ES',NULL,NULL,'Desarrollador','TI','2020-06-16 15:08:28','otra nota','',NULL,'0000-00-00 00:00:00',1),(7,1,5,'Daniel','Campos','dcampos@prueba4.com','ES',NULL,NULL,'Desarrollador','OPERACIONES','2020-06-16 15:09:41','Prueba','',NULL,'0000-00-00 00:00:00',1),(8,1,6,'daniel','Campos','dcampos@prueba5.com','ES','8441463678','8444152372','Desarrollador','OPERACIONES','2020-07-07 16:45:10','','','','2020-07-07 16:45:10',1),(9,1,3,'ACTIVOS','Martinez','test_use1r@atcorp.mx','EN','8441463678','8442463678','Desarrollador','TI','2020-06-17 08:59:55','','',NULL,'0000-00-00 00:00:00',1),(10,1,13,'daniel','Perez','test_user@atcorp.mx','ES','8441463678','8442463678','Desarrollador','OPERACIONES','2020-07-09 15:45:44','','pablo@test.com','','2020-07-09 15:45:44',1);
/*!40000 ALTER TABLE `prospectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipientes_mail`
--

DROP TABLE IF EXISTS `recipientes_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipientes_mail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `mensajero_id` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo_recipiente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_A6A148416B4CBDDB` (`usuario_mod`),
  KEY `IDX_A6A14841F8423F9F` (`mensajero_id`),
  KEY `IDX_A6A148412265B05D` (`usuario`),
  CONSTRAINT `FK_A6A148412265B05D` FOREIGN KEY (`usuario`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_A6A148416B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_A6A14841F8423F9F` FOREIGN KEY (`mensajero_id`) REFERENCES `mensajero_mail` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipientes_mail`
--

LOCK TABLES `recipientes_mail` WRITE;
/*!40000 ALTER TABLE `recipientes_mail` DISABLE KEYS */;
INSERT INTO `recipientes_mail` VALUES (2,1,1,3,'2020-07-24 00:00:00',1,1),(3,NULL,3,1,'2020-07-27 10:41:51',1,1),(4,NULL,4,2,'2020-07-27 10:41:51',1,1),(5,NULL,5,3,'2020-07-27 10:41:51',1,1),(6,NULL,6,9,'2020-07-27 10:41:51',1,1),(7,NULL,7,10,'2020-07-27 10:41:51',1,1),(8,NULL,8,11,'2020-07-27 10:41:51',1,1),(9,NULL,9,12,'2020-07-27 10:41:51',1,1),(10,NULL,10,13,'2020-07-27 10:56:51',1,1),(11,NULL,11,14,'2020-08-10 10:50:55',1,1),(13,1,12,2,'2020-10-13 11:30:25',1,1),(21,1,14,2,'2020-10-13 16:26:07',1,1),(22,1,15,1,'2020-10-13 16:26:13',1,1),(23,1,15,3,'2020-10-13 16:26:18',1,1);
/*!40000 ALTER TABLE `recipientes_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipientes_notificacion`
--

DROP TABLE IF EXISTS `recipientes_notificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipientes_notificacion` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `mensajero_id` int(11) DEFAULT NULL,
  `usuario` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo_recipiente` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_639B28EE6B4CBDDB` (`usuario_mod`),
  KEY `IDX_639B28EEF8423F9F` (`mensajero_id`),
  KEY `IDX_639B28EE2265B05D` (`usuario`),
  CONSTRAINT `FK_639B28EE2265B05D` FOREIGN KEY (`usuario`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_639B28EE6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_639B28EEF8423F9F` FOREIGN KEY (`mensajero_id`) REFERENCES `mensajero_notificaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipientes_notificacion`
--

LOCK TABLES `recipientes_notificacion` WRITE;
/*!40000 ALTER TABLE `recipientes_notificacion` DISABLE KEYS */;
INSERT INTO `recipientes_notificacion` VALUES (1,1,1,1,'2020-07-24 00:00:00',1,1),(2,NULL,3,1,'2020-07-27 10:41:51',1,1),(3,NULL,4,2,'2020-07-27 10:41:51',1,1),(4,NULL,5,3,'2020-07-27 10:41:51',1,1),(5,NULL,6,9,'2020-07-27 10:41:51',1,1),(6,NULL,7,10,'2020-07-27 10:41:51',1,1),(7,NULL,8,11,'2020-07-27 10:41:51',1,1),(8,NULL,9,12,'2020-07-27 10:41:51',1,1),(9,NULL,10,13,'2020-07-27 10:56:51',1,1),(10,NULL,11,14,'2020-08-10 10:50:55',1,1),(11,1,12,1,'2020-10-13 11:30:04',1,1),(12,1,12,2,'2020-10-13 11:30:25',1,1),(13,1,1,11,'2020-10-13 13:08:35',1,1),(14,1,1,13,'2020-10-13 14:20:06',1,1),(15,1,1,9,'2020-10-13 14:21:06',1,1),(16,1,1,13,'2020-10-13 14:22:24',1,1),(17,1,1,9,'2020-10-13 14:22:57',1,1),(18,1,1,2,'2020-10-13 14:23:35',1,1),(19,1,1,10,'2020-10-13 14:23:38',1,1),(20,1,14,2,'2020-10-13 16:26:07',1,1),(21,1,15,1,'2020-10-13 16:26:13',1,1),(22,1,15,3,'2020-10-13 16:26:18',1,1);
/*!40000 ALTER TABLE `recipientes_notificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfq_habilidad`
--

DROP TABLE IF EXISTS `rfq_habilidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfq_habilidad` (
  `id_rfq` int(11) NOT NULL,
  `id_habilidad` int(11) NOT NULL,
  PRIMARY KEY (`id_rfq`,`id_habilidad`),
  KEY `IDX_CE23280A223500FD` (`id_rfq`),
  KEY `IDX_CE23280ACD1F96D0` (`id_habilidad`),
  CONSTRAINT `FK_CE23280A223500FD` FOREIGN KEY (`id_rfq`) REFERENCES `rfqs` (`id`),
  CONSTRAINT `FK_CE23280ACD1F96D0` FOREIGN KEY (`id_habilidad`) REFERENCES `habilidades` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfq_habilidad`
--

LOCK TABLES `rfq_habilidad` WRITE;
/*!40000 ALTER TABLE `rfq_habilidad` DISABLE KEYS */;
INSERT INTO `rfq_habilidad` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `rfq_habilidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfqs`
--

DROP TABLE IF EXISTS `rfqs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfqs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `division` int(11) DEFAULT NULL,
  `unidad_negocio` int(11) DEFAULT NULL,
  `usuario_alta` int(11) DEFAULT NULL,
  `usuario_autorizacion` int(11) DEFAULT NULL,
  `mapeo_ventas` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `tipo` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `duracion` int(11) DEFAULT NULL,
  `fecha_arranque` datetime DEFAULT NULL,
  `fecha_fin` datetime DEFAULT NULL,
  `periodo_facturacion` int(11) DEFAULT NULL,
  `dias_credito` int(11) DEFAULT NULL,
  `servicio_detalles` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `inquietudes` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `expectativas_cliente` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `garantias` varchar(1000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `fecha_alta` datetime NOT NULL,
  `fecha_autorizacion` datetime DEFAULT NULL,
  `cliente` int(11) DEFAULT NULL,
  `contacto` int(11) DEFAULT NULL,
  `servicio` int(11) DEFAULT NULL,
  `cliente_lugar` int(11) DEFAULT NULL,
  `contacto_lugar` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_530068A86B4CBDDB` (`usuario_mod`),
  KEY `IDX_530068A810174714` (`division`),
  KEY `IDX_530068A8457CA3A9` (`unidad_negocio`),
  KEY `IDX_530068A8FB8FEA12` (`usuario_alta`),
  KEY `IDX_530068A8E95D8A0F` (`usuario_autorizacion`),
  KEY `IDX_530068A8D1DBA476` (`mapeo_ventas`),
  KEY `IDX_530068A82741493C` (`contacto`),
  KEY `IDX_530068A8CB86F22A` (`servicio`),
  KEY `IDX_530068A89AF9F79F` (`cliente_lugar`),
  KEY `IDX_530068A8FBBDD4E3` (`contacto_lugar`),
  KEY `IDX_530068A8F41C9B25` (`cliente`),
  CONSTRAINT `FK_530068A810174714` FOREIGN KEY (`division`) REFERENCES `division` (`id`),
  CONSTRAINT `FK_530068A82741493C` FOREIGN KEY (`contacto`) REFERENCES `clientes_contactos` (`id`),
  CONSTRAINT `FK_530068A8457CA3A9` FOREIGN KEY (`unidad_negocio`) REFERENCES `unidades_negocio` (`id`),
  CONSTRAINT `FK_530068A86B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_530068A89AF9F79F` FOREIGN KEY (`cliente_lugar`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FK_530068A8CB86F22A` FOREIGN KEY (`servicio`) REFERENCES `servicios` (`id`),
  CONSTRAINT `FK_530068A8D1DBA476` FOREIGN KEY (`mapeo_ventas`) REFERENCES `mp_proceso` (`id`),
  CONSTRAINT `FK_530068A8E95D8A0F` FOREIGN KEY (`usuario_autorizacion`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_530068A8F41C9B25` FOREIGN KEY (`cliente`) REFERENCES `clientes` (`id`),
  CONSTRAINT `FK_530068A8FB8FEA12` FOREIGN KEY (`usuario_alta`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_530068A8FBBDD4E3` FOREIGN KEY (`contacto_lugar`) REFERENCES `clientes_contactos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfqs`
--

LOCK TABLES `rfqs` WRITE;
/*!40000 ALTER TABLE `rfqs` DISABLE KEYS */;
INSERT INTO `rfqs` VALUES (1,1,1,1,1,NULL,18,'2020-11-04 15:37:34',1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-04 15:37:34',NULL,1,1,1,NULL,NULL),(2,1,1,1,1,NULL,18,'2020-11-19 00:00:00',1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-20 00:00:00',NULL,1,1,1,NULL,NULL),(3,1,1,1,1,2,18,'2020-11-19 00:00:00',1,'1',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2020-11-20 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `rfqs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rfqs_documentos`
--

DROP TABLE IF EXISTS `rfqs_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rfqs_documentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_mod` int(11) DEFAULT NULL,
  `rfq_id` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `tipo_documento` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comentarios` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_2FD432E26B4CBDDB` (`usuario_mod`),
  KEY `IDX_2FD432E2ABD9545F` (`rfq_id`),
  CONSTRAINT `FK_2FD432E26B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`),
  CONSTRAINT `FK_2FD432E2ABD9545F` FOREIGN KEY (`rfq_id`) REFERENCES `rfqs` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rfqs_documentos`
--

LOCK TABLES `rfqs_documentos` WRITE;
/*!40000 ALTER TABLE `rfqs_documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rfqs_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  `fecha_mod` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B63E2EC76B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_B63E2EC76B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'ROLE_USER',1,NULL,'0000-00-00 00:00:00'),(2,'ROLE_ADMIN',1,NULL,'0000-00-00 00:00:00'),(3,'ROLE_FVE_MASTER',1,NULL,'0000-00-00 00:00:00'),(4,'ROLE_FVE_MANAGER',1,NULL,'0000-00-00 00:00:00'),(5,'ROLE_FVE_ADMIN',1,1,'2020-06-18 15:53:17');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` int(11) DEFAULT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C07E802F4E10122D` (`categoria`),
  KEY `IDX_C07E802F6B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_C07E802F4E10122D` FOREIGN KEY (`categoria`) REFERENCES `categorias` (`id`),
  CONSTRAINT `FK_C07E802F6B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,1,'Inspección visual o con equipos de medición.','2020-05-28 00:00:00',1,1),(2,1,'Contención GP12, CS1, CS2','2020-05-28 00:00:00',1,1),(3,1,'Sorteos','2020-06-12 00:00:00',1,1),(4,1,'Pruebas de Funcionalidad','2020-06-12 00:00:00',1,1),(5,1,'Inspección recibo-Incoming','2020-06-12 00:00:00',1,1),(6,1,'Campañas de Calidad','2020-06-12 00:00:00',1,1),(7,2,'Retrabajos','2020-06-12 00:00:00',1,1),(8,2,'Limpieza de material','2020-06-12 00:00:00',1,1),(9,3,'Residencias Nivel Supervisor (hora o día)','2020-05-28 00:00:00',1,1),(10,3,'Residencias Nivel Técnico (hora o día)','2020-05-28 00:00:00',1,1),(11,3,'Representaciones Nivel Ingeniero','2020-06-12 00:00:00',1,1),(12,4,'Packaging (Embalaje)','2020-06-12 00:00:00',1,1),(13,4,'Etiquetado  y Secuenciado','2020-06-12 00:00:00',1,1),(14,4,'Kitting personalizado','2020-06-12 00:00:00',1,1),(15,4,'Armado de promocionales','2020-06-12 00:00:00',1,1),(16,4,'Inventario','2020-06-12 00:00:00',1,1),(17,4,'Administración de provisiones','2020-06-12 00:00:00',1,1),(18,5,'Ensamble de productos','2020-06-12 00:00:00',1,1),(19,5,'Sub-ensamble de productos','2020-06-12 00:00:00',1,1),(20,5,'Maquila de productos','2020-06-12 00:00:00',1,1),(21,5,'Maquila de Empaques','2020-06-12 00:00:00',1,1),(22,6,'Mano de obra por horas, días o semanas','2020-06-12 00:00:00',1,1),(23,7,'Seguridad Privada','2020-06-12 00:00:00',1,1),(24,8,'Mantenimiento Integral de Limpieza','2020-06-12 00:00:00',1,1),(25,9,'Transporte de personal','2020-06-12 00:00:00',1,1),(26,9,'Fletes','2020-06-12 00:00:00',1,1),(27,11,'Sanitización','2020-06-12 00:00:00',1,1),(28,11,'Desinfección','2020-06-12 00:00:00',1,1),(29,10,'Reclutamiento y Selección','2020-06-12 00:00:00',1,1),(30,10,'Tercerización de Personal Staffing ) Horas híbridas','2020-06-12 00:00:00',1,1),(31,10,'Business Process Outsourcing (BPO)','2020-06-12 00:00:00',1,1),(32,10,'Recruitment Process Outsourcing (RPO)','2020-06-12 00:00:00',1,1),(33,10,'Maquila y Timbrado de Nómina','2020-06-12 00:00:00',1,1),(34,10,'Administración de Nómina / Payroll','2020-06-12 00:00:00',1,1),(35,10,'Capacitaciones y Cursos','2020-06-12 00:00:00',1,1),(36,10,'Consulting','2020-06-12 00:00:00',1,1),(37,12,'Servicios Contables','2020-06-12 00:00:00',1,1),(38,12,'Facturación Electrónica','2020-06-12 00:00:00',1,1),(39,12,'Servicios Fiscales','2020-06-12 00:00:00',1,1),(40,12,'Administración de Seguridad Social','2020-06-12 00:00:00',1,1),(41,12,'Administración de nómina','2020-06-12 00:00:00',1,1),(42,12,'Outsourcing','2020-06-12 00:00:00',1,1),(43,12,'Gestión de Marca Comercial','2020-06-12 00:00:00',1,1),(44,12,'Capacitación y Cursos','2020-06-12 00:00:00',1,1),(45,13,'Paquete Basic Dark','2020-06-12 00:00:00',1,1),(46,13,'Paquete Medium Dark','2020-06-12 00:00:00',1,1),(47,13,'Paquete Premium Dark','2020-06-12 00:00:00',1,1),(48,13,'Pauta Digital','2020-06-12 00:00:00',1,1),(49,13,'Branding','2020-06-12 00:00:00',1,1);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades_negocio`
--

DROP TABLE IF EXISTS `unidades_negocio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades_negocio` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `acronimo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_C35090F96B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_C35090F96B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades_negocio`
--

LOCK TABLES `unidades_negocio` WRITE;
/*!40000 ALTER TABLE `unidades_negocio` DISABLE KEYS */;
INSERT INTO `unidades_negocio` VALUES (1,'Saltillo','SLW','2020-06-16 15:33:55',1,1),(2,'San Luis Potosi','SLP','2020-05-28 00:00:00',1,NULL),(3,'Bajio','BJX','2020-05-28 00:00:00',1,NULL),(4,'Monterrey','MTY','2020-05-28 00:00:00',1,NULL),(5,'Corporativo','CORP','2020-05-28 00:00:00',1,NULL),(6,'Toluca','TLC','2020-05-28 00:00:00',1,NULL);
/*!40000 ALTER TABLE `unidades_negocio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `cel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `foto` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `foto_thumb` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL,
  `ultimo_acceso` datetime NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `acronimo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `fecha_mod` datetime NOT NULL,
  `usuario_mod` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1483A5E96B4CBDDB` (`usuario_mod`),
  CONSTRAINT `FK_1483A5E96B4CBDDB` FOREIGN KEY (`usuario_mod`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jupiter','Jupiter','Barrera','jupiter.barrera@atcorp.mx','5a5b1aca61cb4bbce3fe04f986b21ec0','8442463678','','',1,'2020-05-28 19:13:54','','JB','2020-05-28 00:00:00',NULL),(2,'Pablo','Pablo','Zaragoza','pzaragoza@grupozeu.com','5aacd5a7e7a0e2b00fc39e3949fd6eca','8442463678','','',1,'2020-05-28 19:13:56','','PZ','2020-05-28 00:00:00',NULL),(3,'ecastillo','Enrique','Castillo','soporte.nivel1@atcorp.mx','0138c3fd690bf8db3c0fd702b42b3cc6','','','',1,'2020-06-18 16:03:27','','EC','2020-06-22 10:04:40',NULL),(9,'enrique1',' enrique',' Campos',' enrique.campos@atcorp.mx','e10adc3949ba59abbe56e057f20f883e',' 8441463678','','',1,'2020-06-22 15:23:09','',' EC','2020-06-22 15:23:09',NULL),(10,'Prueba','prueba','1','p1@atcorp.mx','3f1b7ccad63d40a7b4c27dda225bf941','844454545','','',1,'2020-06-22 15:34:08','','P1','2020-06-22 15:34:08',NULL),(11,'jnajarkoolibri','Jessica','Najar','jessica.najar@koolibri.mx','5c4f350a9c666e2549b00e5848eee75e','','','',1,'2020-07-01 17:15:53','','JN','2020-07-01 17:15:53',NULL),(12,'smunoz','Jupiter','1','test@test.com','827ccb0eea8a706c4c34a16891f84e7b','4442934331','','',1,'2020-07-09 16:18:56','','CO','2020-07-09 16:32:39',1),(13,'bsalazar','Berenice','Salazar','berenice.salazar@koolibri.mx','202cb962ac59075b964b07152d234b70','','','',1,'2020-07-27 10:56:50','','BS','2020-07-27 10:56:50',1),(14,'Jupiter','Jupiter','Barrera','jbarrera@grupozeu.com','5a5b1aca61cb4bbce3fe04f986b21ec0','8441463678','','',1,'2020-08-10 10:50:54','','JB','2020-08-10 10:50:54',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_permisos`
--

DROP TABLE IF EXISTS `usuarios_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_permisos` (
  `user_id` int(11) NOT NULL,
  `permiso_id` int(11) NOT NULL,
  PRIMARY KEY (`user_id`,`permiso_id`),
  KEY `IDX_FEDE47CFA76ED395` (`user_id`),
  KEY `IDX_FEDE47CF6CEFAD37` (`permiso_id`),
  CONSTRAINT `FK_FEDE47CF6CEFAD37` FOREIGN KEY (`permiso_id`) REFERENCES `permisos` (`id`),
  CONSTRAINT `FK_FEDE47CFA76ED395` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_permisos`
--

LOCK TABLES `usuarios_permisos` WRITE;
/*!40000 ALTER TABLE `usuarios_permisos` DISABLE KEYS */;
INSERT INTO `usuarios_permisos` VALUES (1,1),(2,2),(3,3),(9,5),(10,6),(11,7),(12,8),(13,9),(14,10);
/*!40000 ALTER TABLE `usuarios_permisos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-03 16:07:13
