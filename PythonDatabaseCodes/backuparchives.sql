-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: archives
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `myarchives`
--

DROP TABLE IF EXISTS `myarchives`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `myarchives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `comments` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `myarchives`
--

LOCK TABLES `myarchives` WRITE;
/*!40000 ALTER TABLE `myarchives` DISABLE KEYS */;
INSERT INTO `myarchives` VALUES (1,'nasa','ISS Station ','CGI Screen And trainning under water with the help of scoop diver'),(2,'antartica','operation high jump','This is about the amiral byrd'),(3,'nasa','operation fishbowl','This is about trying to go in space..breaking the dome'),(4,'nasa','operation bluebeam','This is the holographic project showing 3D image in the sky'),(5,'setti','WOW signal','In august 15 1977 a 1.4 ghz signal appear for 72 sec 6EQUJ5'),(6,'CIA','project montauk','Project about time travel and continuity of Mk Ultra'),(7,'CIA','Pont St-Esprit France','This is a project about LSD effects on human without knowing it'),(8,'CERN','CERN partical collider','This is about opening doorway to another dimension'),(9,'Galaktika Group','Aliya Prokofyeva','She\'s founder of the Galaktika Group in project to build space station city'),(10,'CIA','MK ULTRA','Project about mind control with LSD and Electrochoc and long period of subliminal recording\r\nBetween 1957 and 1964 (though possibly beginning as early as 1948), psychiatric experiments were conducted at the Allan Memorial Institute in Montreal '),(11,'CIA','Allan Memorial Institute','Mind Control Brainwashed experiment in Montreal Canada With drugs like LSD'),(12,'UFO','The Phoenix Incidents','In 1997 Phoenix Arizona Nevada 57 incidents occurs military engaged against unknowd origine enemy and 4 men desipearence'),(13,'Military','The Philadelphia Experiment','US Navy attempted to render invisible The USS Edridge 28 October 1943'),(14,'Military','Battle of Los Angeles','from late 24 February to early 25 February 1942, over Los Angeles, California.Giant UFO cross the sky Navy try to shot down the craft'),(15,'CIA','Stargate Project','CIA and DIA investigate the potential for psychic phenomena in military and domestic intelligence applications between 1970 and 1995'),(16,'CIA','Operation Midnight Climax','Operation Midnight Climax was established in order to study the effects of LSD on non-consenting individuals. Prostitutes on the CIA payroll were instructed to lure clients back to the safehouses, where they were surreptitiously plied with a wide range of substances, including LSD, and monitored behind one-way glass. The prostitutes were instructed in the use of post-coital questioning to investigate whether the victims could be convinced to involuntarily reveal secrets.'),(17,'CIA','Operation Gold','The plan was activated in 1954 because of fears that the Soviets might be launching a nuclear attack at any time, having already detonated a hydrogen bomb in August 1953 as part of the Soviet atomic bomb project.'),(18,'UFO','Betz Mystery Sphere','On March 27, 1974, the Betz family investigated a small brush fire near their residence in Ft. George Island, Florida The family of three, Antoine, Jerri, and son Terry, came across a small metal sphere the size of a bowling ball'),(19,'Military','Operation Argus','In 1958 The United States Navy Task Force 88 (TF 88) conducted one of the U.S.’s most expeditiously planned and executed nuclear tests operations in high altitude.'),(20,'Military','Base B-52 Crash with 4 Hydrogen Bombs','On 21 January 1968, an aircraft accident involving a United States Air Force (USAF) B-52 bomber occurred near Thule Air Base in the Danish territory of Greenland.'),(21,'UFO','Missing 411','411 peoples vanish from US natinal park across the World.Paulides broadened his investigation to include missing people from across the world, and this led to his belief that he has uncovered a mysterious series of worldwide disappearances, which he said defied logical and conventional explanations.'),(22,'UFO','Project Serpo','10 years exploration of alien planet by letting alien to conduct experiences  exchange letting alien abducting humans for bioligical experiments.'),(23,'CIA','Project Azorian','Project Azorian was a U.S. Central Intelligence Agency project to recover the sunken Soviet submarine K-129 from the Pacific Ocean floor in 1974, using the purpose-built ship Hughes Glomar Explorer.'),(24,'CIA','Gateway Process','Its about out of body projection by altering the state of consciousness(The Gateway Experience).');
/*!40000 ALTER TABLE `myarchives` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-01  9:34:01
