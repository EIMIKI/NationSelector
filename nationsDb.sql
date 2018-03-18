-- MySQL dump 10.13  Distrib 5.7.21, for Linux (x86_64)
--
-- Host: localhost    Database: nationsDb
-- ------------------------------------------------------
-- Server version	5.7.21-0ubuntu0.16.04.1

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
-- Table structure for table `nations`
--

DROP TABLE IF EXISTS `nations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nations` (
  `nation_name` varchar(20) NOT NULL,
  `area_id` int(11) NOT NULL,
  `ideology_id` int(11) NOT NULL,
  `team_id` int(11) NOT NULL,
  `sea` tinyint(4) NOT NULL,
  `nf` tinyint(4) NOT NULL,
  PRIMARY KEY (`nation_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nations`
--

LOCK TABLES `nations` WRITE;
/*!40000 ALTER TABLE `nations` DISABLE KEYS */;
INSERT INTO `nations` VALUES ('アイルランド',5,1,4,1,2),('アフガニスタン',6,4,4,2,2),('アメリカ合衆国',1,1,1,1,1),('アルゼンチン',3,4,4,1,2),('アルバニア',5,4,4,1,2),('イエメン',7,4,4,1,2),('イギリス',5,1,1,1,1),('イギリス領インド',6,4,1,1,1),('イギリス領マラヤ',8,1,1,1,2),('イタリア',5,2,4,1,1),('イラク',7,4,4,1,2),('イラン',6,4,4,1,2),('ウルグアイ',3,1,4,1,2),('エクアドル',3,1,4,1,2),('エストニア',5,4,4,1,2),('エチオピア',4,4,4,2,2),('エルサルバドル',2,2,4,1,2),('オマーン',7,4,4,1,2),('オランダ',5,1,4,1,2),('オランダ領東インド',8,1,4,1,2),('オーストラリア',8,1,1,1,1),('オーストリア',5,4,4,2,2),('カナダ自治領',1,1,1,1,1),('キューバ',2,1,4,1,2),('ギリシャ',5,4,4,1,2),('グアテマラ',2,4,4,1,2),('コスタリカ',2,1,4,1,2),('コロンビア',3,1,4,1,2),('サウジアラビア',7,4,4,1,2),('シャム',8,4,4,1,2),('スイス',5,1,4,2,2),('スウェーデン',5,1,4,1,2),('スペイン',5,1,4,1,2),('ソビエト連邦(east)',6,3,3,1,1),('ソビエト連邦(west)',5,3,3,1,1),('タンヌ・トゥヴァ',6,3,3,2,2),('チェコスロバキア',5,1,4,2,1),('チベット',6,4,4,2,2),('チリ',3,1,4,1,2),('デンマーク',5,1,4,1,2),('ドイツ',5,2,2,1,1),('ドミニカ共和国',2,2,4,1,2),('ニカラグア',2,4,4,1,2),('ニュージーランド',8,1,1,1,1),('ネパール',6,4,4,2,2),('ノルウェー',5,1,4,1,2),('ハイチ',2,1,4,1,2),('ハンガリー王国',5,4,4,2,1),('パナマ',2,1,4,1,2),('パラグアイ',3,3,4,2,2),('フィリピン',8,1,4,1,2),('フィンランド',5,4,4,1,2),('フランス',5,1,4,1,1),('ブラジル',3,4,4,1,2),('ブルガリア',5,4,4,1,2),('ブータン',6,4,4,2,2),('ベネズエラ',3,2,4,1,2),('ベルギー',5,1,4,1,2),('ペルー',3,2,4,1,2),('ホンジュラス',2,1,4,1,2),('ボリビア',3,4,4,2,2),('ポルトガル',5,4,4,1,2),('ポーランド',5,4,4,1,1),('メキシコ',2,4,4,1,2),('モンゴル',6,3,3,2,2),('ユーゴスラビア',5,4,4,1,1),('ラトビア',5,4,4,1,2),('リトアニア',5,4,4,1,2),('リベリア',4,1,4,1,2),('ルーマニア王国',5,4,4,1,1),('中国共産党',6,3,4,2,1),('中華民国',6,4,4,1,1),('南アフリカ',4,1,1,1,1),('大日本帝国',6,2,4,1,1),('山西',6,4,4,2,1),('広西軍閥',6,4,4,1,1),('満州国',6,2,4,1,1),('蒙古国',6,2,4,2,2),('西北三馬',6,4,4,2,1),('雲南',6,4,4,2,1);
/*!40000 ALTER TABLE `nations` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-03-13  2:27:17
