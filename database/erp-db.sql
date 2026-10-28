-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: erpdb
-- ------------------------------------------------------
-- Server version	8.0.46

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `employee_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKas79ic8ev61x36x6i3t2mqt6q` (`employee_id`),
  CONSTRAINT `FKas79ic8ev61x36x6i3t2mqt6q` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'Chennai, Tamil Nadu','Josh M B','mbjosh853@gmail.com','082203 40487',6),(2,'Chennai, Tamil Nadu','Josh M B','mbjosh853@gmail.com','7538843404',9),(3,'Chennai, Tamil Nadu','Josh M B','mbjosh853@gmail.com','7538843404',4),(4,'Chennai','Josh M B','mbjosh853@gmail.com','082203 40487',6),(5,'Chennai','Josh M B','mbjosh853@gmail.com','082203 40487',9),(6,'Chennai','Josh M B','mbjosh853@gmail.com','082203 40487',NULL);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_roles`
--

DROP TABLE IF EXISTS `employee_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_roles` (
  `employee_id` bigint NOT NULL,
  `role_id` bigint NOT NULL,
  KEY `FK398vvu81xw154mvy3g2eytscn` (`role_id`),
  KEY `FK3uwwaxeiucvfixgd45etkjgmg` (`employee_id`),
  CONSTRAINT `FK398vvu81xw154mvy3g2eytscn` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  CONSTRAINT `FK3uwwaxeiucvfixgd45etkjgmg` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_roles`
--

LOCK TABLES `employee_roles` WRITE;
/*!40000 ALTER TABLE `employee_roles` DISABLE KEYS */;
INSERT INTO `employee_roles` VALUES (4,1),(6,2),(7,5),(8,2),(9,1),(5,3),(11,2),(12,1),(13,1),(14,1),(21,2),(22,1),(23,1),(24,1),(25,1),(26,2);
/*!40000 ALTER TABLE `employee_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (4,'Coimbatore','josh@example.com','josh','bhojan','9876543210','josh331',NULL),(5,'Coimbatore','mbjosh853@gmail.com','Josh','M B','768821799','Zack',NULL),(6,'Coimbatore','john@example.com','John','Mendis','9876543210','john123',NULL),(7,'Coimbatore','josh@example.com','josh','bhojan','9876543210','josh331',NULL),(8,'Coimbatore','josh@example.com','josh','bhojan','9876543210','josh331',NULL),(9,'Coimbatore','john@example.com','John','Smith','9876543210','john123',NULL),(11,'Head Office','admin@example.com','System','Admin','9000000000','admin','$2a$10$H6k0qi9/QpRD6uqloSMI9u36Y91qCO.IcFl8PRhh6hWU89ZWQFqua'),(12,'Chennai','john12@example.com','John','Smith','9876543210','testuser','$2a$10$t7cn/qSX9V/CLN8/UbNI9.UQMEYXxIzgyeAqWnI5ARAAAjvB4/Sey'),(13,'Chennai','john@example.com','John','Smith','9876543210','john123','$2a$10$cH1HFA33M0V6gJrNcXxxjuS7lIG8zNxVJRGbapYKt..79WA9wA4fy'),(14,'Chennai, Tamil Nadu','john@example.com','John','Mendis','9876543210','john123','$2a$10$5gsXn/1.k1qbsigvZ1SzjOu4lYmG/gbEnU7ZLhg7vsyZ2du2Ml7G6'),(21,NULL,NULL,NULL,NULL,NULL,'test','$2a$10$xsOAf6edmXWPljO75Uy4gOTqILPHtG3nP3ROlRY23kosrVLy41wTa'),(22,'Chennai','john12@example.com','John','Mendis','9876543210','john123','John@123'),(23,'Chennai','john12@example.com','John','Mendis','9876543210','john123','$2a$10$CcFTHdzKcQscH3Ri5Ew0wer7PmhdmSIrdNJDlBwR3/QJwn/Os0kZi'),(24,'Chennai','john12@example.com','John','Mendis','9876543210','john123','$2a$10$QWhgH/18gBG1zwOMTqMg7uAjTUirUWGACkOKaCIHeoOdULBzbCzaG'),(25,'Chennai','john12@example.com','John','Mendis','9876543210','Bhojan123','$2a$10$g05oBhBbubtOxGyQBFKp/uiEf3qzbB24UoSEq2wMgPOUb6dAucujS'),(26,'Coimbatore','jai@gmail.com','Jai','Dev','9876543210','JaiDev','$2a$10$26es/0bDhpRwb91bK/EnTuORfDuOBHpZywpZdktHC.9UDLhKaTzry');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'SS',10000,'Rice 12'),(3,'Sakthi',10300,'Chips');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_header`
--

DROP TABLE IF EXISTS `purchase_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_header` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_date` date DEFAULT NULL,
  `subtotal` decimal(12,2) NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `total_amount` decimal(12,2) NOT NULL,
  `supplier_id` bigint NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKlwqxkuiruq13lhon3neo2xehw` (`supplier_id`),
  CONSTRAINT `FKlwqxkuiruq13lhon3neo2xehw` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_header`
--

LOCK TABLES `purchase_header` WRITE;
/*!40000 ALTER TABLE `purchase_header` DISABLE KEYS */;
INSERT INTO `purchase_header` VALUES (1,'2026-10-19',10300.00,2266.00,12566.00,2,'PARTIAL'),(2,'2026-10-19',40600.00,7308.00,47908.00,3,'');
/*!40000 ALTER TABLE `purchase_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_items`
--

DROP TABLE IF EXISTS `purchase_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_items` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `purchase_price` decimal(12,2) NOT NULL,
  `quantity` int NOT NULL,
  `tax_amount` decimal(12,2) NOT NULL,
  `tax_percent` decimal(5,2) NOT NULL,
  `total_price` decimal(12,2) NOT NULL,
  `product_id` bigint NOT NULL,
  `purchase_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbwtjp8gfcre77l1mxverb6up0` (`product_id`),
  KEY `FK3waiebdugu64jxtr4qxt2bjpn` (`purchase_id`),
  CONSTRAINT `FK3waiebdugu64jxtr4qxt2bjpn` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_header` (`id`),
  CONSTRAINT `FKbwtjp8gfcre77l1mxverb6up0` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_items`
--

LOCK TABLES `purchase_items` WRITE;
/*!40000 ALTER TABLE `purchase_items` DISABLE KEYS */;
INSERT INTO `purchase_items` VALUES (2,10000.00,1,1800.00,18.00,11800.00,1,2),(3,10300.00,1,1854.00,18.00,12154.00,3,2),(4,10000.00,1,1800.00,18.00,11800.00,1,2),(5,10300.00,1,1854.00,18.00,12154.00,3,2),(7,10300.00,1,2266.00,22.00,12566.00,3,1);
/*!40000 ALTER TABLE `purchase_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `purchase_payments`
--

DROP TABLE IF EXISTS `purchase_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `purchase_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount_paid` decimal(12,2) NOT NULL,
  `payment_date` date NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `purchase_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKnlc3gww2mp5f1tvb5ikgd93nt` (`purchase_id`),
  CONSTRAINT `FKnlc3gww2mp5f1tvb5ikgd93nt` FOREIGN KEY (`purchase_id`) REFERENCES `purchase_header` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `purchase_payments`
--

LOCK TABLES `purchase_payments` WRITE;
/*!40000 ALTER TABLE `purchase_payments` DISABLE KEYS */;
INSERT INTO `purchase_payments` VALUES (1,12000.00,'2026-10-19','CASH','UNPAID',1);
/*!40000 ALTER TABLE `purchase_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Level 2','Manager'),(2,'Level 1','Admin'),(3,'Level 8','Labour'),(5,'Level 5','Staff');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_header`
--

DROP TABLE IF EXISTS `sales_header`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_header` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sales_date` date DEFAULT NULL,
  `subtotal` decimal(12,2) DEFAULT NULL,
  `tax_amount` decimal(12,2) DEFAULT NULL,
  `total_amount` decimal(12,2) DEFAULT NULL,
  `customer_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtflrrpbn4mvcad1cxllj0vpn5` (`customer_id`),
  CONSTRAINT `FKtflrrpbn4mvcad1cxllj0vpn5` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_header`
--

LOCK TABLES `sales_header` WRITE;
/*!40000 ALTER TABLE `sales_header` DISABLE KEYS */;
INSERT INTO `sales_header` VALUES (1,'2026-10-21',20500.00,3495.00,23995.00,1),(2,'2026-10-21',10000.00,0.00,10000.00,1);
/*!40000 ALTER TABLE `sales_header` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_item`
--

DROP TABLE IF EXISTS `sales_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `tax_amount` decimal(12,2) DEFAULT NULL,
  `tax_percent` decimal(38,2) DEFAULT NULL,
  `total_price` decimal(12,2) DEFAULT NULL,
  `unit_price` decimal(12,2) DEFAULT NULL,
  `product_id` bigint NOT NULL,
  `sale_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKayewi66r235b3x64x3ussccri` (`product_id`),
  KEY `FKee219n0w8hu6wr9fr1h66jby6` (`sale_id`),
  CONSTRAINT `FKayewi66r235b3x64x3ussccri` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKee219n0w8hu6wr9fr1h66jby6` FOREIGN KEY (`sale_id`) REFERENCES `sales_header` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_item`
--

LOCK TABLES `sales_item` WRITE;
/*!40000 ALTER TABLE `sales_item` DISABLE KEYS */;
INSERT INTO `sales_item` VALUES (3,1,0.00,0.00,10000.00,10000.00,1,2),(5,19,3420.00,18.00,22420.00,1000.00,1,1),(6,3,75.00,5.00,1575.00,500.00,3,1);
/*!40000 ALTER TABLE `sales_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_payment`
--

DROP TABLE IF EXISTS `sales_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales_payment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `amount` decimal(12,2) NOT NULL,
  `notes` varchar(500) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_method` enum('BANK_TRANSFER','CARD','CASH','CHEQUE','UPI') NOT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `sale_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKdxj7urvj35g0yhg0kenspnr3b` (`sale_id`),
  CONSTRAINT `FKdxj7urvj35g0yhg0kenspnr3b` FOREIGN KEY (`sale_id`) REFERENCES `sales_header` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_payment`
--

LOCK TABLES `sales_payment` WRITE;
/*!40000 ALTER TABLE `sales_payment` DISABLE KEYS */;
INSERT INTO `sales_payment` VALUES (1,23995.00,'','2026-10-21','CASH','12345',1);
/*!40000 ALTER TABLE `sales_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier_product`
--

DROP TABLE IF EXISTS `supplier_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier_product` (
  `supplier_id` bigint NOT NULL,
  `product_id` bigint NOT NULL,
  KEY `FKorhl4g6hcen5y7la3u6vysww0` (`product_id`),
  KEY `FKpll54ejcwbejwveblvwggo4dx` (`supplier_id`),
  CONSTRAINT `FKorhl4g6hcen5y7la3u6vysww0` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  CONSTRAINT `FKpll54ejcwbejwveblvwggo4dx` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier_product`
--

LOCK TABLES `supplier_product` WRITE;
/*!40000 ALTER TABLE `supplier_product` DISABLE KEYS */;
INSERT INTO `supplier_product` VALUES (2,1),(3,1),(3,3);
/*!40000 ALTER TABLE `supplier_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suppliers`
--

DROP TABLE IF EXISTS `suppliers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suppliers` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `supplier_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suppliers`
--

LOCK TABLES `suppliers` WRITE;
/*!40000 ALTER TABLE `suppliers` DISABLE KEYS */;
INSERT INTO `suppliers` VALUES (2,'Coimbatore, Tamil Nadu','Updated Electronics supplier','abcupdated@example.com','9876543210','ABC Suppliers Updated'),(3,'Coimbatore','ABCD','mbjosh853@gmail.com','082203 40487','123 Company');
/*!40000 ALTER TABLE `suppliers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-10-28 20:37:24
