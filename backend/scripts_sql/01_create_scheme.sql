-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-08-30 00:20:23.229

CREATE DOMAIN si_no_veces AS CHAR(10)
CHECK(
   VALUE IN ('S', 'N', 'V'));

-- tables
-- Table: ACTIVIDAD
CREATE TABLE ACTIVIDAD (
    id_organizacion int  NOT NULL,
    id_actividad int  NOT NULL,
    descripcion text  NOT NULL,
    cant_participantes int  NOT NULL,
    CONSTRAINT PK_ACTIVIDAD PRIMARY KEY (id_organizacion,id_actividad)
);

-- Table: ALFABETIZACION
CREATE TABLE ALFABETIZACION (
    id_organizacion int  NOT NULL,
    id_alfabetizacion int  NOT NULL,
    conformacion_equipo varchar(240)  NULL,
    cant_ninies_part varchar(120)  NULL,
    escuelas_part varchar(240)  NULL,
    artic_escuelas_part text  NULL,
    modalidad_trabajo_recursos text  NULL,
    demanda text  NULL,
    CONSTRAINT ALFABETIZACION_pk PRIMARY KEY (id_organizacion,id_alfabetizacion)
);

-- Table: APORTE_ESTATAL
CREATE TABLE APORTE_ESTATAL (
    id_organizacion int  NOT NULL,
    id_aporte int  NOT NULL,
    origen char(1)  NULL,
    forma char(1)  NOT NULL,
    otra_forma varchar(480)  NULL,
    frecuencia char(1)  NOT NULL,
    cant_aporte int  NULL DEFAULT 0,
    CONSTRAINT check_forma CHECK (forma IN ('B', 'S', 'O')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_frecuencia CHECK (frecuencia IN ('A', 'S', 'M', 'E', 'U')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_origen CHECK (origen IN ('N', 'P', 'M')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_APORTE_ESTATAL PRIMARY KEY (id_organizacion,id_aporte)
);

-- Table: AREA
CREATE TABLE AREA (
    id_area int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT area_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_AREA PRIMARY KEY (id_area)
);

-- Table: AREA_ORG
CREATE TABLE AREA_ORG (
    id_organizacion int  NOT NULL,
    id_area int  NOT NULL,
    otra_area text  NULL,
    CONSTRAINT PK_AREA_ORG PRIMARY KEY (id_area,id_organizacion)
);

-- Table: CAPACITACION
CREATE TABLE CAPACITACION (
    id_capacitacion int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT capacitacion_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_CAPACITACION PRIMARY KEY (id_capacitacion)
);

-- Table: CAPACITACION_ORG
CREATE TABLE CAPACITACION_ORG (
    id_organizacion int  NOT NULL,
    id_capacitacion int  NOT NULL,
    otra_capacitacion text  NULL,
    CONSTRAINT PK_CAPACITACION_ORG PRIMARY KEY (id_organizacion,id_capacitacion)
);

-- Table: CIUDAD
CREATE TABLE CIUDAD (
    id_ciudad int  NOT NULL,
    id_provincia int  NOT NULL DEFAULT 1,
    nombre_ciudad varchar(40)  NOT NULL,
    CONSTRAINT ciudad_ak_id_provincia_nombre_ciudad UNIQUE (id_provincia, nombre_ciudad) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_CIUDAD PRIMARY KEY (id_ciudad)
);

-- Table: DEMANDAS_SOCIALES
CREATE TABLE DEMANDAS_SOCIALES (
    id_organizacion int  NOT NULL,
    id_demandas int  NOT NULL,
    cuales text  NULL,
    quienes text  NULL,
    como text  NULL,
    respuesta text  NULL,
    CONSTRAINT DEMANDAS_SOCIALES_pk PRIMARY KEY (id_organizacion,id_demandas)
);

-- Table: DETALLE_PROPUESTA_NINIEZ_JUVENTUD
CREATE TABLE DETALLE_PROPUESTA_NINIEZ_JUVENTUD (
    id_propuesta int  NOT NULL,
    id_organizacion int  NOT NULL,
    tipo_propuesta char(1)  NOT NULL,
    id_detalle_propuesta int  NOT NULL,
    descripcion text  NULL,
    edades varchar(120)  NULL,
    cant_participantes int  NULL,
    dias_horarios varchar(250)  NULL,
    inicio_funcion date  NULL,
    sexo_coordinador char(1)  NULL,
    otro_sexo varchar(120)  NULL,
    formacion varchar(240)  NULL,
    edad_coordinador int  NULL,
    suma_org varchar(500)  NULL,
    CONSTRAINT check_sexo_coordinador CHECK (sexo_coordinador IN ('F', 'M', 'O')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT DETALLE_PROPUESTA_NINIEZ_JUVENTUD_pk PRIMARY KEY (id_detalle_propuesta,id_propuesta,tipo_propuesta,id_organizacion)
);

-- Table: DIFICULTAD
CREATE TABLE DIFICULTAD (
    id_dificultad int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT dificultad_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_DIFICULTAD PRIMARY KEY (id_dificultad)
);

-- Table: DIFICULTAD_ORG
CREATE TABLE DIFICULTAD_ORG (
    id_dificultad int  NOT NULL,
    id_organizacion int  NOT NULL,
    es_principal boolean  NOT NULL,
    otra_dificultad text  NULL,
    CONSTRAINT PK_DIFICULTAD_ORG PRIMARY KEY (id_dificultad,id_organizacion)
);

-- Solo una dificultad puede ser la principal
CREATE UNIQUE INDEX dificultad_org_ak_es_principal_id_organizacion
ON DIFICULTAD_ORG (id_organizacion)
WHERE es_principal;

-- Table: DIRECCION
CREATE TABLE DIRECCION (
    id_organizacion int  NOT NULL,
    id_direccion int  NOT NULL,
    id_ciudad int  NOT NULL,
    calle varchar(72)  NOT NULL,
    numero int  NULL,
    piso int  NULL,
    domicilio_legal boolean  NULL,
    latitud decimal(10,8)  NULL,
    longitud decimal(11,8)  NULL,
    CONSTRAINT direccion_ak_domicilio_legal_id_organizacion UNIQUE (domicilio_legal, id_organizacion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT DIRECCION_pk PRIMARY KEY (id_organizacion,id_direccion)
);

-- Table: EJE
CREATE TABLE EJE (
    id_eje int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT eje_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_EJE PRIMARY KEY (id_eje)
);

-- Table: EJE_ORG
CREATE TABLE EJE_ORG (
    id_organizacion int  NOT NULL,
    id_eje int  NOT NULL,
    otro_eje varchar(480)  NULL,
    CONSTRAINT PK_EJE_ORG PRIMARY KEY (id_organizacion,id_eje)
);

-- Table: EMAIL_ORG
CREATE TABLE EMAIL_ORG (
    id_organizacion int  NOT NULL,
    email varchar(50)  NOT NULL,
    CONSTRAINT EMAIL_ORG_pk PRIMARY KEY (id_organizacion,email)
);

-- Table: ENTREVISTA
CREATE TABLE ENTREVISTA (
    id_entrevista int  NOT NULL,
    id_organizacion int  NOT NULL,
    fecha_entrevista date  NOT NULL,
    nombre_entrevistador varchar(40)  NULL,
    apellido_entrevistador varchar(40)  NULL,
    nombre_supervisor varchar(40)  NULL,
    apellido_supervisor varchar(40)  NULL,
    id_ciudad int  NULL,
    index_entrevista int  NOT NULL,
    nombre_archivo varchar(120)  NOT NULL,
    hoja_registro text  NULL,
    CONSTRAINT AK_ENTREVISTA UNIQUE (index_entrevista, nombre_archivo) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_ENTREVISTA PRIMARY KEY (id_entrevista)
);

-- Table: EQUIPAMIENTO
CREATE TABLE EQUIPAMIENTO (
    id_equipamiento int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT equipamiento_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_EQUIPAMIENTO PRIMARY KEY (id_equipamiento)
);

-- Table: EQUIPAMIENTO_ORG
CREATE TABLE EQUIPAMIENTO_ORG (
    id_organizacion int  NOT NULL,
    id_equipamiento int  NOT NULL,
    CONSTRAINT PK_EQUIPAMIENTO_ORG PRIMARY KEY (id_organizacion,id_equipamiento)
);

-- Table: ESPACIO_CUIDADO
CREATE TABLE ESPACIO_CUIDADO (
    id_organizacion int  NOT NULL,
    id_espacio_cuidado int  NOT NULL,
    edades varchar(120)  NULL,
    a_cargo varchar(120)  NULL,
    formacion varchar(120)  NULL,
    cantidad_ninies int  NULL,
    propuesta text  NULL,
    CONSTRAINT ESPACIO_CUIDADO_pk PRIMARY KEY (id_organizacion,id_espacio_cuidado)
);

-- Table: ESPACIO_FORMACION
CREATE TABLE ESPACIO_FORMACION (
    id_organizacion int  NOT NULL,
    id_espacio_formacion int  NOT NULL,
    descripcion_espacio varchar(256)  NULL,
    quien_organiza char(2)  NULL,
    quien_participa varchar(480)  NULL,
    CONSTRAINT check_quien_organiza CHECK (quien_organiza IN ('PO', 'OO', 'IG', 'UN', 'ES', 'IT', 'SI', 'PP', 'GO', 'OT')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_ESPACIO_FORMACION PRIMARY KEY (id_organizacion,id_espacio_formacion)
);

-- Table: EXPECTATIVA
CREATE TABLE EXPECTATIVA (
    id_expectativa int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT expectativa_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_EXPECTATIVA PRIMARY KEY (id_expectativa)
);

-- Table: EXPECTATIVA_ORG
CREATE TABLE EXPECTATIVA_ORG (
    id_organizacion int  NOT NULL,
    id_expectativa int  NOT NULL,
    es_principal boolean  NOT NULL,
    detalle_espectativa text  NULL,
    CONSTRAINT PK_EXPECTATIVA_ORG PRIMARY KEY (id_expectativa,id_organizacion)
);

-- Solo una expectativa puede ser la principal
CREATE UNIQUE INDEX expectativa_org_ak_es_princial_id_organizacion
ON EXPECTATIVA_ORG (id_organizacion)
WHERE es_principal;

-- Table: FORMA_DOCUMENTACION_PLAN_EVAL
CREATE TABLE FORMA_DOCUMENTACION_PLAN_EVAL (
    id_forma_documentacion_plan_eval int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT forma_documentacion_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_FORMA_DOCUMENTACION PRIMARY KEY (id_forma_documentacion_plan_eval)
);

-- Table: FORMA_DOCUMENTACION_PLAN_EVAL_ORG
CREATE TABLE FORMA_DOCUMENTACION_PLAN_EVAL_ORG (
    id_forma_plan_eval int  NOT NULL,
    id_organizacion int  NOT NULL,
    id_forma_documentacion_plan_eval int  NOT NULL,
    otra_forma_doc varchar(120)  NULL,
    CONSTRAINT PK_FORMA_DOCUMENTACION_ORG PRIMARY KEY (id_forma_documentacion_plan_eval,id_organizacion,id_forma_plan_eval)
);

-- Table: FORMA_PLAN_EVAL_ORG
CREATE TABLE FORMA_PLAN_EVAL_ORG (
    id_organizacion int  NOT NULL,
    id_forma_plan_eval int  NOT NULL,
    organigrama text  NOT NULL,
    documentacion boolean  NOT NULL,
    registro SI_NO_VECES  NOT NULL,
    planificacion_accionar SI_NO_VECES  NOT NULL,
    evaluacion SI_NO_VECES  NOT NULL,
    CONSTRAINT FORMA_PLAN_EVAL_ORG_pk PRIMARY KEY (id_forma_plan_eval,id_organizacion)
);

-- Table: FUNDADOR
CREATE TABLE FUNDADOR (
    id_organizacion int  NOT NULL,
    id_fundador int  NOT NULL,
    nombre_fundador text  NOT NULL,
    caracteristica text  NOT NULL,
    CONSTRAINT PK_FUNDADOR PRIMARY KEY (id_fundador,id_organizacion)
);

-- Table: GENERACION_FONDO
CREATE TABLE GENERACION_FONDO (
    id_generacion_fondo int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT generacion_fondo_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_GENERACION_FONDO PRIMARY KEY (id_generacion_fondo)
);

-- Table: GENERACION_FONDO_ORG
CREATE TABLE GENERACION_FONDO_ORG (
    id_organizacion int  NOT NULL,
    id_generacion_fondo int  NOT NULL,
    otros_fondos text  NULL,
    CONSTRAINT PK_GENERACION_FONDO_ORG PRIMARY KEY (id_organizacion,id_generacion_fondo)
);

-- Table: GENERO
CREATE TABLE GENERO (
    id_genero int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT genero_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_GENERO PRIMARY KEY (id_genero)
);

-- Table: GENERO_ORG
CREATE TABLE GENERO_ORG (
    id_organizacion int  NOT NULL,
    id_genero int  NOT NULL,
    CONSTRAINT PK_GENERO_ORG PRIMARY KEY (id_genero,id_organizacion)
);

-- Table: IDENTIDAD
CREATE TABLE IDENTIDAD (
    id_identidad int  NOT NULL,
    descripcion varchar(120)  NOT NULL,
    CONSTRAINT identidad_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_IDENTIDAD PRIMARY KEY (id_identidad)
);

-- Table: IDENTIDAD_ORG
CREATE TABLE IDENTIDAD_ORG (
    id_organizacion int  NOT NULL,
    id_identidad int  NOT NULL,
    otro_tipo text  NULL,
    CONSTRAINT PK_IDENTIDADES_ORG PRIMARY KEY (id_organizacion,id_identidad)
);

-- Table: JOVENES_MEMORIA
CREATE TABLE JOVENES_MEMORIA (
    id_organizacion int  NOT NULL,
    id_jovenes_memoria int  NOT NULL,
    anio_participacion int  NOT NULL,
    cant_participantes int  NOT NULL,
    temas text  NOT NULL,
    CONSTRAINT PK_JOVENES_MEMORIA PRIMARY KEY (id_organizacion,id_jovenes_memoria)
);

-- Table: MEDIO_DIFUSION
CREATE TABLE MEDIO_DIFUSION (
    id_medio int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT medio_difusion_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_MEDIO_DIFUSION PRIMARY KEY (id_medio)
);

-- Table: MEDIO_DIFUSION_ORG
CREATE TABLE MEDIO_DIFUSION_ORG (
    id_organizacion int  NOT NULL,
    id_medio int  NOT NULL,
    descripcion_medio text  NULL,
    CONSTRAINT PK_MEDIO_DIFUSION_ORG PRIMARY KEY (id_organizacion,id_medio)
);

-- Table: OBJETIVO_INTERNO
CREATE TABLE OBJETIVO_INTERNO (
    id_organizacion int  NOT NULL,
    id_objetivo int  NOT NULL,
    nombre_objetivo text  NOT NULL,
    descripcion_objetivo text  NOT NULL,
    CONSTRAINT PK_OBJETIVO_INTERNO PRIMARY KEY (id_organizacion,id_objetivo)
);

-- Table: ORGANIZACION
/* 
TIPO ALCANCE
B - Barrial
M - Municipal/Local
N - Nacional
I - Internacional
*/
CREATE DOMAIN tipo_alcance AS CHAR(1)
CHECK(
   VALUE IN ('B', 'M', 'N', 'I'));

CREATE TABLE ORGANIZACION (
    id_organizacion int  NOT NULL,
    org_id_documento int  NOT NULL,
    nombre_completo varchar(200)  NOT NULL,
    sigla varchar(40)  NULL,
    dias_horarios text  NOT NULL,
    edo_situcion_juridica char(1)  NOT NULL,
    nro_personeria bigint  NULL,
    nombre_personeria varchar(120)  NULL,
    figura_legal varchar(1)  NULL,
    forma char(2)  NULL,
    tramite varchar(480)  NULL,
    anio_origen int  NOT NULL,
    origen char(1)  NOT NULL,
    origen_religioso char(1)  NULL,
    otro_origen_religioso varchar(40)  NULL,
    objetivos_fundacionales text  NOT NULL,
    resenia_historica text  NULL,
    nro_participantes int  NULL,
    alcance_1 TIPO_ALCANCE  NOT NULL,
    alcance_2 TIPO_ALCANCE  NULL,
    alcance_3 TIPO_ALCANCE  NULL,
    barrios text  NULL,
    poblacion_participante text  NOT NULL,
    acciones_pandemia text  NULL,
    posee_murga boolean  NOT NULL,
    relato_murga text  NULL,
    espacios_cuidado boolean  NULL,
    planea_espacios_cuidado boolean  NULL,
    considera_necesarios_esp_cuid text  NULL,
    formacion_integrantes SI_NO_VECES  NOT NULL,
    rec_financ_fondos_propios int  NOT NULL DEFAULT 0,
    rec_financ_municipales int  NOT NULL DEFAULT 0,
    rec_financ_provinciales int  NOT NULL DEFAULT 0,
    rec_financ_nacionales int  NOT NULL DEFAULT 0,
    rec_financ_internacionales int  NOT NULL DEFAULT 0,
    rec_financ_empresas int  NOT NULL DEFAULT 0,
    descripcion_financ_empresa text  NULL,
    tenencia_propiedad char(2)  NULL,
    uso_tenencia char(1)  NULL,
    vinculo_otra_org SI_NO_VECES  NULL,
    cuales_organizaciones text  NULL,
    integra_esp_redes boolean  NOT NULL DEFAULT FALSE,
    integra_esp_foros boolean  NOT NULL DEFAULT FALSE,
    integra_esp_mesa_barrial boolean  NOT NULL DEFAULT FALSE,
    integra_esp_mesa_emergencia boolean  NOT NULL DEFAULT FALSE,
    integra_esp_mesa_tematica boolean  NOT NULL DEFAULT FALSE,
    integra_esp_consejos boolean  NOT NULL DEFAULT FALSE,
    modificacion_otras_org text  NULL,
    eval_accionar_municipal text  NULL,
    trabajo_infantil boolean  NULL,
    situacion_trabajo_infantil text  NULL,
    opinion_rol_org text  NOT NULL,
    opinion_rol_ideal_org text  NOT NULL,
    detalles_expectativa_org text  NULL,
    detalles_capacitaciones text  NULL,
    id_ciudad int  NOT NULL,
    CONSTRAINT organizacion_ak_nombre_completo UNIQUE (nombre_completo) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT check_edo_situcion_juridica CHECK (edo_situcion_juridica IN ('S', 'N', 'T', 'O')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_figura_legal CHECK (figura_legal IN ('A', 'F', 'M', 'C')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_forma CHECK (forma IN ('CA','FE', 'CO', 'AS')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_origen CHECK (origen IN ('L', 'R')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_origen_religioso CHECK (origen_religioso IN ('C', 'P', 'J', 'O')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_tenencia_propiedad CHECK (tenencia_propiedad IN ('CE', 'FC', 'CI', 'SE', 'PC', 'EP', 'EA', 'ET', 'OT')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_uso_tenencia CHECK (uso_tenencia IN ('E', 'C')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_rec_financ_fondos_propios CHECK (rec_financ_fondos_propios BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_rec_financ_municipales CHECK (rec_financ_municipales BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_rec_financ_provinciales CHECK (rec_financ_provinciales BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_rec_financ_nacionales CHECK (rec_financ_nacionales BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_internacionales CHECK (rec_financ_internacionales BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_empresas CHECK (rec_financ_empresas BETWEEN 0 AND 100) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_ORGANIZACION PRIMARY KEY (id_organizacion)
);

-- Table: ORG_RELACIONADA
CREATE TABLE ORG_RELACIONADA (
    id_organizacion int  NOT NULL,
    id_relacion int  NOT NULL,
    tipo char(1)  NOT NULL,
    nombre_organizacion varchar(240)  NOT NULL,
    ubicacion varchar(80)  NULL,
    referente varchar(120)  NOT NULL,
    alcance char(1)  NOT NULL,
    CONSTRAINT check_alcance CHECK (alcance IN('L', 'R', 'N', 'I')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_tipo CHECK (tipo IN('M', 'H')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_ORG_RELACIONADA PRIMARY KEY (id_organizacion,id_relacion)
);

-- Table: PARTICIPANTE
CREATE TABLE PARTICIPANTE (
    id_participante int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT participante_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_PARTICIPANTE PRIMARY KEY (id_participante)
);

-- Table: PARTICIPANTE_ORG
CREATE TABLE PARTICIPANTE_ORG (
    id_organizacion int  NOT NULL,
    id_participante int  NOT NULL,
    CONSTRAINT PK_PARTICIPANTE_ORG PRIMARY KEY (id_organizacion,id_participante)
);

-- Table: PARTICIPANTE_PLAN_EVAL
CREATE TABLE PARTICIPANTE_PLAN_EVAL (
    id_participante_plan_eval int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT participante_plan_eval_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_PARTICIPANTE_PLAN_EVAL PRIMARY KEY (id_participante_plan_eval)
);

-- Table: PARTICIPANTE_PLAN_EVAL_ORG
CREATE TABLE PARTICIPANTE_PLAN_EVAL_ORG (
    id_organizacion int  NOT NULL,
    id_forma_plan_eval int  NOT NULL,
    id_participante_plan_eval int  NOT NULL,
    tipo char(1)  NOT NULL,
    otro_participante varchar(120)  NULL,
    CONSTRAINT check_tipo CHECK (tipo IN ('E', 'P')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_PARTICIPANTE_PLAN_EVAl_ORG PRIMARY KEY (id_participante_plan_eval,tipo,id_forma_plan_eval,id_organizacion)
);

-- Table: PERIODO_PLAN_EVAL
CREATE TABLE PERIODO_PLAN_EVAL (
    id_periodo_plan_eval int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT periodo_plan_eval_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_PERIODO PRIMARY KEY (id_periodo_plan_eval)
);

-- Table: PERIODO_PLAN_EVAL_ORG
CREATE TABLE PERIODO_PLAN_EVAL_ORG (
    id_forma_plan_eval int  NOT NULL,
    id_organizacion int  NOT NULL,
    id_periodo_plan_eval int  NOT NULL,
    tipo char(1)  NOT NULL,
    CONSTRAINT check_tipo CHECK (tipo IN ('E', 'P')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_PERIODO_ORG PRIMARY KEY (id_periodo_plan_eval,id_forma_plan_eval,id_organizacion,tipo)
);

-- Table: PROBLEMATICA
CREATE TABLE PROBLEMATICA (
    id_organizacion int  NOT NULL,
    id_problematica int  NOT NULL,
    descripcion_problema text  NOT NULL,
    causa text  NOT NULL,
    CONSTRAINT PK_PROBLEMATICA PRIMARY KEY (id_problematica,id_organizacion)
);

-- Table: PROPUESTA_NINIEZ_JUVENTUD
CREATE TABLE PROPUESTA_NINIEZ_JUVENTUD (
    id_organizacion int  NOT NULL,
    id_propuesta int  NOT NULL,
    tipo_propuesta char(1)  NOT NULL,
    como_surge text  NULL,
    como_funciona text  NULL,
    opinion text  NULL,
    CONSTRAINT check_tipo_propuesta CHECK (tipo_propuesta IN ('N', 'J')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_PROPUESTA_NINIEZ_JUVENTUD PRIMARY KEY (id_propuesta,id_organizacion,tipo_propuesta)
);

-- Table: PROVINCIA
CREATE TABLE PROVINCIA (
    id_provincia int  NOT NULL,
    nombre_provincia varchar(40)  NOT NULL,
    CONSTRAINT provincia_ak_nombre_provincia UNIQUE (nombre_provincia) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_PROVINCIA PRIMARY KEY (id_provincia)
);

INSERT INTO provincia(id_provincia, nombre_provincia) VALUES
(1, 'Buenos Aires');

-- Table: REF_ENTREVISTADO
CREATE TABLE REF_ENTREVISTADO (
    id_entrevista int  NOT NULL,
    id_entrevistado int  NOT NULL,
    nombre_entrevistado varchar(40)  NOT NULL,
    apellido_entrevistado varchar(40)  NOT NULL,
    cargo_entrevistado varchar(200)  NOT NULL,
    antiguedad int  NOT NULL,
    CONSTRAINT PK_REF_ENTREVISTADO PRIMARY KEY (id_entrevista,id_entrevistado)
);

-- Table: TELEFONO_ORG
CREATE TABLE TELEFONO_ORG (
    id_organizacion int  NOT NULL,
    nro_telefono varchar(15)  NOT NULL,
    CONSTRAINT TELEFONO_ORG_pk PRIMARY KEY (id_organizacion,nro_telefono)
);

-- Table: TIPO_ORGANIZACION
CREATE TABLE TIPO_ORGANIZACION (
    id_tipo_organizacion int  NOT NULL,
    descripcion varchar(40)  NOT NULL,
    CONSTRAINT tipo_organizacion_ak_descripcion UNIQUE (descripcion) NOT DEFERRABLE  INITIALLY IMMEDIATE,
    CONSTRAINT PK_TIPO_ORGANIZACION PRIMARY KEY (id_tipo_organizacion)
);

-- Table: TIPO_ORGANIZACION_ORG
CREATE TABLE TIPO_ORGANIZACION_ORG (
    id_organizacion int  NOT NULL,
    id_tipo_organizacion int  NOT NULL,
    CONSTRAINT PK_TIPO_ORGANIZACION_ORG PRIMARY KEY (id_tipo_organizacion,id_organizacion)
);

-- Table: TRABAJADORES_ORG
CREATE TABLE TRABAJADORES_ORG (
    id_organizacion int  NOT NULL,
    id_trabajadores int  NOT NULL,
    miembros_trabajando int  NOT NULL,
    mujeres_rent int  NOT NULL DEFAULT 0,
    varones_rent int  NOT NULL DEFAULT 0,
    otros_rent int  NOT NULL DEFAULT 0,
    mujeres_vol int  NOT NULL DEFAULT 0,
    varones_vol int  NOT NULL DEFAULT 0,
    otros_vol int  NOT NULL DEFAULT 0,
    dias_trabajo_rent int  NOT NULL,
    horas_trabajo_rent int  NOT NULL,
    dias_trabajo_vol int  NULL,
    horas_trabajo_vol int  NULL,
    cant_trabajadores_smvm_1 int  NOT NULL DEFAULT 0,
    cant_trabajadores_smvm_2 int  NOT NULL DEFAULT 0,
    cant_trabajadores_smvm_3 int  NOT NULL DEFAULT 0,
    cant_cond_contr_relac_dep int  NULL,
    cant_cond_contr_subsidio int  NULL,
    cant_cond_contr_monotributo int  NULL,
    cant_cond_contr_pasantia int  NULL,
    cant_cond_contr_otros int  NULL,
    CONSTRAINT TRABAJADORES_ORG_pk PRIMARY KEY (id_organizacion,id_trabajadores)
);

-- Table: VINCULO_ORGANIZACION
CREATE TABLE VINCULO_ORGANIZACION (
    id_organizacion int  NOT NULL,
    id_vinculo int  NOT NULL,
    nombre_organizacion varchar(120)  NULL,
    motivo text  NULL,
    actividades text  NULL,
    CONSTRAINT PK_VINCULO_ORGANIZACION PRIMARY KEY (id_organizacion,id_vinculo)
);

-- Table: VINCULO_ORGANIZACION_ESTATAL
CREATE TABLE VINCULO_ORGANIZACION_ESTATAL (
    id_organizacion int  NOT NULL,
    id_vinculo_est int  NOT NULL,
    tipo_vinculo_est char(1)  NOT NULL,
    detalle_dependencias text  NULL,
    motivo_vinculacion text  NULL,
    relacion_pandemia char(1)  NULL,
    CONSTRAINT check_tipo_vinculo_est CHECK (tipo_vinculo_est IN ('M', 'P', 'N')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT check_relacion_pandemia CHECK (relacion_pandemia IN ('I', 'F', 'D')) NOT DEFERRABLE INITIALLY IMMEDIATE,
    CONSTRAINT PK_VINCULO_ORGANIZACION_ESTATAL PRIMARY KEY (id_organizacion,id_vinculo_est,tipo_vinculo_est)
);

-- foreign keys
-- Reference: EMAIL_ORG_ORGANIZACION (table: EMAIL_ORG)
ALTER TABLE EMAIL_ORG ADD CONSTRAINT EMAIL_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ACTIVIDAD_ORGANIZACION (table: ACTIVIDAD)
ALTER TABLE ACTIVIDAD ADD CONSTRAINT FK_ACTIVIDAD_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ALFABETIZACION_ORGANIZACION (table: ALFABETIZACION)
ALTER TABLE ALFABETIZACION ADD CONSTRAINT FK_ALFABETIZACION_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_APORTE_ESTATAL_ORGANIZACION (table: APORTE_ESTATAL)
ALTER TABLE APORTE_ESTATAL ADD CONSTRAINT FK_APORTE_ESTATAL_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_AREA_ORG_AREA (table: AREA_ORG)
ALTER TABLE AREA_ORG ADD CONSTRAINT FK_AREA_ORG_AREA
    FOREIGN KEY (id_area)
    REFERENCES AREA (id_area)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_AREA_ORG_ORGANIZACION (table: AREA_ORG)
ALTER TABLE AREA_ORG ADD CONSTRAINT FK_AREA_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_CAPACITACION_ORG_CAPACITACION (table: CAPACITACION_ORG)
ALTER TABLE CAPACITACION_ORG ADD CONSTRAINT FK_CAPACITACION_ORG_CAPACITACION
    FOREIGN KEY (id_capacitacion)
    REFERENCES CAPACITACION (id_capacitacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_CAPACITACION_ORG_ORGANIZACION (table: CAPACITACION_ORG)
ALTER TABLE CAPACITACION_ORG ADD CONSTRAINT FK_CAPACITACION_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_CIUDAD_PROVINCIA (table: CIUDAD)
ALTER TABLE CIUDAD ADD CONSTRAINT FK_CIUDAD_PROVINCIA
    FOREIGN KEY (id_provincia)
    REFERENCES PROVINCIA (id_provincia)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DEMANDAS_SOCIALES_ORGANIZACION (table: DEMANDAS_SOCIALES)
ALTER TABLE DEMANDAS_SOCIALES ADD CONSTRAINT FK_DEMANDAS_SOCIALES_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DETALLE_PROPUESTA_NINIEZ_JUVENTUD_PROPUESTA_NINIEZ_JUVENTUD (table: DETALLE_PROPUESTA_NINIEZ_JUVENTUD)
ALTER TABLE DETALLE_PROPUESTA_NINIEZ_JUVENTUD ADD CONSTRAINT FK_DETALLE_PROPUESTA_NINIEZ_JUVENTUD_PROPUESTA_NINIEZ_JUVENTUD
    FOREIGN KEY (id_propuesta, id_organizacion, tipo_propuesta)
    REFERENCES PROPUESTA_NINIEZ_JUVENTUD (id_propuesta, id_organizacion, tipo_propuesta)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DIFICULTAD_ORG_DIFICULTAD (table: DIFICULTAD_ORG)
ALTER TABLE DIFICULTAD_ORG ADD CONSTRAINT FK_DIFICULTAD_ORG_DIFICULTAD
    FOREIGN KEY (id_dificultad)
    REFERENCES DIFICULTAD (id_dificultad)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DIFICULTAD_ORG_ORGANIZACION (table: DIFICULTAD_ORG)
ALTER TABLE DIFICULTAD_ORG ADD CONSTRAINT FK_DIFICULTAD_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DIRECCION_CIUDAD (table: DIRECCION)
ALTER TABLE DIRECCION ADD CONSTRAINT FK_DIRECCION_CIUDAD
    FOREIGN KEY (id_ciudad)
    REFERENCES CIUDAD (id_ciudad)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_DIRECCION_ORGANIZACION (table: DIRECCION)
ALTER TABLE DIRECCION ADD CONSTRAINT FK_DIRECCION_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EJE_EJE_ORG (table: EJE_ORG)
ALTER TABLE EJE_ORG ADD CONSTRAINT FK_EJE_EJE_ORG
    FOREIGN KEY (id_eje)
    REFERENCES EJE (id_eje)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EJE_ORG_ORGANIZACION (table: EJE_ORG)
ALTER TABLE EJE_ORG ADD CONSTRAINT FK_EJE_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ENTREVISTA_CIUDAD (table: ENTREVISTA)
ALTER TABLE ENTREVISTA ADD CONSTRAINT FK_ENTREVISTA_CIUDAD
    FOREIGN KEY (id_ciudad)
    REFERENCES CIUDAD (id_ciudad)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ENTREVISTA_ORGANIZACION (table: ENTREVISTA)
ALTER TABLE ENTREVISTA ADD CONSTRAINT FK_ENTREVISTA_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EQUIPAMIENTO_ORG_EQUIPAMIENTO (table: EQUIPAMIENTO_ORG)
ALTER TABLE EQUIPAMIENTO_ORG ADD CONSTRAINT FK_EQUIPAMIENTO_ORG_EQUIPAMIENTO
    FOREIGN KEY (id_equipamiento)
    REFERENCES EQUIPAMIENTO (id_equipamiento)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EQUIPAMIENTO_ORG_ORGANIZACION (table: EQUIPAMIENTO_ORG)
ALTER TABLE EQUIPAMIENTO_ORG ADD CONSTRAINT FK_EQUIPAMIENTO_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ESPACIO_CUIDADO_ORGANIZACION (table: ESPACIO_CUIDADO)
ALTER TABLE ESPACIO_CUIDADO ADD CONSTRAINT FK_ESPACIO_CUIDADO_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ESPACIO_FORMACION_ORGANIZACION (table: ESPACIO_FORMACION)
ALTER TABLE ESPACIO_FORMACION ADD CONSTRAINT FK_ESPACIO_FORMACION_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EXPECTATIVA_ORG_EXPECTATIVA (table: EXPECTATIVA_ORG)
ALTER TABLE EXPECTATIVA_ORG ADD CONSTRAINT FK_EXPECTATIVA_ORG_EXPECTATIVA
    FOREIGN KEY (id_expectativa)
    REFERENCES EXPECTATIVA (id_expectativa)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_EXPECTATIVA_ORG_ORGANIZACION (table: EXPECTATIVA_ORG)
ALTER TABLE EXPECTATIVA_ORG ADD CONSTRAINT FK_EXPECTATIVA_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_FORMA_DOCUMENTACION_ORG_FORMA_DOCUMENTACION_PLAN_EVAL (table: FORMA_DOCUMENTACION_PLAN_EVAL_ORG)
ALTER TABLE FORMA_DOCUMENTACION_PLAN_EVAL_ORG ADD CONSTRAINT FK_FORMA_DOCUMENTACION_ORG_FORMA_DOCUMENTACION_PLAN_EVAL
    FOREIGN KEY (id_forma_documentacion_plan_eval)
    REFERENCES FORMA_DOCUMENTACION_PLAN_EVAL (id_forma_documentacion_plan_eval)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_FORMA_DOCUMENTACION_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG (table: FORMA_DOCUMENTACION_PLAN_EVAL_ORG)
ALTER TABLE FORMA_DOCUMENTACION_PLAN_EVAL_ORG ADD CONSTRAINT FK_FORMA_DOCUMENTACION_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG
    FOREIGN KEY (id_forma_plan_eval, id_organizacion)
    REFERENCES FORMA_PLAN_EVAL_ORG (id_forma_plan_eval, id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_FORMA_ORGANIZACION_ORGANIZACION (table: FORMA_PLAN_EVAL_ORG)
ALTER TABLE FORMA_PLAN_EVAL_ORG ADD CONSTRAINT FK_FORMA_ORGANIZACION_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_FUNDADOR_ORGANIZACION (table: FUNDADOR)
ALTER TABLE FUNDADOR ADD CONSTRAINT FK_FUNDADOR_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_GENERACION_FONDO_ORG_GENERACION_FONDO (table: GENERACION_FONDO_ORG)
ALTER TABLE GENERACION_FONDO_ORG ADD CONSTRAINT FK_GENERACION_FONDO_ORG_GENERACION_FONDO
    FOREIGN KEY (id_generacion_fondo)
    REFERENCES GENERACION_FONDO (id_generacion_fondo)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_GENERACION_FONDO_ORG_ORGANIZACION (table: GENERACION_FONDO_ORG)
ALTER TABLE GENERACION_FONDO_ORG ADD CONSTRAINT FK_GENERACION_FONDO_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_GENERO_ORG_GENERO (table: GENERO_ORG)
ALTER TABLE GENERO_ORG ADD CONSTRAINT FK_GENERO_ORG_GENERO
    FOREIGN KEY (id_genero)
    REFERENCES GENERO (id_genero)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_GENERO_ORG_ORGANIZACION (table: GENERO_ORG)
ALTER TABLE GENERO_ORG ADD CONSTRAINT FK_GENERO_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_IDENTIDADES_ORG_IDENTIDAD (table: IDENTIDAD_ORG)
ALTER TABLE IDENTIDAD_ORG ADD CONSTRAINT FK_IDENTIDADES_ORG_IDENTIDAD
    FOREIGN KEY (id_identidad)
    REFERENCES IDENTIDAD (id_identidad)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_IDENTIDAD_ORG_ORGANIZACION (table: IDENTIDAD_ORG)
ALTER TABLE IDENTIDAD_ORG ADD CONSTRAINT FK_IDENTIDAD_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_JOVENES_MEMORIA_ORGANIZACION (table: JOVENES_MEMORIA)
ALTER TABLE JOVENES_MEMORIA ADD CONSTRAINT FK_JOVENES_MEMORIA_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_MEDIO_DIFUSION_ORG_MEDIO_DIFUSION (table: MEDIO_DIFUSION_ORG)
ALTER TABLE MEDIO_DIFUSION_ORG ADD CONSTRAINT FK_MEDIO_DIFUSION_ORG_MEDIO_DIFUSION
    FOREIGN KEY (id_medio)
    REFERENCES MEDIO_DIFUSION (id_medio)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_MEDIO_DIFUSION_ORG_ORGANIZACION (table: MEDIO_DIFUSION_ORG)
ALTER TABLE MEDIO_DIFUSION_ORG ADD CONSTRAINT FK_MEDIO_DIFUSION_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_OBJETIVO_INTERNO_ORGANIZACION (table: OBJETIVO_INTERNO)
ALTER TABLE OBJETIVO_INTERNO ADD CONSTRAINT FK_OBJETIVO_INTERNO_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ORGANIZACION_CIUDAD (table: ORGANIZACION)
ALTER TABLE ORGANIZACION ADD CONSTRAINT FK_ORGANIZACION_CIUDAD
    FOREIGN KEY (id_ciudad)
    REFERENCES CIUDAD (id_ciudad)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_ORG_RELACIONADA_ORGANIZACION (table: ORG_RELACIONADA)
ALTER TABLE ORG_RELACIONADA ADD CONSTRAINT FK_ORG_RELACIONADA_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PARTICIPANTE_ORG_ORGANIZACION (table: PARTICIPANTE_ORG)
ALTER TABLE PARTICIPANTE_ORG ADD CONSTRAINT FK_PARTICIPANTE_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PARTICIPANTE_ORG_PARTICIPANTE (table: PARTICIPANTE_ORG)
ALTER TABLE PARTICIPANTE_ORG ADD CONSTRAINT FK_PARTICIPANTE_ORG_PARTICIPANTE
    FOREIGN KEY (id_participante)
    REFERENCES PARTICIPANTE (id_participante)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PARTICIPANTE_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG (table: PARTICIPANTE_PLAN_EVAL_ORG)
ALTER TABLE PARTICIPANTE_PLAN_EVAL_ORG ADD CONSTRAINT FK_PARTICIPANTE_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG
    FOREIGN KEY (id_forma_plan_eval, id_organizacion)
    REFERENCES FORMA_PLAN_EVAL_ORG (id_forma_plan_eval, id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PARTICIPANTE_PLAN_EVAL_PARTICIPANTE_PLAN_EVAL_ORG (table: PARTICIPANTE_PLAN_EVAL_ORG)
ALTER TABLE PARTICIPANTE_PLAN_EVAL_ORG ADD CONSTRAINT FK_PARTICIPANTE_PLAN_EVAL_PARTICIPANTE_PLAN_EVAL_ORG
    FOREIGN KEY (id_participante_plan_eval)
    REFERENCES PARTICIPANTE_PLAN_EVAL (id_participante_plan_eval)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PERIODO_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG (table: PERIODO_PLAN_EVAL_ORG)
ALTER TABLE PERIODO_PLAN_EVAL_ORG ADD CONSTRAINT FK_PERIODO_PLAN_EVAL_ORG_FORMA_PLAN_EVAL_ORG
    FOREIGN KEY (id_forma_plan_eval, id_organizacion)
    REFERENCES FORMA_PLAN_EVAL_ORG (id_forma_plan_eval, id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PERIODO_PLAN_EVAL_ORG_PERIODO_PLAN_EVAL (table: PERIODO_PLAN_EVAL_ORG)
ALTER TABLE PERIODO_PLAN_EVAL_ORG ADD CONSTRAINT FK_PERIODO_PLAN_EVAL_ORG_PERIODO_PLAN_EVAL
    FOREIGN KEY (id_periodo_plan_eval)
    REFERENCES PERIODO_PLAN_EVAL (id_periodo_plan_eval)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PROBLEMATICA_ORGANIZACION (table: PROBLEMATICA)
ALTER TABLE PROBLEMATICA ADD CONSTRAINT FK_PROBLEMATICA_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_PROPUESTA_NINIEZ_JUVENTUD_ORGANIZACION (table: PROPUESTA_NINIEZ_JUVENTUD)
ALTER TABLE PROPUESTA_NINIEZ_JUVENTUD ADD CONSTRAINT FK_PROPUESTA_NINIEZ_JUVENTUD_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_REF_ENTREVISTADO_ENTREVISTA (table: REF_ENTREVISTADO)
ALTER TABLE REF_ENTREVISTADO ADD CONSTRAINT FK_REF_ENTREVISTADO_ENTREVISTA
    FOREIGN KEY (id_entrevista)
    REFERENCES ENTREVISTA (id_entrevista)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_TELEFONO_ORG_ORGANIZACION (table: TELEFONO_ORG)
ALTER TABLE TELEFONO_ORG ADD CONSTRAINT FK_TELEFONO_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_TIPO_ORGANIZACION_ORG_ORGANIZACION (table: TIPO_ORGANIZACION_ORG)
ALTER TABLE TIPO_ORGANIZACION_ORG ADD CONSTRAINT FK_TIPO_ORGANIZACION_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_TIPO_ORGANIZACION_ORG_TIPO_ORGANIZACION (table: TIPO_ORGANIZACION_ORG)
ALTER TABLE TIPO_ORGANIZACION_ORG ADD CONSTRAINT FK_TIPO_ORGANIZACION_ORG_TIPO_ORGANIZACION
    FOREIGN KEY (id_tipo_organizacion)
    REFERENCES TIPO_ORGANIZACION (id_tipo_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_TRABAJADORES_ORG_ORGANIZACION (table: TRABAJADORES_ORG)
ALTER TABLE TRABAJADORES_ORG ADD CONSTRAINT FK_TRABAJADORES_ORG_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VINCULO_ORGANIZACION_ESTATAL_ORGANIZACION (table: VINCULO_ORGANIZACION_ESTATAL)
ALTER TABLE VINCULO_ORGANIZACION_ESTATAL ADD CONSTRAINT FK_VINCULO_ORGANIZACION_ESTATAL_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VINCULO_ORGANIZACION_ORGANIZACION (table: VINCULO_ORGANIZACION)
ALTER TABLE VINCULO_ORGANIZACION ADD CONSTRAINT FK_VINCULO_ORGANIZACION_ORGANIZACION
    FOREIGN KEY (id_organizacion)
    REFERENCES ORGANIZACION (id_organizacion)
    ON DELETE  RESTRICT 
    ON UPDATE  RESTRICT 
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- sequences
-- Sequence: sequence_direccion_id_direccion
CREATE SEQUENCE sequence_direccion_id_direccion
      INCREMENT BY 1
      MINVALUE 1
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

ALTER TABLE direccion
ALTER COLUMN id_direccion
SET DEFAULT nextval('sequence_direccion_id_direccion');

ALTER SEQUENCE sequence_direccion_id_direccion
OWNED BY direccion.id_direccion;

-- Sequence: sequence_forma_plan_eval_org_id_forma_plan_eval
CREATE SEQUENCE sequence_forma_plan_eval_org_id_forma_plan_eval
      INCREMENT BY 1
      MINVALUE 1
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

ALTER TABLE forma_plan_eval_org
ALTER COLUMN id_forma_plan_eval
SET DEFAULT nextval('sequence_forma_plan_eval_org_id_forma_plan_eval');

ALTER SEQUENCE sequence_forma_plan_eval_org_id_forma_plan_eval
OWNED BY forma_plan_eval_org.id_forma_plan_eval;

-- Sequence: sequence_organizacion_id_organizacion
CREATE SEQUENCE sequence_organizacion_id_organizacion
      INCREMENT BY 1
      MINVALUE 1
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

ALTER TABLE organizacion
ALTER COLUMN id_organizacion
SET DEFAULT nextval('sequence_organizacion_id_organizacion');

ALTER SEQUENCE sequence_organizacion_id_organizacion
OWNED BY organizacion.id_organizacion;

-- Sequence: sequence_provincia_id_provincia
CREATE SEQUENCE sequence_provincia_id_provincia
      INCREMENT BY 1
      MINVALUE 1
      NO MAXVALUE
      START WITH 1
      NO CYCLE
;

ALTER TABLE provincia
ALTER COLUMN id_provincia
SET DEFAULT nextval('sequence_provincia_id_provincia');

ALTER SEQUENCE sequence_provincia_id_provincia
OWNED BY provincia.id_provincia;

-- End of file.

