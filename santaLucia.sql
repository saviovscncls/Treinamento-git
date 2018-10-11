-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: santaLucia
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.16.04.1

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
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `compras` (
  `codcpr` int(10) NOT NULL AUTO_INCREMENT,
  `codpro` int(4) unsigned zerofill NOT NULL DEFAULT '0000',
  `codfor` int(4) unsigned zerofill NOT NULL DEFAULT '0000',
  `valorcpr` double(13,2) NOT NULL DEFAULT '0.00',
  `qtdcpr` double(14,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`codcpr`),
  KEY `codpro` (`codpro`,`codfor`),
  KEY `codfor` (`codfor`,`codpro`),
  CONSTRAINT `compras_ibfk_1` FOREIGN KEY (`codpro`) REFERENCES `produtos` (`codprod`),
  CONSTRAINT `compras_ibfk_2` FOREIGN KEY (`codfor`) REFERENCES `fornecedores` (`codfor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,0001,0001,20.00,10.0000),(2,0003,0002,40.00,100.0000),(3,0005,0002,50.00,200.0000);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `codfor` int(4) unsigned zerofill NOT NULL DEFAULT '0000',
  `nomefor` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`codfor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (0001,'nutriama'),(0002,'Skol'),(0003,'Friboi');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `codprod` int(4) unsigned zerofill NOT NULL DEFAULT '0000',
  `nomeprod` varchar(20) NOT NULL DEFAULT '',
  `quantprod` double(8,2) DEFAULT '0.00',
  `comprar` char(1) NOT NULL DEFAULT 'n',
  PRIMARY KEY (`codprod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (0001,'oleo de oliva',12.00,'n'),(0002,'sal azul',10.00,'n'),(0003,'pimenta',2.00,'s'),(0004,'feijão',10.00,'n'),(0005,'sabonete',12.00,'n'),(0006,'alcatra',12.60,'n'),(0007,'linguiça',7.80,'n'),(0008,'alho',7.00,'n'),(0009,'cebola',9.00,'n'),(0010,'mamão',0.00,'s'),(0011,'macarrão',2.00,'s'),(0012,'molho de tomate',12.00,'n'),(0333,'açai',0.00,'n'),(0343,'Banana',0.00,'s');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-10 21:44:08
