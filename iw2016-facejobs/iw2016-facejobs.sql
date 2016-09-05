-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 05-09-2016 a las 18:21:38
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

CREATE DATABASE IF NOT EXISTS `facejobs`;

use `facejobs`;

-- 
-- Base de datos: `facejobs`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `centro`
-- 

DROP TABLE IF EXISTS `centro`;
CREATE TABLE IF NOT EXISTS `centro` (
  `id` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(255) NOT NULL,
  `version` int(11) default NULL,
  `id_formacion_demandante_centro` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_sw2cbhqt2k1xb4qw7utqxlv0q` (`id_formacion_demandante_centro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `centro`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `demandante`
-- 

DROP TABLE IF EXISTS `demandante`;
CREATE TABLE IF NOT EXISTS `demandante` (
  `id` bigint(20) NOT NULL auto_increment,
  `direccion` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `experiencia` varchar(255) default NULL,
  `fec_nac` datetime default NULL,
  `foto` varchar(255) default NULL,
  `nombre` varchar(255) NOT NULL,
  `resumen_tray` varchar(255) default NULL,
  `telefono` varchar(255) default NULL,
  `tipo_sexo` int(11) NOT NULL,
  `trabajos_disp` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_experiencia_demandante` bigint(20) default NULL,
  `id_formacion_demandante_demandante` bigint(20) default NULL,
  `id_inscripcion_demandante` bigint(20) default NULL,
  `id_puesto_demandante` bigint(20) default NULL,
  `idusuario_dem` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_a72igk1bbldb34x70a02rqmn9` (`id_experiencia_demandante`),
  KEY `FK_mgtsoqd3rqd71nsn0g795msmw` (`id_formacion_demandante_demandante`),
  KEY `FK_7n75o69u7qfm711twmrne441e` (`id_inscripcion_demandante`),
  KEY `FK_98iks47009lqf0qtgdb75tx75` (`id_puesto_demandante`),
  KEY `FK_d5mxwjex6u3r6vp6l4wm5f9j7` (`idusuario_dem`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `demandante`
-- 

INSERT INTO `demandante` VALUES (1, 'asdasd11', 'gfhg', 'asd', '2016-09-28 00:00:00', 'asdvas', 'jose', 'sdca', '3e23', 0, 'sdfds', 0, NULL, NULL, NULL, NULL, 2);
INSERT INTO `demandante` VALUES (2, 'jh', 'jh', '', NULL, 'DA', 'gonzalo', 'jh', '54', 0, 'aaaa', 0, 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa`
-- 

DROP TABLE IF EXISTS `empresa`;
CREATE TABLE IF NOT EXISTS `empresa` (
  `id` bigint(20) NOT NULL auto_increment,
  `act_prof` varchar(255) default NULL,
  `cif` varchar(255) NOT NULL,
  `email` varchar(255) default NULL,
  `nombre` varchar(255) NOT NULL,
  `num_emp` int(11) default NULL,
  `version` int(11) default NULL,
  `idusuario_emp` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_fyuskyhn410ud6kint7vu7auf` (`idusuario_emp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `empresa`
-- 

INSERT INTO `empresa` VALUES (1, 'ua', 'c54543', 'aa@uca.es', 'uca', 12, 0, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `experiencia`
-- 

DROP TABLE IF EXISTS `experiencia`;
CREATE TABLE IF NOT EXISTS `experiencia` (
  `id` bigint(20) NOT NULL auto_increment,
  `fecfin` datetime default NULL,
  `fecini` datetime default NULL,
  `salario` int(11) default NULL,
  `tareas` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_demandante` bigint(20) default NULL,
  `id_puesto_experiencia` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_b9ofvsh7pm156bkuyg7mijghw` (`id_demandante`),
  KEY `FK_822itl7ly716pmkclojn4p0d6` (`id_puesto_experiencia`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `experiencia`
-- 

INSERT INTO `experiencia` VALUES (1, '2016-09-07 00:00:00', '2016-09-07 00:00:00', 123231, '12312', 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `formacion`
-- 

DROP TABLE IF EXISTS `formacion`;
CREATE TABLE IF NOT EXISTS `formacion` (
  `id` bigint(20) NOT NULL auto_increment,
  `nivel` varchar(255) default NULL,
  `titulacion` varchar(255) NOT NULL,
  `version` int(11) default NULL,
  `id_tipo_formacion` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_24unppnu4x02qab7b4vmhe1tn` (`id_tipo_formacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `formacion`
-- 

INSERT INTO `formacion` VALUES (1, 'eesi', 'ingenieria', 0, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `formaciondemandante`
-- 

DROP TABLE IF EXISTS `formaciondemandante`;
CREATE TABLE IF NOT EXISTS `formaciondemandante` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `id_formacion_demandante_centro` bigint(20) default NULL,
  `id_formacion_demandante_demandante` bigint(20) default NULL,
  `id_formacion_demandante_formacion` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_92qp3j7unrp61c1lkx4bl45qx` (`id_formacion_demandante_centro`),
  KEY `FK_g6fdeewx7k49d951iamrmvt0n` (`id_formacion_demandante_demandante`),
  KEY `FK_dad40uvkajv9wubq93p8fe3yq` (`id_formacion_demandante_formacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `formaciondemandante`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `inscripcion`
-- 

DROP TABLE IF EXISTS `inscripcion`;
CREATE TABLE IF NOT EXISTS `inscripcion` (
  `id` bigint(20) NOT NULL auto_increment,
  `estado` int(11) NOT NULL,
  `version` int(11) default NULL,
  `id_demandante` bigint(20) default NULL,
  `id_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ojwhoqftbeynjroux6m2cai3l` (`id_demandante`),
  KEY `FK_ds2ahd6b1aihkkodv9n1ggn1k` (`id_oferta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `inscripcion`
-- 

INSERT INTO `inscripcion` VALUES (1, 0, 0, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `oferta`
-- 

DROP TABLE IF EXISTS `oferta`;
CREATE TABLE IF NOT EXISTS `oferta` (
  `id` bigint(20) NOT NULL auto_increment,
  `estado` int(11) default NULL,
  `fec_fin_oferta` datetime default NULL,
  `fec_ini_oferta` datetime default NULL,
  `fecha_inc` datetime default NULL,
  `info_puesto` varchar(255) NOT NULL,
  `num_vac` int(11) default NULL,
  `perfil_dem` varchar(255) default NULL,
  `salario_bruto` int(11) default NULL,
  `tipo_contrato` int(11) default NULL,
  `titulo` varchar(255) NOT NULL,
  `version` int(11) default NULL,
  `id_formacion` bigint(20) default NULL,
  `id_inscripcion_oferta` bigint(20) default NULL,
  `id_puesto_oferta` bigint(20) default NULL,
  `id_sede_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_7fskxl1k21dd5yu28st5xa69m` (`id_formacion`),
  KEY `FK_ato0c3c6wowf69grguynjbaal` (`id_inscripcion_oferta`),
  KEY `FK_661ulupjggglqul00j9n2yxg0` (`id_puesto_oferta`),
  KEY `FK_p6xltqa341q4h5kxa7srg6s4j` (`id_sede_oferta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `oferta`
-- 

INSERT INTO `oferta` VALUES (1, 0, '2016-09-20 00:00:00', '2016-09-07 00:00:00', '2016-09-07 00:00:00', 'qwe', 1, 'qsdas', 21, 0, 'oferta1', 0, NULL, NULL, NULL, 1);
INSERT INTO `oferta` VALUES (2, 0, '2016-09-20 00:00:00', '2016-09-13 00:00:00', '2016-09-09 00:00:00', 'af', 1231, 'asdfa', 123, 0, 'ppp', 0, 1, NULL, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `puesto`
-- 

DROP TABLE IF EXISTS `puesto`;
CREATE TABLE IF NOT EXISTS `puesto` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `id_puesto_demandante` bigint(20) default NULL,
  `id_puesto_experiencia` bigint(20) default NULL,
  `id_puesto_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_cs5i2avsg0s7j0qmfqkvij7kq` (`id_puesto_demandante`),
  KEY `FK_3y6s9dtnhmun40d7nl8dem4jp` (`id_puesto_experiencia`),
  KEY `FK_nlwkvpf1k01fja0tfi78hne77` (`id_puesto_oferta`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `puesto`
-- 

INSERT INTO `puesto` VALUES (1, 0, 1, 1, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sede`
-- 

DROP TABLE IF EXISTS `sede`;
CREATE TABLE IF NOT EXISTS `sede` (
  `id` bigint(20) NOT NULL auto_increment,
  `ciudad` varchar(255) default NULL,
  `nombre` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_empresa` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_t12ftsosrsc3pbnvjqoe7evll` (`id_empresa`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `sede`
-- 

INSERT INTO `sede` VALUES (1, 'protreal', 'ptoreal', 0, 1);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipoformacion`
-- 

DROP TABLE IF EXISTS `tipoformacion`;
CREATE TABLE IF NOT EXISTS `tipoformacion` (
  `id` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_formacion_tipo_formacion` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_rapslhpx2ays8jsdpbljbu0rq` (`id_formacion_tipo_formacion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

-- 
-- Volcar la base de datos para la tabla `tipoformacion`
-- 

INSERT INTO `tipoformacion` VALUES (1, 'tipo1', 0, NULL);

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE IF NOT EXISTS `usuario` (
  `id` bigint(20) NOT NULL auto_increment,
  `id_tipo_usu` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `version` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 

INSERT INTO `usuario` VALUES (1, 0, 'e', 'e', 0);
INSERT INTO `usuario` VALUES (2, 1, 'jose', 'jose', 0);

-- 
-- Filtros para las tablas descargadas (dump)
-- 

-- 
-- Filtros para la tabla `centro`
-- 
ALTER TABLE `centro`
  ADD CONSTRAINT `FK_sw2cbhqt2k1xb4qw7utqxlv0q` FOREIGN KEY (`id_formacion_demandante_centro`) REFERENCES `formaciondemandante` (`id`);

-- 
-- Filtros para la tabla `demandante`
-- 
ALTER TABLE `demandante`
  ADD CONSTRAINT `FK_d5mxwjex6u3r6vp6l4wm5f9j7` FOREIGN KEY (`idusuario_dem`) REFERENCES `usuario` (`id`),
  ADD CONSTRAINT `FK_7n75o69u7qfm711twmrne441e` FOREIGN KEY (`id_inscripcion_demandante`) REFERENCES `inscripcion` (`id`),
  ADD CONSTRAINT `FK_98iks47009lqf0qtgdb75tx75` FOREIGN KEY (`id_puesto_demandante`) REFERENCES `puesto` (`id`),
  ADD CONSTRAINT `FK_a72igk1bbldb34x70a02rqmn9` FOREIGN KEY (`id_experiencia_demandante`) REFERENCES `demandante` (`id`),
  ADD CONSTRAINT `FK_mgtsoqd3rqd71nsn0g795msmw` FOREIGN KEY (`id_formacion_demandante_demandante`) REFERENCES `formaciondemandante` (`id`);

-- 
-- Filtros para la tabla `empresa`
-- 
ALTER TABLE `empresa`
  ADD CONSTRAINT `FK_fyuskyhn410ud6kint7vu7auf` FOREIGN KEY (`idusuario_emp`) REFERENCES `usuario` (`id`);

-- 
-- Filtros para la tabla `experiencia`
-- 
ALTER TABLE `experiencia`
  ADD CONSTRAINT `FK_822itl7ly716pmkclojn4p0d6` FOREIGN KEY (`id_puesto_experiencia`) REFERENCES `puesto` (`id`),
  ADD CONSTRAINT `FK_b9ofvsh7pm156bkuyg7mijghw` FOREIGN KEY (`id_demandante`) REFERENCES `demandante` (`id`);

-- 
-- Filtros para la tabla `formacion`
-- 
ALTER TABLE `formacion`
  ADD CONSTRAINT `FK_24unppnu4x02qab7b4vmhe1tn` FOREIGN KEY (`id_tipo_formacion`) REFERENCES `tipoformacion` (`id`);

-- 
-- Filtros para la tabla `formaciondemandante`
-- 
ALTER TABLE `formaciondemandante`
  ADD CONSTRAINT `FK_dad40uvkajv9wubq93p8fe3yq` FOREIGN KEY (`id_formacion_demandante_formacion`) REFERENCES `formacion` (`id`),
  ADD CONSTRAINT `FK_92qp3j7unrp61c1lkx4bl45qx` FOREIGN KEY (`id_formacion_demandante_centro`) REFERENCES `centro` (`id`),
  ADD CONSTRAINT `FK_g6fdeewx7k49d951iamrmvt0n` FOREIGN KEY (`id_formacion_demandante_demandante`) REFERENCES `demandante` (`id`);

-- 
-- Filtros para la tabla `inscripcion`
-- 
ALTER TABLE `inscripcion`
  ADD CONSTRAINT `FK_ds2ahd6b1aihkkodv9n1ggn1k` FOREIGN KEY (`id_oferta`) REFERENCES `oferta` (`id`),
  ADD CONSTRAINT `FK_ojwhoqftbeynjroux6m2cai3l` FOREIGN KEY (`id_demandante`) REFERENCES `demandante` (`id`);

-- 
-- Filtros para la tabla `oferta`
-- 
ALTER TABLE `oferta`
  ADD CONSTRAINT `FK_p6xltqa341q4h5kxa7srg6s4j` FOREIGN KEY (`id_sede_oferta`) REFERENCES `sede` (`id`),
  ADD CONSTRAINT `FK_661ulupjggglqul00j9n2yxg0` FOREIGN KEY (`id_puesto_oferta`) REFERENCES `puesto` (`id`),
  ADD CONSTRAINT `FK_7fskxl1k21dd5yu28st5xa69m` FOREIGN KEY (`id_formacion`) REFERENCES `formacion` (`id`),
  ADD CONSTRAINT `FK_ato0c3c6wowf69grguynjbaal` FOREIGN KEY (`id_inscripcion_oferta`) REFERENCES `inscripcion` (`id`);

-- 
-- Filtros para la tabla `puesto`
-- 
ALTER TABLE `puesto`
  ADD CONSTRAINT `FK_nlwkvpf1k01fja0tfi78hne77` FOREIGN KEY (`id_puesto_oferta`) REFERENCES `oferta` (`id`),
  ADD CONSTRAINT `FK_3y6s9dtnhmun40d7nl8dem4jp` FOREIGN KEY (`id_puesto_experiencia`) REFERENCES `experiencia` (`id`),
  ADD CONSTRAINT `FK_cs5i2avsg0s7j0qmfqkvij7kq` FOREIGN KEY (`id_puesto_demandante`) REFERENCES `demandante` (`id`);

-- 
-- Filtros para la tabla `sede`
-- 
ALTER TABLE `sede`
  ADD CONSTRAINT `FK_t12ftsosrsc3pbnvjqoe7evll` FOREIGN KEY (`id_empresa`) REFERENCES `empresa` (`id`);

-- 
-- Filtros para la tabla `tipoformacion`
-- 
ALTER TABLE `tipoformacion`
  ADD CONSTRAINT `FK_rapslhpx2ays8jsdpbljbu0rq` FOREIGN KEY (`id_formacion_tipo_formacion`) REFERENCES `formacion` (`id`);
