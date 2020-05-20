CREATE DATABASE  IF NOT EXISTS `aisoftwaree` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `aisoftware`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: aisoftware
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
-- Table structure for table `carrinho`
--

DROP TABLE IF EXISTS `carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrinho` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrinho`
--

LOCK TABLES `carrinho` WRITE;
/*!40000 ALTER TABLE `carrinho` DISABLE KEYS */;
INSERT INTO `carrinho` VALUES (1),(2),(3),(4),(5);
/*!40000 ALTER TABLE `carrinho` ENABLE KEYS */;
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
  KEY `index_cidade_estado_id` (`estado_id`),
  CONSTRAINT `FKkworrwk40xj58kevvh3evi500` FOREIGN KEY (`estado_id`) REFERENCES `estado` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `data` datetime(6) NOT NULL,
  `entrega_id` bigint DEFAULT NULL,
  `usuario_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_compra_entrega_id` (`entrega_id`),
  KEY `index_compra_usuario_id` (`usuario_id`),
  CONSTRAINT `FK866oc56o279g4ornroxoopr3q` FOREIGN KEY (`entrega_id`) REFERENCES `entrega` (`id`),
  CONSTRAINT `FKk39qkguq7uka81tdyvhrkvppf` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `FK4bhrjsoa6v2t8yqun6rbgkj6v` (`compra_id`),
  CONSTRAINT `FK4bhrjsoa6v2t8yqun6rbgkj6v` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`),
  CONSTRAINT `FKmayqaba7rxmuhcpqu4yu6b3q2` FOREIGN KEY (`lista_item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `FKlwm5gv4oahifxg627tgsptpjh` (`compra_id`),
  CONSTRAINT `FKdxxjbsdriu7rf5m9q2yqesw6p` FOREIGN KEY (`lista_kit_id`) REFERENCES `kit` (`id`),
  CONSTRAINT `FKlwm5gv4oahifxg627tgsptpjh` FOREIGN KEY (`compra_id`) REFERENCES `compra` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `data_entrega` datetime(6) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `index_item_marca_item_id` (`marca_item_id`),
  KEY `index_item_modelo_item_id` (`modelo_item_id`),
  CONSTRAINT `FK168avadkod3cdkc53l1uh9ls9` FOREIGN KEY (`modelo_item_id`) REFERENCES `modelo_item` (`id`),
  CONSTRAINT `FKks4u8pgfp41155v1m7pb7yjlv` FOREIGN KEY (`marca_item_id`) REFERENCES `marca_item` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,0.00,'Processador I3 3ª geração','Processador I3 3ª geração',300.00,3,1),(8,0.00,'Processador I5 6ª geração','Processador I5 6ª geração',500.00,3,7),(9,0.00,'Memoria RAM 8 GB DDR3','Memoria RAM 8 GB DDR3',100.00,4,14),(10,0.00,'Processador I3 3ª geração','Processador I3 3ª geração',280.00,3,6),(11,0.00,'Processador I5 7ª geração','Processador I5 7ª geração',490.00,3,7),(12,0.00,'SSD 240 GB','SSD 256 GB',220.00,4,26);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_carrinho`
--

DROP TABLE IF EXISTS `item_carrinho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_carrinho` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `data_adicao` datetime(6) DEFAULT NULL,
  `quantidade` int DEFAULT NULL,
  `carrinho_id` bigint DEFAULT NULL,
  `item_id` bigint DEFAULT NULL,
  `kit_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKr3dusq21jhlttwc4hanxhlbua` (`carrinho_id`),
  KEY `FKo1uxq2nivwqc8mwmu6lgb3lf3` (`item_id`),
  KEY `FK1s7a283cehkbyun488rsiy5ya` (`kit_id`),
  CONSTRAINT `FK1s7a283cehkbyun488rsiy5ya` FOREIGN KEY (`kit_id`) REFERENCES `kit` (`id`),
  CONSTRAINT `FKo1uxq2nivwqc8mwmu6lgb3lf3` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FKr3dusq21jhlttwc4hanxhlbua` FOREIGN KEY (`carrinho_id`) REFERENCES `carrinho` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_carrinho`
--

LOCK TABLES `item_carrinho` WRITE;
/*!40000 ALTER TABLE `item_carrinho` DISABLE KEYS */;
INSERT INTO `item_carrinho` VALUES (1,'2020-05-17 12:16:00.000000',1,1,NULL,2),(2,'2020-05-17 18:27:54.306000',1,1,NULL,1),(3,'2020-05-17 18:30:22.556000',1,1,NULL,1),(17,'2020-05-19 01:26:22.291000',15,5,NULL,3),(18,'2020-05-19 01:26:33.489000',7,5,NULL,7);
/*!40000 ALTER TABLE `item_carrinho` ENABLE KEYS */;
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
  KEY `FK8x0vim7t0u4ev3h3cbu5kn1ie` (`item_id`),
  CONSTRAINT `FK8x0vim7t0u4ev3h3cbu5kn1ie` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  CONSTRAINT `FKfr0hka00l30j8yklfiqv7npf2` FOREIGN KEY (`lista_imagem_id`) REFERENCES `imagem` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `data_validade_promocao` datetime(6) DEFAULT NULL,
  `descricao` varchar(255) DEFAULT NULL,
  `esta_na_promocao` bit(1) DEFAULT NULL,
  `preco` decimal(19,2) DEFAULT NULL,
  `titulo` varchar(255) NOT NULL,
  `marca_kit_id` bigint DEFAULT NULL,
  `modelo_kit_id` bigint DEFAULT NULL,
  `tipo_kit_id` bigint DEFAULT NULL,
  `quantidade_estoque` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_kit_marca_kit_id` (`marca_kit_id`),
  KEY `index_kit_modelo_kit_id` (`modelo_kit_id`),
  KEY `index_kit_tipo_kit_id` (`tipo_kit_id`),
  CONSTRAINT `FKjbh54e4qgsav193lbknpgvse0` FOREIGN KEY (`modelo_kit_id`) REFERENCES `modelo_kit` (`id`),
  CONSTRAINT `FKp37ejo6vooes5jffju46vdofq` FOREIGN KEY (`marca_kit_id`) REFERENCES `marca_kit` (`id`),
  CONSTRAINT `FKt6qforim8pnr9vwak0u8c57v6` FOREIGN KEY (`tipo_kit_id`) REFERENCES `tipo_kit` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit`
--

LOCK TABLES `kit` WRITE;
/*!40000 ALTER TABLE `kit` DISABLE KEYS */;
INSERT INTO `kit` VALUES (1,'2020-06-30 21:47:09.000000',NULL,_binary '',4600.00,'Computador All in One Dell',1,1,1,12),(2,'2020-06-30 21:47:09.000000',NULL,_binary '',1799.00,'Notebook Samsung Essentials I3 3ª Geração 8GB RAM',7,2,2,3),(3,'2020-06-30 21:47:09.000000',NULL,_binary '',2249.00,'Notebook Samsung Expert',7,3,2,15),(4,'2020-06-30 21:47:09.000000',NULL,_binary '',3599.00,'Notebook Samsung Expert',7,4,2,10),(5,NULL,NULL,NULL,3599.00,'Notebook Acer Aspire 3',5,5,2,6),(6,NULL,NULL,NULL,1709.00,'Notebook Acer Aspire 3 A315-41-R4RB',5,6,2,8),(7,NULL,NULL,NULL,3399.00,'Notebook Acer Aspire 5 A15-78HE',6,7,2,7),(8,NULL,NULL,NULL,5499.00,'Notebook LG 15Z980 I5 7ª Geração 16 GB RAM',6,8,2,9),(9,NULL,NULL,NULL,1044.00,'Notebook Positivo Q464B',8,9,2,5),(10,NULL,NULL,NULL,1079.00,'Notebook Positivo C4500C',8,10,2,1),(11,NULL,NULL,NULL,1029.00,'Notebook Positivo Q432A',8,11,2,2),(12,NULL,NULL,NULL,12458.00,'MacBook Pro i7',4,12,2,22),(13,NULL,NULL,NULL,4799.00,'MacBook Air Apple Core i5 16 GB RAM SSD 240 GB',4,13,2,7),(14,NULL,NULL,NULL,6000.00,'Macbook Apple Air',4,14,2,15);
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
  KEY `FKk90wjwmgng8lhy8w83tcqc2pd` (`kit_id`),
  CONSTRAINT `FKa12hcq5hqvhclnw9sfesehkoj` FOREIGN KEY (`lista_imagem_id`) REFERENCES `imagem` (`id`),
  CONSTRAINT `FKk90wjwmgng8lhy8w83tcqc2pd` FOREIGN KEY (`kit_id`) REFERENCES `kit` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `FK2yd1jt7y0ycylhyv1am5ep9a8` (`kit_id`),
  CONSTRAINT `FK2yd1jt7y0ycylhyv1am5ep9a8` FOREIGN KEY (`kit_id`) REFERENCES `kit` (`id`),
  CONSTRAINT `FK5e540bc2iglrieypq5sltassy` FOREIGN KEY (`lista_item_id`) REFERENCES `item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kit_lista_item`
--

LOCK TABLES `kit_lista_item` WRITE;
/*!40000 ALTER TABLE `kit_lista_item` DISABLE KEYS */;
INSERT INTO `kit_lista_item` VALUES (1,1),(13,8),(2,10),(2,9),(8,11),(2,12);
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_4o3smy4lsbx5m51bjho1l8okh` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_item`
--

LOCK TABLES `marca_item` WRITE;
/*!40000 ALTER TABLE `marca_item` DISABLE KEYS */;
INSERT INTO `marca_item` VALUES (2,'AMD'),(1,'Asus'),(5,'Gigabyte'),(3,'Intel'),(4,'Kingston');
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_fkdcpaj3a6hbbojccuday2kxb` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marca_kit`
--

LOCK TABLES `marca_kit` WRITE;
/*!40000 ALTER TABLE `marca_kit` DISABLE KEYS */;
INSERT INTO `marca_kit` VALUES (5,'Acer'),(4,'Apple'),(1,'Dell'),(2,'HP'),(3,'Lenovo'),(6,'LG'),(8,'Positivo'),(7,'Samsung');
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modelo_item`
--

LOCK TABLES `modelo_item` WRITE;
/*!40000 ALTER TABLE `modelo_item` DISABLE KEYS */;
INSERT INTO `modelo_item` VALUES (1,'I3',1,1),(2,'I5',1,1),(3,'I7',1,1),(4,'I9',1,1),(5,'4GB',2,1),(6,'I3',1,2),(7,'I5',1,2),(8,'I7',1,2),(9,'I9',1,2),(10,'8GB',2,1),(11,'16GB',2,1),(12,'32GB',2,1),(13,'4GB',2,2),(14,'8GB',2,2),(15,'16GB',2,2),(16,'32GB',2,2),(18,'128GB',3,1),(19,'256GB',3,1),(20,'512GB',3,1),(21,'1TB',3,1),(22,'128GB',3,2),(23,'256GB',3,2),(24,'512GB',3,2),(25,'1TB',3,2),(26,'256GB',4,2),(27,'512GB',4,2),(28,'1TB',4,2),(29,'2TB',4,2),(30,'256GB',4,1),(31,'512GB',4,1),(32,'1TB',4,1),(33,'2TB',4,1),(34,'400W',6,1),(35,'450W',6,1),(36,'500W',6,1),(37,'600W',6,1);
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
  KEY `FKppyloli3h38c6ioswanlyhv9c` (`modelo_item_id`),
  CONSTRAINT `FKppyloli3h38c6ioswanlyhv9c` FOREIGN KEY (`modelo_item_id`) REFERENCES `modelo_item` (`id`),
  CONSTRAINT `FKrm3ldxybfykkpb2i69g1evt2v` FOREIGN KEY (`lista_atributo_id`) REFERENCES `atributo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  KEY `FK3n6vqfwlmjur0hdnfnycn3u3s` (`requisito_id`),
  CONSTRAINT `FK1j2a1u8lhiepi83k8ueflwfc9` FOREIGN KEY (`lista_atributo_id`) REFERENCES `atributo` (`id`),
  CONSTRAINT `FK3n6vqfwlmjur0hdnfnycn3u3s` FOREIGN KEY (`requisito_id`) REFERENCES `requisito` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_jbhqv2gk5kunp4nlekxytpprl` (`nome`)
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_95qtcc1nalsrpo5xt3tjkmk1w` (`nome`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_item`
--

LOCK TABLES `tipo_item` WRITE;
/*!40000 ALTER TABLE `tipo_item` DISABLE KEYS */;
INSERT INTO `tipo_item` VALUES (6,'Fonte'),(4,'HD'),(2,'Memória RAM'),(5,'Placa Mãe'),(1,'Processador'),(3,'SSD');
/*!40000 ALTER TABLE `tipo_item` ENABLE KEYS */;
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_tflqyiwtd39oc6otbxx6j74of` (`nome`)
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
  `email` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `carrinho_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5171l57faosmj8myawaucatdw` (`email`),
  KEY `FK8aqc2fihpkw08yob6g2tikqoa` (`carrinho_id`),
  CONSTRAINT `FK8aqc2fihpkw08yob6g2tikqoa` FOREIGN KEY (`carrinho_id`) REFERENCES `carrinho` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (3,'teste@teste.com','teste','$2a$10$oiFH2F3XhykE26XBqbw.QOgHtxyDee4BH36W1Hd.WEjJVX5N18jpW',NULL,NULL),(4,'teste1@teste.com','teste','$2a$10$rPmJDzq2.KQKAmxGBFIhzukYIxbsk6U4aDgjXTAGjrEA.G6tFOBtG',NULL,NULL),(6,'jhuniormoreira@gmail.com','Junior Moreira','$2a$10$d7TDrj3904Z29uFWYMpSveP7zp.mQOy8nqPB0qjUrdLBRuKx83nIK','Bearer eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJBaXNvZnR3YXJlIiwic3ViIjoiNiIsImlhdCI6MTU4OTg1MjM2MSwiZXhwIjoxNTg5OTM4NzYxfQ.ovDvcC5dlOlxJNCnO_G1wbfCE0ejleV1tMHc8iZXY9U',1),(7,'email@teste.com','Junior Moreira','$2a$10$PnlinULigVB7gXgmVTO5Su/9lIKFLfgMmFTV31k9UE8.uhQjtchB.',NULL,NULL),(8,'testete@teste.com','Junior','$2a$10$JxBUlP2NFA/uILHSrvqDEOA20ShxZmDN.jIiZJqcrTEjiyT6KAjaS',NULL,NULL),(9,'usuario@usuario.com','usuario','$2a$10$g.VOODoRQF3kRMfUrgTm6uEWWP9W9ds4Q1OHjKUCnO1K4KP5Tc26G',NULL,2),(10,'testeUsuario@teste.com','testes','$2a$10$EuZdwWrRnD378Hnm7/1KEORCQQb8Ub4KDzhSyNX5vcvsTzBo6WP2C',NULL,3),(11,'jhuniormoreira@gmail.comm','teste','$2a$10$tcK46P9oQi/rwa2aKzzkgO8llKUqMApgae0zMWs2nGjL1jrsb5qve','Bearer eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJBaXNvZnR3YXJlIiwic3ViIjoiMTEiLCJpYXQiOjE1ODk3MjgzNTUsImV4cCI6MTU4OTgxNDc1NX0.qPetUytFOnn09HYpQfFQzkkSM1HCw3lWQQxx6k1F74E',4),(12,'teste3@teste.com','Junior Moreira','$2a$10$vgg6Jq8MhGeZIESyjdDrJudleHFXfcbI7JT5bqSyqWhtJmRaVjbrO','Bearer eyJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJBaXNvZnR3YXJlIiwic3ViIjoiMTIiLCJpYXQiOjE1ODk4NTE1NzksImV4cCI6MTU4OTkzNzk3OX0.jgS-08EmItx67XoLDJuYhR7UvD1J-EPhLfmvXShbKBQ',5);
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
  KEY `FK23m0p1u590iqj3f7a4pdgqmbm` (`usuario_id`),
  CONSTRAINT `FK23m0p1u590iqj3f7a4pdgqmbm` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`id`),
  CONSTRAINT `FKc1k1nuitskmtd6m7jbdrkitwv` FOREIGN KEY (`lista_perfil_id`) REFERENCES `perfil` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_lista_perfil`
--

LOCK TABLES `usuario_lista_perfil` WRITE;
/*!40000 ALTER TABLE `usuario_lista_perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario_lista_perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'aisoftware'
--

--
-- Dumping routines for database 'aisoftware'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-19 22:25:23
