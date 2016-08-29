-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Servidor: localhost
-- Tiempo de generación: 22-08-2016 a las 18:53:25
-- Versión del servidor: 5.0.51
-- Versión de PHP: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Base de datos: `facejobs`
-- 

-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `centro`
-- 

CREATE TABLE `centro` (
  `id` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
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

CREATE TABLE `demandante` (
  `id` bigint(20) NOT NULL auto_increment,
  `direccion` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `experiencia` varchar(255) default NULL,
  `fac_nac` datetime default NULL,
  `foto` varchar(255) default NULL,
  `idusuario` int(11) default NULL,
  `nombre` varchar(255) default NULL,
  `resumen_tray` varchar(255) default NULL,
  `sexo` int(11) default NULL,
  `telefono` varchar(255) default NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `demandante`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `empresa`
-- 

CREATE TABLE `empresa` (
  `id` bigint(20) NOT NULL auto_increment,
  `act_prof` varchar(255) default NULL,
  `cif` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `nombre` varchar(255) default NULL,
  `num_emp` int(11) default NULL,
  `version` int(11) default NULL,
  `idusuario_emp` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_fyuskyhn410ud6kint7vu7auf` (`idusuario_emp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `empresa`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `experiencia`
-- 

CREATE TABLE `experiencia` (
  `id` bigint(20) NOT NULL auto_increment,
  `fecfin` datetime default NULL,
  `fecini` datetime default NULL,
  `idcurriculum` int(11) NOT NULL,
  `salario` int(11) default NULL,
  `tareas` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_puesto_experiencia` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_822itl7ly716pmkclojn4p0d6` (`id_puesto_experiencia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `experiencia`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `formacion`
-- 

CREATE TABLE `formacion` (
  `id` bigint(20) NOT NULL auto_increment,
  `id_tipo_formacion` int(11) NOT NULL,
  `nivel` varchar(255) default NULL,
  `titulacion` int(11) default NULL,
  `version` int(11) default NULL,
  `id_formacion_demandante_formacion` bigint(20) default NULL,
  `id_oferta_formacion` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_rrfjg3jlpgwr1l3ykcmej5nt4` (`id_formacion_demandante_formacion`),
  KEY `FK_jeb1hjrrlf8jrnilkm5omo7d` (`id_oferta_formacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `formacion`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `formaciondemandante`
-- 

CREATE TABLE `formaciondemandante` (
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

CREATE TABLE `inscripcion` (
  `id` bigint(20) NOT NULL auto_increment,
  `estado` int(11) NOT NULL,
  `idoferta` int(11) NOT NULL,
  `version` int(11) default NULL,
  `id_demandante` bigint(20) default NULL,
  `id_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ojwhoqftbeynjroux6m2cai3l` (`id_demandante`),
  KEY `FK_ds2ahd6b1aihkkodv9n1ggn1k` (`id_oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `inscripcion`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `oferta`
-- 

CREATE TABLE `oferta` (
  `id` bigint(20) NOT NULL auto_increment,
  `estado` int(11) default NULL,
  `fec_fin_oferta` datetime default NULL,
  `fec_ini_oferta` datetime default NULL,
  `fecha_inc` datetime default NULL,
  `id_formacion` int(11) default NULL,
  `id_sede` int(11) default NULL,
  `info_puesto` varchar(255) default NULL,
  `num_vac` int(11) default NULL,
  `perfil_dem` varchar(255) default NULL,
  `salario_bruto` int(11) default NULL,
  `tipo_contrato` int(11) default NULL,
  `titulo` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_inscripcion_oferta` bigint(20) default NULL,
  `id_puesto_oferta` bigint(20) default NULL,
  `id_sede_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_ato0c3c6wowf69grguynjbaal` (`id_inscripcion_oferta`),
  KEY `FK_661ulupjggglqul00j9n2yxg0` (`id_puesto_oferta`),
  KEY `FK_p6xltqa341q4h5kxa7srg6s4j` (`id_sede_oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `oferta`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `puesto`
-- 

CREATE TABLE `puesto` (
  `id` bigint(20) NOT NULL auto_increment,
  `version` int(11) default NULL,
  `id_puesto_demandante` bigint(20) default NULL,
  `id_puesto_experiencia` bigint(20) default NULL,
  `id_puesto_oferta` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_cs5i2avsg0s7j0qmfqkvij7kq` (`id_puesto_demandante`),
  KEY `FK_3y6s9dtnhmun40d7nl8dem4jp` (`id_puesto_experiencia`),
  KEY `FK_nlwkvpf1k01fja0tfi78hne77` (`id_puesto_oferta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `puesto`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `sede`
-- 

CREATE TABLE `sede` (
  `id` bigint(20) NOT NULL auto_increment,
  `ciudad` varchar(255) default NULL,
  `nombre` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_empresa` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_t12ftsosrsc3pbnvjqoe7evll` (`id_empresa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `sede`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `tipoformacion`
-- 

CREATE TABLE `tipoformacion` (
  `id` bigint(20) NOT NULL auto_increment,
  `nombre` varchar(255) default NULL,
  `version` int(11) default NULL,
  `id_formacion_tipo_formacion` bigint(20) default NULL,
  PRIMARY KEY  (`id`),
  KEY `FK_rapslhpx2ays8jsdpbljbu0rq` (`id_formacion_tipo_formacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `tipoformacion`
-- 


-- --------------------------------------------------------

-- 
-- Estructura de tabla para la tabla `usuario`
-- 

CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL auto_increment,
  `login` varchar(255) default NULL,
  `password` varchar(255) default NULL,
  `tipo` int(11) default NULL,
  `version` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- 
-- Volcar la base de datos para la tabla `usuario`
-- 


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
  ADD CONSTRAINT `FK_822itl7ly716pmkclojn4p0d6` FOREIGN KEY (`id_puesto_experiencia`) REFERENCES `puesto` (`id`);

-- 
-- Filtros para la tabla `formacion`
-- 
ALTER TABLE `formacion`
  ADD CONSTRAINT `FK_jeb1hjrrlf8jrnilkm5omo7d` FOREIGN KEY (`id_oferta_formacion`) REFERENCES `oferta` (`id`),
  ADD CONSTRAINT `FK_rrfjg3jlpgwr1l3ykcmej5nt4` FOREIGN KEY (`id_formacion_demandante_formacion`) REFERENCES `formaciondemandante` (`id`);

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
