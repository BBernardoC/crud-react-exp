CREATE DATABASE  IF NOT EXISTS `react_exp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `react_exp`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: react_exp
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(40) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf` varchar(11) DEFAULT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `dtaNascimento` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `cpf` (`cpf`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (2,'anderson silva','Marvin.Wiza92@yahoo.com','37319542364','3529589651','1977-09-26'),(3,'Jamie Orn PhD','Lesly24@gmail.com','50447868886','6207527713','1976-05-28'),(4,'Aaron Carroll PhD','Christ.Considine84@yahoo.com','78507226664','3680823094','1993-10-30'),(5,'Jeffrey Brakus','Cyril30@yahoo.com','34135054527','6859199562','1979-04-01'),(6,'Jaime White','Shyann.Weimann@hotmail.com','92788821376','6211596214','1962-11-01'),(7,'Alfredo Stroman','Moses_Kihn29@yahoo.com','80325704957','2376923132','1964-04-16'),(8,'Joe Considine','Timmy83@hotmail.com','42575254477','9186758127','2006-06-03'),(9,'Luis Auer','Addison86@gmail.com','31510366126','3567317116','2005-03-18'),(10,'Cristina Kertzmann','Davonte_Becker93@yahoo.com','20863796625','1867589220','1968-08-06'),(11,'Blanche Stehr','Duncan_Funk@gmail.com','38362297332','9652794489','1985-07-11'),(12,'Ms. Shelley Lubowitz','Susan86@gmail.com','50315385208','0882490455','1984-05-29'),(13,'Eileen Keeling','Nona.OConnell83@hotmail.com','35895971477','6577478933','1999-11-16'),(14,'Bernard Keebler','Kobe_Keeling35@hotmail.com','37788325361','3926189373','1957-04-11'),(15,'Pete Parker','Stevie.Langosh-Labadie@hotmail.com','99783575658','2641867950','1994-01-22'),(16,'Maxine Schulist III','Dudley67@yahoo.com','98865268855','9895217356','1981-06-17'),(17,'Douglas Aufderhar','Catharine.Leffler9@gmail.com','46410000800','3581711612','1957-05-30'),(18,'Isaac Kessler','Elyssa_Koepp@yahoo.com','79982254447','1892207969','1961-12-11'),(19,'Valerie Kuphal','Marilyne.Fahey10@gmail.com','78547394979','8902939095','1997-05-26'),(20,'Eloise Schroeder','Newell45@hotmail.com','53259059227','2337135765','1961-12-15'),(21,'Lawrence Hodkiewicz','Vivianne44@hotmail.com','99843486543','8030201042','1961-03-27'),(22,'Maxine Pacocha','Shane10@yahoo.com','49899873572','1655122139','2004-06-28'),(23,'Cristina Considine','Oleta.Mann@gmail.com','24592057160','2581762214','1945-01-05'),(24,'Dale Schiller','Stephon.Runolfsson81@hotmail.com','61384346087','1581774620','1986-01-01'),(25,'Johnnie Ebert','Billie.Grant@gmail.com','38690230436','6875484188','1967-08-10'),(26,'Crystal Jenkins','Shakira45@yahoo.com','48246359059','2280480701','1953-04-09'),(27,'Roman Anderson','Justyn.Labadie@gmail.com','20549161628','1211293315','1950-03-11'),(28,'Sonia Schinner V','Ezra14@hotmail.com','58990176932','9347254842','2000-11-16'),(29,'Heidi Brown','Khalid_Reichel@gmail.com','90694810594','4377920881','2004-10-30'),(30,'Dianna Wolf','Freda_Donnelly@gmail.com','77309778870','8626301271','1970-04-13'),(31,'Viola Rice','Sylvan_Schinner@yahoo.com','73786015974','5303189007','1986-01-24'),(32,'Renee Schimmel','Francis_Kessler92@gmail.com','71891781377','3360996311','1996-09-02'),(33,'Dr. Myra Walsh','Nicholaus_Durgan7@yahoo.com','37832641021','7364269840','2002-09-18'),(34,'Guadalupe Wuckert-Kunde II','Brando_Padberg@hotmail.com','26230495319','6054986495','2003-04-01'),(35,'Ross Lind-Lakin','Marietta71@yahoo.com','15502877264','2723744453','1968-03-16'),(36,'Kathleen Murphy DVM','Adaline_Dooley17@hotmail.com','22773596292','9858761249','2000-05-08'),(37,'Lora Turner','Bessie63@hotmail.com','30073441544','5908038632','1977-01-07'),(38,'Emmett OHara Jr.','Maude_Stiedemann@gmail.com','73967477844','7117273902','1980-01-07'),(39,'Mr. Alex Swaniawski','Yessenia7@hotmail.com','66354605969','3495526856','1961-01-15'),(40,'Mattie Ryan','Shawna_Kuhic@hotmail.com','61145563133','7182358135','1986-07-10'),(41,'Nelson Murray','Rollin.Stehr@hotmail.com','27451091176','3792857293','1949-01-02'),(42,'Dwight Franey','Thalia18@yahoo.com','30515192283','2937459987','1982-01-24'),(43,'Richard Jenkins V','Corrine.Fadel@hotmail.com','40992505517','7857989331','1947-04-24'),(44,'Kay Beer III','Geo.Sanford14@gmail.com','73480031866','4290728942','1993-07-29'),(45,'Alejandro Ferry','Vivienne.Osinski22@yahoo.com','56656736901','5919631844','1954-11-27'),(46,'Dr. Morris Streich','Chad99@gmail.com','63390463942','7680524714','1971-08-08'),(47,'Ms. Amelia Hickle','Zachary25@yahoo.com','51655455492','6674815884','1980-05-29'),(48,'Marty Streich-Beahan','Deanna24@hotmail.com','24974056622','4769347853','2006-09-26'),(49,'Roberta Stehr','Joyce.Bergnaum@hotmail.com','80170792775','7109160534','1961-08-04'),(50,'Ismael Littel','Josh77@hotmail.com','44090444698','9389452213','1970-05-27'),(51,'Alex Cummerata','Lamar57@hotmail.com','60369691645','8845680459','1950-08-27'),(52,'Dora Kutch-Kovacek','Lillian_Pacocha@yahoo.com','16412815182','9870704514','1975-12-06'),(53,'Kristina Tremblay-Prohaska','Electa29@hotmail.com','85928909480','9065176236','1966-04-07'),(54,'Marie Russel','Wilma_Connelly@hotmail.com','62358100939','1546971377','1983-10-31'),(55,'Lee Hoppe','Valentine_Kemmer@yahoo.com','88536961873','4642586545','1948-06-25'),(56,'Tammy Volkman','Lucy_Haley95@gmail.com','84140616324','1892207972','1967-04-27'),(57,'Lori Okuneva','Shyann2@yahoo.com','14461511187','1261505091','1998-12-03'),(58,'Chris Stokes','Yvette.Pouros79@gmail.com','33966611367','8267414044','1993-01-20'),(59,'Mable Friesen','Sid.Rutherford30@hotmail.com','63035539868','4783549307','1998-05-24'),(60,'Lewis Parisian','Alexie92@hotmail.com','88233235271','6755611167','1993-08-02'),(61,'Lola Ankunding','Adrian_Botsford@yahoo.com','75158474263','5708713888','1963-08-03'),(62,'Carlos Heathcote','Ettie.Schultz61@hotmail.com','76409768313','8177473100','1964-09-26'),(63,'Brett Reilly','Leanna21@hotmail.com','34889744097','1144710470','2004-03-30'),(64,'Kenneth Johnston','Coleman_Hauck@yahoo.com','52252658601','8898978262','1964-11-14'),(65,'Darren Veum','Itzel_Auer77@yahoo.com','84887862950','0022409400','1984-07-11'),(66,'Martin Jones','Coy_Heaney18@gmail.com','48472329394','6464530027','1987-09-16'),(67,'Terri Reilly-Moen','Jerry44@hotmail.com','99640703511','4221376131','1980-09-22'),(68,'Faith Nolan IV','Haley69@hotmail.com','43397605874','9272845353','1966-03-13'),(69,'Sheri Mayert','Lonnie84@yahoo.com','82295505723','0313727650','1959-12-30'),(70,'Josh Langworth I','Ayana.Cronin@hotmail.com','65856786051','0535020968','1996-07-01'),(71,'bern','bernaaaaa','09608399920','123456789','2004-03-11'),(72,'bernardo','bernardo.czizyk@pucpr.edu.br','11122233344','41992705859','2004-03-11'),(73,'ioiqwje','sadasdas','11121121212','41997205859','2004-03-11'),(74,'bernardo2','sadapsdkasdkoasp','37319542369','4199720559','2004-03-11'),(75,'anderson silva','sadasdas','3731954236','11111111','2000-03-11');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-25 15:41:42
