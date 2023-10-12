-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ingweb
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `contrato`
--

DROP TABLE IF EXISTS `contrato`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contrato` (
  `id` int NOT NULL AUTO_INCREMENT,
  `contrato_tipo` varchar(255) NOT NULL,
  `contrato_fecha_inicio` date NOT NULL,
  `contrato_fecha_fin` date NOT NULL,
  `empleo_tipo` varchar(50) NOT NULL,
  `empleo_situacion` varchar(50) NOT NULL,
  `empleo_area` varchar(50) NOT NULL,
  `empleo_proyecto` varchar(50) NOT NULL,
  `empleo_departamento` varchar(50) NOT NULL,
  `empleo_cargo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contrato`
--

LOCK TABLES `contrato` WRITE;
/*!40000 ALTER TABLE `contrato` DISABLE KEYS */;
/*!40000 ALTER TABLE `contrato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cuenta_bancaria`
--

DROP TABLE IF EXISTS `cuenta_bancaria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cuenta_bancaria` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cuenta_bancaria_codigo_cci` varchar(255) DEFAULT NULL,
  `cuenta_bancaria_codigo` varchar(255) DEFAULT NULL,
  `cuenta_bancaria_banco` varchar(50) NOT NULL,
  `cuenta_bancaria_tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `cuenta_bancaria_codigo_cci` (`cuenta_bancaria_codigo_cci`),
  UNIQUE KEY `cuenta_bancaria_codigo` (`cuenta_bancaria_codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cuenta_bancaria`
--

LOCK TABLES `cuenta_bancaria` WRITE;
/*!40000 ALTER TABLE `cuenta_bancaria` DISABLE KEYS */;
/*!40000 ALTER TABLE `cuenta_bancaria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion`
--

DROP TABLE IF EXISTS `direccion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `direccion_pais` varchar(255) NOT NULL,
  `direccion_departamento` varchar(255) NOT NULL,
  `direccion_provincia` varchar(255) NOT NULL,
  `direccion_distrito` varchar(255) NOT NULL,
  `direccion_detalle` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion`
--

LOCK TABLES `direccion` WRITE;
/*!40000 ALTER TABLE `direccion` DISABLE KEYS */;
/*!40000 ALTER TABLE `direccion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudio`
--

DROP TABLE IF EXISTS `estudio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudio` (
  `id` int NOT NULL AUTO_INCREMENT,
  `estudio_estado` int NOT NULL,
  `estudio_fecha_finalizacion` date NOT NULL,
  `estudio_institucion` varchar(255) NOT NULL,
  `estudio_direccion` varchar(255) NOT NULL,
  `estudio_especializacion` varchar(255) NOT NULL,
  `estudio_situacion` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudio`
--

LOCK TABLES `estudio` WRITE;
/*!40000 ALTER TABLE `estudio` DISABLE KEYS */;
/*!40000 ALTER TABLE `estudio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examen_medico`
--

DROP TABLE IF EXISTS `examen_medico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `examen_medico` (
  `id` int NOT NULL AUTO_INCREMENT,
  `examen_medico_nombre` varchar(255) NOT NULL,
  `examen_medico_doc` varchar(255) NOT NULL,
  `examen_medico_fecha_emision` date NOT NULL,
  `examen_medico_fecha_vencimiento` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examen_medico`
--

LOCK TABLES `examen_medico` WRITE;
/*!40000 ALTER TABLE `examen_medico` DISABLE KEYS */;
/*!40000 ALTER TABLE `examen_medico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trabajador` (
  `id` varchar(16) NOT NULL,
  `usuario_id` int NOT NULL,
  `trabajador_fecha_nacimiento` date NOT NULL,
  `trabajador_ubigeo` varchar(16) NOT NULL,
  `trabajador_telefono` varchar(20) NOT NULL,
  `trabajador_sexo` varchar(10) NOT NULL,
  `trabajador_estado_civil` varchar(50) NOT NULL,
  `cuenta_bancaria_id` int NOT NULL,
  `cuenta_bancaria_id_dos` int NOT NULL,
  `direccion_id` int NOT NULL,
  `estudio_id` int NOT NULL,
  `contrato_id` int NOT NULL,
  `examen_medico_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `usuario_id` (`usuario_id`),
  KEY `cuenta_bancaria_id_dos` (`cuenta_bancaria_id_dos`),
  KEY `cuenta_bancaria_id` (`cuenta_bancaria_id`),
  KEY `direccion_id` (`direccion_id`),
  KEY `estudio_id` (`estudio_id`),
  KEY `contrato_id` (`contrato_id`),
  KEY `examen_medico_id` (`examen_medico_id`),
  CONSTRAINT `trabajador_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `trabajador_ibfk_2` FOREIGN KEY (`cuenta_bancaria_id_dos`) REFERENCES `cuenta_bancaria` (`id`),
  CONSTRAINT `trabajador_ibfk_3` FOREIGN KEY (`cuenta_bancaria_id`) REFERENCES `cuenta_bancaria` (`id`),
  CONSTRAINT `trabajador_ibfk_4` FOREIGN KEY (`direccion_id`) REFERENCES `direccion` (`id`),
  CONSTRAINT `trabajador_ibfk_5` FOREIGN KEY (`estudio_id`) REFERENCES `estudio` (`id`),
  CONSTRAINT `trabajador_ibfk_6` FOREIGN KEY (`contrato_id`) REFERENCES `contrato` (`id`),
  CONSTRAINT `trabajador_ibfk_7` FOREIGN KEY (`examen_medico_id`) REFERENCES `examen_medico` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rol` int NOT NULL,
  `usuario_nombres` varchar(255) NOT NULL,
  `usuario_apellidos` varchar(255) NOT NULL,
  `usuario_correo` varchar(255) NOT NULL,
  `usuario_contrasenia` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'ingweb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-12 14:55:38
