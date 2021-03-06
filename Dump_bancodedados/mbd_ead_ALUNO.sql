-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: mbd_ead
-- ------------------------------------------------------
-- Server version	5.7.25-0ubuntu0.16.04.2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ALUNO`
--

DROP TABLE IF EXISTS `ALUNO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ALUNO` (
  `ID_ALUNO` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `CPF` varchar(11) NOT NULL,
  `NOME` varchar(250) NOT NULL,
  `ENDERECO` varchar(250) DEFAULT NULL,
  `ESTADO` varchar(250) DEFAULT NULL,
  `MUNICIPIO` varchar(250) DEFAULT NULL,
  `TELEFONE` varchar(15) DEFAULT NULL,
  `ID_USUARIO` int(11) NOT NULL,
  PRIMARY KEY (`ID_ALUNO`,`ID_USUARIO`),
  UNIQUE KEY `CPF_UNIQUE` (`CPF`),
  KEY `fk_ALUNO_USUARIO1_idx` (`ID_USUARIO`),
  CONSTRAINT `fk_ALUNO_USUARIO1` FOREIGN KEY (`ID_USUARIO`) REFERENCES `USUARIO` (`ID_USUARIO`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ALUNO`
--

LOCK TABLES `ALUNO` WRITE;
/*!40000 ALTER TABLE `ALUNO` DISABLE KEYS */;
INSERT INTO `ALUNO` VALUES (0000000001,'12312312311','Pedro da Silva','rua a, sn','RJ','sg','21 21212121',1),(0000000002,'11111111111','Cristina Dias','rua b, sn','RJ','sg','21 21212122',2),(0000000003,'22222222222','Aluno','rua b, sn','RJ','sg','21 22222222',3);
/*!40000 ALTER TABLE `ALUNO` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-23 23:37:42
