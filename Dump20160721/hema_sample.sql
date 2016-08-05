-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: hema
-- ------------------------------------------------------
-- Server version	5.7.13-log

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
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sample` (
  `ID` char(20) NOT NULL,
  `Disease` varchar(30) DEFAULT NULL,
  `Tissue` varchar(20) DEFAULT NULL,
  `ChromosomeAbnormal` varchar(60) DEFAULT NULL,
  `Cell_Type_ID` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Cell_Type_ID` (`Cell_Type_ID`),
  CONSTRAINT `sample_ibfk_1` FOREIGN KEY (`Cell_Type_ID`) REFERENCES `celltype` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
INSERT INTO `sample` VALUES ('GSM1039578','No','cord blood','normal','HSC'),('GSM1039579','No','cord blood','normal','HSC'),('GSM1039580','No','cord blood','normal','HSC'),('GSM1039581','No','cord blood','normal','HSC'),('GSM1039582','No','cord blood','normal','HSC'),('GSM1039583','No','cord blood','normal','HSC'),('GSM1039584','No','cord blood','normal','HSC'),('GSM1039585','No','cord blood','normal','HSC'),('GSM1039586','No','cord blood','normal','HSC'),('GSM1039587','No','cord blood','normal','HSC'),('GSM1039588','No','cord blood','normal','MPP'),('GSM1039589','No','cord blood','normal','MPP'),('GSM1039590','No','cord blood','normal','MPP'),('GSM1039591','No','cord blood','normal','MPP'),('GSM1039592','No','cord blood','normal','MPP'),('GSM1039593','No','cord blood','normal','MLP'),('GSM1039594','No','cord blood','normal','MLP'),('GSM1039595','No','cord blood','normal','MLP'),('GSM1039596','No','cord blood','normal','MLP'),('GSM1039597','No','cord blood','normal','CMP'),('GSM1039598','No','cord blood','normal','CMP'),('GSM1039599','No','cord blood','normal','CMP'),('GSM1039600','No','cord blood','normal','CMP'),('GSM1039601','No','cord blood','normal','CMP'),('GSM1039602','No','cord blood','normal','GMP'),('GSM1039603','No','cord blood','normal','GMP'),('GSM1039604','No','cord blood','normal','GMP'),('GSM1039605','No','cord blood','normal','GMP'),('GSM1039606','No','cord blood','normal','GMP'),('GSM1039607','No','cord blood','normal','MEP'),('GSM1039608','No','cord blood','normal','MEP'),('GSM1039609','No','cord blood','normal','MEP'),('GSM1039610','No','cord blood','normal','BNK'),('GSM1039611','No','cord blood','normal','BNK'),('GSM1039612','No','cord blood','normal','BNK'),('GSM1039613','No','cord blood','normal','ProB'),('GSM1039614','No','cord blood','normal','ProB'),('GSM1039615','No','cord blood','normal','ProB'),('GSM1039616','No','cord blood','normal','ETP'),('GSM1039617','No','cord blood','normal','ETP'),('GSM1039618','No','cord blood','normal','ETP'),('GSM483297','MDS (RARS)','bone marrow','normal','HSC'),('GSM483298','MDS (RARS)','bone marrow','normal','HSC'),('GSM483299','MDS (RARS)','bone marrow','normal','HSC'),('GSM483300','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483301','MDS (RA)','bone marrow','del5q','HSC'),('GSM483302','MDS (RA)','bone marrow','del5q','HSC'),('GSM483303','MDS (RA)','bone marrow','del5q','HSC'),('GSM483304','MDS (RAEB2)','bone marrow','del5q','HSC'),('GSM483305','MDS (RA)','bone marrow','del5q plus other','HSC'),('GSM483306','MDS (RARS)','bone marrow','del5q','HSC'),('GSM483307','MDS (RA)','bone marrow','del5q','HSC'),('GSM483308','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483309','MDS (RARS)','bone marrow','del5q plus other','HSC'),('GSM483310','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483311','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483312','MDS (RA)','bone marrow','del5q plus other','HSC'),('GSM483313','MDS (RA)','bone marrow','normal','HSC'),('GSM483314','MDS (RARS)','bone marrow','normal','HSC'),('GSM483315','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483316','MDS (RARS)','bone marrow','normal','HSC'),('GSM483317','MDS (RA)','bone marrow','del5q','HSC'),('GSM483318','MDS (RA)','bone marrow','del5q plus monosomy7/del7q plus other','HSC'),('GSM483319','MDS (RA)','bone marrow','del5q','HSC'),('GSM483320','MDS (RAEB2)','bone marrow','del5q','HSC'),('GSM483321','MDS (RARS)','bone marrow','normal','HSC'),('GSM483322','MDS (RA)','bone marrow','del5q','HSC'),('GSM483323','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483324','MDS (RARS)','bone marrow','other','HSC'),('GSM483325','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483326','MDS (RARS)','bone marrow','normal','HSC'),('GSM483327','MDS (RA)','bone marrow','del5q','HSC'),('GSM483328','MDS (RA)','bone marrow','normal','HSC'),('GSM483329','MDS (RAEB2)','bone marrow','del5q plus other','HSC'),('GSM483330','MDS (RA)','bone marrow','other','HSC'),('GSM483331','MDS (RAEB2)','bone marrow','del5q','HSC'),('GSM483332','MDS (RA)','bone marrow','del5q','HSC'),('GSM483333','MDS (RA)','bone marrow','normal','HSC'),('GSM483334','MDS (RAEB2)','bone marrow','del5q plus monosomy7/del7q plus other','HSC'),('GSM483335','MDS (RARS)','bone marrow','normal','HSC'),('GSM483336','MDS (RA)','bone marrow','normal','HSC'),('GSM483337','MDS (RA)','bone marrow','normal','HSC'),('GSM483338','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483339','MDS (RA)','bone marrow','normal','HSC'),('GSM483340','MDS (RARS)','bone marrow','normal','HSC'),('GSM483341','MDS (RAEB2)','bone marrow','del5q','HSC'),('GSM483342','MDS (RARS)','bone marrow','del5q plus monosomy7/del7q plus other','HSC'),('GSM483343','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483344','MDS (RAEB2)','bone marrow','monosomy7/del(7q)','HSC'),('GSM483345','MDS (RARS)','bone marrow','other','HSC'),('GSM483346','MDS (RARS)','bone marrow','other','HSC'),('GSM483347','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483348','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483349','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483350','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483351','MDS (RA)','bone marrow','normal','HSC'),('GSM483352','MDS (RA)','bone marrow','normal','HSC'),('GSM483353','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483354','MDS (RA)','bone marrow','del5q','HSC'),('GSM483355','MDS (RARS)','bone marrow','normal','HSC'),('GSM483356','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483357','MDS (RARS)','bone marrow','normal','HSC'),('GSM483358','MDS (RA)','bone marrow','del5q','HSC'),('GSM483359','MDS (RARS)','bone marrow','other','HSC'),('GSM483360','MDS (RARS)','bone marrow','normal','HSC'),('GSM483361','MDS (RAEB1)','bone marrow','other','HSC'),('GSM483362','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483363','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483364','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483365','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483366','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483367','MDS (RAEB2)','bone marrow','trisomy8','HSC'),('GSM483368','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483369','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483370','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483371','MDS (RAEB1)','bone marrow','trisomy8','HSC'),('GSM483372','MDS (RAEB1)','bone marrow','del5q plus other','HSC'),('GSM483373','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483374','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483375','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483376','MDS (RAEB2)','bone marrow','del5q plus other','HSC'),('GSM483377','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483378','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483379','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483380','MDS (RAEB1)','bone marrow','trisomy8','HSC'),('GSM483381','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483382','MDS (RARS)','bone marrow','normal','HSC'),('GSM483383','MDS (RARS)','bone marrow','trisomy8','HSC'),('GSM483384','MDS (RA)','bone marrow','normal','HSC'),('GSM483385','MDS (RAEB2)','bone marrow','trisomy8','HSC'),('GSM483386','MDS (RA)','bone marrow','del5q','HSC'),('GSM483387','MDS (RARS)','bone marrow','normal','HSC'),('GSM483388','MDS (RA)','bone marrow','normal','HSC'),('GSM483389','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483390','MDS (RA)','bone marrow','normal','HSC'),('GSM483391','MDS (RA)','bone marrow','del5q','HSC'),('GSM483392','MDS (RARS)','bone marrow','normal','HSC'),('GSM483393','MDS (RARS)','bone marrow','monosomy7/del(7q)','HSC'),('GSM483394','MDS (RARS)','bone marrow','normal','HSC'),('GSM483395','MDS (RARS)','bone marrow','normal','HSC'),('GSM483396','MDS (RA)','bone marrow','normal','HSC'),('GSM483397','MDS (RARS)','bone marrow','other','HSC'),('GSM483398','MDS (RARS)','bone marrow','normal','HSC'),('GSM483399','MDS (RA)','bone marrow','normal','HSC'),('GSM483400','MDS (RA)','bone marrow','monosomy7/del(7q)','HSC'),('GSM483401','MDS (RA)','bone marrow','normal','HSC'),('GSM483402','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483403','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483404','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483405','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483406','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483407','MDS (RAEB2)','bone marrow','del5q plus monosomy7/del7q plus other','HSC'),('GSM483408','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483409','MDS (RARS)','bone marrow','other','HSC'),('GSM483410','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483411','MDS (RAEB1)','bone marrow','del5q plus other','HSC'),('GSM483412','MDS (RA)','bone marrow','normal','HSC'),('GSM483413','MDS (RAEB1)','bone marrow','del5q plus other','HSC'),('GSM483414','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483415','MDS (RAEB2)','bone marrow','del5q plus monosomy7/del7q plus trisomy8 plus other','HSC'),('GSM483416','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483417','MDS (RAEB1)','bone marrow','del5q','HSC'),('GSM483418','MDS (RA)','bone marrow','normal','HSC'),('GSM483419','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483420','MDS (RA)','bone marrow','normal','HSC'),('GSM483421','MDS (RA)','bone marrow','normal','HSC'),('GSM483422','MDS (RARS)','bone marrow','del5q plus other','HSC'),('GSM483423','MDS (RARS)','bone marrow','normal','HSC'),('GSM483424','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483425','MDS (RARS)','bone marrow','other','HSC'),('GSM483426','MDS (RA)','bone marrow','normal','HSC'),('GSM483427','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483428','MDS (RA)','bone marrow','del5q','HSC'),('GSM483429','MDS (RARS)','bone marrow','normal','HSC'),('GSM483430','MDS (RARS)','bone marrow','normal','HSC'),('GSM483431','MDS (RA)','bone marrow','del5q','HSC'),('GSM483432','MDS (RARS)','bone marrow','other','HSC'),('GSM483433','MDS (RAEB1)','bone marrow','other','HSC'),('GSM483434','MDS (RAEB1)','bone marrow','other','HSC'),('GSM483435','MDS (RARS)','bone marrow','normal','HSC'),('GSM483436','MDS (RA)','bone marrow','other','HSC'),('GSM483437','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483438','MDS (RARS)','bone marrow','normal','HSC'),('GSM483439','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483440','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483441','MDS (RARS)','bone marrow','normal','HSC'),('GSM483442','MDS (RA)','bone marrow','other','HSC'),('GSM483443','MDS (RA)','bone marrow','other','HSC'),('GSM483444','MDS (RA)','bone marrow','other','HSC'),('GSM483445','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483446','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483447','MDS (RA)','bone marrow','monosomy7/del(7q)','HSC'),('GSM483448','MDS (RA)','bone marrow','del5q plus other','HSC'),('GSM483449','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483450','MDS (RA)','bone marrow','del5q','HSC'),('GSM483451','MDS (RARS)','bone marrow','normal','HSC'),('GSM483452','MDS (RARS)','bone marrow','normal','HSC'),('GSM483453','MDS (RARS)','bone marrow','other','HSC'),('GSM483454','MDS (RAEB2)','bone marrow','del5q plus monosomy7/del7q plus other','HSC'),('GSM483455','MDS (RA)','bone marrow','normal','HSC'),('GSM483456','MDS (RAEB2)','bone marrow','del5q plus other','HSC'),('GSM483457','MDS (RARS)','bone marrow','del5q plus other','HSC'),('GSM483458','MDS (RA)','bone marrow','other','HSC'),('GSM483459','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483460','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483461','MDS (RA)','bone marrow','normal','HSC'),('GSM483462','MDS (RA)','bone marrow','other','HSC'),('GSM483463','MDS (RAEB2)','bone marrow','other','HSC'),('GSM483464','MDS (RA)','bone marrow','del5q','HSC'),('GSM483465','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483466','MDS (RA)','bone marrow','other','HSC'),('GSM483467','MDS (RARS)','bone marrow','normal','HSC'),('GSM483468','MDS (RA)','bone marrow','normal','HSC'),('GSM483469','MDS (RARS)','bone marrow','normal','HSC'),('GSM483470','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483471','MDS (RAEB2)','bone marrow','normal','HSC'),('GSM483472','MDS (RARS)','bone marrow','normal','HSC'),('GSM483473','MDS (RAEB1)','bone marrow','other','HSC'),('GSM483474','MDS (RARS)','bone marrow','other','HSC'),('GSM483475','MDS (RARS)','bone marrow','normal','HSC'),('GSM483476','MDS (RA)','bone marrow','other','HSC'),('GSM483477','MDS (RA)','bone marrow','monosomy7/del(7q)','HSC'),('GSM483478','MDS (RAEB1)','bone marrow','normal','HSC'),('GSM483479','MDS (RARS)','bone marrow','normal','HSC'),('GSM483480','No','bone marrow','normal','HSC'),('GSM483481','No','bone marrow','normal','HSC'),('GSM483482','No','bone marrow','normal','HSC'),('GSM483483','No','bone marrow','normal','HSC'),('GSM483484','No','bone marrow','normal','HSC'),('GSM483485','No','bone marrow','normal','HSC'),('GSM483486','No','bone marrow','normal','HSC'),('GSM483487','No','bone marrow','normal','HSC'),('GSM483488','No','bone marrow','normal','HSC'),('GSM483489','No','bone marrow','normal','HSC'),('GSM483490','No','bone marrow','normal','HSC'),('GSM483491','No','bone marrow','normal','HSC'),('GSM483492','No','bone marrow','normal','HSC'),('GSM483493','No','bone marrow','normal','HSC'),('GSM483494','No','bone marrow','normal','HSC'),('GSM483495','No','bone marrow','normal','HSC'),('GSM483496','No','bone marrow','normal','HSC');
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-21 10:05:15