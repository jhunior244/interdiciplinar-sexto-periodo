CREATE DATABASE  IF NOT EXISTS `aisoftware_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `aisoftware_db`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: aisoftware_db
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `atributo`
--

DROP TABLE IF EXISTS `atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atributo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributo`
--

LOCK TABLES `atributo` WRITE;
/*!40000 ALTER TABLE `atributo` DISABLE KEYS */;
/*!40000 ALTER TABLE `atributo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atributo_lista_modelo`
--

DROP TABLE IF EXISTS `atributo_lista_modelo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atributo_lista_modelo` (
  `atributo_id` bigint(20) NOT NULL,
  `lista_modelo_id` bigint(20) NOT NULL,
  KEY `FKljs82qbg6vwec0mppw6ym4nek` (`lista_modelo_id`),
  KEY `FK4ci0442ttqqke5wxe71dwmp0s` (`atributo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributo_lista_modelo`
--

LOCK TABLES `atributo_lista_modelo` WRITE;
/*!40000 ALTER TABLE `atributo_lista_modelo` DISABLE KEYS */;
/*!40000 ALTER TABLE `atributo_lista_modelo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `atributo_lista_requisito`
--

DROP TABLE IF EXISTS `atributo_lista_requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `atributo_lista_requisito` (
  `atributo_id` bigint(20) NOT NULL,
  `lista_requisito_id` bigint(20) NOT NULL,
  KEY `FKsbdt3ni2yp1ic44893sk70j5u` (`lista_requisito_id`),
  KEY `FKng6kns069ri8eqsofy5hve70q` (`atributo_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atributo_lista_requisito`
--

LOCK TABLES `atributo_lista_requisito` WRITE;
/*!40000 ALTER TABLE `atributo_lista_requisito` DISABLE KEYS */;
/*!40000 ALTER TABLE `atributo_lista_requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cidade`
--

DROP TABLE IF EXISTS `cidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cidade` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `estado_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkworrwk40xj58kevvh3evi500` (`estado_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cidade`
--

LOCK TABLES `cidade` WRITE;
/*!40000 ALTER TABLE `cidade` DISABLE KEYS */;
/*!40000 ALTER TABLE `cidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra`
--

DROP TABLE IF EXISTS `compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `entrega_id` bigint(20) DEFAULT NULL,
  `usuario_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK866oc56o279g4ornroxoopr3q` (`entrega_id`),
  KEY `FKk39qkguq7uka81tdyvhrkvppf` (`usuario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra`
--

LOCK TABLES `compra` WRITE;
/*!40000 ALTER TABLE `compra` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_lista_item`
--

DROP TABLE IF EXISTS `compra_lista_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compra_lista_item` (
  `compra_id` bigint(20) NOT NULL,
  `lista_item_id` bigint(20) NOT NULL,
  KEY `FKmayqaba7rxmuhcpqu4yu6b3q2` (`lista_item_id`),
  KEY `FK4bhrjsoa6v2t8yqun6rbgkj6v` (`compra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_lista_item`
--

LOCK TABLES `compra_lista_item` WRITE;
/*!40000 ALTER TABLE `compra_lista_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_lista_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compra_lista_kit`
--

DROP TABLE IF EXISTS `compra_lista_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `compra_lista_kit` (
  `compra_id` bigint(20) NOT NULL,
  `lista_kit_id` bigint(20) NOT NULL,
  KEY `FKdxxjbsdriu7rf5m9q2yqesw6p` (`lista_kit_id`),
  KEY `FKlwm5gv4oahifxg627tgsptpjh` (`compra_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compra_lista_kit`
--

LOCK TABLES `compra_lista_kit` WRITE;
/*!40000 ALTER TABLE `compra_lista_kit` DISABLE KEYS */;
/*!40000 ALTER TABLE `compra_lista_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entrega`
--

DROP TABLE IF EXISTS `entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entrega` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cep` varchar(255) NOT NULL,
  `data_entrega` datetime DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `rua` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entrega`
--

LOCK TABLES `entrega` WRITE;
/*!40000 ALTER TABLE `entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estado`
--

DROP TABLE IF EXISTS `estado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `estado` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estado`
--

LOCK TABLES `estado` WRITE;
/*!40000 ALTER TABLE `estado` DISABLE KEYS */;
/*!40000 ALTER TABLE `estado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagem`
--

DROP TABLE IF EXISTS `imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `imagem` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `alt` varchar(255) DEFAULT NULL,
  `caminho` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagem`
--

LOCK TABLES `imagem` WRITE;
/*!40000 ALTER TABLE `imagem` DISABLE KEYS */;
INSERT INTO `imagem` VALUES (1,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/foto-1.jpg'),(2,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/foto-2.jpg'),(3,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/foto-3.jpg'),(4,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/foto-4.jpg');
/*!40000 ALTER TABLE `imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `desconto` decimal(19,2) DEFAULT NULL,
  `descricao` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(19,2) NOT NULL,
  `marca_item_id` bigint(20) DEFAULT NULL,
  `modelo_item_id` bigint(20) DEFAULT NULL,
  `tipo_item_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKks4u8pgfp41155v1m7pb7yjlv` (`marca_item_id`),
  KEY `FK168avadkod3cdkc53l1uh9ls9` (`modelo_item_id`),
  KEY `FKrg10txwl9iabrs9noqvsn21yx` (`tipo_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_lista_imagem`
--

DROP TABLE IF EXISTS `item_lista_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `item_lista_imagem` (
  `item_id` bigint(20) NOT NULL,
  `lista_imagem_id` bigint(20) NOT NULL,
  KEY `FKfr0hka00l30j8yklfiqv7npf2` (`lista_imagem_id`),
  KEY `FK8x0vim7t0u4ev3h3cbu5kn1ie` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_lista_imagem`
--

LOCK TABLES `item_lista_imagem` WRITE;
/*!40000 ALTER TABLE `item_lista_imagem` DISABLE KEYS */;
/*!40000 ALTER TABLE `item_lista_imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit`
--

DROP TABLE IF EXISTS `kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(255) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `marca_kit_id` bigint(20) DEFAULT NULL,
  `modelo_kit_id` bigint(20) DEFAULT NULL,
  `tipo_kit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp37ejo6vooes5jffju46vdofq` (`marca_kit_id`),
  KEY `FKjbh54e4qgsav193lbknpgvse0` (`modelo_kit_id`),
  KEY `FKt6qforim8pnr9vwak0u8c57v6` (`tipo_kit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit`
--

LOCK TABLES `kit` WRITE;
/*!40000 ALTER TABLE `kit` DISABLE KEYS */;
INSERT INTO `kit` VALUES (1,NULL,4600.00,'Computador All in One Dell',1,1,1);
/*!40000 ALTER TABLE `kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_lista_imagem`
--

DROP TABLE IF EXISTS `kit_lista_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kit_lista_imagem` (
  `kit_id` bigint(20) NOT NULL,
  `lista_imagem_id` bigint(20) NOT NULL,
  KEY `FKa12hcq5hqvhclnw9sfesehkoj` (`lista_imagem_id`),
  KEY `FKk90wjwmgng8lhy8w83tcqc2pd` (`kit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_lista_imagem`
--

LOCK TABLES `kit_lista_imagem` WRITE;
/*!40000 ALTER TABLE `kit_lista_imagem` DISABLE KEYS */;
INSERT INTO `kit_lista_imagem` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `kit_lista_imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_lista_item`
--

DROP TABLE IF EXISTS `kit_lista_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `kit_lista_item` (
  `kit_id` bigint(20) NOT NULL,
  `lista_item_id` bigint(20) NOT NULL,
  KEY `FK5e540bc2iglrieypq5sltassy` (`lista_item_id`),
  KEY `FK2yd1jt7y0ycylhyv1am5ep9a8` (`kit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_lista_item`
--

LOCK TABLES `kit_lista_item` WRITE;
/*!40000 ALTER TABLE `kit_lista_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `kit_lista_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_item`
--

DROP TABLE IF EXISTS `marca_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marca_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_item`
--

LOCK TABLES `marca_item` WRITE;
/*!40000 ALTER TABLE `marca_item` DISABLE KEYS */;
INSERT INTO `marca_item` VALUES (1,'Asus'),(2,'AMD'),(3,'Intel'),(4,'Kingston'),(5,'Gigabyte');
/*!40000 ALTER TABLE `marca_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marca_kit`
--

DROP TABLE IF EXISTS `marca_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `marca_kit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_kit`
--

LOCK TABLES `marca_kit` WRITE;
/*!40000 ALTER TABLE `marca_kit` DISABLE KEYS */;
INSERT INTO `marca_kit` VALUES (1,'Dell'),(2,'HP'),(3,'Lenovo'),(4,'Apple'),(5,'Acer'),(6,'LG');
/*!40000 ALTER TABLE `marca_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_item`
--

DROP TABLE IF EXISTS `modelo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modelo_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `tipo_item_id` bigint(20) DEFAULT NULL,
  `tipo_kit_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmrlrgpdnmilmk1qny3lvl2ho1` (`tipo_item_id`),
  KEY `FKenx86o3sh2diesviqsbbywwl7` (`tipo_kit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_item`
--

LOCK TABLES `modelo_item` WRITE;
/*!40000 ALTER TABLE `modelo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_item_lista_atributo`
--

DROP TABLE IF EXISTS `modelo_item_lista_atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modelo_item_lista_atributo` (
  `modelo_item_id` bigint(20) NOT NULL,
  `lista_atributo_id` bigint(20) NOT NULL,
  KEY `FKrm3ldxybfykkpb2i69g1evt2v` (`lista_atributo_id`),
  KEY `FKppyloli3h38c6ioswanlyhv9c` (`modelo_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_item_lista_atributo`
--

LOCK TABLES `modelo_item_lista_atributo` WRITE;
/*!40000 ALTER TABLE `modelo_item_lista_atributo` DISABLE KEYS */;
/*!40000 ALTER TABLE `modelo_item_lista_atributo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_kit`
--

DROP TABLE IF EXISTS `modelo_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modelo_kit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_kit`
--

LOCK TABLES `modelo_kit` WRITE;
/*!40000 ALTER TABLE `modelo_kit` DISABLE KEYS */;
INSERT INTO `modelo_kit` VALUES (1,'Inspiron INS-5490-A30S');
/*!40000 ALTER TABLE `modelo_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisito`
--

DROP TABLE IF EXISTS `requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requisito` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `permite_maior` bit(1) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisito`
--

LOCK TABLES `requisito` WRITE;
/*!40000 ALTER TABLE `requisito` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisito_lista_atributo`
--

DROP TABLE IF EXISTS `requisito_lista_atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `requisito_lista_atributo` (
  `requisito_id` bigint(20) NOT NULL,
  `lista_atributo_id` bigint(20) NOT NULL,
  KEY `FK1j2a1u8lhiepi83k8ueflwfc9` (`lista_atributo_id`),
  KEY `FK3n6vqfwlmjur0hdnfnycn3u3s` (`requisito_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `requisito_lista_atributo`
--

LOCK TABLES `requisito_lista_atributo` WRITE;
/*!40000 ALTER TABLE `requisito_lista_atributo` DISABLE KEYS */;
/*!40000 ALTER TABLE `requisito_lista_atributo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_entrega`
--

DROP TABLE IF EXISTS `status_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `status_entrega` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_entrega`
--

LOCK TABLES `status_entrega` WRITE;
/*!40000 ALTER TABLE `status_entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `status_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_item`
--

DROP TABLE IF EXISTS `tipo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_item`
--

LOCK TABLES `tipo_item` WRITE;
/*!40000 ALTER TABLE `tipo_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_kit`
--

DROP TABLE IF EXISTS `tipo_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_kit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_kit`
--

LOCK TABLES `tipo_kit` WRITE;
/*!40000 ALTER TABLE `tipo_kit` DISABLE KEYS */;
INSERT INTO `tipo_kit` VALUES (1,'Computador'),(2,'Notebook');
/*!40000 ALTER TABLE `tipo_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transportadora`
--

DROP TABLE IF EXISTS `transportadora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `transportadora` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transportadora`
--

LOCK TABLES `transportadora` WRITE;
/*!40000 ALTER TABLE `transportadora` DISABLE KEYS */;
/*!40000 ALTER TABLE `transportadora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aisoftware_db'
--

--
-- Dumping routines for database 'aisoftware_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-05  9:16:54
