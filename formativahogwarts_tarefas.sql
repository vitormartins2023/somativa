-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: formativahogwarts
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `tarefas`
--

DROP TABLE IF EXISTS `tarefas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tarefas` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nome_tarefa` varchar(200) NOT NULL,
  `descricao_tarefa` varchar(200) NOT NULL,
  `data_execucao` datetime NOT NULL,
  `data_abertura` datetime NOT NULL,
  `data_fim` datetime NOT NULL,
  `localFK` bigint NOT NULL,
  `solicitanteFK` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `localFK` (`localFK`),
  KEY `solicitanteFK` (`solicitanteFK`),
  CONSTRAINT `tarefas_ibfk_1` FOREIGN KEY (`localFK`) REFERENCES `ocupacao` (`id`),
  CONSTRAINT `tarefas_ibfk_2` FOREIGN KEY (`solicitanteFK`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tarefas`
--

LOCK TABLES `tarefas` WRITE;
/*!40000 ALTER TABLE `tarefas` DISABLE KEYS */;
INSERT INTO `tarefas` VALUES (1,'limpara sala','fazer a limpeza de todas as salas','2023-06-06 10:15:00','2023-06-06 06:00:00','2023-06-07 00:00:00',2,2),(2,'desligar aparelhos','Desligar todos os aparelhos','2023-09-07 23:00:00','2023-09-07 21:00:00','2023-09-10 00:00:00',1,1),(3,'fazer algo','fazer algo nas salas','2022-06-11 10:15:00','2022-06-12 06:00:00','2022-06-13 00:00:00',3,3),(4,'fazer algo novo','fazer alguma nova coisa','2023-07-15 10:15:00','2023-07-16 06:00:00','2023-07-18 00:00:00',4,4),(5,'algo novo','coisa nova','2023-01-18 10:15:00','2023-01-16 06:00:00','2023-01-20 00:00:00',4,5),(6,'fazer mais algo novo','fazer mais alguma nova coisa','2023-09-18 10:15:00','2023-09-20 06:00:00','2023-09-23 00:00:00',4,1);
/*!40000 ALTER TABLE `tarefas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-04 15:38:49
