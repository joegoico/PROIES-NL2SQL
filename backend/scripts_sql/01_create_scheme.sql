CREATE TABLE actores (
    id_actor integer NOT NULL,
    nombreactor text
);

CREATE TABLE actores_eval_x_organizacion (
    id_actor integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE actores_planificacion_por_organizacion (
    id_actor integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_financieros (
    id_organizacion integer DEFAULT 0 NOT NULL,
    administracion_presupuesto text,
    porcentaje_recursos_autogenerados integer DEFAULT 0,
    porcentaje_aportes_estatales integer DEFAULT 0,
    porcentaje_otros_aportes integer DEFAULT 0
);

CREATE TABLE alcance_de_difusion (
    id_alcance integer NOT NULL,
    nombre_alcance text
);

CREATE TABLE organizacion_interna (
    id_organizacion integer DEFAULT 0 NOT NULL,
    objetivos text,
    barrios text,
    zona_accionar text,
    tipo_poblacion text,
    poblacion_segun_edad text,
    poblacion_segun_sexo text,
    organigrama text,
    id_formaorganizacion integer DEFAULT 99,
    documentos_escritos text,
    registro_tarea text,
    planificacion text,
    espescen_planif text,
    concordancia_de_act text,
    cumplimiento_cronograma text,
    evaluacion text,
    momento_evaluacion text,
    espesceneval text,
    influencia_de_los_resultados text,
    implementa_capacitacion text,
    publicaciones text,
    demandas_sociales text,
    quienes_las_efectuan text,
    como_las_efectuan text,
    como_responde_la_institucion text,
    capacidad_de_respuesta_de_la_organizacion text,
    capacidad_formular_propuestas text,
    como_definen_tareas text,
    principales_temas_capacitacion text,
    propuestas_armadas text,
    pagina_web text,
    principales_temas_capacitacion2 text,
    principales_temas_capacitacion3 text
);

CREATE TABLE alcance_accionar_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_alcance_accionar integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE area_tematica (
    id_area integer NOT NULL,
    nombr_earea text
);

CREATE TABLE area_tematica_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_areatematica integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE autodiagnostico (
    id_organizacion integer DEFAULT 0 NOT NULL,
    opinion_rol_organizaciones text,
    opinion_rol_deberian_cumplir text
);

CREATE TABLE autodiagnostico_dificultades (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_dificultad integer DEFAULT 0 NOT NULL,
    prioridad text
);

CREATE TABLE autodiagnostico_rol_deberian_cumplir (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_rolorganizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE autodiagnostico_rol_organizaciones (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_rolorganizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE capacitacion_tema (
    id_capacitaciontema integer NOT NULL,
    capacitacion_tema text
);

CREATE TABLE capacitacion_tema_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_capacitaciontema integer DEFAULT 0 NOT NULL
);

CREATE TABLE codigo_por_forma_registro_por_organizacion (
    id_organizacion integer DEFAULT 0,
    id_codigocontenido integer DEFAULT 0,
    id_formaregistro integer DEFAULT 0,
    prioridad integer DEFAULT 0
);

CREATE TABLE codigos_contenido_registro (
    id_codigo integer NOT NULL,
    nombre_codigo text
);

CREATE TABLE como_efectuan_demandas (
    id_comoefectuandem integer NOT NULL,
    nombrecomo text
);

CREATE TABLE como_efectuan_demandas_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_comoefectuandem integer DEFAULT 0 NOT NULL
);

CREATE TABLE condiciones_contratacion (
    idcondicionescontrat integer NOT NULL,
    condiciones_contratacion text
);
 
CREATE TABLE demandas_sociales (
    id_demanda integer NOT NULL,
    tipo_demanda text
);

CREATE TABLE demandas_por_organizacion (
    id_demandasocial integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    denominacion_legal text,
    domicilio_legal text,
    domicilio_real text,
    telefonos text,
    fax text,
    e_mail text,
    horarios text,
    id_tipoorganizacion integer DEFAULT 0 NOT NULL,
    id_casamatrizlocal integer DEFAULT 0,
    id_casamatrizexterna integer DEFAULT 0
);

CREATE TABLE dependencia_estado (
    id_dependencia_estado integer DEFAULT 0 NOT NULL,
    nombre text,
    nivel text
);

CREATE TABLE dificultades (
    id_dificultad integer DEFAULT 0 NOT NULL,
    dificultad text
);

CREATE TABLE entidades_aportantes (
    id_entidad_aportante integer DEFAULT 0 NOT NULL,
    nombre text
);

CREATE TABLE entidades_sector_privado (
    id_entidad_sector_privado integer NOT NULL,
    nombre text
);

CREATE TABLE entrevista (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_entrevistador integer DEFAULT 0,
    id_supervisor integer DEFAULT 0,
    zona text,
    nombre_entrevistado text,
    cargo_entrevistado text,
    antiguedad_entrevistado text,
    fecha_entrevista timestamp without time zone,
    hs_entrevista text,
    cargada_por text
);

CREATE TABLE entrevistador (
    id_entrevistador integer NOT NULL,
    nombre_apellido_entrevistador text
);

CREATE TABLE equipamiento (
    id_equipamiento integer NOT NULL,
    nombre_equipamiento text
);

CREATE TABLE situacion_juridica (
    id_organizacion integer DEFAULT 0 NOT NULL,
    personeria_juridica text,
    nombre_personeria text,
    uso_transitorio_cual text,
    en_tramite_cual text,
    figura_legal text,
    forma_asoc_civil text,
    nropersoneria text,
    fecha_obtencion timestamp without time zone,
    fecha_inicio_tramite timestamp without time zone,
    nroregistroculto integer DEFAULT 0,
    fecha_obtregistroculto timestamp without time zone
);

CREATE TABLE forma_de_difusion (
    id_formadifusion integer NOT NULL,
    tipo_difusion text
);

CREATE TABLE forma_de_organizacion (
    id_formaorganizacion integer DEFAULT 0 NOT NULL,
    nombre text
);

CREATE TABLE forma_difusion_por_alcance_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_formadifusion integer DEFAULT 0 NOT NULL,
    id_alcance integer DEFAULT 0 NOT NULL
);

CREATE TABLE formas_de_registro (
    id_formaregistro integer NOT NULL,
    nombre text
);

CREATE TABLE forma_tenencia_propiedad (
    id_formatenenciapropiedad integer DEFAULT 0 NOT NULL,
    forma_tenencia_propiedad text
);

CREATE TABLE frecuencia_capacitacion (
    id_momento integer NOT NULL,
    tipo text
);

CREATE TABLE historia (
    id_organizacion integer DEFAULT 0 NOT NULL,
    anioorigen integer DEFAULT 0,
    origen text,
    id_religion integer DEFAULT 5,
    fundadores text,
    resumenfundadores text,
    objetivos_fundacionales text,
    resenia_accion text,
    resumen_resenia text
);

CREATE TABLE identidad (
    id_identidadorg integer NOT NULL,
    nombreidentidad text
);

CREATE TABLE identidad_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_identidadorg integer DEFAULT 0 NOT NULL
);

CREATE TABLE modalidad_capacitacion_por_organizacion (
    id_modalidad integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_frecuencia integer DEFAULT 0,
    rentado boolean NOT NULL,
    voluntario boolean NOT NULL
);

CREATE TABLE modalidad_de_capacitacion (
    id_modalidad integer NOT NULL,
    nombre_modalidad text
);

CREATE TABLE modo_accionar (
    id_modoaccionar integer NOT NULL,
    nombre_modo text
);

CREATE TABLE modo_accionar_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_modoaccionar integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE momento_evaluacion_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_momento integer DEFAULT 0 NOT NULL
);

CREATE TABLE momento_planificacion_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_momento integer DEFAULT 0 NOT NULL
);

CREATE TABLE momento_planificacion_evaluacion (
    id_momento integer NOT NULL,
    tipo text
);

CREATE TABLE vinculacion_motivos (
    id_motivo_vinculacion integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE vinculacion_organismos_sociales (
    id_organizacion_relevada integer DEFAULT 0 NOT NULL,
    id_organizacion_vinculada integer DEFAULT 0 NOT NULL,
    id_motivo_vinculacion integer DEFAULT 0 NOT NULL,
    misma_tematica boolean NOT NULL,
    acuerdos_formales text
);

CREATE TABLE resumen_objetivo_organizacion_interna_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    nombre_resumen_objetivos text NOT NULL
);

CREATE TABLE opinion_politica_social (
    id_opinion_politica_social integer DEFAULT 0 NOT NULL,
    opinion text
);

CREATE TABLE organismo (
    id_organismo integer NOT NULL,
    nombre_organismo text
);

CREATE TABLE organismo_en_el_que_esta_registrado (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_organismo integer DEFAULT 0 NOT NULL,
    fecha_registro timestamp without time zone,
    fecha_ultima_presentacion_mem_y_balance timestamp without time zone,
    anio_ultima_supervision integer DEFAULT 0
);

CREATE TABLE organismos_internacionales (
    id_organismo_internacional integer DEFAULT 0 NOT NULL,
    nombre_organismo_internacional text
);

CREATE TABLE organizacion_relacionada (
    id_organizacion_relacionada integer NOT NULL,
    nombre text,
    id_organizacion integer DEFAULT 0,
    tipo text,
    id_tipo integer DEFAULT 0
);

CREATE TABLE organizacion_tipo (
    id_tipo_organizacion integer DEFAULT 0 NOT NULL,
    descripcion text,
    dependencia_casa_matriz_local boolean NOT NULL,
    dependencia_casa_matriz_externa boolean NOT NULL,
    organizaciones_a_cargo boolean NOT NULL
);

CREATE TABLE organizacion_casa_matriz_externa (
    id_casa_matriz_externa integer DEFAULT 0 NOT NULL,
    nombre text,
    nivel text
);

CREATE TABLE vinculacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    vinculacion_instancias_estatales text,
    acuerdos_convenios text,
    redes_foros boolean NOT NULL,
    funcionarios_politicos text,
    proyectos_partidos_politicos boolean NOT NULL,
    implementacion_programas_sociales text,
    cual_programa_social text,
    evaluacion_programa_social text,
    cuales_redes_foros text
);

CREATE TABLE perfil_edad (
    id_perfil_edad integer NOT NULL,
    perfil_edad text
);

CREATE TABLE perfil_edad_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_perfiledad integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE problema_sociedad_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_problema_sociedad integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE problemas_sociedad (
    id_problema_sociedad integer NOT NULL,
    problema_sociedad text
);

CREATE TABLE proyecto_por_organizacion_relacionada (
    id_organizacion_relacionada integer DEFAULT 0 NOT NULL,
    id_proyecto integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE proyectos (
    id_proyecto integer NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL,
    descripcion text,
    codigo1_modo_accionar integer DEFAULT 0,
    codigo2_area_tematica integer DEFAULT 0,
    numero_poblacion_atendida text,
    fecha_inicio timestamp without time zone,
    fecha_fin timestamp without time zone,
    motivo_finalizacion text,
    estado text
);

CREATE TABLE quienes_efectuan_demandas (
    id_quienes integer NOT NULL,
    nombre_quienes text
);

CREATE TABLE quienes_efectuan_demandas_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_quienes integer DEFAULT 0 NOT NULL
);

CREATE TABLE recurso_financiero_no_recibido_externo_causas (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_causanorecext integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_finacieros_estado_tipos (
    id_recurso_financiero_estado integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursos_finacieros_presupuesto (
    id_organizacion integer DEFAULT 0 NOT NULL,
    anio integer DEFAULT 0,
    propia numeric(19,2) DEFAULT 0,
    estado_nacional numeric(19,2) DEFAULT 0,
    estado_provincial numeric(19,2) DEFAULT 0,
    estado_municipal numeric(19,2) DEFAULT 0,
    organismos_internacionales numeric(19,2) DEFAULT 0,
    sector_privado numeric(19,2) DEFAULT 0,
    bancos numeric(19,2) DEFAULT 0,
    otras_instituciones numeric(19,2) DEFAULT 0
);

CREATE TABLE recursos_finacieros_autogenerados_fines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_forma_generacion_recurso integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_finacieros_autogenerados_formas (
    id_forma_generacion_recurso integer NOT NULL,
    descripcion text
);

CREATE TABLE recursos_finacieros_causas_no_recibidos_externos (
    id_causanorecursoext integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursos_finacieros_estado_fines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_recurso_financiero_estado integer DEFAULT 0 NOT NULL,
    id_fin_recurso_financiero integer DEFAULT 0 NOT NULL,
    id_dependencia_estado integer DEFAULT 0
);

CREATE TABLE recursos_finacieros_fines (
    id_fin_recurso_financiero integer NOT NULL,
    descripcion text,
    id_fin_recurso_financiero integer DEFAULT 0
);

CREATE TABLE recursos_finacieros_organismos_internacionales_fines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_organismo_internacional integer DEFAULT 0 NOT NULL,
    id_fin_recurso_financiero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_finacieros_otros_fines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_entidad_aportante integer DEFAULT 0 NOT NULL,
    id_fin_recurso_financiero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_finacieros_privados_fines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_entidad_sector_privado integer DEFAULT 0 NOT NULL,
    id_fin_recurso_financiero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursos_humanos (
    id_organizacion integer DEFAULT 0 NOT NULL,
    renta_menor numeric(19,2) DEFAULT 0,
    renta_mayor numeric(19,2) DEFAULT 0,
    renta_promedio numeric(19,2) DEFAULT 0,
    jornada_media_semana_rentado integer DEFAULT 0,
    jornada_media_semana_voluntariado integer DEFAULT 0,
    cantidad_personal_contratado integer DEFAULT 0,
    cantidad_autonomo integer DEFAULT 0,
    cantidad_relacion_dependencia integer DEFAULT 0,
    cantidad_pasantias integer DEFAULT 0,
    cantidad_becas integer DEFAULT 0,
    cantidad_otros integer DEFAULT 0,
    captacion_voluntarios text,
    estrategias_captacion text
);

CREATE TABLE recursos_humanos_detalle (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_recurso_humano integer NOT NULL,
    cantidad integer DEFAULT 0,
    funciones text,
    nivel_educativo text,
    profesion text,
    rentado text,
    id_origenrenta integer DEFAULT 0,
    monto text,
    id_condiciones_contratacion integer DEFAULT 0,
    horas_por_semana integer DEFAULT 0,
    contribucion_especie text,
    sexo text,
    edad integer DEFAULT 0
);

CREATE TABLE recursos_humanos_origen_renta (
    id_origenrenta integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursos_materiales (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_formato_nencia_propiedad integer DEFAULT 0,
    uso_exclusivo_propiedad boolean NOT NULL,
    cant_libros integer DEFAULT 0,
    cantidad_hemeroteca integer DEFAULT 0,
    cantidad_videoteca integer DEFAULT 0
);

CREATE TABLE recursos_materiales_equipamiento (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_equipamiento integer DEFAULT 0 NOT NULL
);

CREATE TABLE religion (
    id_religion integer NOT NULL,
    nombrereligion text
);

CREATE TABLE resumen_objetivos_fundacionales_por_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    nombre_resumen_objetivos text NOT NULL
);

CREATE TABLE rol_organizaciones (
    id_rolorganizacion integer DEFAULT 0 NOT NULL,
    rol_organizacion text
);

CREATE TABLE supervisor (
    id_supervisor integer NOT NULL,
    apellido_nombre text
);

CREATE TABLE tipo_organizacion_relacionada (
    id_tipo_organizacion_relacionada integer NOT NULL,
    nombre text
);

CREATE TABLE vinculacion_estado_detalle (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_dependencia_estado integer DEFAULT 0 NOT NULL,
    id_motivo_vinculacion integer DEFAULT 0 NOT NULL,
    motivos text
);

CREATE TABLE vinculacion_otras_organizaciones (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_otra_organizacion integer DEFAULT 0 NOT NULL,
    id_motivo_vinculacion integer DEFAULT 0 NOT NULL,
    misma_matematica boolean NOT NULL,
    acuerdos_formales text
);

CREATE TABLE vision_realidad_opinion_politica_social (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_opinion_politica_social integer DEFAULT 0 NOT NULL
);

CREATE TABLE vision_problemas_causas (
    id_problema_causa integer NOT NULL,
    problema text,
    causa text,
    id_organizacion integer DEFAULT 0
);

CREATE TABLE vision_realidad (
    id_organizacion integer DEFAULT 0 NOT NULL,
    opinion_politica_social_local text,
    opinion_infancia_juventud text,
    opinion_trabajo_infantil text
);

ALTER TABLE  actores_eval_x_organizacion
    ADD CONSTRAINT pk_actores_eval_x_organizacion PRIMARY KEY (id_actor, id_organizacion);

ALTER TABLE  actores_planificacion_por_organizacion
    ADD CONSTRAINT pk_actores_planificacion_por_organizacion PRIMARY KEY (id_actor, id_organizacion);

ALTER TABLE  actores
    ADD CONSTRAINT pk_actores PRIMARY KEY (id_actor);

ALTER TABLE  alcance_de_difusion
    ADD CONSTRAINT pk_alcance_de_difusion PRIMARY KEY (id_alcance);

ALTER TABLE  alcance_accionar_por_organizacion
    ADD CONSTRAINT pk_alcance_accionar_por_organizacion PRIMARY KEY (id_organizacion, id_alcance_accionar);

ALTER TABLE  area_tematica
    ADD CONSTRAINT pk_area_tematica PRIMARY KEY (id_area);

ALTER TABLE  area_tematica_por_organizacion
    ADD CONSTRAINT pk_area_tematica_por_organizacion PRIMARY KEY (id_organizacion, id_areatematica);

ALTER TABLE  autodiagnostico
    ADD CONSTRAINT pk_autodiagnostico PRIMARY KEY (id_organizacion);

ALTER TABLE  autodiagnostico_dificultades
    ADD CONSTRAINT pk_autodiagnostico_dificultades PRIMARY KEY (id_organizacion, id_dificultad);

ALTER TABLE  autodiagnostico_rol_deberian_cumplir
    ADD CONSTRAINT pk_autodiagnostico_rol_deberian_cumplir PRIMARY KEY (id_organizacion, id_rolorganizacion);

ALTER TABLE  autodiagnostico_rol_organizaciones
    ADD CONSTRAINT pk_autodiagnostico_rol_organizaciones PRIMARY KEY (id_organizacion, id_rolorganizacion);

ALTER TABLE  capacitacion_tema
    ADD CONSTRAINT pk_capacitacion_tema PRIMARY KEY (id_capacitaciontema);

ALTER TABLE  capacitacion_tema_por_organizacion
    ADD CONSTRAINT pk_capacitacion_tema_por_organizacion PRIMARY KEY (id_organizacion, id_capacitaciontema);

ALTER TABLE  codigos_contenido_registro
    ADD CONSTRAINT pk_codigos_contenido_registro PRIMARY KEY (id_codigo);

ALTER TABLE  como_efectuan_demandas
    ADD CONSTRAINT pk_como_efectuan_demandas PRIMARY KEY (id_comoefectuandem);

ALTER TABLE  como_efectuan_demandas_por_organizacion
    ADD CONSTRAINT pk_como_efectuan_demandas_por_organizacion PRIMARY KEY (id_organizacion, id_comoefectuandem);

ALTER TABLE  condiciones_contratacion
    ADD CONSTRAINT pk_condiciones_contratacion PRIMARY KEY (idcondicionescontrat);

ALTER TABLE  demandas_sociales
    ADD CONSTRAINT pk_demandas_sociales PRIMARY KEY (id_demanda);

ALTER TABLE  demandas_por_organizacion
    ADD CONSTRAINT pk_demandas_por_organizacion PRIMARY KEY (id_demandasocial, id_organizacion);

ALTER TABLE  dependencia_estado
    ADD CONSTRAINT pk_dependenciaestado PRIMARY KEY (id_dependencia_estado);

ALTER TABLE  dificultades
    ADD CONSTRAINT pk_dificultades PRIMARY KEY (id_dificultad);

ALTER TABLE  entidades_aportantes
    ADD CONSTRAINT pk_entidadesaportantes PRIMARY KEY (id_entidad_aportante);

ALTER TABLE  entidades_sector_privado
    ADD CONSTRAINT pk_entidadessectorprivado PRIMARY KEY (id_entidad_sector_privado);

ALTER TABLE  entrevista
    ADD CONSTRAINT pk_entrevista PRIMARY KEY (id_organizacion);

ALTER TABLE  equipamiento
    ADD CONSTRAINT pk_equipamiento PRIMARY KEY (id_equipamiento);

ALTER TABLE  forma_de_difusion
    ADD CONSTRAINT pk_forma_de_difusion PRIMARY KEY (id_formadifusion);

ALTER TABLE  forma_de_organizacion
    ADD CONSTRAINT pk_forma_de_organizacion PRIMARY KEY (id_formaorganizacion);

ALTER TABLE  forma_difusion_por_alcance_por_organizacion
    ADD CONSTRAINT pk_forma_difusion_por_alcance_por_organizacion PRIMARY KEY (id_organizacion, id_formadifusion, id_alcance);

ALTER TABLE  formas_de_registro
    ADD CONSTRAINT pk_formas_de_registro PRIMARY KEY (id_formaregistro);

ALTER TABLE  forma_tenencia_propiedad
    ADD CONSTRAINT pk_formatenenciapropiedad PRIMARY KEY (id_formatenenciapropiedad);

ALTER TABLE  frecuencia_capacitacion
    ADD CONSTRAINT pk_frecuenciacapacitacion PRIMARY KEY (id_momento);

ALTER TABLE  historia
    ADD CONSTRAINT pk_historia PRIMARY KEY (id_organizacion);

ALTER TABLE  identidad
    ADD CONSTRAINT pk_identidad PRIMARY KEY (id_identidadorg);

ALTER TABLE  identidad_x_organizacion
    ADD CONSTRAINT pk_identidad_por_organizacion PRIMARY KEY (id_organizacion, id_identidadorg);

ALTER TABLE  modalidad_capacitacion_por_organizacion
    ADD CONSTRAINT pk_modalidad_capacitacion_por_organizacion PRIMARY KEY (id_modalidad, id_organizacion);

ALTER TABLE  modalidad_de_capacitacion
    ADD CONSTRAINT pk_modalidad_de_capacitacion PRIMARY KEY (id_modalidad);

ALTER TABLE  modo_accionar
    ADD CONSTRAINT pk_modo_accionar PRIMARY KEY (id_modoaccionar);


ALTER TABLE  modo_accionar_por_organizacion
    ADD CONSTRAINT pk_modo_accionar_por_organizacion PRIMARY KEY (id_organizacion, id_modoaccionar);

ALTER TABLE  momento_evaluacion_por_organizacion
    ADD CONSTRAINT pk_momento_evaluacion_por_organizacion PRIMARY KEY (id_organizacion, id_momento);

ALTER TABLE  momento_planificacion_por_organizacion
    ADD CONSTRAINT pk_momento_planificacion_por_organizacion PRIMARY KEY (id_organizacion, id_momento);

ALTER TABLE  momento_planificacion_evaluacion
    ADD CONSTRAINT pk_momento_planificacion_y_evaluacion PRIMARY KEY (id_momento);

ALTER TABLE  opinion_politica_social
    ADD CONSTRAINT pk_opinion_politica_social PRIMARY KEY (id_opinion_politica_social);

ALTER TABLE  organismo_en_el_que_esta_registrado
    ADD CONSTRAINT pk_organismo_en_el_que_esta_registrado PRIMARY KEY (id_organizacion, id_organismo);

ALTER TABLE  organismo
    ADD CONSTRAINT pk_organismo PRIMARY KEY (id_organismo);

ALTER TABLE  organismos_internacionales
    ADD CONSTRAINT pk_organismosinternacionales PRIMARY KEY (id_organismo_internacional);

ALTER TABLE  organizacion
    ADD CONSTRAINT pk_organizacion PRIMARY KEY (id_organizacion);

ALTER TABLE  organizacion_relacionada
    ADD CONSTRAINT pk_organizacion_relacionada PRIMARY KEY (id_organizacion_relacionada);

ALTER TABLE  organizacion_tipo
    ADD CONSTRAINT pk_organizacion_tipo PRIMARY KEY (id_tipo_organizacion);

ALTER TABLE  organizacion_casa_matriz_externa
    ADD CONSTRAINT pk_organizacion_casa_matriz_externa PRIMARY KEY (id_casa_matriz_externa);

ALTER TABLE  perfil_edad
    ADD CONSTRAINT pk_perfiledad PRIMARY KEY (id_perfil_edad);

ALTER TABLE  perfil_edad_por_organizacion
    ADD CONSTRAINT pk_perfiledad_por_organizacion PRIMARY KEY (id_organizacion, id_perfiledad);

ALTER TABLE  problema_sociedad_por_organizacion
    ADD CONSTRAINT pk_problema_sociedad_por_organizacion PRIMARY KEY (id_organizacion, id_problema_sociedad);

ALTER TABLE  problemas_sociedad
    ADD CONSTRAINT pk_problemas_sociedad PRIMARY KEY (id_problema_sociedad);

ALTER TABLE  proyecto_por_organizacion_relacionada
    ADD CONSTRAINT pk_proyecto_por_organizacion_relacionada PRIMARY KEY (id_organizacion_relacionada, id_proyecto, id_organizacion);

ALTER TABLE  proyectos
    ADD CONSTRAINT pk_proyectos PRIMARY KEY (id_proyecto, id_organizacion);

ALTER TABLE  quienes_efectuan_demandas
    ADD CONSTRAINT pk_quienes_efectuan_demandas PRIMARY KEY (id_quienes);

ALTER TABLE  quienes_efectuan_demandas_por_organizacion
    ADD CONSTRAINT pk_quienes_efectuan_demandas_por_organizacion PRIMARY KEY (id_organizacion, id_quienes);

ALTER TABLE  recurso_financiero_no_recibido_externo_causas
    ADD CONSTRAINT pk_recurso_financiero_no_recibido_externo_causas PRIMARY KEY (id_organizacion, id_causanorecext);

ALTER TABLE  recursos_finacieros_estado_tipos
    ADD CONSTRAINT pk_recursos_finacieros_estado_tipos PRIMARY KEY (id_recurso_financiero_estado);

ALTER TABLE  recursos_finacieros_presupuesto
    ADD CONSTRAINT pk_recursos_finacieros_presupuesto PRIMARY KEY (id_organizacion);

ALTER TABLE  recursos_financieros
    ADD CONSTRAINT pk_recursos_financieros PRIMARY KEY (id_organizacion);

ALTER TABLE  recursos_finacieros_autogenerados_fines
    ADD CONSTRAINT pk_recursos_financieros_autogenerados_fines PRIMARY KEY (id_organizacion, id_forma_generacion_recurso);

ALTER TABLE  recursos_finacieros_autogenerados_formas
    ADD CONSTRAINT pk_recursos_financieros_autogenerados_formas PRIMARY KEY (id_forma_generacion_recurso);

ALTER TABLE  recursos_finacieros_causas_no_recibidos_externos
    ADD CONSTRAINT pk_recursos_financieros_causas_no_recibidas_externas PRIMARY KEY (id_causanorecursoext);

ALTER TABLE  recursos_finacieros_estado_fines
    ADD CONSTRAINT pk_recursos_financieros_estado_fines PRIMARY KEY (id_organizacion, id_recurso_financiero_estado, id_fin_recurso_financiero);

ALTER TABLE  recursos_finacieros_fines
    ADD CONSTRAINT pk_recursos_financieros_fines PRIMARY KEY (id_fin_recurso_financiero);

ALTER TABLE  recursos_finacieros_organismos_internacionales_fines
    ADD CONSTRAINT pk_recursos_financieros_organismos_internacionales_fines PRIMARY KEY (id_organizacion, id_organismo_internacional, id_fin_recurso_financiero);

ALTER TABLE  recursos_finacieros_otros_fines
    ADD CONSTRAINT pk_recursos_financieros_otros_fines PRIMARY KEY (id_organizacion, id_entidad_aportante, id_fin_recurso_financiero);

ALTER TABLE  recursos_finacieros_privados_fines
    ADD CONSTRAINT pk_recursos_financieros_privados_fines PRIMARY KEY (id_organizacion, id_entidad_sector_privado, id_fin_recurso_financiero);

ALTER TABLE  recursos_humanos
    ADD CONSTRAINT pk_recursos_humanos PRIMARY KEY (id_organizacion);

ALTER TABLE  recursos_humanos_detalle
    ADD CONSTRAINT pk_recursos_humanos_detalle PRIMARY KEY (id_organizacion, id_recurso_humano);

ALTER TABLE  recursos_humanos_origen_renta
    ADD CONSTRAINT pk_recursos_humanos_origen_renta PRIMARY KEY (id_origenrenta);

ALTER TABLE  recursos_materiales
    ADD CONSTRAINT pk_recursos_materiales PRIMARY KEY (id_organizacion);

ALTER TABLE  recursos_materiales_equipamiento
    ADD CONSTRAINT pk_recursos_materiales_equipamiento PRIMARY KEY (id_organizacion, id_equipamiento);

ALTER TABLE  religion
    ADD CONSTRAINT pk_religion PRIMARY KEY (id_religion);

ALTER TABLE  resumen_objetivos_fundacionales_por_organizacion
    ADD CONSTRAINT pk_resumen_objetivos_fundacionales_por_organizacion PRIMARY KEY (id_organizacion, nombre_resumen_objetivos);

ALTER TABLE  resumen_objetivo_organizacion_interna_por_organizacion
    ADD CONSTRAINT pk_resumen_objetivos_organizacion_interna_por_organizacion PRIMARY KEY (id_organizacion, nombre_resumen_objetivos);

ALTER TABLE  rol_organizaciones
    ADD CONSTRAINT pk_rol_organizaciones PRIMARY KEY (id_rolorganizacion);

ALTER TABLE  situacion_juridica
    ADD CONSTRAINT pk_situacion_juridica PRIMARY KEY (id_organizacion);

ALTER TABLE  supervisor
    ADD CONSTRAINT pk_supervisor PRIMARY KEY (id_supervisor);

ALTER TABLE  tipo_organizacion_relacionada
    ADD CONSTRAINT pk_tipo_organizacion_relacionada PRIMARY KEY (id_tipo_organizacion_relacionada);

ALTER TABLE  vinculacion
    ADD CONSTRAINT pk_vinculacion PRIMARY KEY (id_organizacion);

ALTER TABLE  vinculacion_estado_detalle
    ADD CONSTRAINT pk_vinculacion_estado_detalle PRIMARY KEY (id_organizacion, id_dependencia_estado, id_motivo_vinculacion);

ALTER TABLE  vinculacion_motivos
    ADD CONSTRAINT pk_vinculacion_motivos PRIMARY KEY (id_motivo_vinculacion);

ALTER TABLE  vinculacion_organismos_sociales
    ADD CONSTRAINT pk_vinculacion_organismos_sociales PRIMARY KEY (id_organizacion_relevada, id_organizacion_vinculada, id_motivo_vinculacion);

ALTER TABLE  vinculacion_otras_organizaciones
    ADD CONSTRAINT pk_vinculacion_otras_organizaciones PRIMARY KEY (id_organizacion, id_otra_organizacion, id_motivo_vinculacion);

ALTER TABLE  vision_problemas_causas
    ADD CONSTRAINT pk_vision_problemas_causas PRIMARY KEY (id_problema_causa);

ALTER TABLE  vision_realidad_opinion_politica_social
    ADD CONSTRAINT pk_vision_realidad_opinion_politica_social PRIMARY KEY (id_organizacion, id_opinion_politica_social);

ALTER TABLE  vision_realidad
    ADD CONSTRAINT pk_vision_realidad PRIMARY KEY (id_organizacion);
	
alter table entrevistador
    add constraint pk_entrevistador
        primary key (id_entrevistador);

--  Foreign Key
ALTER TABLE actores_eval_x_organizacion
ADD CONSTRAINT fk_actores_eval_x_organizacion_actores
      FOREIGN KEY(id_actor)
	  REFERENCES actores (id_actor);

ALTER TABLE actores_eval_x_organizacion
ADD CONSTRAINT fk_actores_eval_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE actores_planificacion_por_organizacion
ADD CONSTRAINT fk_actores_planif_x_organizacion_actores
      FOREIGN KEY(id_actor)
	  REFERENCES actores (id_actor);

ALTER TABLE actores_planificacion_por_organizacion
ADD CONSTRAINT fk_actores_planif_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE recursos_financieros
ADD CONSTRAINT fk_recursos_financieros_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE organizacion_interna
ADD CONSTRAINT fk_organizacion_interna_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE organizacion_interna
ADD CONSTRAINT fk_organizacion_interna_forma_de_organizacion
      FOREIGN KEY(id_formaorganizacion)
	  REFERENCES forma_de_organizacion (id_formaorganizacion);

ALTER TABLE alcance_accionar_por_organizacion
ADD CONSTRAINT fk_alcanceaccionar_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	
ALTER TABLE area_tematica_por_organizacion
ADD CONSTRAINT fk_area_tematica_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	
ALTER TABLE area_tematica_por_organizacion
ADD CONSTRAINT fk_area_tematica_x_organizacion_area_tematica
      FOREIGN KEY(id_areatematica)
	  REFERENCES area_tematica (id_area);
	
ALTER TABLE autodiagnostico
ADD CONSTRAINT fk_autodiagnostico_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE autodiagnostico_dificultades
ADD CONSTRAINT fk_autodiagnosticodificultades_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE autodiagnostico_dificultades
ADD CONSTRAINT fk_autodiagnosticodificultades_dificultades
      FOREIGN KEY(id_dificultad)
	  REFERENCES dificultades (id_dificultad);

ALTER TABLE autodiagnostico_rol_deberian_cumplir
ADD CONSTRAINT fk_autodiagnosticoroldeberiancumplir_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE autodiagnostico_rol_deberian_cumplir
ADD CONSTRAINT fk_autodiagnosticoroldeberiancumplir_rolorganizaciones
      FOREIGN KEY(id_rolorganizacion)
	  REFERENCES rol_organizaciones (id_rolorganizacion);
	  
ALTER TABLE autodiagnostico_rol_organizaciones
ADD CONSTRAINT fk_autodiagnosticorolorganizaciones_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE autodiagnostico_rol_organizaciones
ADD CONSTRAINT fk_autodiagnosticorolorganizaciones_rolorganizaciones
      FOREIGN KEY(id_rolorganizacion)
	  REFERENCES rol_organizaciones (id_rolorganizacion);

ALTER TABLE capacitacion_tema_por_organizacion
ADD CONSTRAINT fk_capacitaciontema_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	  
ALTER TABLE capacitacion_tema_por_organizacion
ADD CONSTRAINT fk_capacitaciontema_x_organizacion
      FOREIGN KEY(id_capacitaciontema)
	  REFERENCES capacitacion_tema(id_capacitaciontema);

ALTER TABLE codigo_por_forma_registro_por_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE codigo_por_forma_registro_por_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_organizacion_cod_contenido_registro
      FOREIGN KEY(id_codigocontenido)
	  REFERENCES codigos_contenido_registro(id_codigo);

ALTER TABLE codigo_por_forma_registro_por_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_x_organizacion_formas_de_registro
      FOREIGN KEY(id_formaregistro)
	  REFERENCES formas_de_registro(id_formaregistro);

ALTER TABLE como_efectuan_demandas_por_organizacion
ADD CONSTRAINT fk_como_efectuan_demandas_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE como_efectuan_demandas_por_organizacion
ADD CONSTRAINT fk_como_efectuan_demandas_x_organizacion_como_efectuan_demandas
      FOREIGN KEY(id_comoefectuandem)
	  REFERENCES como_efectuan_demandas(id_comoefectuandem);

ALTER TABLE demandas_por_organizacion
ADD CONSTRAINT fk_demandas_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE demandas_por_organizacion
ADD CONSTRAINT fk_demandas_x_organizacion_demandas_sociales
      FOREIGN KEY(id_demandasocial)
	  REFERENCES demandas_sociales(id_demanda);

ALTER TABLE organizacion
ADD CONSTRAINT fk_organizacion_
      FOREIGN KEY(id_tipoorganizacion)
	  REFERENCES organizacion_tipo(id_tipo_organizacion);
	  
-- FALTA EN ORGANIZACION LAS REFERENCIAS A 
-- que no puedo intuir a donde apuntan
-- id_casamatrizlocal 
-- id_casamatrizexterna

ALTER TABLE entrevista
ADD CONSTRAINT fk_entrevista_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE entrevista
ADD CONSTRAINT fk_entrevista_entrevistador
      FOREIGN KEY(id_entrevistador)
	  REFERENCES entrevistador(id_entrevistador);

ALTER TABLE entrevista
ADD CONSTRAINT fk_entrevista_supervisor
      FOREIGN KEY(id_supervisor)
	  REFERENCES  supervisor(id_supervisor);

ALTER TABLE situacion_juridica
ADD CONSTRAINT fk_situacion_juridica_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE forma_difusion_por_alcance_por_organizacion
ADD CONSTRAINT fk_forma_difusion_alcance_org_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE forma_difusion_por_alcance_por_organizacion
ADD CONSTRAINT fk_forma_difusion_alcance_org_forma_de_difusion
      FOREIGN KEY(id_formadifusion)
	  REFERENCES forma_de_difusion(id_formadifusion);

ALTER TABLE forma_difusion_por_alcance_por_organizacion
ADD CONSTRAINT fk_forma_difusion_alcance_org_alcance_de_difusion
      FOREIGN KEY(id_alcance)
	  REFERENCES alcance_de_difusion(id_alcance);

ALTER TABLE historia
ADD CONSTRAINT fk_historia_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE historia
ADD CONSTRAINT fk_historia_religion
      FOREIGN KEY(id_religion)
	  REFERENCES religion(id_religion);

ALTER TABLE identidad_x_organizacion
ADD CONSTRAINT fk_identidad_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE identidad_x_organizacion
ADD CONSTRAINT fk_identidad_x_organizacion_identidad
      FOREIGN KEY(id_identidadorg)
	  REFERENCES identidad(id_identidadorg);

ALTER TABLE modalidad_capacitacion_por_organizacion
ADD CONSTRAINT fk_modalidad_capac_x_organizacion_modalidad_de_capacitacion
      FOREIGN KEY(id_modalidad)
	  REFERENCES modalidad_de_capacitacion(id_modalidad);

ALTER TABLE modalidad_capacitacion_por_organizacion
ADD CONSTRAINT fk_modalidad_capac_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE modo_accionar_por_organizacion
ADD CONSTRAINT fk_modo_accionar_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE modo_accionar_por_organizacion
ADD CONSTRAINT fk_modo_accionar_x_organizacion_modo_accionar
      FOREIGN KEY(id_modoaccionar)
	  REFERENCES modo_accionar(id_modoaccionar);

ALTER TABLE momento_evaluacion_por_organizacion
ADD CONSTRAINT fk_momento_evaluacion_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE momento_evaluacion_por_organizacion
ADD CONSTRAINT fk_momento_eval_momplanificacionyevaluacion
      FOREIGN KEY(id_momento)
	  REFERENCES momento_planificacion_evaluacion(id_momento);

ALTER TABLE momento_planificacion_por_organizacion
ADD CONSTRAINT fk_momento_planificacion_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE momento_planificacion_por_organizacion
ADD CONSTRAINT fk_momento_plan_momplanificacionyevaluacion
      FOREIGN KEY(id_momento)
	  REFERENCES momento_planificacion_evaluacion(id_momento);

ALTER TABLE vinculacion_organismos_sociales
ADD CONSTRAINT fk_vinculacionorgsociales_organizacion_r
      FOREIGN KEY(id_organizacion_relevada)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE vinculacion_organismos_sociales
ADD CONSTRAINT fk_vinculacionorgsociales_organizacion_v
      FOREIGN KEY(id_organizacion_vinculada)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE vinculacion_organismos_sociales
ADD CONSTRAINT fk_vinculacionorgsociales_vinculacionmotivos
      FOREIGN KEY(id_motivo_vinculacion)
	  REFERENCES vinculacion_motivos(id_motivo_vinculacion);
	  
ALTER TABLE resumen_objetivo_organizacion_interna_por_organizacion
ADD CONSTRAINT fk_resumenobjorganizacioninterna_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organismo_en_el_que_esta_registrado
ADD CONSTRAINT fk_organismo_registrado_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organismo_en_el_que_esta_registrado
ADD CONSTRAINT fk_organismo_registrado_organismo
      FOREIGN KEY(id_organismo)
	  REFERENCES organismo(id_organismo);

ALTER TABLE organizacion_relacionada
ADD CONSTRAINT fk_organizacionrelacionada_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organizacion_relacionada
ADD CONSTRAINT fk_organizacionrelacionada_tipo_org_relac
      FOREIGN KEY(id_tipo)
	  REFERENCES tipo_organizacion_relacionada(id_tipo_organizacion_relacionada);

ALTER TABLE vinculacion
ADD CONSTRAINT fk_vinculacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE perfil_edad_por_organizacion
ADD CONSTRAINT fk_perfiledad_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE perfil_edad_por_organizacion
ADD CONSTRAINT fk_perfiledad_x_organizacion_perfiledad
      FOREIGN KEY(id_perfiledad)
	  REFERENCES perfil_edad(id_perfil_edad);
	  
ALTER TABLE problema_sociedad_por_organizacion
ADD CONSTRAINT fk_problemasociedad_org_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE problema_sociedad_por_organizacion
ADD CONSTRAINT fk_problemasociedad_org_problemassociedad
      FOREIGN KEY(id_problema_sociedad)
	  REFERENCES problemas_sociedad(id_problema_sociedad);
	  
ALTER TABLE proyecto_por_organizacion_relacionada
ADD CONSTRAINT fk_proyecto_org_relac_proyectos
      FOREIGN KEY(id_proyecto, id_organizacion)
	  REFERENCES proyectos(id_proyecto,id_organizacion);
	  
ALTER TABLE proyecto_por_organizacion_relacionada
ADD CONSTRAINT fk_proyecto_org_relac_organizacionrelacionada
      FOREIGN KEY(id_organizacion_relacionada)
	  REFERENCES organizacion_relacionada(id_organizacion_relacionada);
	  
ALTER TABLE proyectos
ADD CONSTRAINT fk_proyectos_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE quienes_efectuan_demandas_por_organizacion
ADD CONSTRAINT fk_quienesefecdem_org_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE quienes_efectuan_demandas_por_organizacion
ADD CONSTRAINT fk_quienesefecdem_org_quienes_ef_dem
      FOREIGN KEY(id_quienes)
	  REFERENCES quienes_efectuan_demandas(id_quienes);

--- testeado
	  
ALTER TABLE recurso_financiero_no_recibido_externo_causas
ADD CONSTRAINT fk_recursofinancieronorecextcausas_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursos_finacieros_presupuesto
ADD CONSTRAINT fk_recursosfinacierospresup_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_finacieros_autogenerados_fines
ADD CONSTRAINT fk_recursosfinancierosautogfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursos_finacieros_autogenerados_fines
ADD CONSTRAINT fk_recursosfinancierosautogfines_formas
      FOREIGN KEY(id_forma_generacion_recurso)
	  REFERENCES recursos_finacieros_autogenerados_formas(id_forma_generacion_recurso);

ALTER TABLE recursos_finacieros_estado_fines
ADD CONSTRAINT fk_recursosfinancierosestadofines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursos_finacieros_organismos_internacionales_fines
ADD CONSTRAINT fk_recursosfinancierosorgintfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_finacieros_organismos_internacionales_fines
ADD CONSTRAINT fk_recursosfinancierosorgintfines_org_int
      FOREIGN KEY(id_organismo_internacional)
	  REFERENCES organismos_internacionales(id_organismo_internacional);
	  
ALTER TABLE recursos_finacieros_otros_fines
ADD CONSTRAINT fk_recursosfinancierosotrosfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_finacieros_otros_fines
ADD CONSTRAINT fk_recursosfinancierosotrosfines_ent_apor
      FOREIGN KEY(id_entidad_aportante)
	  REFERENCES entidades_aportantes(id_entidad_aportante);
	  
ALTER TABLE recursos_finacieros_privados_fines
ADD CONSTRAINT fk_recursosfinancierosprivadofines_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_finacieros_privados_fines
ADD CONSTRAINT fk_recursosfinancierosprivadofines_ent_priv
      FOREIGN KEY(id_entidad_sector_privado)
	  REFERENCES entidades_sector_privado(id_entidad_sector_privado);
	  
ALTER TABLE recursos_humanos
ADD CONSTRAINT fk_recursoshumanos_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_humanos_detalle
ADD CONSTRAINT fk_recursoshumanosdetalle_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursos_materiales
ADD CONSTRAINT fk_recursosmateriales_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_materiales
ADD CONSTRAINT fk_recursosmateriales_forma_prop
      FOREIGN KEY(id_formato_nencia_propiedad)
	  REFERENCES forma_tenencia_propiedad(id_formatenenciapropiedad);
	  
ALTER TABLE recursos_materiales_equipamiento
ADD CONSTRAINT fk_recursosmaterialesequipamiento_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursos_materiales_equipamiento
ADD CONSTRAINT fk_recursosmaterialesequipamiento_equipamiento
      FOREIGN KEY(id_equipamiento)
	  REFERENCES equipamiento(id_equipamiento);
	  	  
ALTER TABLE vinculacion_estado_detalle
ADD CONSTRAINT fk_vinculacionestadodetalle_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE vinculacion_estado_detalle
ADD CONSTRAINT fk_vinculacionestadodetalle_dependencia
      FOREIGN KEY(id_dependencia_estado)
	  REFERENCES dependencia_estado(id_dependencia_estado);
	  	  
ALTER TABLE vinculacion_estado_detalle
ADD CONSTRAINT fk_vinculacionestadodetalle_vinc_motivo
      FOREIGN KEY(id_motivo_vinculacion)
	  REFERENCES vinculacion_motivos(id_motivo_vinculacion);

ALTER TABLE vinculacion_otras_organizaciones
ADD CONSTRAINT fk_vinculacionotrasorg_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE vinculacion_otras_organizaciones
ADD CONSTRAINT fk_vinculacionotrasorg_dependencia
      FOREIGN KEY(id_otra_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE vinculacion_otras_organizaciones
ADD CONSTRAINT fk_vinculacionotrasorg_vinc_motivo
      FOREIGN KEY(id_motivo_vinculacion)
	  REFERENCES vinculacion_motivos(id_motivo_vinculacion);

ALTER TABLE vision_realidad_opinion_politica_social
ADD CONSTRAINT fk_visionrealidadopinionpoliticasocial_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE vision_realidad_opinion_politica_social
ADD CONSTRAINT fk_visionrealidadopinionpoliticasocial_opinion
      FOREIGN KEY(id_opinion_politica_social)
	  REFERENCES opinion_politica_social(id_opinion_politica_social);

ALTER TABLE vision_problemas_causas
ADD CONSTRAINT fk_visionproblemascausas_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE vision_realidad
ADD CONSTRAINT fk_visonrealidad_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  



