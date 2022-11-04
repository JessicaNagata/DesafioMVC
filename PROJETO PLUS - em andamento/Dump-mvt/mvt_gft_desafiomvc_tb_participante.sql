-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mvt_gft_desafiomvc
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `tb_participante`
--

DROP TABLE IF EXISTS `tb_participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_participante` (
  `id_participante` bigint NOT NULL AUTO_INCREMENT,
  `atividade` tinyblob,
  `atividades` bit(1) NOT NULL,
  `atrasado` bit(1) NOT NULL,
  `atrasos` tinyblob,
  `cont` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `evento` tinyblob,
  `nivel` varchar(255) DEFAULT NULL,
  `nome` varchar(255) DEFAULT NULL,
  `pontuacao_atividade` double NOT NULL,
  `pontuacao_presenca` double NOT NULL,
  `pontuacao_total` double NOT NULL,
  `presencas` tinyblob,
  `presente` bit(1) NOT NULL,
  `quatro_letras` varchar(255) DEFAULT NULL,
  `status` bit(1) NOT NULL,
  `grupo_id_grupo` bigint DEFAULT NULL,
  `id` bigint DEFAULT NULL,
  PRIMARY KEY (`id_participante`),
  KEY `FKphwcqyh94uxbv7s1t5x0jmiu2` (`grupo_id_grupo`),
  KEY `FK198rx5wcbsfo0sw7gtwp6flm` (`id`),
  CONSTRAINT `FK198rx5wcbsfo0sw7gtwp6flm` FOREIGN KEY (`id`) REFERENCES `tb_pontuacao` (`id_pontuacao`),
  CONSTRAINT `FKphwcqyh94uxbv7s1t5x0jmiu2` FOREIGN KEY (`grupo_id_grupo`) REFERENCES `tb_grupo` (`id_grupo`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_participante`
--

LOCK TABLES `tb_participante` WRITE;
/*!40000 ALTER TABLE `tb_participante` DISABLE KEYS */;
INSERT INTO `tb_participante` VALUES (1,NULL,_binary '\0',_binary '\0',NULL,0,'jessi@gft.com',NULL,'Pleno','Jéssica Nagata',0,0,0,NULL,_binary '\0','JANG',_binary '',3,NULL),(2,NULL,_binary '\0',_binary '\0',NULL,0,'suzy@gft.com',NULL,'Sênior','Suzy Silva',0,0,0,NULL,_binary '\0','SUZY',_binary '',3,NULL),(3,NULL,_binary '\0',_binary '\0',NULL,0,'isa@gft.com',NULL,'Starter','Isabella Suto',0,0,0,NULL,_binary '\0','IAST',_binary '',1,NULL),(4,NULL,_binary '\0',_binary '\0',NULL,0,'julia@gft.com',NULL,'Júnior','Julia Gubolin',0,0,0,NULL,_binary '\0','JULI',_binary '',1,NULL),(5,NULL,_binary '\0',_binary '\0',NULL,0,'leia@gft.com',NULL,'Starter','Leia Organa',0,0,0,NULL,_binary '\0','LEIA',_binary '',2,NULL),(6,NULL,_binary '\0',_binary '\0',NULL,0,'han@gft.com',NULL,'Trainee','Han Solo',0,0,0,NULL,_binary '\0','HANS',_binary '',2,NULL),(7,NULL,_binary '\0',_binary '\0',NULL,0,'alan@gft.com',NULL,'Starter','Alan Turing',0,0,0,NULL,_binary '\0','ALAN',_binary '',4,NULL),(8,NULL,_binary '\0',_binary '\0',NULL,0,'emily@gft.com',NULL,'Starter','Emily Costa',0,0,0,NULL,_binary '\0','EMIL',_binary '',4,NULL);
/*!40000 ALTER TABLE `tb_participante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-04 16:28:36
