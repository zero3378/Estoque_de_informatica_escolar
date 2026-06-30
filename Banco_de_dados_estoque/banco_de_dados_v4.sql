-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: site_de_estoque
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.20.04.1

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
-- Table structure for table `Emprestimo_aluno`
--

DROP TABLE IF EXISTS `Emprestimo_aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Emprestimo_aluno` (
  `id_EA` int NOT NULL AUTO_INCREMENT,
  `data_emprestimo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email_escola` varchar(70) NOT NULL,
  `id_itens` int NOT NULL,
  PRIMARY KEY (`id_EA`),
  KEY `email_escola` (`email_escola`),
  KEY `id_itens` (`id_itens`),
  CONSTRAINT `Emprestimo_aluno_ibfk_1` FOREIGN KEY (`email_escola`) REFERENCES `aluno` (`email_escola`),
  CONSTRAINT `Emprestimo_aluno_ibfk_2` FOREIGN KEY (`id_itens`) REFERENCES `itens` (`id_itens`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emprestimo_aluno`
--

LOCK TABLES `Emprestimo_aluno` WRITE;
/*!40000 ALTER TABLE `Emprestimo_aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `Emprestimo_aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Emprestimo_professor`
--

DROP TABLE IF EXISTS `Emprestimo_professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Emprestimo_professor` (
  `id_EP` int NOT NULL AUTO_INCREMENT,
  `data_emprestimo` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `email_escola` varchar(70) NOT NULL,
  `id_itens` int NOT NULL,
  PRIMARY KEY (`id_EP`),
  KEY `email_escola` (`email_escola`),
  KEY `id_itens` (`id_itens`),
  CONSTRAINT `Emprestimo_professor_ibfk_1` FOREIGN KEY (`email_escola`) REFERENCES `professor` (`email_escola`),
  CONSTRAINT `Emprestimo_professor_ibfk_2` FOREIGN KEY (`id_itens`) REFERENCES `itens` (`id_itens`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Emprestimo_professor`
--

LOCK TABLES `Emprestimo_professor` WRITE;
/*!40000 ALTER TABLE `Emprestimo_professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `Emprestimo_professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aluno`
--

DROP TABLE IF EXISTS `aluno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aluno` (
  `nome_usuario` varchar(255) DEFAULT NULL,
  `nome_turma` varchar(10) NOT NULL,
  `num_chamada` int NOT NULL,
  `email_escola` varchar(70) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`email_escola`),
  KEY `nome_turma` (`nome_turma`),
  CONSTRAINT `aluno_ibfk_1` FOREIGN KEY (`email_escola`) REFERENCES `usuarios` (`email_escola`),
  CONSTRAINT `aluno_ibfk_2` FOREIGN KEY (`nome_turma`) REFERENCES `turma` (`nome_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aluno`
--

LOCK TABLES `aluno` WRITE;
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
INSERT INTO `aluno` VALUES ('Jamilton da Silva','6º A',1,'jamilton.silva@escola.pr.gov.br','abrobra'),('Miguel Pimentel de Souza','6º A',2,'miguelsouza@escola.pr.gov.br','12345');
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id_categoria` int NOT NULL AUTO_INCREMENT,
  `nome_categoria` varchar(40) NOT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcao`
--

DROP TABLE IF EXISTS `direcao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcao` (
  `email_escola` varchar(70) NOT NULL,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`email_escola`),
  CONSTRAINT `direcao_ibfk_1` FOREIGN KEY (`email_escola`) REFERENCES `usuarios` (`email_escola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcao`
--

LOCK TABLES `direcao` WRITE;
/*!40000 ALTER TABLE `direcao` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itens`
--

DROP TABLE IF EXISTS `itens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itens` (
  `id_itens` int NOT NULL AUTO_INCREMENT,
  `nome_item` varchar(30) NOT NULL,
  `modelo_item` varchar(20) NOT NULL,
  `qtd_item` int DEFAULT '0',
  `status_item` enum('Disponível','Em manutenção','Sem conserto','Emprestado') NOT NULL DEFAULT 'Disponível',
  `id_categoria` int NOT NULL,
  PRIMARY KEY (`id_itens`),
  KEY `id_categoria` (`id_categoria`),
  CONSTRAINT `itens_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itens`
--

LOCK TABLES `itens` WRITE;
/*!40000 ALTER TABLE `itens` DISABLE KEYS */;
/*!40000 ALTER TABLE `itens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professor`
--

DROP TABLE IF EXISTS `professor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `professor` (
  `email_escola` varchar(70) NOT NULL,
  `nome_turma` varchar(10) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `materia` varchar(30) NOT NULL,
  PRIMARY KEY (`email_escola`),
  KEY `nome_turma` (`nome_turma`),
  CONSTRAINT `professor_ibfk_1` FOREIGN KEY (`email_escola`) REFERENCES `usuarios` (`email_escola`),
  CONSTRAINT `professor_ibfk_2` FOREIGN KEY (`nome_turma`) REFERENCES `turma` (`nome_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professor`
--

LOCK TABLES `professor` WRITE;
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turma`
--

DROP TABLE IF EXISTS `turma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turma` (
  `nome_turma` varchar(10) NOT NULL,
  `periodo` enum('Manhã','Tarde','Noite') NOT NULL,
  PRIMARY KEY (`nome_turma`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turma`
--

LOCK TABLES `turma` WRITE;
/*!40000 ALTER TABLE `turma` DISABLE KEYS */;
INSERT INTO `turma` VALUES ('6º A','Manhã');
/*!40000 ALTER TABLE `turma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `email_escola` varchar(70) NOT NULL,
  `nome_usuario` varchar(50) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `tipo_usuario` enum('Aluno(a)','Professor(a)','Diretor(a)') NOT NULL,
  PRIMARY KEY (`email_escola`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('jamilton.silva@escola.pr.gov.br','Jamilton da Silva','abrobra','Aluno(a)'),('miguelsouza@escola.pr.gov.br','Miguel PImentel de Souza','12345','Aluno(a)'),('teste.falha@escola.pr.gov.br','Aluno Teste','12345','Aluno(a)');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-06-25  8:52:20
