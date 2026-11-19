-- Created by Redgate Data Modeler (https://datamodeler.redgate-platform.com)
-- Last modification date: 2026-09-04 19:31:49.017

COMMENT ON COLUMN ACTIVIDAD.descripcion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.1.4. Proyectos/Actividades/Acciones principales que realiza la organización y número de participantes/Proyectos/ /líneas de acción/ Actividades';
COMMENT ON COLUMN ACTIVIDAD.cant_participantes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.1.4. Proyectos/Actividades/Acciones principales que realiza la organización y número de participantes/Nº estimado de población  participante';

COMMENT ON COLUMN ALFABETIZACION.conformacion_equipo IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.1. ¿Cómo está conformado el equipo en ésta área?';
COMMENT ON COLUMN ALFABETIZACION.cant_ninies_part IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.2. ¿Qué cantidad de niñes participan?';
COMMENT ON COLUMN ALFABETIZACION.escuelas_part IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.3. ¿De qué escuelas?';
COMMENT ON COLUMN ALFABETIZACION.artic_escuelas_part IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.4 ¿Hay articulación con las instituciones educativas?';
COMMENT ON COLUMN ALFABETIZACION.modalidad_trabajo_recursos IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.5. ¿Qué modalidad de trabajo utiliza y de qué recursos dispone?';
COMMENT ON COLUMN ALFABETIZACION.demanda IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.3. Detalles de accionar para Alfabetización/Apoyo escolar/Biblioteca/Educación Popular/6.7.3.6. ¿Qué tipo de demandas reciben en la organización?';


COMMENT ON COLUMN APORTE_ESTATAL.origen IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2.2. Aportes Estatales/Proveniente del Estado
Opciones: N (Nacional), P (Provincial), M (Municipal)';
COMMENT ON COLUMN APORTE_ESTATAL.forma IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2.2. Aportes Estatales/Forma
La forma del aporte puede ser ''''Becas'''', ''''Subsidios'''', ''''Otro'''' codificado como B, S, O';
COMMENT ON COLUMN APORTE_ESTATAL.otra_forma IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2.2. Aportes Estatales/Cuál otra forma de aporte?';
COMMENT ON COLUMN APORTE_ESTATAL.frecuencia IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2.2. Aportes Estatales/¿Con qué frecuencia?
La frecuencia puede ser'''' Anual'''',  ''''Semestral'''',  ''''Mensual'''',  ''''Semanal'''',  ''''Única vez'''' codificado como A, S, M, E, U';
COMMENT ON COLUMN APORTE_ESTATAL.cant_aporte IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2.2. Aportes Estatales/Indicar cantidad (de becas, subsidios, otros aportes)';

COMMENT ON COLUMN AREA_ORG.id_area IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.4. Área(s) temática(s)';
COMMENT ON COLUMN AREA_ORG.otra_area IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.4.1. ¿Cual/es es/son la/s otra/s area/s temática/s?';

COMMENT ON COLUMN CAPACITACION_ORG.id_capacitacion IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.2. CAPACITACIÓN/¿En qué áreas temáticas de CAPACITACIÓN tendría interés la organización?';
COMMENT ON COLUMN CAPACITACION_ORG.otra_capacitacion IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.2. CAPACITACIÓN/¿Cual otra/s área/s temática/s está interesada la organización? Detalle';

COMMENT ON COLUMN DEMANDAS_SOCIALES.cuales IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.14. Demandas sociales a la organización/6.14.1. ¿Cuáles son las principales demandas sociales que se realizan a la/en la organización?';
COMMENT ON COLUMN DEMANDAS_SOCIALES.quienes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.14. Demandas sociales a la organización/6.14.2. ¿Quiénes usualmente las efectúan?';
COMMENT ON COLUMN DEMANDAS_SOCIALES.como IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.14. Demandas sociales a la organización/6.14.3. ¿Cómo las efectúan?';
COMMENT ON COLUMN DEMANDAS_SOCIALES.respuesta IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.14. Demandas sociales a la organización/6.14.4. ¿Cómo responde la organización a las mismas?';

COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.descripcion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Descripción de propuesta para niñez
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Descripción de propuesta para adolescentes/jóvenes';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.edades IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Edades
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Edades';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.cant_participantes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Cantidad de participantes
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Cantidad de participantes';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.dias_horarios IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Días y Horarios
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Días y Horarios';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.inicio_funcion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Desde cuando funciona?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Desde cuando funciona?';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.sexo_coordinador IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Sexo coordinador/a
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Sexo coordinador/a
Opciones: F (Femenino), M (Masculino) y O (Otrxs)';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.otro_sexo IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Cual?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Cuál?';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.formacion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Formación
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Formación';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.edad_coordinador IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/Edad
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/Edad';
COMMENT ON COLUMN DETALLE_PROPUESTA_NINIEZ_JUVENTUD.suma_org IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/PROPUESTA/¿Cómo se sumó a la Organización?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/PROPUESTA/¿Cómo se sumó a la Organización?';

COMMENT ON COLUMN DIFICULTAD_ORG.id_organizacion IS '10. AUTODIAGNÓSTICO/10.1.1. ¿Cuál es la dificultad MÁS relevante que encuentra en su trabajo?
10. AUTODIAGNÓSTICO/10.1.2 ¿Cuál/es otra/s dificultad/es encuentra en su trabajo,  además de la anterior?';
COMMENT ON COLUMN DIFICULTAD_ORG.otra_dificultad IS '10. AUTODIAGNÓSTICO/¡A qué otra dificultad se refiere?
10. AUTODIAGNÓSTICO/¿Cual/es otra/s dificultad/es encuentra en su trabajo?';

COMMENT ON COLUMN DIRECCION.id_ciudad IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Dirección/Ciudad';
COMMENT ON COLUMN DIRECCION.calle IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Dirección/Calle';
COMMENT ON COLUMN DIRECCION.numero IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Dirección/Número/Puerta';
COMMENT ON COLUMN DIRECCION.piso IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Dirección/Piso';
COMMENT ON COLUMN DIRECCION.domicilio_legal IS 'Indica si es el domicilio legal de la organización';

COMMENT ON COLUMN EJE_ORG.id_eje IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.5. Ejes de Acción';
COMMENT ON COLUMN EJE_ORG.otro_eje IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.5.1. ¿Cual/es es/son el/los otro/s eje/s de acción/es?';

COMMENT ON COLUMN EMAIL_ORG.email IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/E-mail';


COMMENT ON COLUMN ENTREVISTA.fecha_entrevista IS 'Datos Generales/Fecha de realización de la entrevista';
COMMENT ON COLUMN ENTREVISTA.nombre_entrevistador IS 'Datos Generales/1. Datos Entrevistador/a (en caso que corresponda)/Nombre Entrevistador/a';
COMMENT ON COLUMN ENTREVISTA.apellido_entrevistador IS 'Datos Generales/1. Datos Entrevistador/a (en caso que corresponda)/Apellido Entrevistador/a';
COMMENT ON COLUMN ENTREVISTA.nombre_supervisor IS 'Datos Generales/1. Datos Entrevistador/a (en caso que corresponda)/Nombre Supervisor/a';
COMMENT ON COLUMN ENTREVISTA.apellido_supervisor IS 'Datos Generales/1. Datos Entrevistador/a (en caso que corresponda)/Apellido Supervisor/a';
COMMENT ON COLUMN ENTREVISTA.id_ciudad IS 'Datos Generales/1. Datos Entrevistador/a (en caso que corresponda)/Ciudad';
COMMENT ON COLUMN ENTREVISTA.index_entrevista IS '_index';
COMMENT ON COLUMN ENTREVISTA.nombre_archivo IS 'Nombre del archivo que se utilizo para importar los datos de esta entrevista';
COMMENT ON COLUMN ENTREVISTA.hoja_registro IS 'HOJA DE REGISTRO (A completar por censista/supervisor/a)';

COMMENT ON COLUMN EQUIPAMIENTO_ORG.id_equipamiento IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.3. Recursos Materiales/7.3.1 Equipamiento de la organización. Indique con qué recursos cuenta la Institución para desarrollar sus actividades/Tipo de equipamiento';


COMMENT ON COLUMN ESPACIO_CUIDADO.edades IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/Desarrolo de Espacios de Cuidado/Edades de quienes concurren';
COMMENT ON COLUMN ESPACIO_CUIDADO.a_cargo IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/Desarrolo de Espacios de Cuidado/¿A cargo de quien está el espacio?';
COMMENT ON COLUMN ESPACIO_CUIDADO.formacion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/Desarrolo de Espacios de Cuidado/Formación';
COMMENT ON COLUMN ESPACIO_CUIDADO.cantidad_ninies IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/Desarrolo de Espacios de Cuidado/Cantidad de niñes';
COMMENT ON COLUMN ESPACIO_CUIDADO.propuesta IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/Desarrolo de Espacios de Cuidado/¿En qué consiste la propuesta?';

COMMENT ON COLUMN ESPACIO_FORMACION.descripcion_espacio IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.12. Politicas de capacitación/formación de la organización/Detalle los 3 espacios de capacitación más importantes/Espacio de capacitación/formación';
COMMENT ON COLUMN ESPACIO_FORMACION.quien_organiza IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.12. Politicas de capacitación/formación de la organización/Detalle los 3 espacios de capacitación más importantes/¿Quién organiza?
Opciones: PO (La propia organización), OO (Otra/s organización/es), IG (Iglesia), UN (Universidad), ES (Escuela), IT (Institutos Terciarios), SI (Sindicatos), PP (Partidos Políticos), GO (Instancias de Gobierno(Municipio, Provincia, Nación)), OT (Otros)
';
COMMENT ON COLUMN ESPACIO_FORMACION.quien_participa IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.12. Politicas de capacitación/formación de la organización/Detalle los 3 espacios de capacitación más importantes/¿Quienes participan?';

COMMENT ON COLUMN EXPECTATIVA_ORG.id_expectativa IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.1. EXPECTATIVAS RESPECTO DE LA UNICEN/11.1.1. Respecto de la UNICEN. ¿Cuál es su PRINCIPAL expectativa como organización?
11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.1. EXPECTATIVAS RESPECTO DE LA UNICEN/11.1.2. Respecto de la UNICEN. ¿Cuál/es otras expectativa tiene como organización, aparte de la anterior?';
COMMENT ON COLUMN EXPECTATIVA_ORG.detalle_espectativa IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.1. EXPECTATIVAS RESPECTO DE LA UNICEN/¿Cual otra/s expectativa/s tienen como organización? Detalle';

COMMENT ON COLUMN FORMA_DOCUMENTACION_PLAN_EVAL_ORG.id_forma_documentacion_plan_eval IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.9. Documentos escritos y formas de registro/6.9.3. De qué forma lo hace?';
COMMENT ON COLUMN FORMA_DOCUMENTACION_PLAN_EVAL_ORG.otra_forma_doc IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.9. Documentos escritos y formas de registro/Cuál/es es/son la/s otra/s forma/s de registrar las tareas que desarrolla?';

COMMENT ON COLUMN FORMA_PLAN_EVAL_ORG.organigrama IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.8. Organigrama de la organización/6.8.1. Cómo están organizados, ¿cómo dividen la tarea? ¿cómo toman las decisiones?';
COMMENT ON COLUMN FORMA_PLAN_EVAL_ORG.documentacion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.9. Documentos escritos y formas de registro/6.9.1. ¿Cuenta la organización con documento escrito y/o de proyectos de la misma?';
COMMENT ON COLUMN FORMA_PLAN_EVAL_ORG.registro IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.9. Documentos escritos y formas de registro/6.9.2. ¿La organización registra la tarea que desarrolla utilizando formas de registro?';
COMMENT ON COLUMN FORMA_PLAN_EVAL_ORG.planificacion_accionar IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.10. Uso de la planificación en la organización/6.10.1. ¿La organización suelen planificar su accionar?';
COMMENT ON COLUMN FORMA_PLAN_EVAL_ORG.evaluacion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.11. Uso de la evaluación en la organización/6.11.1. ¿Suelen evaluar el trabajo de la organización?';

COMMENT ON COLUMN FUNDADOR.nombre_fundador IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.3. ¿Cuáles fueron sus “fundadores/as”?/Nombre y Apellido del Referente/Fundador/a';
COMMENT ON COLUMN FUNDADOR.caracteristica IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.3. ¿Cuáles fueron sus “fundadores/as”?/Características del Referente/Fundador/a: (indicar cualquier dato o característica que nos permita conocer el perfil. Por ejemplo: vecino/a del barrio, trabajador/a metalúrgico, de la salud, de la educación…, etc.)';

COMMENT ON COLUMN GENERACION_FONDO_ORG.id_generacion_fondo IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/7.2.1. Formas de generación de Fondos Propios';
COMMENT ON COLUMN GENERACION_FONDO_ORG.otros_fondos IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Detalle las otras estrategias de generación de fondos propios';

COMMENT ON COLUMN GENERO_ORG.id_genero IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.3.2. Según identidad(es) de género(s) quienes participan de la organización?';


COMMENT ON COLUMN IDENTIDAD_ORG.id_identidad IS '5. IDENTIDAD DE LA ORGANIZACIÓN/Seleccione  a cual/es identidad/es pertenece (puede seleccionar más de uno)';
COMMENT ON COLUMN IDENTIDAD_ORG.otro_tipo IS '5. IDENTIDAD DE LA ORGANIZACIÓN/Detallar descripción de "Otra Organización"';


COMMENT ON COLUMN JOVENES_MEMORIA.anio_participacion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.4. Participación en Jóvenes y Memoria/Detalles de participación en Jóvenes y Memoria/Año de participación';
COMMENT ON COLUMN JOVENES_MEMORIA.cant_participantes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.4. Participación en Jóvenes y Memoria/Detalles de participación en Jóvenes y Memoria/Cantidad de Jóvenes que  participaron';
COMMENT ON COLUMN JOVENES_MEMORIA.temas IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.4. Participación en Jóvenes y Memoria/Detalles de participación en Jóvenes y Memoria/Temas';


COMMENT ON COLUMN MEDIO_DIFUSION_ORG.id_medio IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Forma';
COMMENT ON COLUMN MEDIO_DIFUSION_ORG.descripcion_medio IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Cuales medios de comunicación?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Nombre de la/s publicación/es
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/URL de la Pagina web
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Usuario de Facebook
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Usuario de Instagram
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Usuario de Twitter
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.13. Formas de difusión y socialización del accionar/Cuales otros medios de comunicación?';


COMMENT ON COLUMN OBJETIVO_INTERNO.nombre_objetivo IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.1. Objetivos de la Organización/6.1.1 Objetivo actual de la organización';
COMMENT ON COLUMN OBJETIVO_INTERNO.descripcion_objetivo IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.1. Objetivos de la Organización/6.1.2. Describir sintéticamente a qué se dedica tu organización según el objetivo anterior (el campo de acción)';


COMMENT ON COLUMN ORGANIZACION.org_id_documento IS 'Id que corresponde a la organización en el documento que se utilizo para importar la información.';
COMMENT ON COLUMN ORGANIZACION.nombre_completo IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Nombre completo';
COMMENT ON COLUMN ORGANIZACION.sigla IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Sigla de la Organización (si la tuviera)';
COMMENT ON COLUMN ORGANIZACION.dias_horarios IS '1.DATOS FORMALES DE LA ORGANIZACIÓN/Días y Horarios en que funciona';
COMMENT ON COLUMN ORGANIZACION.edo_situcion_juridica IS '3. SITUACIÓN JURÍDICA/3.1. ¿Cuenta con personería Jurídica?
Opciones:  S (SI), N (NO), T  (En trámite) y O (Otra situación) ';
COMMENT ON COLUMN ORGANIZACION.nro_personeria IS '3. SITUACIÓN JURÍDICA/3.1.1. Número de Personería Jurídica';
COMMENT ON COLUMN ORGANIZACION.nombre_personeria IS '3. SITUACIÓN JURÍDICA/3.1.1. Nombre de la Personería Jurídica';
COMMENT ON COLUMN ORGANIZACION.figura_legal IS '3. SITUACIÓN JURÍDICA/3.1.2. ¿Con qué figura legal cuenta su organización? Clasificación jurídico-legal
Opciones: A (Asociación Civil), F (Fundación), M (Mutual) y C (Cooperativa)';
COMMENT ON COLUMN ORGANIZACION.forma IS '3. SITUACIÓN JURÍDICA/3.1.3. ¿Cuál de las siguientes formas de Asociación Civil adquiere?
Opciones: CA (Cámara), FE (Federación), CO (Confederación) y AS (Asociación)';
COMMENT ON COLUMN ORGANIZACION.tramite IS '3. SITUACIÓN JURÍDICA/3.1.4. ¿De qué figura legal posee el Trámite de Personería Jurídica?';
COMMENT ON COLUMN ORGANIZACION.anio_origen IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.1. Año de Origen';
COMMENT ON COLUMN ORGANIZACION.origen IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.2. Origen relacionado a inspiraciones
Opciones: L (laico) y R (religioso)';
COMMENT ON COLUMN ORGANIZACION.origen_religioso IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.2.1. ¿De qué religión se trata?
Opciones: C (Católica), P (Protestante), J (Judía) y O (Otra)';
COMMENT ON COLUMN ORGANIZACION.otro_origen_religioso IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.2.1.1. ¿Cuál otra religión?';
COMMENT ON COLUMN ORGANIZACION.objetivos_fundacionales IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.4. ¿Cuáles fueron los objetivos fundacionales que dieron nacimiento a la organización?';
COMMENT ON COLUMN ORGANIZACION.resenia_historica IS '4. HISTORIA DE LA ORGANIZACIÓN (carácter de entrevista- tratamiento cualitativo)/4.5. Breve reseña de la acción: Qué causas le dieron origen, ¿cómo comenzaron, referencias al contexto socio-económico-político que le dio origen, identificación de hechos históricos significativos del momento?';
COMMENT ON COLUMN ORGANIZACION.nro_participantes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.1.3. Número total de participantes de la organización (puede ser aproximado)';
COMMENT ON COLUMN ORGANIZACION.alcance_1 IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.2. Alcance de su accionar/Alcance principal
Opciones: B (Barrial), M (Municipal/Local), N (Nacional) e I (Internacional)';
COMMENT ON COLUMN ORGANIZACION.alcance_2 IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.2. Alcance de su accionar/Segundo alcance
Opciones: B (Barrial), M (Municipal/Local), N (Nacional) e I (Internacional)';
COMMENT ON COLUMN ORGANIZACION.alcance_3 IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.2. Alcance de su accionar/Tercer alcance
Opciones: B (Barrial), M (Municipal/Local), N (Nacional) e I (Internacional)';
COMMENT ON COLUMN ORGANIZACION.barrios IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.2. Alcance de su accionar/6.2.1. Como ha seleccionado Alcance BARRIAL, mencionar los barrios o zona comprendida';
COMMENT ON COLUMN ORGANIZACION.poblacion_participante IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.3. Describa en general las características de la población que participa en la organización';
COMMENT ON COLUMN ORGANIZACION.acciones_pandemia IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.6. ¿La organización ha desarrollando alguna iniciativa para abordar la situación social y sanitaria en el contexto de la pandemia? Indicar las acciones que se desarrollaban, o las acciones nuevas que han emprendido. Registro cualitativo';
COMMENT ON COLUMN ORGANIZACION.posee_murga IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.5. ¿Tiene o es una murga la organización?';
COMMENT ON COLUMN ORGANIZACION.relato_murga IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/Relato de la experiencia (desde cuándo, cantidad de integrantes, temas que trabajan, formas de organizarse)';
COMMENT ON COLUMN ORGANIZACION.espacios_cuidado IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/¿La organización ha desarrollado espacios de cuidado regulares de niñes?';
COMMENT ON COLUMN ORGANIZACION.planea_espacios_cuidado IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/¿Tienen previsto desarrollarlos?';
COMMENT ON COLUMN ORGANIZACION.considera_necesarios_esp_cuid IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7.6. Espacios de Cuidado/¿Consideran que sería necesario hacerlo? ¿Por qué?';
COMMENT ON COLUMN ORGANIZACION.formacion_integrantes IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.12. Politicas de capacitación/formación de la organización/6.12.1. ¿Implementa formas de capacitación/formación de sus integrantes?';
COMMENT ON COLUMN ORGANIZACION.rec_financ_fondos_propios IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Fondos propios (%)';
COMMENT ON COLUMN ORGANIZACION.rec_financ_municipales IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Estado Municipal (%)';
COMMENT ON COLUMN ORGANIZACION.rec_financ_provinciales IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Estado Provincial (%)';
COMMENT ON COLUMN ORGANIZACION.rec_financ_nacionales IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Estado Nacional (%)';
COMMENT ON COLUMN ORGANIZACION.rec_financ_internacionales IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Organismo internacional (%)';
COMMENT ON COLUMN ORGANIZACION.rec_financ_empresas IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Empresas (%)';
COMMENT ON COLUMN ORGANIZACION.descripcion_financ_empresa IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.2. Recursos Financieros (da cuenta de los recursos económicos que maneja la Organización) en %/Detallar si indicó % de Organismo internacional y/o empresa';
COMMENT ON COLUMN ORGANIZACION.tenencia_propiedad IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.3. Recursos Materiales/7.3.1 Equipamiento de la organización. Indique con qué recursos cuenta la Institución para desarrollar sus actividades/7.3.2. Forma de tenencia de la propiedad en la cual funciona la organización (domicilio que se está relevando)
La tenencia de la propiedad puede ser CE (En propiedad c/ escritura), FC (Fiscal en comodato), CI (Espacio cedido por un particular de modo informal), SE (En propiedad s/escritura), PC (Privado en comodato), EP (Espacio en préstamo dentro de otra institución), EA (En alquiler), ET (Toma de un espacio físico) y OT (Otra).';
COMMENT ON COLUMN ORGANIZACION.uso_tenencia IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.3. Recursos Materiales/7.3.1 Equipamiento de la organización. Indique con qué recursos cuenta la Institución para desarrollar sus actividades/Uso
La tenencia puede ser Exclusiva o Compartida, se codifica como ''''E'''' o ''''C''''';
COMMENT ON COLUMN ORGANIZACION.vinculo_otra_org IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1. ¿Se vincula con instancias estatales?';
COMMENT ON COLUMN ORGANIZACION.cuales_organizaciones IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.3. En particular, ¿ha realizado actividades conjuntas con algunas de las siguientes organizaciones?/Cuales';
COMMENT ON COLUMN ORGANIZACION.integra_esp_redes IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Inserción en redes';
COMMENT ON COLUMN ORGANIZACION.integra_esp_foros IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Foros';
COMMENT ON COLUMN ORGANIZACION.integra_esp_mesa_barrial IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Mesa barrial';
COMMENT ON COLUMN ORGANIZACION.integra_esp_mesa_emergencia IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Mesa de emergencia';
COMMENT ON COLUMN ORGANIZACION.integra_esp_mesa_tematica IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Mesa temática';
COMMENT ON COLUMN ORGANIZACION.integra_esp_consejos IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.4. ¿Su organización integra espacios colectivos?/Trama_asociativa/Consejos';
COMMENT ON COLUMN ORGANIZACION.modificacion_otras_org IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.5. Contexto Pandemia/¿En el contexto de la PANDEMIA como se modificaron las relaciones con las otras organizaciones?';
COMMENT ON COLUMN ORGANIZACION.eval_accionar_municipal IS '9. VISIÓN O LECTURA DE LA REALIDAD/9.2. Accionar Municipal/¿Cómo evalúa el accionar municipal en relación a esos problemas?';
COMMENT ON COLUMN ORGANIZACION.trabajo_infantil IS '9. VISIÓN O LECTURA DE LA REALIDAD/9.3./¿Han observado la existencia de situaciones de trabajo infantil en EL AREA DE ACCIÓN DE la organización? ';
COMMENT ON COLUMN ORGANIZACION.situacion_trabajo_infantil IS '9. VISIÓN O LECTURA DE LA REALIDAD/9.3./Precise la situación';
COMMENT ON COLUMN ORGANIZACION.opinion_rol_org IS '10. AUTODIAGNÓSTICO/10.2. Según su opinión qué rol están cumpliendo las Organizaciones de la sociedad civil en el escenario político social actual?';
COMMENT ON COLUMN ORGANIZACION.opinion_rol_ideal_org IS '10. AUTODIAGNÓSTICO/10.3 ¿Cuál cree que deberían cumplir?';
COMMENT ON COLUMN ORGANIZACION.detalles_expectativa_org IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.1. EXPECTATIVAS RESPECTO DE LA UNICEN/Ampliar respuesta sobre espectativas si es necesario';
COMMENT ON COLUMN ORGANIZACION.detalles_capacitaciones IS '11. PERSPECTIVAS RESPECTO DE LA UNICEN/11.2. CAPACITACIÓN/Ampliar respuesta sobre área temática si es necesario';


COMMENT ON TABLE ORG_RELACIONADA IS ' Organización/es con las que se relaciona';
COMMENT ON COLUMN ORG_RELACIONADA.tipo IS 'Indica el tipo de relación con la organización. M - Org. Madre o H - Org. Hija.';
COMMENT ON COLUMN ORG_RELACIONADA.nombre_organizacion IS '2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.1.1. Organización/es con las que se relaciona/repetir_organizacion_madre/Nombre Organización
2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.2.1. Organización/es Relacionada/s/repetir_organizacion_hija/Nombre Organización';
COMMENT ON COLUMN ORG_RELACIONADA.ubicacion IS '2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.1.1. Organización/es con las que se relaciona/repetir_organizacion_madre/Ubicación
2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.2.1. Organización/es Relacionada/s/repetir_organizacion_hija/Ubicación';
COMMENT ON COLUMN ORG_RELACIONADA.referente IS '2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.1.1. Organización/es con las que se relaciona/repetir_organizacion_madre/Referente
2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.2.1. Organización/es Relacionada/s/repetir_organizacion_hija/Referente';
COMMENT ON COLUMN ORG_RELACIONADA.alcance IS '2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.1.1. Organización/es con las que se relaciona/repetir_organizacion_madre/Alcance
2. IDENTIFICACIÓN DEL TIPO DE ORGANIZACIÓN/2.2.1. Organización/es Relacionada/s/repetir_organizacion_hija/Alcance
Opciones: L (local), R (regional), N (nacional) e I (internacional)';


COMMENT ON COLUMN PARTICIPANTE_ORG.id_participante IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.3.1. Según edad quienes participan de la organización?';


COMMENT ON COLUMN PARTICIPANTE_PLAN_EVAL_ORG.id_participante_plan_eval IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.10. Uso de la planificación en la organización/6.10.3. ¿Quiénes participan?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.11. Uso de la evaluación en la organización/6.11.3. ¿Quiénes participan?';
COMMENT ON COLUMN PARTICIPANTE_PLAN_EVAL_ORG.tipo IS 'El tipo es E (evaluacion) o P (planificacion)';
COMMENT ON COLUMN PARTICIPANTE_PLAN_EVAL_ORG.otro_participante IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.10. Uso de la planificación en la organización/Quienes?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.11. Uso de la evaluación en la organización/Quienes?';


COMMENT ON COLUMN PERIODO_PLAN_EVAL_ORG.id_periodo_plan_eval IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.10. Uso de la planificación en la organización/6.10.2. ¿En qué MOMENTOS se planifica?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.11. Uso de la evaluación en la organización/6.11.2. ¿En qué MOMENTOS se evalúa?';
COMMENT ON COLUMN PERIODO_PLAN_EVAL_ORG.tipo IS 'E - evaluacion
P - planificacion';


COMMENT ON COLUMN PROBLEMATICA.descripcion_problema IS '9. VISIÓN O LECTURA DE LA REALIDAD/9.1. Enuncie en orden de prioridad los problemas que la organización identifica como prioritarios en nuestra ciudad/Problema';
COMMENT ON COLUMN PROBLEMATICA.causa IS '9. VISIÓN O LECTURA DE LA REALIDAD/9.1. Enuncie en orden de prioridad los problemas que la organización identifica como prioritarios en nuestra ciudad/Causa';


COMMENT ON COLUMN PROPUESTA_NINIEZ_JUVENTUD.tipo_propuesta IS 'Indica el tipo de propuesta que puede ser N (Niniez) o J (Adolescentes/Jóvenes)';
COMMENT ON COLUMN PROPUESTA_NINIEZ_JUVENTUD.como_surge IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/6.7.1.1. ¿Cómo surgen estas propuestas?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/6.7.2.1. ¿Cómo surgen estas propuestas?';
COMMENT ON COLUMN PROPUESTA_NINIEZ_JUVENTUD.como_funciona IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/6.7.1.2. ¿Cómo funcionan?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/6.7.2.2. ¿Cómo funcionan?';
COMMENT ON COLUMN PROPUESTA_NINIEZ_JUVENTUD.opinion IS '6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.1. PROPUESTA/S para NIÑEZ/6.7.1.3. ¿Qué opinas vos que significan las propuestas para las/los participantes?
6. ORGANIZACIÓN INTERNA Y ACCIONAR DE LA ORGANIZACIÓN/6.7. MODULO INFANCIAS JUVENTUDES/6.7.2. PROPUESTAS para ADOLESCENTES/JÓVENES/6.7.2.3. ¿Qué opinas vos que significan las propuestas para las/los participantes?';


COMMENT ON COLUMN REF_ENTREVISTADO.nombre_entrevistado IS 'Datos Generales/2. Datos Entrevistado/a/repetir_persona/Nombre Referente Entrevistado/a';
COMMENT ON COLUMN REF_ENTREVISTADO.apellido_entrevistado IS 'Datos Generales/2. Datos Entrevistado/a/repetir_persona/Apellido Referente Entrevistado/a';
COMMENT ON COLUMN REF_ENTREVISTADO.cargo_entrevistado IS 'Datos Generales/2. Datos Entrevistado/a/repetir_persona/Cargo que desempeña en la organización';
COMMENT ON COLUMN REF_ENTREVISTADO.antiguedad IS 'Datos Generales/2. Datos Entrevistado/a/repetir_persona/Antigüedad en la misma';

COMMENT ON COLUMN TIPO_ORGANIZACION_ORG.id_tipo_organizacion IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.3. En particular, ¿ha realizado actividades conjuntas con algunas de las siguientes organizaciones?/Tipo  de Organización';

COMMENT ON COLUMN TRABAJADORES_ORG.miembros_trabajando IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/Mencione cuántos miembros de la organización trabajan cotidianamente o al menos un día por semana en ella: (cantidad integrantes)';
COMMENT ON COLUMN TRABAJADORES_ORG.mujeres_rent IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Integrantes Mujeres Rentadas';
COMMENT ON COLUMN TRABAJADORES_ORG.varones_rent IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Integrantes Varones Rentados';
COMMENT ON COLUMN TRABAJADORES_ORG.otros_rent IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Otrxs Integrantes Rentadxs';
COMMENT ON COLUMN TRABAJADORES_ORG.mujeres_vol IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Integrantes Voluntarias Mujeres';
COMMENT ON COLUMN TRABAJADORES_ORG.varones_vol IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Integrantes Voluntarios Varones';
COMMENT ON COLUMN TRABAJADORES_ORG.otros_vol IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.1. Relación con la organización/Otrxs Integrantes Voluntarixs';
COMMENT ON COLUMN TRABAJADORES_ORG.dias_trabajo_rent IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.2. Días y horas de trabajo/Integrantes rentadxs/Cantidad de días semanales de trabajo, en promedio';
COMMENT ON COLUMN TRABAJADORES_ORG.horas_trabajo_rent IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.2. Días y horas de trabajo/Integrantes rentadxs/Cantidad de hs de trabajo por día, en promedio';
COMMENT ON COLUMN TRABAJADORES_ORG.dias_trabajo_vol IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.2. Días y horas de trabajo/Integrantes voluntarixs/Cantidad de días semanales de trabajo, en promedio';
COMMENT ON COLUMN TRABAJADORES_ORG.horas_trabajo_vol IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.2. Días y horas de trabajo/Integrantes voluntarixs/Cantidad de hs de trabajo, en promedio';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_trabajadores_smvm_1 IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.3. Entre qué montos gira la renta de les trabajadores (relevar valores extremos)/¿Cuántos trabajadores cobran hasta 1 SMVM?';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_trabajadores_smvm_2 IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.3. Entre qué montos gira la renta de les trabajadores (relevar valores extremos)/¿Cuántos trabajadores cobran entre 1 y 2 SMVM?';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_trabajadores_smvm_3 IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.3. Entre qué montos gira la renta de les trabajadores (relevar valores extremos)/Más de 2 SMVM';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_cond_contr_relac_dep IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.4. ¿En qué condiciones de contratación se encuentran les trabajadores? (señalar cantidades)/Personal en relación de dependencia';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_cond_contr_subsidio IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.4. ¿En qué condiciones de contratación se encuentran les trabajadores? (señalar cantidades)/Subsidios/Planes sociales /salario social complementario';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_cond_contr_monotributo IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.4. ¿En qué condiciones de contratación se encuentran les trabajadores? (señalar cantidades)/Monotributo/ Monotributo social';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_cond_contr_pasantia IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.4. ¿En qué condiciones de contratación se encuentran les trabajadores? (señalar cantidades)/Pasantías';
COMMENT ON COLUMN TRABAJADORES_ORG.cant_cond_contr_otros IS '7. RECURSOS/TRABAJADORES DE LA ORGANIZACIÓN/7.1.4. ¿En qué condiciones de contratación se encuentran les trabajadores? (señalar cantidades)/Otros';

COMMENT ON COLUMN VINCULO_ORGANIZACION.nombre_organizacion IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.2. Vinculación con otras organizaciones. ¿Con qué organizaciones se relaciona más frecuentemente?/Organización social';
COMMENT ON COLUMN VINCULO_ORGANIZACION.motivo IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.2. Vinculación con otras organizaciones. ¿Con qué organizaciones se relaciona más frecuentemente?/Motivo(s)';
COMMENT ON COLUMN VINCULO_ORGANIZACION.actividades IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.2. Vinculación con otras organizaciones. ¿Con qué organizaciones se relaciona más frecuentemente?/Actividad(es)';

COMMENT ON COLUMN VINCULO_ORGANIZACION_ESTATAL.tipo_vinculo_est IS 'Los valores posibles sería Municipal, Provincial o  Nacional codificado como M, P, N';
COMMENT ON COLUMN VINCULO_ORGANIZACION_ESTATAL.detalle_dependencias IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/MUNICIPAL/Detalle de Dependencias (Ministerios- Secretarías- Consejos)
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/PROVINCIAL/Detalle de Dependencias (Ministerios- Secretarías- Consejos)
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/NACIONAL/Motivos de vinculación
';
COMMENT ON COLUMN VINCULO_ORGANIZACION_ESTATAL.motivo_vinculacion IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/MUNICIPAL/Motivo de Vinculación
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/PROVINCIAL/Motivos de vinculación
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/NACIONAL/Detalle de Dependencias (Ministerios- Secretarías- Consejos)
';
COMMENT ON COLUMN VINCULO_ORGANIZACION_ESTATAL.relacion_pandemia IS '8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/MUNICIPAL/¿En el marco de la pandemia/cuarentena, la relación de la organización con el Estado ...
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/PROVINCIAL/¿En el marco de la pandemia/cuarentena, la relación de la organización con el Estado ...
8. VINCULACIÓN CON OTRAS ORGANIZACIONES Y/O INSTITUCIONES/8.1.1. ¿Con qué nivel organizacional del Estado se vincula? Detallar dependencias con las cuales se relaciona más frecuentemente/NACIONAL/¿En el marco de la pandemia/cuarentena, la relación de la organización con el Estado ...
Los valores posibles son ''''Se mantuvo igual'''', ''''Se fortaleció'''', ''''Se debilitó'''' codificado como I, F, D';
