/*
Navicat MySQL Data Transfer

Source Server         : jngulr
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : angularjava

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2021-12-14 10:19:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detail_order
-- ----------------------------
DROP TABLE IF EXISTS `detail_order`;
CREATE TABLE `detail_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `id_producto` int(20) DEFAULT NULL,
  `id_orden` int(20) DEFAULT NULL,
  `cantidad` int(255) DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detail_order
-- ----------------------------
INSERT INTO `detail_order` VALUES ('2', '1', '23', '2', '3.00');
INSERT INTO `detail_order` VALUES ('17', '1', '26', '1', '1.00');
INSERT INTO `detail_order` VALUES ('18', '3', '26', '3', '30.00');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cantidad_impuesto` varchar(255) DEFAULT NULL,
  `idcategoria` int(20) DEFAULT NULL,
  `estado_logica` varchar(50) DEFAULT NULL,
  `nro_pedido` int(20) DEFAULT NULL,
  `cliente` varchar(100) DEFAULT NULL,
  `fecha` varchar(50) DEFAULT NULL,
  `total_impuesto` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `sub_total` decimal(10,2) DEFAULT NULL,
  `cantidad_total` int(20) DEFAULT NULL,
  `estado` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('23', '', null, '', '56', 'prueba cliente', '02-04-2021', '0.98', '4.58', '3.60', null, 'Pending');
INSERT INTO `orders` VALUES ('26', '', null, '', '576', 'angelica carrasco editado', '30-01-2021', '8.66', '40.46', '31.80', null, 'Pending');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idcategoria` varchar(255) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `precio_unitario` varchar(255) DEFAULT NULL,
  `estados` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('1', '133', 'Galleta Oreo', '1.80', 'Activo');
INSERT INTO `product` VALUES ('2', '23', 'Gaseosa', '2.50', 'Inactivo');
INSERT INTO `product` VALUES ('3', '2', 'Agua Mineral', '10', 'Activo');
