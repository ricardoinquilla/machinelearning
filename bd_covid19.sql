
CREATE TABLE `atenciones` (
  `id_persona` int NOT NULL,
  `numero_atenciones` bigint NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ciex`
--

CREATE TABLE `tb_ciex` (
  `CiexKey` int NOT NULL,
  `IdCiex` char(10) DEFAULT NULL,
  `Ciex` varchar(200) DEFAULT NULL,
  `DescCiex` varchar(200) DEFAULT NULL,
  `Categoria` varchar(200) DEFAULT NULL,
  `Grupo` varchar(200) DEFAULT NULL,
  `Capitulo` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_eess_covid19`
--

CREATE TABLE `tb_eess_covid19` (
  `id_eess` int NOT NULL,
  `id_ubigeo` int DEFAULT NULL,
  `codigo_reanes` varchar(5) DEFAULT NULL,
  `atiende_covid19` int DEFAULT NULL,
  `camas_ucin_av` int DEFAULT NULL,
  `total_camas_ucin` int DEFAULT NULL,
  `camas_hospitalizacion_con_oxigeno_av` int DEFAULT NULL,
  `camas_hospitalizacion_sin_oxigeno_av` int DEFAULT NULL,
  `camas_uci_con_ventilador_mecanico_av` int DEFAULT NULL,
  `camas_uci_sin_ventilador_mecanico_av` int DEFAULT NULL,
  `total_camas_hospitalizacion_con_oxigeno` int DEFAULT NULL,
  `total_camas_hospitalizacion_sin_oxigeno` int DEFAULT NULL,
  `total_camas_uci_con_ventilador_mecanico` int DEFAULT NULL,
  `total_camas_uci_sin_ventilador_mecanico` int DEFAULT NULL,
  `camas_hospitalizacion_av` int DEFAULT NULL,
  `camas_hospitalizacion_con_oxigeno_usadas_av` int DEFAULT NULL,
  `camas_hospitalizacion_sin_oxigeno_usadas_av` int DEFAULT NULL,
  `total_camas_hospitalizacion` int DEFAULT NULL,
  `camas_uci_con_ventilador_mecanico_usadas_av` int DEFAULT NULL,
  `camas_uci_sin_ventilador_mecanico_usadas_av` int DEFAULT NULL,
  `camas_ucin_con_oxigeno_usadas_av` int DEFAULT NULL,
  `camas_ucin_sin_oxigeno_usadas_av` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ejecusion_presupuestal`
--

CREATE TABLE `tb_ejecusion_presupuestal` (
  `Ano_eje` int DEFAULT NULL,
  `Mes_eje` int DEFAULT NULL,
  `Tipo_gobierno` char(10) DEFAULT NULL,
  `Tipo_gobierno_nombre` varchar(70) DEFAULT NULL,
  `Sector` int DEFAULT NULL,
  `Sector_nombre` varchar(70) DEFAULT NULL,
  `Pliego` int DEFAULT NULL,
  `Pliego_nombre` varchar(70) DEFAULT NULL,
  `Sec_ejec` int DEFAULT NULL,
  `Ejecutoria` char(10) DEFAULT NULL,
  `Ejecutoria_nombre` varchar(70) DEFAULT NULL,
  `Departamento_ejecutora` int DEFAULT NULL,
  `Departamento_ejecutora_nombre` varchar(70) DEFAULT NULL,
  `Provincia_ejecutora` int DEFAULT NULL,
  `Provincia_ejecutora_nombre` varchar(70) DEFAULT NULL,
  `Distrito_ejecutora` int DEFAULT NULL,
  `Distrito_ejecutora_nombre` varchar(70) DEFAULT NULL,
  `Sec_func` int DEFAULT NULL,
  `Programa_PPTO` int DEFAULT NULL,
  `Programa_PPTO_nombre` varchar(70) DEFAULT NULL,
  `Tipo_Act_Proy` varchar(70) DEFAULT NULL,
  `Producto_proyecto` int DEFAULT NULL,
  `Producto_proyecto_nombre` varchar(70) DEFAULT NULL,
  `Actividad_accion_obra` int DEFAULT NULL,
  `Actividad_accion_obra_nombre` varchar(80) DEFAULT NULL,
  `Funcion` int DEFAULT NULL,
  `Funcion_nombre` varchar(50) DEFAULT NULL,
  `Division_funcional` int DEFAULT NULL,
  `Division_funcional_nombre` varchar(50) DEFAULT NULL,
  `Grupo_funcional` int DEFAULT NULL,
  `Grupo_funcional_nombre` varchar(50) DEFAULT NULL,
  `Meta` int DEFAULT NULL,
  `Finalidad` int DEFAULT NULL,
  `Meta_nombre` varchar(50) DEFAULT NULL,
  `Departamento_meta` int DEFAULT NULL,
  `Departamento_meta_nombre` varchar(50) DEFAULT NULL,
  `Rubro` int DEFAULT NULL,
  `Rubro_nombre` varchar(50) DEFAULT NULL,
  `Fuente_Finac` int DEFAULT NULL,
  `Fuente_Finac_nombre` varchar(50) DEFAULT NULL,
  `Tipo_Recurso` int DEFAULT NULL,
  `Tipo_Recurso_nombre` varchar(50) DEFAULT NULL,
  `Categ_gasto` int DEFAULT NULL,
  `Categ_gasto_nombre` varchar(50) DEFAULT NULL,
  `Tipo_transaccion` int DEFAULT NULL,
  `Generica` int DEFAULT NULL,
  `Generica_nombre` varchar(80) DEFAULT NULL,
  `Subgenerica` int DEFAULT NULL,
  `Subgenerica_nombre` varchar(80) DEFAULT NULL,
  `Subgenerica_det` int DEFAULT NULL,
  `Subgenerica_det_nombre` varchar(80) DEFAULT NULL,
  `Especifica` int DEFAULT NULL,
  `Especifica_nombre` varchar(110) DEFAULT NULL,
  `Especifica_det` int DEFAULT NULL,
  `Especifica_det_nombre` varchar(110) DEFAULT NULL,
  `Monto_PIA` float DEFAULT NULL,
  `Monto_PIM` float DEFAULT NULL,
  `Monto_certificado` float DEFAULT NULL,
  `Monto_Comprometido_anual` float DEFAULT NULL,
  `Monto_Comprometido` float DEFAULT NULL,
  `Monto_devengado` float DEFAULT NULL,
  `Monto_girado` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_emergencia_persona_diagnostico`
--

CREATE TABLE `tb_emergencia_persona_diagnostico` (
  `id_persona` int NOT NULL,
  `Edad` int DEFAULT NULL,
  `tipo_edad` varchar(10) DEFAULT NULL,
  `Sexo` varchar(10) DEFAULT NULL,
  `fecha_atencion` date DEFAULT NULL,
  `Diagnostico` char(20) DEFAULT NULL,
  `tipo_dx` char(20) DEFAULT NULL,
  `id_eess` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_fallecido_hosp_vac`
--

CREATE TABLE `tb_fallecido_hosp_vac` (
  `id_persona` int NOT NULL,
  `fecha_fallecimiento` date DEFAULT NULL,
  `edad` int DEFAULT NULL,
  `sexo` varchar(10) DEFAULT NULL,
  `criterio_fallecido` varchar(100) DEFAULT NULL,
  `ubigeo_cdc` int DEFAULT NULL,
  `dpt_cdc` varchar(50) DEFAULT NULL,
  `prov_cdc` varchar(50) DEFAULT NULL,
  `dist_cdc` varchar(50) DEFAULT NULL,
  `cdc_positividad` int DEFAULT NULL,
  `flag_vacuna` int DEFAULT NULL,
  `fecha_dosis1` date DEFAULT NULL,
  `fabricante_dosis1` varchar(50) DEFAULT NULL,
  `fecha_dosis2` date DEFAULT NULL,
  `fabricante_dosis2` varchar(50) DEFAULT NULL,
  `flag_hospitalizado` int DEFAULT NULL,
  `eess_renaes` int DEFAULT NULL,
  `eess_diresa` varchar(50) DEFAULT NULL,
  `eess_red` varchar(50) DEFAULT NULL,
  `eess_nombre` varchar(100) DEFAULT NULL,
  `fecha_ingreso_hosp` date DEFAULT NULL,
  `flag_uci` int DEFAULT NULL,
  `fecha_ingreso_uci` date DEFAULT NULL,
  `fecha_ingreso_ucin` date DEFAULT NULL,
  `con_oxigeno` int DEFAULT NULL,
  `con_ventilacion` int DEFAULT NULL,
  `fecha_segumiento_hosp_ultimo` date DEFAULT NULL,
  `evolucion_hosp_ultimo` varchar(50) DEFAULT NULL,
  `ubigeo_inei_domicilio` int DEFAULT NULL,
  `dep_domicilio` varchar(50) DEFAULT NULL,
  `prov_domicilio` varchar(50) DEFAULT NULL,
  `dist_domicilio` varchar(50) DEFAULT NULL,
  `latitud_hospital` varchar(15) NOT NULL,
  `longitud_hospital` varchar(15) NOT NULL,
  `numero_atenciones` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_pcm_covid_2021`
--

CREATE TABLE `tb_pcm_covid_2021` (
  `ANO_EJE` int DEFAULT NULL,
  `MES_EJE` varchar(10) DEFAULT NULL,
  `TIPO_GOBIERNO` varchar(10) DEFAULT NULL,
  `TIPO_GOBIERNO_NOMBRE` varchar(50) DEFAULT NULL,
  `SECTOR` int DEFAULT NULL,
  `SECTOR_NOMBRE` varchar(50) DEFAULT NULL,
  `PLIEGO` int DEFAULT NULL,
  `PLIEGO_NOMBRE` varchar(200) DEFAULT NULL,
  `SEC_EJEC` int DEFAULT NULL,
  `EJECUTORA` int DEFAULT NULL,
  `EJECUTORA_NOMBRE` varchar(200) DEFAULT NULL,
  `DEPARTAMENTO_EJECUTORA` int DEFAULT NULL,
  `DEPARTAMENTO_EJECUTORA_NOMBRE` varchar(50) DEFAULT NULL,
  `PROVINCIA_EJECUTORA` int DEFAULT NULL,
  `PROVINCIA_EJECUTORA_NOMBRE` varchar(50) DEFAULT NULL,
  `DISTRITO_EJECUTORA` int DEFAULT NULL,
  `DISTRITO_EJECUTORA_NOMBRE` varchar(50) DEFAULT NULL,
  `SEC_FUNC` int DEFAULT NULL,
  `PROGRAMA_PPTO` int DEFAULT NULL,
  `PROGRAMA_PPTO_NOMBRE` varchar(200) DEFAULT NULL,
  `TIPO_ACT_PROY` varchar(50) DEFAULT NULL,
  `PRODUCTO_PROYECTO` int DEFAULT NULL,
  `PRODUCTO_PROYECTO_NOMBRE` varchar(500) DEFAULT NULL,
  `ACTIVIDAD_ACCION_OBRA` int DEFAULT NULL,
  `ACTIVIDAD_ACCION_OBRA_NOMBRE` varchar(200) DEFAULT NULL,
  `FUNCION` int DEFAULT NULL,
  `FUNCION_NOMBRE` varchar(100) DEFAULT NULL,
  `DIVISION_FUNCIONAL` int DEFAULT NULL,
  `DIVISION_FUNCIONAL_NOMBRE` varchar(100) DEFAULT NULL,
  `GRUPO_FUNCIONAL` int DEFAULT NULL,
  `GRUPO_FUNCIONAL_NOMBRE` varchar(100) DEFAULT NULL,
  `META` int DEFAULT NULL,
  `FINALIDAD` int DEFAULT NULL,
  `META_NOMBRE` varchar(500) DEFAULT NULL,
  `DEPARTAMENTO_META` int DEFAULT NULL,
  `DEPARTAMENTO_META_NOMBRE` varchar(50) DEFAULT NULL,
  `FUENTE_FINANC` int DEFAULT NULL,
  `FUENTE_FINANC_NOMBRE` varchar(100) DEFAULT NULL,
  `RUBRO` char(5) DEFAULT NULL,
  `RUBRO_NOMBRE` varchar(100) DEFAULT NULL,
  `TIPO_RECURSO` char(5) DEFAULT NULL,
  `TIPO_RECURSO_NOMBRE` varchar(100) DEFAULT NULL,
  `CATEG_GASTO` int DEFAULT NULL,
  `CATEG_GASTO_NOMBRE` varchar(50) DEFAULT NULL,
  `TIPO_TRANSACCION` int DEFAULT NULL,
  `GENERICA` int DEFAULT NULL,
  `GENERICA_NOMBRE` varchar(50) DEFAULT NULL,
  `SUBGENERICA` int DEFAULT NULL,
  `SUBGENERICA_NOMBRE` varchar(200) DEFAULT NULL,
  `SUBGENERICA_DET` int DEFAULT NULL,
  `SUBGENERICA_DET_NOMBRE` varchar(100) DEFAULT NULL,
  `ESPECIFICA` int DEFAULT NULL,
  `ESPECIFICA_NOMBRE` varchar(200) DEFAULT NULL,
  `ESPECIFICA_DET` int DEFAULT NULL,
  `ESPECIFICA_DET_NOMBRE` varchar(200) DEFAULT NULL,
  `MONTO_PIA` float DEFAULT NULL,
  `MONTO_PIM` float DEFAULT NULL,
  `MONTO_CERTIFICADO` float DEFAULT NULL,
  `MONTO_COMPROMETIDO_ANUAL` float DEFAULT NULL,
  `MONTO_COMPROMETIDO` float DEFAULT NULL,
  `MONTO_DEVENGADO` float DEFAULT NULL,
  `MONTO_GIRADO` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_seg_pac_covid19`
--

CREATE TABLE `tb_seg_pac_covid19` (
  `id_persona` int NOT NULL,
  `atencion_id` int DEFAULT NULL,
  `fecha_seguimiento` date DEFAULT NULL,
  `estado` varchar(25) DEFAULT NULL,
  `complicaciones` varchar(25) DEFAULT NULL,
  `descripcion_otros` varchar(25) DEFAULT NULL,
  `observaciones` varchar(25) DEFAULT NULL,
  `evolucion` varchar(25) DEFAULT NULL,
  `hospitalizacion` varchar(25) DEFAULT NULL,
  `hora_seguimiento` varchar(25) DEFAULT NULL,
  `con_oxigeno` varchar(25) DEFAULT NULL,
  `con_ventilacion` varchar(25) DEFAULT NULL,
  `esta_hospitalizacion` varchar(25) DEFAULT NULL,
  `esta_uci` varchar(25) DEFAULT NULL,
  `esta_ucin` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_sospechosos_f00_covid`
--

CREATE TABLE `tb_sospechosos_f00_covid` (
  `id_persona` int NOT NULL,
  `fecha_Contacto` date DEFAULT NULL,
  `Flag_sospechoso` int DEFAULT NULL,
  `fecha_sintomas` date DEFAULT NULL,
  `tos` int DEFAULT NULL,
  `cefalea` int DEFAULT NULL,
  `congestion_nasal` int DEFAULT NULL,
  `dificultad_respiratoria` int DEFAULT NULL,
  `dolor_garganta` int DEFAULT NULL,
  `fiebre` int DEFAULT NULL,
  `diarrea` int DEFAULT NULL,
  `nauseas` int DEFAULT NULL,
  `anosmia_hiposmia` int DEFAULT NULL,
  `dolor_abdominal` int DEFAULT NULL,
  `dolor_articulaciones` int DEFAULT NULL,
  `dolor_muscular` int DEFAULT NULL,
  `dolor_pecho` int DEFAULT NULL,
  `otros_sintomas` int DEFAULT NULL,
  `id_ubigeo_f00` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_ubigeo`
--

CREATE TABLE `tb_ubigeo` (
  `id_ubigeo` int NOT NULL,
  `ubigeo_reniec` char(10) DEFAULT NULL,
  `ubigeo_inei` char(128) DEFAULT NULL,
  `departamento_inei` varchar(12) DEFAULT NULL,
  `departamento` varchar(255) DEFAULT NULL,
  `provincia_inei` varchar(255) DEFAULT NULL,
  `provincia` varchar(255) DEFAULT NULL,
  `distrito` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `macroregion_inei` varchar(255) DEFAULT NULL,
  `macroregion_minsa` varchar(255) DEFAULT NULL,
  `iso_3166_2` char(10) DEFAULT NULL,
  `fips` char(10) DEFAULT NULL,
  `superficie` float DEFAULT NULL,
  `altitud` float DEFAULT NULL,
  `latitud` decimal(14,0) DEFAULT NULL,
  `longitud` decimal(14,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_ciex`
--
ALTER TABLE `tb_ciex`
  ADD PRIMARY KEY (`CiexKey`);

--
-- Indices de la tabla `tb_eess_covid19`
--
ALTER TABLE `tb_eess_covid19`
  ADD PRIMARY KEY (`id_eess`);

--
-- Indices de la tabla `tb_fallecido_hosp_vac`
--
ALTER TABLE `tb_fallecido_hosp_vac`
  ADD PRIMARY KEY (`id_persona`);

--
-- Indices de la tabla `tb_ubigeo`
--
ALTER TABLE `tb_ubigeo`
  ADD PRIMARY KEY (`id_ubigeo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
