
COMMENT ON TABLE organizacion IS 'Tabla que almacena los datos de las organizaciones.';
COMMENT ON COLUMN organizacion.denominacionlegal IS 'campo que almacena la denominación legal.';
COMMENT ON COLUMN organizacion.domiciliolegal IS 'campo que almacena la dirección legal.';
COMMENT ON COLUMN organizacion.domicilioreal IS 'campo que almacena la dirección real.';
COMMENT ON COLUMN organizacion.e_mail IS 'campo que almacena el mail';
COMMENT ON COLUMN organizacion.fax IS 'campo que almacena el número de fax de la organización.';
COMMENT ON COLUMN organizacion.horarios IS 'campo que almacena los horarios de atención o funcionamiento de la organización.';
COMMENT ON COLUMN organizacion.telefonos IS 'campo que almacena los números de teléfono de la organización, utilizados para contacto y comunicación con clientes, proveedores u otras partes interesadas.';
COMMENT ON COLUMN organizacion.id_tipoorganizacion IS 'identificador del tipo de organización';
COMMENT ON TABLE forma_de_difusion IS 'Tabla con el tipo de difusion';
COMMENT ON COLUMN forma_de_difusion.id_formadifusion IS 'identificador del tipo de difusión';
COMMENT ON COLUMN forma_de_difusion.tipodifusion IS 'campo que almacena el tipo de difusion';

-- comentarios para la tabla de recursoshumnos
COMMENT ON TABLE recursoshumanos IS 'Tabla que almacena los datos de los recursos humanos de la organización.';
COMMENT ON COLUMN recursoshumanos.id_organizacion IS 'identificador de la organización a la que pertenecen los recursos humanos.';
COMMENT ON COLUMN recursoshumanos.rentamenor IS 'La menor renta de la organizacion';
COMMENT ON COLUMN recursoshumanos.rentamayor IS 'La mayor renta de la organizacion';
COMMENT ON COLUMN recursoshumanos.rentapromedio IS 'La renta promedio de la organizacion';
COMMENT ON COLUMN recursoshumanos.jornadamediasemrentado IS 'La jornada media semanal de los empleados rentados de la organización';
COMMENT ON COLUMN recursoshumanos.jornadamediasemvoluntariado IS 'La jornada media semanal de los empleados voluntarios de la organización';
COMMENT ON COLUMN recursoshumanos.cantpersonalcontratado IS 'La cantidad de personal contratado por la organización';
COMMENT ON COLUMN recursoshumanos.cantautonomo IS 'La cantidad de personal autónomo que trabaja para la organización';
COMMENT ON COLUMN recursoshumanos.cantreldependencia IS 'La cantidad de relaciones de dependencia que tiene la organización';
COMMENT ON COLUMN recursoshumanos.cantpasantias IS 'La cantidad de pasantías que ofrece la organización';
COMMENT ON COLUMN recursoshumanos.cantbecas IS 'La cantidad de becas que ofrece la organización';
COMMENT ON COLUMN recursoshumanos.cantotros IS 'La cantidad de otros tipos de recursos humanos que tiene la organización';
COMMENT ON COLUMN recursoshumanos.captacionvoluntarios IS 'informa si estan captanfo voluntarios o no';
COMMENT ON COLUMN recursoshumanos.estrategiascaptacion IS 'texto que describe la estategia de captación de voluntarios';

-- Comentario de Tabla: El "Mapa" para el Router
COMMENT ON TABLE situacion_juridica IS 'Datos legales, personería jurídica y trámites de culto de organizaciones';

-- Comentarios de Columnas: La "Guía" para el Generador SQL
COMMENT ON COLUMN situacion_juridica.id_organizacion IS 'ID organización (FK)';
COMMENT ON COLUMN situacion_juridica.personeriajuridica IS 'Estado o tipo de personería';
COMMENT ON COLUMN situacion_juridica.nombrepersoneria IS 'Nombre legal registrado';
COMMENT ON COLUMN situacion_juridica.usotransitoriocual IS 'Detalle si el uso es transitorio';
COMMENT ON COLUMN situacion_juridica.entramitecual IS 'Detalle si personería está en trámite';
COMMENT ON COLUMN situacion_juridica.figuralegal IS 'Figura legal (Asociación, Fundación, etc)';
COMMENT ON COLUMN situacion_juridica.formaasoccivil IS 'Modalidad específica de asociación civil';
COMMENT ON COLUMN situacion_juridica.nropersoneria IS 'Número de personería jurídica';
COMMENT ON COLUMN situacion_juridica.fechaobtencion IS 'Fecha en que se otorgó personería';
COMMENT ON COLUMN situacion_juridica.fechainiciotramite IS 'Fecha inicio trámite personería';
COMMENT ON COLUMN situacion_juridica.nroregistroculto IS 'Número de registro nacional de cultos';
COMMENT ON COLUMN situacion_juridica.fechaobtregistroculto IS 'Fecha obtención registro de cultos';

-- comentarios de formatenenciapropiedad

COMMENT ON TABLE formatenenciapropiedad IS 'Catálogo de tipos de tenencia de la propiedad (Propietario, alquiler, etc.)';

COMMENT ON COLUMN formatenenciapropiedad.id_formatenenciapropiedad IS 'ID tipo tenencia (PK)';
COMMENT ON COLUMN formatenenciapropiedad.formatenenciapropiedad IS 'Descripción del tipo de tenencia (ej. Propio, Alquilado)';

-- comentarios de recursosmateriales
COMMENT ON TABLE recursosmateriales IS 'Inventario de recursos (libros,hemeroteca, videos) y situación del inmueble por organización';

COMMENT ON COLUMN recursosmateriales.id_organizacion IS 'ID organización (FK)';
COMMENT ON COLUMN recursosmateriales.id_formatenenciapropiedad IS 'ID tipo tenencia (FK a formatenenciapropiedad)';
COMMENT ON COLUMN recursosmateriales.usoexclusivopropiedad IS '¿El inmueble es de uso exclusivo? (Boolean)';
COMMENT ON COLUMN recursosmateriales.cantlibros IS 'Cantidad de libros en biblioteca';
COMMENT ON COLUMN recursosmateriales.canthemeroteca IS 'Cantidad de ejemplares en hemeroteca';
COMMENT ON COLUMN recursosmateriales.cantvideoteca IS 'Cantidad de videos en videoteca';

-- Catálogo de aportantes (Estado, ONGs, etc.)
COMMENT ON TABLE entidadesaportantes IS 'Catálogo de instituciones o entes que aportan fondos o recursos';
COMMENT ON COLUMN entidadesaportantes.id_entidadaportante IS 'ID entidad aportante (PK)';
COMMENT ON COLUMN entidadesaportantes.nombre IS 'Nombre de la institución aportante';

-- Sector Privado
COMMENT ON TABLE entidadessectorprivado IS 'Listado de empresas y organizaciones del sector privado relacionadas';
COMMENT ON COLUMN entidadessectorprivado.id_entidadsectorprivado IS 'ID entidad privada (PK)';
COMMENT ON COLUMN entidadessectorprivado.nombre IS 'Nombre de la empresa o entidad privada';

-- Catálogo de tipos de demandas
COMMENT ON TABLE demandas_sociales IS 'Catálogo de tipos de necesidades o reclamos (ej. salud, educación)';
COMMENT ON COLUMN demandas_sociales.id_demanda IS 'ID demanda social (PK)';
COMMENT ON COLUMN demandas_sociales.tipodemanda IS 'Descripción de la necesidad (ej. Apoyo escolar, Comedor)';

-- Relación N:N (Tabla intermedia)
COMMENT ON TABLE demandas_x_organizacion IS 'Relación entre organizaciones y sus demandas sociales activas';
COMMENT ON COLUMN demandas_x_organizacion.id_demandasocial IS 'ID demanda (FK a demandas_sociales)';
COMMENT ON COLUMN demandas_x_organizacion.id_organizacion IS 'ID organización (FK)';

-- Comentarios de recursos financieros
COMMENT ON TABLE recursosfinancieros IS 'Gestión del presupuesto y porcentajes de origen de fondos (propios, estado, otros)';
COMMENT ON COLUMN recursosfinancieros.id_organizacion IS 'ID organización (FK)';
COMMENT ON COLUMN recursosfinancieros.administracionpresupuesto IS 'Si la organización administra un presupuesto anual (Boolean como texto)';
COMMENT ON COLUMN recursosfinancieros.porcrecursosautogenerados IS 'Porcentaje de fondos propios o autogenerados';
COMMENT ON COLUMN recursosfinancieros.porcaportesestatales IS 'Porcentaje de fondos provenientes del Estado';
COMMENT ON COLUMN recursosfinancieros.porcotrosaportes IS 'Porcentaje de fondos de otros orígenes';

-- Comentarios de causas de no recepción de fondos externos

COMMENT ON TABLE recursofinancieronorecextcausas IS 'Motivos o causas por los que la organización no recibe fondos externos';
COMMENT ON COLUMN recursofinancieronorecextcausas.id_causanorecext IS 'ID motivo no recepción (FK a causas externas)';

-- Otros Aportantes
COMMENT ON TABLE recursosfinancierosotrosfines IS 'Uso de fondos de aportantes externos y sus fines específicos';
COMMENT ON COLUMN recursosfinancierosotrosfines.id_entidadaportante IS 'ID aportante (FK a entidadesaportantes)';
COMMENT ON COLUMN recursosfinancierosotrosfines.id_finrecursofinanciero IS 'ID destino/uso del dinero (FK)';

-- Sector Privado
COMMENT ON TABLE recursosfinancierosprivadofines IS 'Uso de fondos de empresas privadas y sus fines específicos';
COMMENT ON COLUMN recursosfinancierosprivadofines.id_entidadsectorprivado IS 'ID empresa (FK a entidadessectorprivado)';
COMMENT ON COLUMN recursosfinancierosprivadofines.id_finrecursofinanciero IS 'ID destino/uso del dinero (FK)';

-- Organismos Internacionales
COMMENT ON TABLE organismosinternacionales IS 'Catálogo de entes internacionales (ONU, OEA, etc.)';
COMMENT ON TABLE recursosfinancierosorgintfines IS 'Uso de fondos de organismos internacionales y sus fines específicos';
COMMENT ON COLUMN recursosfinancierosorgintfines.id_organismointernacional IS 'ID ente internacional (FK)';

-- Estado
COMMENT ON TABLE recursosfinancierosestadofines IS 'Uso de fondos públicos (Estado) y sus fines específicos';
COMMENT ON COLUMN recursosfinancierosestadofines.id_recursofinenacieroestado IS 'ID tipo de recurso estatal (FK)';
COMMENT ON COLUMN recursosfinancierosestadofines.id_dependenciaestado IS 'ID dependencia gubernamental (FK)';

-- Catálogo de actores
COMMENT ON TABLE actores IS 'Catálogo de actores sociales, individuos o instituciones participantes';
COMMENT ON COLUMN actores.id_actor IS 'ID del actor (PK)';
COMMENT ON COLUMN actores.nombreactor IS 'Nombre o descripción del actor participante';

-- Relación N:N - Evaluación
COMMENT ON TABLE actores_eval_x_organizacion IS 'Relación de actores que participan en la evaluación de la organización';
COMMENT ON COLUMN actores_eval_x_organizacion.id_actor IS 'ID actor (FK a actores)';
COMMENT ON COLUMN actores_eval_x_organizacion.id_organizacion IS 'ID organización (FK)';

-- Relación N:N - Planificación
COMMENT ON TABLE actores_planif_x_organizacion IS 'Relación de actores que participan en la planificación de la organización';
COMMENT ON COLUMN actores_planif_x_organizacion.id_actor IS 'ID actor (FK a actores)';
COMMENT ON COLUMN actores_planif_x_organizacion.id_organizacion IS 'ID organización (FK)';

-- Catálogo de Alcance
COMMENT ON TABLE alcance_de_difusion IS 'Catálogo de niveles de alcance de comunicación (ej. Local, Provincial, Nacional)';
COMMENT ON COLUMN alcance_de_difusion.id_alcance IS 'ID alcance (PK)';
COMMENT ON COLUMN alcance_de_difusion.nombrealcance IS 'Nombre del nivel de cobertura o alcance';

-- TABLA: organizacion_interna (Ajustada a datos reales)
COMMENT ON TABLE organizacion_interna IS 'Misión, toma de decisiones, población objetivo y métodos de trabajo de la institución';

COMMENT ON COLUMN organizacion_interna.objetivos IS 'Misión y metas (incluye hambre, salud, educación, defensa profesional)';
COMMENT ON COLUMN organizacion_interna.barrios IS 'Nombres de barrios, calles o límites geográficos específicos';
COMMENT ON COLUMN organizacion_interna.zonaaccionar IS 'Categoría de ubicación: Urbana, Periurbana, Rural';
COMMENT ON COLUMN organizacion_interna.tipopoblacion IS 'Clase social, oficio o condición (ej: pobres, farmacéuticos, jubilados)';
COMMENT ON COLUMN organizacion_interna.organigrama IS 'Cómo se toman las decisiones y quién tiene el mando';
COMMENT ON COLUMN organizacion_interna.documentosescritos IS '¿Tienen manuales o estatutos? (SI/NO)';
COMMENT ON COLUMN organizacion_interna.planificacion IS '¿Existe planeamiento? (SI/NO/A VECES)';
COMMENT ON COLUMN organizacion_interna.espescenplanif IS 'Frecuencia o método de planificación (Sistemáticos/Eventuales)';
COMMENT ON COLUMN organizacion_interna.espesceneval IS 'Frecuencia o método de evaluación (Sistemáticos/Eventuales)';
COMMENT ON COLUMN organizacion_interna.publicaciones IS 'Revistas (Voces, Trípticos), programas de radio o afiches';
COMMENT ON COLUMN organizacion_interna.demandassociales IS 'Necesidades, reclamos o pedidos que recibe de la comunidad';
COMMENT ON COLUMN organizacion_interna.comorespondelainst IS 'Acciones ante pedidos (derivaciones, trámites, proyectos, asesoría legal)';
COMMENT ON COLUMN organizacion_interna.capacformularpropuestas IS 'Proyectos específicos realizados (ej: ordenanzas, autonomía PAMI)';
COMMENT ON COLUMN organizacion_interna.paginaweb IS 'URL o sitio web (ej: www.instituto...)';

-- Catálogo de áreas
COMMENT ON TABLE area_tematica IS 'Catálogo de rubros o sectores de trabajo (Salud, Vivienda, Educación, etc.)';
COMMENT ON COLUMN area_tematica.nombrearea IS 'Nombre del sector o tema de intervención';

-- Relación N:N con Prioridad
COMMENT ON TABLE area_tematica_x_organizacion IS 'Áreas temáticas atendidas por cada organización con orden de importancia';
COMMENT ON COLUMN area_tematica_x_organizacion.id_areatematica IS 'ID del área (FK a area_tematica)';
COMMENT ON COLUMN area_tematica_x_organizacion.prioridad IS 'Orden de importancia (1: área principal, 2+: secundarias)';

-- Relación Alcance
COMMENT ON TABLE alcanceaccionar_x_organizacion IS 'Niveles de alcance geográfico o social de la organización y su prioridad';
COMMENT ON COLUMN alcanceaccionar_x_organizacion.prioridad IS 'Importancia del alcance (1: alcance primario)';

-- Opiniones sobre el Rol
COMMENT ON TABLE autodiagnostico IS 'Opiniones de la organización sobre el rol de las ONGs y su relación con el Estado';
COMMENT ON COLUMN autodiagnostico.opinionrolorganizaciones IS 'Visión actual: qué rol cumplen hoy las ONGs (ej. reemplazo del Estado)';
COMMENT ON COLUMN autodiagnostico.opinionroldeberiancumplir IS 'Visión ideal: qué rol deberían cumplir en el futuro';

-- Dificultades identificadas
COMMENT ON TABLE autodiagnosticodificultades IS 'Problemas o obstáculos que la organización identifica en su gestión diaria';
COMMENT ON COLUMN autodiagnosticodificultades.id_dificultad IS 'ID de la dificultad (FK al catálogo de dificultades)';
COMMENT ON COLUMN autodiagnosticodificultades.prioridad IS 'Gravedad o importancia del problema identificado';

-- Roles ideales
COMMENT ON TABLE autodiagnosticoroldeberiancumplir IS 'Relación de roles que la organización considera que DEBERÍA cumplir en la sociedad';
COMMENT ON COLUMN autodiagnosticoroldeberiancumplir.id_rolorganizacion IS 'ID del rol ideal (FK al catálogo de roles)';

-- Roles actuales
COMMENT ON TABLE autodiagnosticorolorganizaciones IS 'Relación de roles que la organización considera que CUMPLE actualmente';
COMMENT ON COLUMN autodiagnosticorolorganizaciones.id_rolorganizacion IS 'ID del rol actual (FK al catálogo de roles)';

-- Catálogo de temas
COMMENT ON TABLE capacitaciontema IS 'Catálogo de temas de formación (Educación, Laboral, Espiritualidad, etc.)';
COMMENT ON COLUMN capacitaciontema.capacitaciontema IS 'Nombre del tema de capacitación';

-- Relación con Organizaciones
COMMENT ON TABLE capacitaciontema_x_organizacion IS 'Temas de capacitación específicos que brinda o recibe cada organización';

-- Catálogo de Contenido (QUÉ se anota)
COMMENT ON TABLE codigos_contenido_registro IS 'Catálogo de tipos de datos registrados (Reuniones, Datos Personales, Producción, etc.)';
COMMENT ON COLUMN codigos_contenido_registro.nombrecodigo IS 'Descripción de la información que se registra';

-- Relación Compleja (Organización + Contenido + Forma)
COMMENT ON TABLE codigo_x_forma_registro_x_organizacion IS 'Vincula qué información registra la organización y el método/forma de registro usado';
COMMENT ON COLUMN codigo_x_forma_registro_x_organizacion.id_codigocontenido IS 'ID del contenido (FK a codigos_contenido_registro)';
COMMENT ON COLUMN codigo_x_forma_registro_x_organizacion.id_formaregistro IS 'ID de la forma/soporte de registro (FK)';
COMMENT ON COLUMN codigo_x_forma_registro_x_organizacion.prioridad IS 'Orden de importancia del método de registro';

-- Catálogo de Formas de Demanda
COMMENT ON TABLE como_efectuan_demandas IS 'Catálogo de modalidades en que la comunidad realiza pedidos (Individual, Colectivo, etc.)';
COMMENT ON COLUMN como_efectuan_demandas.nombrecomo IS 'Descripción de la modalidad de la demanda';

-- Relación N:N Demandas
COMMENT ON TABLE como_efectuan_demandas_x_organizacion IS 'Relación entre organizaciones y las vías por las que reciben pedidos de la comunidad';
COMMENT ON COLUMN como_efectuan_demandas_x_organizacion.id_comoefectuandem IS 'ID modalidad de demanda (FK como_efectuan_demandas)';

-- Catálogo de Empleo
COMMENT ON TABLE condicionescontratacion IS 'Catálogo de tipos de vínculo laboral o contratación (Becas, Dependencia, Pasantías)';
COMMENT ON COLUMN condicionescontratacion.condicionescontrat IS 'Descripción de condición de contratación del personal';

-- Dependencias del Estado
COMMENT ON TABLE dependenciaestado IS 'Entes gubernamentales relacionados y su jurisdicción (Nacional, Provincial, Municipal)';
COMMENT ON COLUMN dependenciaestado.nombre IS 'Nombre del organismo o dependencia estatal';
COMMENT ON COLUMN dependenciaestado.nivel IS 'Nivel de gobierno: Nacional, Provincial o Municipal';

-- Catálogo de Problemas
COMMENT ON TABLE dificultades IS 'Catálogo de obstáculos o limitaciones identificadas (Sobredemanda, falta de recursos, etc.)';
COMMENT ON COLUMN dificultades.dificultad IS 'Descripción de la dificultad o problema institucional';

-- Metadata de la encuesta
COMMENT ON TABLE entrevista IS 'Datos técnicos de la entrevista realizada: entrevistado, cargo, fecha y duración';
COMMENT ON COLUMN entrevista.id_organizacion IS 'ID organización (FK/PK)';
COMMENT ON COLUMN entrevista.id_entrevistador IS 'ID del encuestador (FK a entrevistador)';
COMMENT ON COLUMN entrevista.nombre_entrevistado IS 'Nombre completo del entrevistado';
COMMENT ON COLUMN entrevista.cargo_entrevistado IS 'Puesto o función del entrevistado (ej. Director, Secretario)';
COMMENT ON COLUMN entrevista.antiguedad_entrevistado IS 'Tiempo que lleva el entrevistado en la institución';
COMMENT ON COLUMN entrevista.fechaentrevista IS 'Fecha exacta del encuentro';
COMMENT ON COLUMN entrevista.hsentrevista IS 'Duración de la entrevista (ej. 1:30 hs)';

-- Catálogo de encuestadores
COMMENT ON TABLE entrevistador IS 'Catálogo de personas encargadas de realizar las entrevistas';

-- Recursos físicos
COMMENT ON TABLE equipamiento IS 'Catálogo de recursos materiales disponibles (PC, Internet, Vehículos, etc.)';
COMMENT ON COLUMN equipamiento.nombreequipamiento IS 'Nombre del recurso o herramienta técnica';

-- Estructura de mando
COMMENT ON TABLE forma_de_organizacion IS 'Catálogo de estilos de jerarquía (Comisiones, Grupos de trabajo, etc.)';
COMMENT ON COLUMN forma_de_organizacion.nombre IS 'Descripción de la forma de organización interna';

-- Soporte de información
COMMENT ON TABLE formas_de_registro IS 'Catálogo de soportes usados para documentar tareas (Actas, Informes, Videos)';

-- Raíces de la organización
COMMENT ON TABLE historia IS 'Crónica histórica: fecha de fundación, fundadores, objetivos iniciales y contexto político';
COMMENT ON COLUMN historia.anioorigen IS 'Año de creación o fundación de la institución';
COMMENT ON COLUMN historia.origen IS 'Naturaleza del origen (ej. Laico, Religioso)';
COMMENT ON COLUMN historia.id_religion IS 'ID de la religión vinculada (FK)';
COMMENT ON COLUMN historia.fundadores IS 'Nombres de las personas que crearon la organización';
COMMENT ON COLUMN historia.resumenfundadores IS 'Perfil o motivación de los fundadores (ej. afectados por problemas comunes)';
COMMENT ON COLUMN historia.objetivosfundacionales IS 'Metas originales al momento de la creación';
COMMENT ON COLUMN historia.reseniaaccion IS 'Reseña histórica de actividades y significado del nombre (ej. Chapaleofú)';
COMMENT ON COLUMN historia.resumenresenia IS 'Contexto histórico o político del origen (ej. Pos-peronismo, desempleo)';

-- Catálogo de Identidad
COMMENT ON TABLE identidad IS 'Catálogo de tipos de entidad por su identidad (Biblioteca, Cooperativa, Centro Comunitario)';
COMMENT ON COLUMN identidad.nombreidentidad IS 'Nombre del tipo de identidad institucional';

-- Relación N:N
COMMENT ON TABLE identidad_x_organizacion IS 'Vincula a la organización con su identidad o tipo de entidad social';

-- Catálogo de Frecuencia
COMMENT ON TABLE frecuenciacapacitacion IS 'Catálogo de periodicidad de capacitaciones (Anual, Semestral, etc.)';
COMMENT ON COLUMN frecuenciacapacitacion.tipo IS 'Descripción de la frecuencia (ej. Trimestral)';

-- Catálogo de Modalidad
COMMENT ON TABLE modalidad_de_capacitacion IS 'Catálogo de formatos de enseñanza (Charlas, Cursos, Talleres)';

-- Relación Compleja de Capacitación
COMMENT ON TABLE modalidad_capac_x_organizacion IS 'Detalle de formación: frecuencia, modalidad y si es trabajo rentado o voluntario';
COMMENT ON COLUMN modalidad_capac_x_organizacion.id_frecuencia IS 'ID frecuencia (FK a frecuenciacapacitacion)';
COMMENT ON COLUMN modalidad_capac_x_organizacion.rentado IS 'Booleano: ¿La capacitación es paga/rentada?';
COMMENT ON COLUMN modalidad_capac_x_organizacion.voluntario IS 'Booleano: ¿La capacitación es voluntaria/ad honorem?';

-- Catálogo de Modos de Acción
COMMENT ON TABLE modo_accionar IS 'Catálogo de formas de intervención (capacitación, asistencia directa, subsidios)';
COMMENT ON COLUMN modo_accionar.nombremodo IS 'Descripción del modo de acción (ej. Asistencia Financiera, Becas)';

-- Relación N:N con Prioridad
COMMENT ON TABLE modo_accionar_x_organizacion IS 'Modalidades de acción de cada organización y su orden de importancia';
COMMENT ON COLUMN modo_accionar_x_organizacion.prioridad IS 'Prioridad del modo de accionar (1: principal)';

-- Catálogo de Tiempos/Frecuencias
COMMENT ON TABLE momplanificacionyevaluacion IS 'Catálogo de frecuencias temporales (Anual, Semestral, Trimestral)';
COMMENT ON COLUMN momplanificacionyevaluacion.tipo IS 'Descripción del ciclo temporal';

-- Relaciones N:N de Ciclos
COMMENT ON TABLE momento_evaluacion_x_organizacion IS 'Vincula organizaciones con sus periodos o frecuencias de evaluación';
COMMENT ON TABLE momento_planificacion_x_organizacion IS 'Vincula organizaciones con sus periodos o frecuencias de planificación';

-- Catálogo de Motivos de Alianza
COMMENT ON TABLE vinculacionmotivos IS 'Catálogo de razones para aliarse con otras instituciones (Convenios, Derivación de casos)';
COMMENT ON COLUMN vinculacionmotivos.descripcion IS 'Descripción del motivo de la vinculación';

-- Red de contactos entre instituciones
COMMENT ON TABLE vinculacionorgsociales IS 'Red de alianzas: vincula organizaciones relevadas con otras entidades y sus acuerdos';
COMMENT ON COLUMN vinculacionorgsociales.id_organizacionrelevada IS 'ID de la organización del censo (FK)';
COMMENT ON COLUMN vinculacionorgsociales.id_organizacionvinculada IS 'ID de la otra entidad con la que se relaciona (FK)';
COMMENT ON COLUMN vinculacionorgsociales.mismatematica IS 'Booleano: ¿Trabajan en el mismo tema o rubro?';
COMMENT ON COLUMN vinculacionorgsociales.acuerdosformales IS 'Detalle de convenios o acuerdos escritos (ej. SI, FORMALES)';

-- Resumen de Misión
COMMENT ON TABLE resumenobjorganizacioninterna_x_organizacion IS 'Etiquetas de resumen de objetivos (Promoción, Asistencia, Reclamo)';
COMMENT ON COLUMN resumenobjorganizacioninterna_x_organizacion.nombreresumenobjetivos IS 'Categoría del objetivo (ej. Reivindicación, Servicio)';

-- Red de contactos entre instituciones
COMMENT ON TABLE vinculacionorgsociales IS 'Red de alianzas: vincula organizaciones relevadas con otras entidades y sus acuerdos';
COMMENT ON COLUMN vinculacionorgsociales.id_organizacionrelevada IS 'ID de la organización del censo (FK)';
COMMENT ON COLUMN vinculacionorgsociales.id_organizacionvinculada IS 'ID de la otra entidad con la que se relaciona (FK)';
COMMENT ON COLUMN vinculacionorgsociales.mismatematica IS 'Booleano: ¿Trabajan en el mismo tema o rubro?';
COMMENT ON COLUMN vinculacionorgsociales.acuerdosformales IS 'Detalle de convenios o acuerdos escritos (ej. SI, FORMALES)';

-- Resumen de Misión
COMMENT ON TABLE resumenobjorganizacioninterna_x_organizacion IS 'Etiquetas de resumen de objetivos (Promoción, Asistencia, Reclamo)';
COMMENT ON COLUMN resumenobjorganizacioninterna_x_organizacion.nombreresumenobjetivos IS 'Categoría del objetivo (ej. Reivindicación, Servicio)';

-- Catálogo de entes reguladores
COMMENT ON TABLE organismo IS 'Catálogo de entes oficiales de registro (Personería Jurídica, Mutuales, etc.)';
COMMENT ON COLUMN organismo.nombreorganismo IS 'Nombre del ente (ej. Inspección General de Justicia)';

-- Estado de inscripción y balances
COMMENT ON TABLE organismo_en_el_que_esta_registrado IS 'Estado legal: fechas de registro, últimos balances presentados y supervisiones';
COMMENT ON COLUMN organismo_en_el_que_esta_registrado.fecharegistro IS 'Fecha de inscripción inicial en el organismo';
COMMENT ON COLUMN organismo_en_el_que_esta_registrado.fechaultimapresmemybal IS 'Fecha de la última memoria y balance presentado';
COMMENT ON COLUMN organismo_en_el_que_esta_registrado.anioultimasupervision IS 'Año en que el organismo realizó la última auditoría/supervisión';

-- Catálogo internacional
COMMENT ON TABLE organismosinternacionales IS 'Catálogo de entes extranjeros o globales (ONU, UNESCO, etc.)';

-- Percepción de la política
COMMENT ON TABLE opinionpoliticasocial IS 'Catálogo de opiniones subjetivas sobre la política social actual';
COMMENT ON COLUMN opinionpoliticasocial.opinion IS 'Calificación de la política (ej. Corrupta, Normal, Desconoce)';

-- Detalle del personal (Recursos Humanos)
COMMENT ON TABLE recursoshumanosdetalle IS 'Información detallada de cada integrante: cargo, educación, sueldo, carga horaria y demografía';
COMMENT ON COLUMN recursoshumanosdetalle.id_organizacion IS 'ID organización (FK)';
COMMENT ON COLUMN recursoshumanosdetalle.funciones IS 'Cargo o rol específico (ej. Directivos, Maestranza, Técnicos)';
COMMENT ON COLUMN recursoshumanosdetalle.niveleducativo IS 'Nivel de instrucción (Primario, Secundario, Universitario)';
COMMENT ON COLUMN recursoshumanosdetalle.profesion IS 'Título o profesión específica del integrante';
COMMENT ON COLUMN recursoshumanosdetalle.rentado IS 'Indica si percibe salario (SÍ/NO)';
COMMENT ON COLUMN recursoshumanosdetalle.id_origenrenta IS 'ID origen de fondos para el sueldo (FK a recursoshumanosorigenrenta)';
COMMENT ON COLUMN recursoshumanosdetalle.monto IS 'Rango salarial o monto percibido';
COMMENT ON COLUMN recursoshumanosdetalle.horasxsemana IS 'Carga horaria semanal dedicada a la organización';
COMMENT ON COLUMN recursoshumanosdetalle.sexo IS 'Género del integrante (M/F)';
COMMENT ON COLUMN recursoshumanosdetalle.edad IS 'Edad del integrante';

-- Origen de los sueldos
COMMENT ON TABLE recursoshumanosorigenrenta IS 'Catálogo de fuentes de financiamiento para salarios (Estado, Fondos Propios, Pasantías)';
COMMENT ON COLUMN recursoshumanosorigenrenta.descripcion IS 'Descripción de la fuente de pago (ej. Plan de Empleo, Propia ONG)';

-- Relación N:N Equipamiento
COMMENT ON TABLE recursosmaterialesequipamiento IS 'Vincula a la organización con los recursos técnicos y herramientas que posee';

-- Catálogo de Religiones
COMMENT ON TABLE religion IS 'Catálogo de credos o religiones (ej. Catolicismo, Judaísmo, Laico)';

-- Resumen de metas de creación
COMMENT ON TABLE resumen_objetivos_fundacionales_x_organizacion IS 'Etiquetas de objetivos iniciales al momento de fundación (ej. Reivindicación, Servicio)';
-- Catálogo de Roles
COMMENT ON TABLE rolorganizaciones IS 'Catálogo de percepciones sobre la función de las ONGs frente al Estado (Suplir, Denunciar, etc.)';
COMMENT ON COLUMN rolorganizaciones.rolorganizacion IS 'Descripción del rol (ej. Interpelar al Estado, Contener población)';

-- Supervisión Técnica
COMMENT ON TABLE supervisor IS 'Catálogo de supervisores responsables de controlar la calidad del relevamiento';
-- Tipos de organizaciones externas
COMMENT ON TABLE tipoorganizacionrelacionada IS 'Catálogo de naturalezas de entes vinculados (Estatal, Gremio, Fundación)';

-- Vínculo detallado con el Estado
COMMENT ON TABLE vinculacionestadodetalle IS 'Detalle de gestiones específicas ante el Estado (subsidios, trámites, proyectos)';
COMMENT ON COLUMN vinculacionestadodetalle.motivos IS 'Texto libre con el detalle del trámite (ej. pases de transporte, certificados discapacidad)';

-- Vínculo con otras organizaciones (no estatales)
COMMENT ON TABLE vinculacionotrasorg IS 'Relación con otras ONGs o entidades privadas y existencia de acuerdos formales';
COMMENT ON COLUMN vinculacionotrasorg.mismatematica IS 'Booleano: ¿Comparten el mismo rubro de trabajo?';

-- Opinión sobre política social
COMMENT ON TABLE visionrealidadopinionpoliticasocial IS 'Relación entre la organización y su postura sobre la política social actual';

-- Análisis de problemas sociales
COMMENT ON TABLE visionproblemascausas IS 'Diagnóstico cualitativo: identificación de problemas sociales (Inseguridad, Salud) y sus causas';
COMMENT ON COLUMN visionproblemascausas.problema IS 'Nombre del problema social identificado (ej. Educación)';
COMMENT ON COLUMN visionproblemascausas.causa IS 'Explicación subjetiva de por qué ocurre ese problema';

COMMENT ON TABLE visonrealidad IS 'Opiniones subjetivas sobre política social local, situación de la infancia y trabajo infantil';
COMMENT ON COLUMN visonrealidad.opinionpoliticasociallocal IS 'Visión sobre la gestión política social en el municipio (ej. Tandil, IMT)';
COMMENT ON COLUMN visonrealidad.opinioninfyadolesc IS 'Opinión sobre la realidad de niños y adolescentes (ej. rebeldía, contención)';
COMMENT ON COLUMN visonrealidad.opiniontrabinfantil IS 'Postura y percepción sobre el trabajo infantil a nivel local';

COMMENT ON TABLE recursosfinacierospresup IS 'Montos monetarios del presupuesto anual desglosados por origen de fondos';
COMMENT ON COLUMN recursosfinacierospresup.anio IS 'Año correspondiente al presupuesto (usar 0 si es dato general)';
COMMENT ON COLUMN recursosfinacierospresup.propia IS 'Monto de fondos propios o autogenerados (numeric)';
COMMENT ON COLUMN recursosfinacierospresup.estadonacional IS 'Monto recibido del Estado Nacional (numeric)';
COMMENT ON COLUMN recursosfinacierospresup.estadoprovincial IS 'Monto recibido del Estado Provincial (numeric)';
COMMENT ON COLUMN recursosfinacierospresup.estadomunicipal IS 'Monto recibido del Municipio (numeric)';
COMMENT ON COLUMN recursosfinacierospresup.sectorprivado IS 'Monto recibido de empresas o sector privado (numeric)';
COMMENT ON COLUMN recursosfinacierospresup.organismosinternacionales IS 'Monto recibido de entes internacionales (numeric)';

-- Formas de autogeneración
COMMENT ON TABLE recursosfinancierosautogformas IS 'Catálogo de métodos de recaudación propia (Rifas, Cuotas, Aranceles)';
COMMENT ON TABLE recursosfinancierosautogfines IS 'Relación entre organizaciones y sus métodos de generación de recursos propios';

-- Causas de no recepción
COMMENT ON TABLE recursosfinancieroscausanorecext IS 'Catálogo de motivos por los que no se reciben fondos externos (Desconocimiento, Inaccesibilidad)';

-- Tipos de ayuda estatal y Fines
COMMENT ON TABLE recursosfinacierosestadotipos IS 'Catálogo de tipos de recursos estatales (Becas, Subsidios)';
COMMENT ON TABLE recursosfinancierosfines IS 'Catálogo de destinos del dinero (Equipamiento, Construcción, Inmuebles)';

-- Perfil de los demandantes
COMMENT ON TABLE quienes_efectuan_demandas IS 'Catálogo de quiénes solicitan ayuda (Destinatarios, Vecinos, Agentes)';
COMMENT ON COLUMN quienes_efectuan_demandas.nombrequienes IS 'Descripción del grupo que efectúa la demanda (ej. Familiares)';

COMMENT ON TABLE quienesefecdem_x_organizacion IS 'Relación entre organizaciones y los perfiles de personas que les realizan pedidos';

-- Gestión de Proyectos
COMMENT ON TABLE proyectos IS 'Detalle de programas y áreas de trabajo: descripción, fechas, población y estado actual';
COMMENT ON COLUMN proyectos.descripcion IS 'Nombre o descripción de la actividad (ej. Área educativa, Espectáculos)';
COMMENT ON COLUMN proyectos.numpoblacionatendida IS 'Cantidad de personas beneficiadas por el proyecto';
COMMENT ON COLUMN proyectos.fechainicio IS 'Fecha de comienzo del proyecto';
COMMENT ON COLUMN proyectos.estado IS 'Situación del proyecto (ej. ACTIVO, FINALIZADO)';

COMMENT ON TABLE proyecto_x_organizacionrelacionada IS 'Vinculación de proyectos con otras instituciones colaboradoras';

-- Rangos Etarios
COMMENT ON TABLE perfiledad IS 'Catálogo de rangos de edad de la población (Niños, Adolescentes, Jóvenes)';
COMMENT ON COLUMN perfiledad.perfiledad IS 'Nombre del grupo etario atendido';

COMMENT ON TABLE perfiledad_x_organizacion IS 'Vincula organizaciones con las edades de las personas a las que ayudan y su prioridad';

-- Problemáticas Sociales
COMMENT ON TABLE problemassociedad IS 'Catálogo de problemas que la organización busca resolver (Pobreza, Trabajo infantil, Violencia)';
COMMENT ON COLUMN problemassociedad.problemassociedad IS 'Descripción de la problemática (ej. Falta de trabajo)';

COMMENT ON TABLE problemasociedad_x_organizacion IS 'Relación entre organizaciones y los problemas sociales que intentan mitigar y su prioridad';

-- Relación N:N Proyectos-Otras Orgs
COMMENT ON TABLE proyecto_x_organizacionrelacionada IS 'Vincula un proyecto específico con otras instituciones externas que también participan en él';

-- Vínculos Institucionales y Políticos
COMMENT ON TABLE vinculacion IS 'Detalle de conexiones con el Estado, partidos políticos, programas sociales y participación en redes o foros';
COMMENT ON COLUMN vinculacion.id_organizacion IS 'ID organización (FK/PK)';
COMMENT ON COLUMN vinculacion.vincinstanciasestatales IS '¿Posee relación con niveles del Estado? (SI/NO)';
COMMENT ON COLUMN vinculacion.acuerdosconvenios IS 'Detalle de acuerdos o convenios vigentes';
COMMENT ON COLUMN vinculacion.redesforos IS '¿Participa en redes, federaciones o foros? (Boolean)';
COMMENT ON COLUMN vinculacion.funcionariospoliticos IS 'Relación o contacto con funcionarios políticos';
COMMENT ON COLUMN vinculacion.proyectospartidospoliticos IS '¿Participa en proyectos de partidos políticos? (Boolean)';
COMMENT ON COLUMN vinculacion.implprogramassoc IS '¿Ejecuta programas sociales públicos? (SI/NO)';
COMMENT ON COLUMN vinculacion.cualprogramasoc IS 'Nombre del programa social (ej. Plan Trabajar)';
COMMENT ON COLUMN vinculacion.evalprogrsoc IS 'Opinión o evaluación sobre el impacto de los programas sociales en la organización';
COMMENT ON COLUMN vinculacion.cualesredesforos IS 'Nombres de las redes o foros donde participa (ej. FEHGRA, IMT, Asociaciones)';

-- Tipología de estructura
COMMENT ON TABLE organizaciontipo IS 'Clasificación de la organización según su dependencia jerárquica y si tiene otras sedes a cargo';
COMMENT ON COLUMN organizaciontipo.descripcion IS 'Nombre del tipo organizativo (ej. Tipo 1, Tipo 2)';
COMMENT ON COLUMN organizaciontipo.depcasamatrizlocal IS '¿Depende de una sede central en la misma localidad? (Boolean)';
COMMENT ON COLUMN organizaciontipo.depcasamatrizext IS '¿Depende de una sede central externa/nacional/extranjera? (Boolean)';
COMMENT ON COLUMN organizaciontipo.organizacionesacargo IS '¿Esta organización tiene otras entidades bajo su mando? (Boolean)';

-- Catálogo de Sedes Centrales
COMMENT ON TABLE orgcasamatrizexterna IS 'Catálogo de sedes centrales, federaciones o ministerios nacionales de los que depende la organización';
COMMENT ON COLUMN orgcasamatrizexterna.nombre IS 'Nombre de la casa matriz o ente superior (ej. Ministerio de Defensa, Federación)';
COMMENT ON COLUMN orgcasamatrizexterna.nivel IS 'Ámbito de la casa matriz (Nacional, Internacional, etc.)';