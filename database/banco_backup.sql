-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aisoftware_db
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atributo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atributo_lista_modelo` (
  `atributo_id` bigint NOT NULL,
  `lista_modelo_id` bigint NOT NULL,
  KEY `FKljs82qbg6vwec0mppw6ym4nek` (`lista_modelo_id`),
  KEY `FK4ci0442ttqqke5wxe71dwmp0s` (`atributo_id`),
  CONSTRAINT `FK4ci0442ttqqke5wxe71dwmp0s` FOREIGN KEY (`atributo_id`) REFERENCES `atributo` (`id`),
  CONSTRAINT `FKljs82qbg6vwec0mppw6ym4nek` FOREIGN KEY (`lista_modelo_id`) REFERENCES `modelo_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atributo_lista_requisito` (
  `atributo_id` bigint NOT NULL,
  `lista_requisito_id` bigint NOT NULL,
  KEY `FKsbdt3ni2yp1ic44893sk70j5u` (`lista_requisito_id`),
  KEY `FKng6kns069ri8eqsofy5hve70q` (`atributo_id`),
  CONSTRAINT `FKng6kns069ri8eqsofy5hve70q` FOREIGN KEY (`atributo_id`) REFERENCES `atributo` (`id`),
  CONSTRAINT `FKsbdt3ni2yp1ic44893sk70j5u` FOREIGN KEY (`lista_requisito_id`) REFERENCES `requisito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cidade` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `estado_id` bigint DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data` datetime NOT NULL,
  `entrega_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_lista_item` (
  `compra_id` bigint NOT NULL,
  `lista_item_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compra_lista_kit` (
  `compra_id` bigint NOT NULL,
  `lista_kit_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `entrega` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cep` varchar(255) NOT NULL,
  `data_entrega` datetime DEFAULT NULL,
  `numero` int NOT NULL,
  `rua` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estado` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagem` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `alt` varchar(255) DEFAULT NULL,
  `caminho` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagem`
--

LOCK TABLES `imagem` WRITE;
/*!40000 ALTER TABLE `imagem` DISABLE KEYS */;
INSERT INTO `imagem` VALUES (1,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-1.jpg'),(2,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-2.jpg'),(3,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-3.jpg'),(4,'Inspiron INS-5490-A30S','../../../assets/imagens/computador/dell/Inspiron INS-5490-A30S/foto-4.jpg'),(5,'e30','../../../assets/imagens/notebook/samsung/e30/foto-1.jpg'),(6,'e30','../../../assets/imagens/notebook/samsung/e30/foto-2.jpg'),(7,'e30','../../../assets/imagens/notebook/samsung/e30/foto-3.jpg'),(8,'x30','../../../assets/imagens/notebook/samsung/x30/foto-1.jpg'),(9,'x30','../../../assets/imagens/notebook/samsung/x30/foto-2.jpg'),(10,'x30','../../../assets/imagens/notebook/samsung/x30/foto-3.jpg'),(11,'x55','../../../assets/imagens/notebook/samsung/x55/foto-1.jpg'),(12,'x55','../../../assets/imagens/notebook/samsung/x55/foto-2.jpg'),(13,'x55','../../../assets/imagens/notebook/samsung/x55/foto-3.jpg'),(14,'a315','../../../assets/imagens/notebook/acer/a315/foto-1.jpg'),(15,'a315','../../../assets/imagens/notebook/acer/a315/foto-2.jpg'),(16,'a315','../../../assets/imagens/notebook/acer/a315/foto-3.jpg'),(17,'a315-41','../../../assets/imagens/notebook/acer/a315-41/foto-1.jpg'),(18,'a315-41','../../../assets/imagens/notebook/acer/a315-41/foto-2.jpg'),(19,'a315-41','../../../assets/imagens/notebook/acer/a315-41/foto-3.jpg'),(20,'a515','../../../assets/imagens/notebook/acer/a515/foto-1.jpg'),(21,'a515','../../../assets/imagens/notebook/acer/a515/foto-2.jpg'),(22,'a515','../../../assets/imagens/notebook/acer/a515/foto-3.jpg'),(23,'LG 15Z980','../../../assets/imagens/notebook/lg/LG 15Z980/foto-1.jpg'),(24,'LG 15Z980','../../../assets/imagens/notebook/lg/LG 15Z980/foto-2.jpg'),(25,'LG 15Z980','../../../assets/imagens/notebook/lg/LG 15Z980/foto-3.jpg'),(26,'Q464B','../../../assets/imagens/notebook/positivo/Q464B/foto-1.jpg'),(27,'Q464B','../../../assets/imagens/notebook/positivo/Q464B/foto-2.jpg'),(28,'Q464B','../../../assets/imagens/notebook/positivo/Q464B/foto-3.jpg'),(29,'C4500C','../../../assets/imagens/notebook/positivo/C4500C/foto-1.jpg'),(30,'C4500C','../../../assets/imagens/notebook/positivo/C4500C/foto-2.jpg'),(31,'C4500C','../../../assets/imagens/notebook/positivo/C4500C/foto-3.jpg'),(32,'Q432A','../../../assets/imagens/notebook/positivo/Q432A/foto-1.jpg'),(33,'Q432A','../../../assets/imagens/notebook/positivo/Q432A/foto-2.jpg'),(34,'Q432A','../../../assets/imagens/notebook/positivo/Q432A/foto-3.jpg'),(35,'MacBook Air i5','../../../assets/imagens/notebook/apple/MacBok Air i5/foto-1.jpg'),(36,'MacBook Air i5','../../../assets/imagens/notebook/apple/MacBok Air i5/foto-2.jpg'),(37,'MacBook Air i5','../../../assets/imagens/notebook/apple/MacBok Air i5/foto-3.jpg'),(38,'MacBook Air dourado','../../../assets/imagens/notebook/apple/Macbook Air - dourado/foto-1.jpg'),(39,'MacBook Air dourado','../../../assets/imagens/notebook/apple/Macbook Air - dourado/foto-2.jpg'),(40,'MacBook Air dourado','../../../assets/imagens/notebook/apple/Macbook Air - dourado/foto-3.jpg'),(41,'MacBook Air Pro','../../../assets/imagens/notebook/apple/MacBook Pro i7/foto-1.jpg'),(42,'MacBook Air Pro','../../../assets/imagens/notebook/apple/MacBook Pro i7/foto-2.jpg'),(43,'MacBook Air Pro','../../../assets/imagens/notebook/apple/MacBook Pro i7/foto-3.jpg');
/*!40000 ALTER TABLE `imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `desconto` decimal(19,2) DEFAULT NULL,
  `descricao` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `preco` decimal(19,2) NOT NULL,
  `marca_item_id` bigint DEFAULT NULL,
  `modelo_item_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKks4u8pgfp41155v1m7pb7yjlv` (`marca_item_id`),
  KEY `FK168avadkod3cdkc53l1uh9ls9` (`modelo_item_id`),
  CONSTRAINT `FK168avadkod3cdkc53l1uh9ls9` FOREIGN KEY (`modelo_item_id`) REFERENCES `modelo_item` (`id`),
  CONSTRAINT `FKks4u8pgfp41155v1m7pb7yjlv` FOREIGN KEY (`marca_item_id`) REFERENCES `marca_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,0.00,'Processador I3 3ª geração','Processador I3 3ª geração',300.00,3,1),(2,NULL,'item de teste','teste',120.00,NULL,NULL),(3,NULL,'item de teste','teste',120.00,NULL,NULL),(4,NULL,'item de teste','teste',120.00,NULL,NULL),(5,NULL,'item de teste','teste',120.00,NULL,NULL),(6,NULL,'item teste autenticacao','item teste autenticacao',120.00,NULL,NULL),(7,NULL,'sdfsfd','sdfsfd',180.00,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_lista_imagem`
--

DROP TABLE IF EXISTS `item_lista_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_lista_imagem` (
  `item_id` bigint NOT NULL,
  `lista_imagem_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data_validade_promocao` datetime DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `esta_na_promocao` bit(1) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `marca_kit_id` bigint DEFAULT NULL,
  `modelo_kit_id` bigint DEFAULT NULL,
  `tipo_kit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKp37ejo6vooes5jffju46vdofq` (`marca_kit_id`),
  KEY `FKjbh54e4qgsav193lbknpgvse0` (`modelo_kit_id`),
  KEY `FKt6qforim8pnr9vwak0u8c57v6` (`tipo_kit_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit`
--

LOCK TABLES `kit` WRITE;
/*!40000 ALTER TABLE `kit` DISABLE KEYS */;
INSERT INTO `kit` VALUES (1,'2020-03-30 21:47:09',NULL,_binary '',4600.00,'Computador All in One Dell',1,1,1),(2,'2020-03-30 21:47:09',NULL,_binary '',1799.00,'Notebook Samsung Essentials',7,2,2),(3,'2020-03-30 21:47:09',NULL,_binary '',2249.00,'Notebook Samsung Expert',7,3,2),(4,'2020-03-30 21:47:09',NULL,_binary '',3599.00,'Notebook Samsung Expert',7,4,2),(5,NULL,NULL,NULL,3599.00,'Notebook Acer Aspire 3',5,5,2),(6,NULL,NULL,NULL,1709.00,'Notebook Acer Aspire 3 A315-41-R4RB',5,6,2),(7,NULL,NULL,NULL,3399.00,'Notebook Acer Aspire 5 A15-78HE',6,7,2),(8,NULL,NULL,NULL,5499.00,'Notebook LG 15Z980',6,8,2),(9,NULL,NULL,NULL,1044.00,'Notebook Positivo Q464B',8,9,2),(10,NULL,NULL,NULL,1079.00,'Notebook Positivo C4500C',8,10,2),(11,NULL,NULL,NULL,1029.00,'Notebook Positivo Q432A',8,11,2),(12,NULL,NULL,NULL,12458.00,'MacBook Pro i7',4,12,2),(13,NULL,NULL,NULL,4799.00,'MacBook Air Apple Core i5',4,13,2),(14,NULL,NULL,NULL,6000.00,'Macbook Apple Air',4,14,2);
/*!40000 ALTER TABLE `kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_lista_imagem`
--

DROP TABLE IF EXISTS `kit_lista_imagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kit_lista_imagem` (
  `kit_id` bigint NOT NULL,
  `lista_imagem_id` bigint NOT NULL,
  KEY `FKa12hcq5hqvhclnw9sfesehkoj` (`lista_imagem_id`),
  KEY `FKk90wjwmgng8lhy8w83tcqc2pd` (`kit_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_lista_imagem`
--

LOCK TABLES `kit_lista_imagem` WRITE;
/*!40000 ALTER TABLE `kit_lista_imagem` DISABLE KEYS */;
INSERT INTO `kit_lista_imagem` VALUES (1,1),(1,2),(1,3),(1,4),(2,5),(2,6),(2,7),(3,8),(3,9),(3,10),(4,11),(4,12),(4,13),(5,14),(5,15),(5,16),(6,17),(6,18),(6,19),(7,20),(7,21),(7,22),(8,23),(8,24),(8,25),(9,26),(9,27),(9,28),(10,29),(10,20),(10,31),(11,32),(11,33),(11,34),(12,35),(12,36),(12,37),(13,38),(13,39),(13,40),(14,41),(14,42),(14,43);
/*!40000 ALTER TABLE `kit_lista_imagem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kit_lista_item`
--

DROP TABLE IF EXISTS `kit_lista_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kit_lista_item` (
  `kit_id` bigint NOT NULL,
  `lista_item_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `marca_kit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_kit`
--

LOCK TABLES `marca_kit` WRITE;
/*!40000 ALTER TABLE `marca_kit` DISABLE KEYS */;
INSERT INTO `marca_kit` VALUES (1,'Dell'),(2,'HP'),(3,'Lenovo'),(4,'Apple'),(5,'Acer'),(6,'LG'),(7,'Samsung'),(8,'Positivo');
/*!40000 ALTER TABLE `marca_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_item`
--

DROP TABLE IF EXISTS `modelo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `tipo_item_id` bigint DEFAULT NULL,
  `tipo_kit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmrlrgpdnmilmk1qny3lvl2ho1` (`tipo_item_id`),
  KEY `FKenx86o3sh2diesviqsbbywwl7` (`tipo_kit_id`),
  CONSTRAINT `FKenx86o3sh2diesviqsbbywwl7` FOREIGN KEY (`tipo_kit_id`) REFERENCES `tipo_kit` (`id`),
  CONSTRAINT `FKmrlrgpdnmilmk1qny3lvl2ho1` FOREIGN KEY (`tipo_item_id`) REFERENCES `tipo_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_item`
--

LOCK TABLES `modelo_item` WRITE;
/*!40000 ALTER TABLE `modelo_item` DISABLE KEYS */;
INSERT INTO `modelo_item` VALUES (1,'I3',1,1),(2,'I5',1,1),(3,'I7',1,1),(4,'I9',1,1),(5,'DDR3 4GB',2,1);
/*!40000 ALTER TABLE `modelo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modelo_item_lista_atributo`
--

DROP TABLE IF EXISTS `modelo_item_lista_atributo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_item_lista_atributo` (
  `modelo_item_id` bigint NOT NULL,
  `lista_atributo_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modelo_kit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_kit`
--

LOCK TABLES `modelo_kit` WRITE;
/*!40000 ALTER TABLE `modelo_kit` DISABLE KEYS */;
INSERT INTO `modelo_kit` VALUES (1,'Inspiron INS-5490-A30S'),(2,'Essentials E30'),(3,'Expert X30'),(4,'Expert X55'),(5,'Aspire 3 A315-53-333H'),(6,'Aspire 3 A315-41-R4RB'),(7,'Aspire 5 A515-78HE'),(8,'LG 15Z980'),(9,'Positivo Q464B'),(10,'Positivo C4500C'),(11,'Positivo Q432A'),(12,'MacBook Pro i7'),(13,'Air Apple i5'),(14,'Apple Macbook Air');
/*!40000 ALTER TABLE `modelo_kit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `perfil` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `requisito`
--

DROP TABLE IF EXISTS `requisito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisito` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) DEFAULT NULL,
  `permite_maior` bit(1) DEFAULT NULL,
  `valor` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `requisito_lista_atributo` (
  `requisito_id` bigint NOT NULL,
  `lista_atributo_id` bigint NOT NULL,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `status_entrega` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_item`
--

LOCK TABLES `tipo_item` WRITE;
/*!40000 ALTER TABLE `tipo_item` DISABLE KEYS */;
INSERT INTO `tipo_item` VALUES (1,'Processador'),(2,'Memória RAM'),(3,'SSD'),(4,'HD'),(5,'Placa Mãe'),(6,'Fonte');
/*!40000 ALTER TABLE `tipo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_item_lista_modelo_item`
--

DROP TABLE IF EXISTS `tipo_item_lista_modelo_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_item_lista_modelo_item` (
  `tipo_item_id` bigint NOT NULL,
  `lista_modelo_item_id` bigint NOT NULL,
  UNIQUE KEY `UK_1wgim7rukei5w15epns77hm0j` (`lista_modelo_item_id`),
  KEY `FK8280mgicdnmkbk61j4tg1xegq` (`tipo_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_item_lista_modelo_item`
--

LOCK TABLES `tipo_item_lista_modelo_item` WRITE;
/*!40000 ALTER TABLE `tipo_item_lista_modelo_item` DISABLE KEYS */;
INSERT INTO `tipo_item_lista_modelo_item` VALUES (1,1),(1,2),(1,3),(1,4);
/*!40000 ALTER TABLE `tipo_item_lista_modelo_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_kit`
--

DROP TABLE IF EXISTS `tipo_kit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_kit` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transportadora` (
  `id` bigint NOT NULL AUTO_INCREMENT,
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cpf` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (1,'123','jhuniormoreira@gmail.com','Junior','$2a$10$f2mALzND8PyQUHZZYM5wy.eYAh5XnnYFue81aVZVgSwpMiYOmN10u');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_lista_perfil`
--

DROP TABLE IF EXISTS `usuario_lista_perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario_lista_perfil` (
  `usuario_id` bigint NOT NULL,
  `lista_perfil_id` bigint NOT NULL,
  KEY `FKc1k1nuitskmtd6m7jbdrkitwv` (`lista_perfil_id`),
  KEY `FK23m0p1u590iqj3f7a4pdgqmbm` (`usuario_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_lista_perfil`
--

LOCK TABLES `usuario_lista_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_lista_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_lista_perfil` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-22 23:24:25
