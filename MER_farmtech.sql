-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'Sensor_ph'
-- 
-- ---

DROP TABLE IF EXISTS `Sensor_ph`;
		
CREATE TABLE `Sensor_ph` (
  `id_sensor_ph` INTEGER NOT NULL DEFAULT NULL,
  `valor_ph` FLOAT NULL DEFAULT NULL,
  `data_hora` DATETIME NULL DEFAULT NULL,
  `id_zona_plantacao` INT NULL DEFAULT NULL,
  PRIMARY KEY (`id_sensor_ph`),
KEY ()
);

-- ---
-- Table 'Sensor_nutrientes'
-- 
-- ---

DROP TABLE IF EXISTS `Sensor_nutrientes`;
		
CREATE TABLE `Sensor_nutrientes` (
  `id_sensor_nutrientes` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `valor_potassio` DOUBLE NULL DEFAULT NULL,
  `valor_fosforo` DOUBLE NULL DEFAULT NULL,
  `data_hora` DATETIME NULL DEFAULT NULL,
  `id_zona_plantacao` INTEGER NOT NULL AUTO_INCREMENT DEFAULT NULL,
  PRIMARY KEY (`id_sensor_nutrientes`)
);

-- ---
-- Table 'Sensor_umidade'
-- 
-- ---

DROP TABLE IF EXISTS `Sensor_umidade`;
		
CREATE TABLE `Sensor_umidade` (
  `id_sensor_umidade ` INTEGER NULL AUTO_INCREMENT DEFAULT NULL,
  `valor_umidade` DOUBLE NULL DEFAULT NULL,
  `data_hora` DATETIME NULL DEFAULT NULL,
  `id_zona_plantacao` INTEGER NULL DEFAULT NULL,
  PRIMARY KEY (`id_sensor_umidade `)
);

-- ---
-- Table 'Zona_plantacao'
-- 
-- ---

DROP TABLE IF EXISTS `Zona_plantacao`;
		
CREATE TABLE `Zona_plantacao` (
  `id_zona_plantacao` INTEGER NULL DEFAULT NULL,
  `nome_zona` VARCHAR NULL DEFAULT NULL,
  `descricao` MEDIUMTEXT NULL DEFAULT NULL,
  PRIMARY KEY (`id_zona_plantacao`)
);

-- ---
-- Foreign Keys 
-- ---

ALTER TABLE `Sensor_ph` ADD FOREIGN KEY (id_zona_plantacao) REFERENCES `Zona_plantacao` (`id_zona_plantacao`);
ALTER TABLE `Sensor_nutrientes` ADD FOREIGN KEY (id_zona_plantacao) REFERENCES `Zona_plantacao` (`id_zona_plantacao`);
ALTER TABLE `Sensor_umidade` ADD FOREIGN KEY (id_zona_plantacao) REFERENCES `Zona_plantacao` (`id_zona_plantacao`);

-- ---
-- Table Properties
-- ---

-- ALTER TABLE `Sensor_ph` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Sensor_nutrientes` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Sensor_umidade` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `Zona_plantacao` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `Sensor_ph` (`id_sensor_ph`,`valor_ph`,`data_hora`,`id_zona_plantacao`) VALUES
-- ('','','','');
-- INSERT INTO `Sensor_nutrientes` (`id_sensor_nutrientes`,`valor_potassio`,`valor_fosforo`,`data_hora`,`id_zona_plantacao`) VALUES
-- ('','','','','');
-- INSERT INTO `Sensor_umidade` (`id_sensor_umidade `,`valor_umidade`,`data_hora`,`id_zona_plantacao`) VALUES
-- ('','','','');
-- INSERT INTO `Zona_plantacao` (`id_zona_plantacao`,`nome_zona`,`descricao`) VALUES
-- ('','','');