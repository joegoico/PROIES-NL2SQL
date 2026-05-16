CREATE TABLE actores (
    id_actor integer NOT NULL,
    nombreactor text
);

CREATE TABLE actores_eval_x_organizacion (
    id_actor integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE actores_planif_x_organizacion (
    id_actor integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursosfinancieros (
    id_organizacion integer DEFAULT 0 NOT NULL,
    administracionpresupuesto text,
    porcrecursosautogenerados integer DEFAULT 0,
    porcaportesestatales integer DEFAULT 0,
    porcotrosaportes integer DEFAULT 0
);

CREATE TABLE alcance_de_difusion (
    id_alcance integer NOT NULL,
    nombrealcance text
);

CREATE TABLE organizacion_interna (
    id_organizacion integer DEFAULT 0 NOT NULL,
    objetivos text,
    barrios text,
    zonaaccionar text,
    tipopoblacion text,
    poblacionsegunedad text,
    poblacionsegunsexo text,
    organigrama text,
    id_formaorganizacion integer DEFAULT 99,
    documentosescritos text,
    registrotarea text,
    planificacion text,
    espescenplanif text,
    concordanciadeact text,
    cumplimcronograma text,
    evaluacion text,
    momentoevaluacion text,
    espesceneval text,
    influenciadelosresult text,
    implementacapacitacion text,
    publicaciones text,
    demandassociales text,
    quieneslasefectuan text,
    comolasefectuan text,
    comorespondelainst text,
    capacderespdelaorg text,
    capacformularpropuestas text,
    comodefinentareas text,
    princtemascapacit text,
    propuestasarmadas text,
    paginaweb text,
    princtemascapacit2 text,
    princtemascapacit3 text
);

CREATE TABLE alcanceaccionar_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_alcanceaccionar integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE area_tematica (
    id_area integer NOT NULL,
    nombrearea text
);

CREATE TABLE area_tematica_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_areatematica integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE autodiagnostico (
    id_organizacion integer DEFAULT 0 NOT NULL,
    opinionrolorganizaciones text,
    opinionroldeberiancumplir text
);

CREATE TABLE autodiagnosticodificultades (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_dificultad integer DEFAULT 0 NOT NULL,
    prioridad text
);

CREATE TABLE autodiagnosticoroldeberiancumplir (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_rolorganizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE autodiagnosticorolorganizaciones (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_rolorganizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE capacitaciontema (
    id_capacitaciontema integer NOT NULL,
    capacitaciontema text
);

CREATE TABLE capacitaciontema_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_capacitaciontema integer DEFAULT 0 NOT NULL
);

CREATE TABLE codigo_x_forma_registro_x_organizacion (
    id_organizacion integer DEFAULT 0,
    id_codigocontenido integer DEFAULT 0,
    id_formaregistro integer DEFAULT 0,
    prioridad integer DEFAULT 0
);

CREATE TABLE codigos_contenido_registro (
    id_codigo integer NOT NULL,
    nombrecodigo text
);

CREATE TABLE como_efectuan_demandas (
    id_comoefectuandem integer NOT NULL,
    nombrecomo text
);

CREATE TABLE como_efectuan_demandas_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_comoefectuandem integer DEFAULT 0 NOT NULL
);

CREATE TABLE condicionescontratacion (
    idcondicionescontrat integer NOT NULL,
    condicionescontrat text
);
 
CREATE TABLE demandas_sociales (
    id_demanda integer NOT NULL,
    tipodemanda text
);

CREATE TABLE demandas_x_organizacion (
    id_demandasocial integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    denominacionlegal text,
    domiciliolegal text,
    domicilioreal text,
    telefonos text,
    fax text,
    e_mail text,
    horarios text,
    id_tipoorganizacion integer DEFAULT 0 NOT NULL,
    id_casamatrizlocal integer DEFAULT 0,
    id_casamatrizexterna integer DEFAULT 0
);

CREATE TABLE dependenciaestado (
    id_dependenciaestado integer DEFAULT 0 NOT NULL,
    nombre text,
    nivel text
);

CREATE TABLE dificultades (
    id_dificultad integer DEFAULT 0 NOT NULL,
    dificultad text
);

CREATE TABLE entidadesaportantes (
    id_entidadaportante integer DEFAULT 0 NOT NULL,
    nombre text
);

CREATE TABLE entidadessectorprivado (
    id_entidadsectorprivado integer NOT NULL,
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
    fechaentrevista timestamp without time zone,
    hsentrevista text,
    cargadapor text
);

CREATE TABLE entrevistador (
    id_entrevistador integer NOT NULL,
    nombreapellidoentrevistador text
);

CREATE TABLE equipamiento (
    id_equipamiento integer NOT NULL,
    nombreequipamiento text
);

CREATE TABLE situacion_juridica (
    id_organizacion integer DEFAULT 0 NOT NULL,
    personeriajuridica text,
    nombrepersoneria text,
    usotransitoriocual text,
    entramitecual text,
    figuralegal text,
    formaasoccivil text,
    nropersoneria text,
    fechaobtencion timestamp without time zone,
    fechainiciotramite timestamp without time zone,
    nroregistroculto integer DEFAULT 0,
    fechaobtregistroculto timestamp without time zone
);

CREATE TABLE forma_de_difusion (
    id_formadifusion integer NOT NULL,
    tipodifusion text
);

CREATE TABLE forma_de_organizacion (
    id_formaorganizacion integer DEFAULT 0 NOT NULL,
    nombre text
);

CREATE TABLE forma_difusion_x_alcance_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_formadifusion integer DEFAULT 0 NOT NULL,
    id_alcance integer DEFAULT 0 NOT NULL
);

CREATE TABLE formas_de_registro (
    id_formaregistro integer NOT NULL,
    nombre text
);

CREATE TABLE formatenenciapropiedad (
    id_formatenenciapropiedad integer DEFAULT 0 NOT NULL,
    formatenenciapropiedad text
);

CREATE TABLE frecuenciacapacitacion (
    idmomento integer NOT NULL,
    tipo text
);

CREATE TABLE historia (
    id_organizacion integer DEFAULT 0 NOT NULL,
    anioorigen integer DEFAULT 0,
    origen text,
    id_religion integer DEFAULT 5,
    fundadores text,
    resumenfundadores text,
    objetivosfundacionales text,
    reseniaaccion text,
    resumenresenia text
);

CREATE TABLE identidad (
    id_identidadorg integer NOT NULL,
    nombreidentidad text
);

CREATE TABLE identidad_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_identidadorg integer DEFAULT 0 NOT NULL
);

CREATE TABLE modalidad_capac_x_organizacion (
    id_modalidad integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_frecuencia integer DEFAULT 0,
    rentado boolean NOT NULL,
    voluntario boolean NOT NULL
);

CREATE TABLE modalidad_de_capacitacion (
    id_modalidad integer NOT NULL,
    nombremodalidad text
);

CREATE TABLE modo_accionar (
    id_modoaccionar integer NOT NULL,
    nombremodo text
);

CREATE TABLE modo_accionar_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_modoaccionar integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE momento_evaluacion_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    idmomento integer DEFAULT 0 NOT NULL
);

CREATE TABLE momento_planificacion_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    idmomento integer DEFAULT 0 NOT NULL
);

CREATE TABLE momplanificacionyevaluacion (
    idmomento integer NOT NULL,
    tipo text
);

CREATE TABLE vinculacionmotivos (
    id_motivovinculacion integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE vinculacionorgsociales (
    id_organizacionrelevada integer DEFAULT 0 NOT NULL,
    id_organizacionvinculada integer DEFAULT 0 NOT NULL,
    id_motivovinculacion integer DEFAULT 0 NOT NULL,
    mismatematica boolean NOT NULL,
    acuerdosformales text
);

CREATE TABLE resumenobjorganizacioninterna_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    nombreresumenobjetivos text NOT NULL
);

CREATE TABLE opinionpoliticasocial (
    id_opinionpoliticasocial integer DEFAULT 0 NOT NULL,
    opinion text
);

CREATE TABLE organismo (
    id_organismo integer NOT NULL,
    nombreorganismo text
);

CREATE TABLE organismo_en_el_que_esta_registrado (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_organismo integer DEFAULT 0 NOT NULL,
    fecharegistro timestamp without time zone,
    fechaultimapresmemybal timestamp without time zone,
    anioultimasupervision integer DEFAULT 0
);

CREATE TABLE organismosinternacionales (
    id_organismointernacional integer DEFAULT 0 NOT NULL,
    nombreorganismointernacional text
);

CREATE TABLE organizacionrelacionada (
    id_organizacionrelacionada integer NOT NULL,
    nombre text,
    id_organizacion integer DEFAULT 0,
    tipo text,
    id_tipo integer DEFAULT 0
);

CREATE TABLE organizaciontipo (
    id_tipoorganizacion integer DEFAULT 0 NOT NULL,
    descripcion text,
    depcasamatrizlocal boolean NOT NULL,
    depcasamatrizext boolean NOT NULL,
    organizacionesacargo boolean NOT NULL
);

CREATE TABLE orgcasamatrizexterna (
    id_casamatrizexterna integer DEFAULT 0 NOT NULL,
    nombre text,
    nivel text
);

CREATE TABLE vinculacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    vincinstanciasestatales text,
    acuerdosconvenios text,
    redesforos boolean NOT NULL,
    funcionariospoliticos text,
    proyectospartidospoliticos boolean NOT NULL,
    implprogramassoc text,
    cualprogramasoc text,
    evalprogrsoc text,
    cualesredesforos text
);

CREATE TABLE perfiledad (
    idperfiledad integer NOT NULL,
    perfiledad text
);

CREATE TABLE perfiledad_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    idperfiledad integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE problemasociedad_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    idproblemasociedad integer DEFAULT 0 NOT NULL,
    prioridad integer DEFAULT 0
);

CREATE TABLE problemassociedad (
    idproblemassociedad integer NOT NULL,
    problemassociedad text
);

CREATE TABLE proyecto_x_organizacionrelacionada (
    id_organizacionrelacionada integer DEFAULT 0 NOT NULL,
    id_proyecto integer DEFAULT 0 NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL
);

CREATE TABLE proyectos (
    id_proyecto integer NOT NULL,
    id_organizacion integer DEFAULT 0 NOT NULL,
    descripcion text,
    codigo1_modoaccionar integer DEFAULT 0,
    codigo2_areatematica integer DEFAULT 0,
    numpoblacionatendida text,
    fechainicio timestamp without time zone,
    fechafin timestamp without time zone,
    motivofinalizacion text,
    estado text
);

CREATE TABLE quienes_efectuan_demandas (
    id_quienes integer NOT NULL,
    nombrequienes text
);

CREATE TABLE quienesefecdem_x_organizacion (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_quienes integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursofinancieronorecextcausas (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_causanorecext integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursosfinacierosestadotipos (
    id_recursofinancieroestado integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursosfinacierospresup (
    id_organizacion integer DEFAULT 0 NOT NULL,
    anio integer DEFAULT 0,
    propia numeric(19,2) DEFAULT 0,
    estadonacional numeric(19,2) DEFAULT 0,
    estadoprovincial numeric(19,2) DEFAULT 0,
    estadomunicipal numeric(19,2) DEFAULT 0,
    organismosinternacionales numeric(19,2) DEFAULT 0,
    sectorprivado numeric(19,2) DEFAULT 0,
    bancos numeric(19,2) DEFAULT 0,
    otrasinstituciones numeric(19,2) DEFAULT 0
);

CREATE TABLE recursosfinancierosautogfines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_formageneracionrecurso integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursosfinancierosautogformas (
    id_formageneracionrecurso integer NOT NULL,
    descripcion text
);

CREATE TABLE recursosfinancieroscausanorecext (
    id_causanorecursoext integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursosfinancierosestadofines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_recursofinenacieroestado integer DEFAULT 0 NOT NULL,
    id_finrecursofinanciero integer DEFAULT 0 NOT NULL,
    id_dependenciaestado integer DEFAULT 0
);

CREATE TABLE recursosfinancierosfines (
    id_finrecursof integer NOT NULL,
    descripcion text,
    id_finrecursofinanciero integer DEFAULT 0
);

CREATE TABLE recursosfinancierosorgintfines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_organismointernacional integer DEFAULT 0 NOT NULL,
    id_finrecursofinanciero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursosfinancierosotrosfines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_entidadaportante integer DEFAULT 0 NOT NULL,
    id_finrecursofinanciero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursosfinancierosprivadofines (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_entidadsectorprivado integer DEFAULT 0 NOT NULL,
    id_finrecursofinanciero integer DEFAULT 0 NOT NULL
);

CREATE TABLE recursoshumanos (
    id_organizacion integer DEFAULT 0 NOT NULL,
    rentamenor numeric(19,2) DEFAULT 0,
    rentamayor numeric(19,2) DEFAULT 0,
    rentapromedio numeric(19,2) DEFAULT 0,
    jornadamediasemrentado integer DEFAULT 0,
    jornadamediasemvoluntariado integer DEFAULT 0,
    cantpersonalcontratado integer DEFAULT 0,
    cantautonomo integer DEFAULT 0,
    cantreldependencia integer DEFAULT 0,
    cantpasantias integer DEFAULT 0,
    cantbecas integer DEFAULT 0,
    cantotros integer DEFAULT 0,
    captacionvoluntarios text,
    estrategiascaptacion text
);

CREATE TABLE recursoshumanosdetalle (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_recursohumano integer NOT NULL,
    cantidad integer DEFAULT 0,
    funciones text,
    niveleducativo text,
    profesion text,
    rentado text,
    id_origenrenta integer DEFAULT 0,
    monto text,
    idcondicionescontrat integer DEFAULT 0,
    horasxsemana integer DEFAULT 0,
    contribucionespecie text,
    sexo text,
    edad integer DEFAULT 0
);

CREATE TABLE recursoshumanosorigenrenta (
    id_origenrenta integer DEFAULT 0 NOT NULL,
    descripcion text
);

CREATE TABLE recursosmateriales (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_formatenenciapropiedad integer DEFAULT 0,
    usoexclusivopropiedad boolean NOT NULL,
    cantlibros integer DEFAULT 0,
    canthemeroteca integer DEFAULT 0,
    cantvideoteca integer DEFAULT 0
);

CREATE TABLE recursosmaterialesequipamiento (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_equipamiento integer DEFAULT 0 NOT NULL
);

CREATE TABLE religion (
    id_religion integer NOT NULL,
    nombrereligion text
);

CREATE TABLE resumen_objetivos_fundacionales_x_organizacion (
    idorganizacion integer DEFAULT 0 NOT NULL,
    nombreresumenobjetivos text NOT NULL
);

CREATE TABLE rolorganizaciones (
    id_rolorganizacion integer DEFAULT 0 NOT NULL,
    rolorganizacion text
);

CREATE TABLE supervisor (
    id_supervisor integer NOT NULL,
    apellidonombre text
);

CREATE TABLE tipoorganizacionrelacionada (
    id_tipoorganizacionrelacionada integer NOT NULL,
    nombre text
);

CREATE TABLE vinculacionestadodetalle (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_dependenciaestado integer DEFAULT 0 NOT NULL,
    id_motivovinculacion integer DEFAULT 0 NOT NULL,
    motivos text
);

CREATE TABLE vinculacionotrasorg (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_otraorganizacion integer DEFAULT 0 NOT NULL,
    id_motivovinculacion integer DEFAULT 0 NOT NULL,
    mismatematica boolean NOT NULL,
    acuerdosformales text
);

CREATE TABLE visionrealidadopinionpoliticasocial (
    id_organizacion integer DEFAULT 0 NOT NULL,
    id_opinionpoliticasocial integer DEFAULT 0 NOT NULL
);

CREATE TABLE visionproblemascausas (
    id_problemacausa integer NOT NULL,
    problema text,
    causa text,
    id_organizacion integer DEFAULT 0
);

CREATE TABLE visonrealidad (
    id_organizacion integer DEFAULT 0 NOT NULL,
    opinionpoliticasociallocal text,
    opinioninfyadolesc text,
    opiniontrabinfantil text
);

ALTER TABLE  actores_eval_x_organizacion
    ADD CONSTRAINT pk_actores_eval_x_organizacion PRIMARY KEY (id_actor, id_organizacion);

ALTER TABLE  actores_planif_x_organizacion
    ADD CONSTRAINT pk_actores_planif_x_organizacion PRIMARY KEY (id_actor, id_organizacion);

ALTER TABLE  actores
    ADD CONSTRAINT pk_actores PRIMARY KEY (id_actor);

ALTER TABLE  alcance_de_difusion
    ADD CONSTRAINT pk_alcance_de_difusion PRIMARY KEY (id_alcance);

ALTER TABLE  alcanceaccionar_x_organizacion
    ADD CONSTRAINT pk_alcanceaccionar_x_organizacion PRIMARY KEY (id_organizacion, id_alcanceaccionar);

ALTER TABLE  area_tematica
    ADD CONSTRAINT pk_area_tematica PRIMARY KEY (id_area);

ALTER TABLE  area_tematica_x_organizacion
    ADD CONSTRAINT pk_area_tematica_x_organizacion PRIMARY KEY (id_organizacion, id_areatematica);

ALTER TABLE  autodiagnostico
    ADD CONSTRAINT pk_autodiagnostico PRIMARY KEY (id_organizacion);

ALTER TABLE  autodiagnosticodificultades
    ADD CONSTRAINT pk_autodiagnosticodificultades PRIMARY KEY (id_organizacion, id_dificultad);

ALTER TABLE  autodiagnosticoroldeberiancumplir
    ADD CONSTRAINT pk_autodiagnosticoroldeberiancumplir PRIMARY KEY (id_organizacion, id_rolorganizacion);

ALTER TABLE  autodiagnosticorolorganizaciones
    ADD CONSTRAINT pk_autodiagnosticorolorganizaciones PRIMARY KEY (id_organizacion, id_rolorganizacion);

ALTER TABLE  capacitaciontema
    ADD CONSTRAINT pk_capacitaciontema PRIMARY KEY (id_capacitaciontema);

ALTER TABLE  capacitaciontema_x_organizacion
    ADD CONSTRAINT pk_capacitaciontema_x_organizacion PRIMARY KEY (id_organizacion, id_capacitaciontema);

ALTER TABLE  codigos_contenido_registro
    ADD CONSTRAINT pk_codigos_contenido_registro PRIMARY KEY (id_codigo);

ALTER TABLE  como_efectuan_demandas
    ADD CONSTRAINT pk_como_efectuan_demandas PRIMARY KEY (id_comoefectuandem);

ALTER TABLE  como_efectuan_demandas_x_organizacion
    ADD CONSTRAINT pk_como_efectuan_demandas_x_organizacion PRIMARY KEY (id_organizacion, id_comoefectuandem);

ALTER TABLE  condicionescontratacion
    ADD CONSTRAINT pk_condicionescontratacion PRIMARY KEY (idcondicionescontrat);

ALTER TABLE  demandas_sociales
    ADD CONSTRAINT pk_demandas_sociales PRIMARY KEY (id_demanda);

ALTER TABLE  demandas_x_organizacion
    ADD CONSTRAINT pk_demandas_x_organizacion PRIMARY KEY (id_demandasocial, id_organizacion);

ALTER TABLE  dependenciaestado
    ADD CONSTRAINT pk_dependenciaestado PRIMARY KEY (id_dependenciaestado);

ALTER TABLE  dificultades
    ADD CONSTRAINT pk_dificultades PRIMARY KEY (id_dificultad);

ALTER TABLE  entidadesaportantes
    ADD CONSTRAINT pk_entidadesaportantes PRIMARY KEY (id_entidadaportante);

ALTER TABLE  entidadessectorprivado
    ADD CONSTRAINT pk_entidadessectorprivado PRIMARY KEY (id_entidadsectorprivado);

ALTER TABLE  entrevista
    ADD CONSTRAINT pk_entrevista PRIMARY KEY (id_organizacion);

ALTER TABLE  equipamiento
    ADD CONSTRAINT pk_equipamiento PRIMARY KEY (id_equipamiento);

ALTER TABLE  forma_de_difusion
    ADD CONSTRAINT pk_forma_de_difusion PRIMARY KEY (id_formadifusion);

ALTER TABLE  forma_de_organizacion
    ADD CONSTRAINT pk_forma_de_organizacion PRIMARY KEY (id_formaorganizacion);

ALTER TABLE  forma_difusion_x_alcance_x_organizacion
    ADD CONSTRAINT pk_forma_difusion_x_alcance_x_organizacion PRIMARY KEY (id_organizacion, id_formadifusion, id_alcance);

ALTER TABLE  formas_de_registro
    ADD CONSTRAINT pk_formas_de_registro PRIMARY KEY (id_formaregistro);

ALTER TABLE  formatenenciapropiedad
    ADD CONSTRAINT pk_formatenenciapropiedad PRIMARY KEY (id_formatenenciapropiedad);

ALTER TABLE  frecuenciacapacitacion
    ADD CONSTRAINT pk_frecuenciacapacitacion PRIMARY KEY (idmomento);

ALTER TABLE  historia
    ADD CONSTRAINT pk_historia PRIMARY KEY (id_organizacion);

ALTER TABLE  identidad
    ADD CONSTRAINT pk_identidad PRIMARY KEY (id_identidadorg);

ALTER TABLE  identidad_x_organizacion
    ADD CONSTRAINT pk_identidad_x_organizacion PRIMARY KEY (id_organizacion, id_identidadorg);

ALTER TABLE  modalidad_capac_x_organizacion
    ADD CONSTRAINT pk_modalidad_capac_x_organizacion PRIMARY KEY (id_modalidad, id_organizacion);

ALTER TABLE  modalidad_de_capacitacion
    ADD CONSTRAINT pk_modalidad_de_capacitacion PRIMARY KEY (id_modalidad);

ALTER TABLE  modo_accionar
    ADD CONSTRAINT pk_modo_accionar PRIMARY KEY (id_modoaccionar);


ALTER TABLE  modo_accionar_x_organizacion
    ADD CONSTRAINT pk_modo_accionar_x_organizacion PRIMARY KEY (id_organizacion, id_modoaccionar);

ALTER TABLE  momento_evaluacion_x_organizacion
    ADD CONSTRAINT pk_momento_evaluacion_x_organizacion PRIMARY KEY (idorganizacion, idmomento);

ALTER TABLE  momento_planificacion_x_organizacion
    ADD CONSTRAINT pk_momento_planificacion_x_organizacion PRIMARY KEY (idorganizacion, idmomento);

ALTER TABLE  momplanificacionyevaluacion
    ADD CONSTRAINT pk_momplanificacionyevaluacion PRIMARY KEY (idmomento);

ALTER TABLE  opinionpoliticasocial
    ADD CONSTRAINT pk_opinionpoliticasocial PRIMARY KEY (id_opinionpoliticasocial);

ALTER TABLE  organismo_en_el_que_esta_registrado
    ADD CONSTRAINT pk_organismo_en_el_que_esta_registrado PRIMARY KEY (id_organizacion, id_organismo);

ALTER TABLE  organismo
    ADD CONSTRAINT pk_organismo PRIMARY KEY (id_organismo);

ALTER TABLE  organismosinternacionales
    ADD CONSTRAINT pk_organismosinternacionales PRIMARY KEY (id_organismointernacional);

ALTER TABLE  organizacion
    ADD CONSTRAINT pk_organizacion PRIMARY KEY (id_organizacion);

ALTER TABLE  organizacionrelacionada
    ADD CONSTRAINT pk_organizacionrelacionada PRIMARY KEY (id_organizacionrelacionada);

ALTER TABLE  organizaciontipo
    ADD CONSTRAINT pk_organizaciontipo PRIMARY KEY (id_tipoorganizacion);

ALTER TABLE  orgcasamatrizexterna
    ADD CONSTRAINT pk_orgcasamatrizexterna PRIMARY KEY (id_casamatrizexterna);

ALTER TABLE  perfiledad
    ADD CONSTRAINT pk_perfiledad PRIMARY KEY (idperfiledad);

ALTER TABLE  perfiledad_x_organizacion
    ADD CONSTRAINT pk_perfiledad_x_organizacion PRIMARY KEY (idorganizacion, idperfiledad);

ALTER TABLE  problemasociedad_x_organizacion
    ADD CONSTRAINT pk_problemasociedad_x_organizacion PRIMARY KEY (idorganizacion, idproblemasociedad);

ALTER TABLE  problemassociedad
    ADD CONSTRAINT pk_problemassociedad PRIMARY KEY (idproblemassociedad);

ALTER TABLE  proyecto_x_organizacionrelacionada
    ADD CONSTRAINT pk_proyecto_x_organizacionrelacionada PRIMARY KEY (id_organizacionrelacionada, id_proyecto, id_organizacion);

ALTER TABLE  proyectos
    ADD CONSTRAINT pk_proyectos PRIMARY KEY (id_proyecto, id_organizacion);

ALTER TABLE  quienes_efectuan_demandas
    ADD CONSTRAINT pk_quienes_efectuan_demandas PRIMARY KEY (id_quienes);

ALTER TABLE  quienesefecdem_x_organizacion
    ADD CONSTRAINT pk_quienesefecdem_x_organizacion PRIMARY KEY (id_organizacion, id_quienes);

ALTER TABLE  recursofinancieronorecextcausas
    ADD CONSTRAINT pk_recursofinancieronorecextcausas PRIMARY KEY (id_organizacion, id_causanorecext);

ALTER TABLE  recursosfinacierosestadotipos
    ADD CONSTRAINT pk_recursosfinacierosestadotipos PRIMARY KEY (id_recursofinancieroestado);

ALTER TABLE  recursosfinacierospresup
    ADD CONSTRAINT pk_recursosfinacierospresup PRIMARY KEY (id_organizacion);

ALTER TABLE  recursosfinancieros
    ADD CONSTRAINT pk_recursosfinancieros PRIMARY KEY (id_organizacion);

ALTER TABLE  recursosfinancierosautogfines
    ADD CONSTRAINT pk_recursosfinancierosautogfines PRIMARY KEY (id_organizacion, id_formageneracionrecurso);

ALTER TABLE  recursosfinancierosautogformas
    ADD CONSTRAINT pk_recursosfinancierosautogformas PRIMARY KEY (id_formageneracionrecurso);

ALTER TABLE  recursosfinancieroscausanorecext
    ADD CONSTRAINT pk_recursosfinancieroscausanorecext PRIMARY KEY (id_causanorecursoext);

ALTER TABLE  recursosfinancierosestadofines
    ADD CONSTRAINT pk_recursosfinancierosestadofines PRIMARY KEY (id_organizacion, id_recursofinenacieroestado, id_finrecursofinanciero);

ALTER TABLE  recursosfinancierosfines
    ADD CONSTRAINT pk_recursosfinancierosfines PRIMARY KEY (id_finrecursof);

ALTER TABLE  recursosfinancierosorgintfines
    ADD CONSTRAINT pk_recursosfinancierosorgintfines PRIMARY KEY (id_organizacion, id_organismointernacional, id_finrecursofinanciero);

ALTER TABLE  recursosfinancierosotrosfines
    ADD CONSTRAINT pk_recursosfinancierosotrosfines PRIMARY KEY (id_organizacion, id_entidadaportante, id_finrecursofinanciero);

ALTER TABLE  recursosfinancierosprivadofines
    ADD CONSTRAINT pk_recursosfinancierosprivadofines PRIMARY KEY (id_organizacion, id_entidadsectorprivado, id_finrecursofinanciero);

ALTER TABLE  recursoshumanos
    ADD CONSTRAINT pk_recursoshumanos PRIMARY KEY (id_organizacion);

ALTER TABLE  recursoshumanosdetalle
    ADD CONSTRAINT pk_recursoshumanosdetalle PRIMARY KEY (id_organizacion, id_recursohumano);

ALTER TABLE  recursoshumanosorigenrenta
    ADD CONSTRAINT pk_recursoshumanosorigenrenta PRIMARY KEY (id_origenrenta);

ALTER TABLE  recursosmateriales
    ADD CONSTRAINT pk_recursosmateriales PRIMARY KEY (id_organizacion);

ALTER TABLE  recursosmaterialesequipamiento
    ADD CONSTRAINT pk_recursosmaterialesequipamiento PRIMARY KEY (id_organizacion, id_equipamiento);

ALTER TABLE  religion
    ADD CONSTRAINT pk_religion PRIMARY KEY (id_religion);

ALTER TABLE  resumen_objetivos_fundacionales_x_organizacion
    ADD CONSTRAINT pk_resumen_objetivos_fundacionales_x_organizacion PRIMARY KEY (idorganizacion, nombreresumenobjetivos);

ALTER TABLE  resumenobjorganizacioninterna_x_organizacion
    ADD CONSTRAINT pk_resumenobjorganizacioninterna_x_organizacion PRIMARY KEY (idorganizacion, nombreresumenobjetivos);

ALTER TABLE  rolorganizaciones
    ADD CONSTRAINT pk_rolorganizaciones PRIMARY KEY (id_rolorganizacion);

ALTER TABLE  situacion_juridica
    ADD CONSTRAINT pk_situacion_juridica PRIMARY KEY (id_organizacion);

ALTER TABLE  supervisor
    ADD CONSTRAINT pk_supervisor PRIMARY KEY (id_supervisor);

ALTER TABLE  tipoorganizacionrelacionada
    ADD CONSTRAINT pk_tipoorganizacionrelacionada PRIMARY KEY (id_tipoorganizacionrelacionada);

ALTER TABLE  vinculacion
    ADD CONSTRAINT pk_vinculacion PRIMARY KEY (id_organizacion);

ALTER TABLE  vinculacionestadodetalle
    ADD CONSTRAINT pk_vinculacionestadodetalle PRIMARY KEY (id_organizacion, id_dependenciaestado, id_motivovinculacion);

ALTER TABLE  vinculacionmotivos
    ADD CONSTRAINT pk_vinculacionmotivos PRIMARY KEY (id_motivovinculacion);

ALTER TABLE  vinculacionorgsociales
    ADD CONSTRAINT pk_vinculacionorgsociales PRIMARY KEY (id_organizacionrelevada, id_organizacionvinculada, id_motivovinculacion);

ALTER TABLE  vinculacionotrasorg
    ADD CONSTRAINT pk_vinculacionotrasorg PRIMARY KEY (id_organizacion, id_otraorganizacion, id_motivovinculacion);

ALTER TABLE  visionproblemascausas
    ADD CONSTRAINT pk_visionproblemascausas PRIMARY KEY (id_problemacausa);

ALTER TABLE  visionrealidadopinionpoliticasocial
    ADD CONSTRAINT pk_visionrealidadopinionpoliticasocial PRIMARY KEY (id_organizacion, id_opinionpoliticasocial);

ALTER TABLE  visonrealidad
    ADD CONSTRAINT pk_visonrealidad PRIMARY KEY (id_organizacion);
	
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

ALTER TABLE actores_planif_x_organizacion
ADD CONSTRAINT fk_actores_planif_x_organizacion_actores
      FOREIGN KEY(id_actor)
	  REFERENCES actores (id_actor);

ALTER TABLE actores_planif_x_organizacion
ADD CONSTRAINT fk_actores_planif_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE recursosfinancieros
ADD CONSTRAINT fk_recursosfinancieros_organizacion
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

ALTER TABLE alcanceaccionar_x_organizacion
ADD CONSTRAINT fk_alcanceaccionar_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	
ALTER TABLE area_tematica_x_organizacion
ADD CONSTRAINT fk_area_tematica_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	
ALTER TABLE area_tematica_x_organizacion
ADD CONSTRAINT fk_area_tematica_x_organizacion_area_tematica
      FOREIGN KEY(id_areatematica)
	  REFERENCES area_tematica (id_area);
	
ALTER TABLE autodiagnostico
ADD CONSTRAINT fk_autodiagnostico_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE autodiagnosticodificultades
ADD CONSTRAINT fk_autodiagnosticodificultades_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);

ALTER TABLE autodiagnosticodificultades
ADD CONSTRAINT fk_autodiagnosticodificultades_dificultades
      FOREIGN KEY(id_dificultad)
	  REFERENCES dificultades (id_dificultad);

ALTER TABLE autodiagnosticoroldeberiancumplir
ADD CONSTRAINT fk_autodiagnosticoroldeberiancumplir_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE autodiagnosticoroldeberiancumplir
ADD CONSTRAINT fk_autodiagnosticoroldeberiancumplir_rolorganizaciones
      FOREIGN KEY(id_rolorganizacion)
	  REFERENCES rolorganizaciones (id_rolorganizacion);
	  
ALTER TABLE autodiagnosticorolorganizaciones
ADD CONSTRAINT fk_autodiagnosticorolorganizaciones_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE autodiagnosticorolorganizaciones
ADD CONSTRAINT fk_autodiagnosticorolorganizaciones_rolorganizaciones
      FOREIGN KEY(id_rolorganizacion)
	  REFERENCES rolorganizaciones (id_rolorganizacion);

ALTER TABLE capacitaciontema_x_organizacion
ADD CONSTRAINT fk_capacitaciontema_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion (id_organizacion);
	  
ALTER TABLE capacitaciontema_x_organizacion
ADD CONSTRAINT fk_capacitaciontema_x_organizacion
      FOREIGN KEY(id_capacitaciontema)
	  REFERENCES capacitaciontema(id_capacitaciontema);

ALTER TABLE codigo_x_forma_registro_x_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE codigo_x_forma_registro_x_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_organizacion_cod_contenido_registro
      FOREIGN KEY(id_codigocontenido)
	  REFERENCES codigos_contenido_registro(id_codigo);

ALTER TABLE codigo_x_forma_registro_x_organizacion
ADD CONSTRAINT fk_codigo_x_forma_registro_x_organizacion_formas_de_registro
      FOREIGN KEY(id_formaregistro)
	  REFERENCES formas_de_registro(id_formaregistro);

ALTER TABLE como_efectuan_demandas_x_organizacion
ADD CONSTRAINT fk_como_efectuan_demandas_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE como_efectuan_demandas_x_organizacion
ADD CONSTRAINT fk_como_efectuan_demandas_x_organizacion_como_efectuan_demandas
      FOREIGN KEY(id_comoefectuandem)
	  REFERENCES como_efectuan_demandas(id_comoefectuandem);

ALTER TABLE demandas_x_organizacion
ADD CONSTRAINT fk_demandas_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE demandas_x_organizacion
ADD CONSTRAINT fk_demandas_x_organizacion_demandas_sociales
      FOREIGN KEY(id_demandasocial)
	  REFERENCES demandas_sociales(id_demanda);

ALTER TABLE organizacion
ADD CONSTRAINT fk_organizacion_
      FOREIGN KEY(id_tipoorganizacion)
	  REFERENCES organizaciontipo(id_tipoorganizacion);
	  
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

ALTER TABLE forma_difusion_x_alcance_x_organizacion
ADD CONSTRAINT fk_forma_difusion_alcance_org_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE forma_difusion_x_alcance_x_organizacion
ADD CONSTRAINT fk_forma_difusion_alcance_org_forma_de_difusion
      FOREIGN KEY(id_formadifusion)
	  REFERENCES forma_de_difusion(id_formadifusion);

ALTER TABLE forma_difusion_x_alcance_x_organizacion
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

ALTER TABLE modalidad_capac_x_organizacion
ADD CONSTRAINT fk_modalidad_capac_x_organizacion_modalidad_de_capacitacion
      FOREIGN KEY(id_modalidad)
	  REFERENCES modalidad_de_capacitacion(id_modalidad);

ALTER TABLE modalidad_capac_x_organizacion
ADD CONSTRAINT fk_modalidad_capac_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE modo_accionar_x_organizacion
ADD CONSTRAINT fk_modo_accionar_x_organizacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE modo_accionar_x_organizacion
ADD CONSTRAINT fk_modo_accionar_x_organizacion_modo_accionar
      FOREIGN KEY(id_modoaccionar)
	  REFERENCES modo_accionar(id_modoaccionar);

ALTER TABLE momento_evaluacion_x_organizacion
ADD CONSTRAINT fk_momento_evaluacion_x_organizacion_organizacion
      FOREIGN KEY(idorganizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE momento_evaluacion_x_organizacion
ADD CONSTRAINT fk_momento_eval_momplanificacionyevaluacion
      FOREIGN KEY(idmomento)
	  REFERENCES momplanificacionyevaluacion(idmomento);

ALTER TABLE momento_planificacion_x_organizacion
ADD CONSTRAINT fk_momento_planificacion_x_organizacion_organizacion
      FOREIGN KEY(idorganizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE momento_planificacion_x_organizacion
ADD CONSTRAINT fk_momento_plan_momplanificacionyevaluacion
      FOREIGN KEY(idmomento)
	  REFERENCES momplanificacionyevaluacion(idmomento);

ALTER TABLE vinculacionorgsociales
ADD CONSTRAINT fk_vinculacionorgsociales_organizacion_r
      FOREIGN KEY(id_organizacionrelevada)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE vinculacionorgsociales
ADD CONSTRAINT fk_vinculacionorgsociales_organizacion_v
      FOREIGN KEY(id_organizacionvinculada)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE vinculacionorgsociales
ADD CONSTRAINT fk_vinculacionorgsociales_vinculacionmotivos
      FOREIGN KEY(id_motivovinculacion)
	  REFERENCES vinculacionmotivos(id_motivovinculacion);
	  
ALTER TABLE resumenobjorganizacioninterna_x_organizacion
ADD CONSTRAINT fk_resumenobjorganizacioninterna_organizacion
      FOREIGN KEY(idorganizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organismo_en_el_que_esta_registrado
ADD CONSTRAINT fk_organismo_registrado_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organismo_en_el_que_esta_registrado
ADD CONSTRAINT fk_organismo_registrado_organismo
      FOREIGN KEY(id_organismo)
	  REFERENCES organismo(id_organismo);

ALTER TABLE organizacionrelacionada
ADD CONSTRAINT fk_organizacionrelacionada_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE organizacionrelacionada
ADD CONSTRAINT fk_organizacionrelacionada_tipo_org_relac
      FOREIGN KEY(id_tipo)
	  REFERENCES tipoorganizacionrelacionada(id_tipoorganizacionrelacionada);

ALTER TABLE vinculacion
ADD CONSTRAINT fk_vinculacion_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE perfiledad_x_organizacion
ADD CONSTRAINT fk_perfiledad_x_organizacion_organizacion
      FOREIGN KEY(idorganizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE perfiledad_x_organizacion
ADD CONSTRAINT fk_perfiledad_x_organizacion_perfiledad
      FOREIGN KEY(idperfiledad)
	  REFERENCES perfiledad(idperfiledad);
	  
ALTER TABLE problemasociedad_x_organizacion
ADD CONSTRAINT fk_problemasociedad_org_organizacion
      FOREIGN KEY(idorganizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE problemasociedad_x_organizacion
ADD CONSTRAINT fk_problemasociedad_org_problemassociedad
      FOREIGN KEY(idproblemasociedad)
	  REFERENCES problemassociedad(idproblemassociedad);
	  
ALTER TABLE proyecto_x_organizacionrelacionada
ADD CONSTRAINT fk_proyecto_org_relac_proyectos
      FOREIGN KEY(id_proyecto, id_organizacion)
	  REFERENCES proyectos(id_proyecto,id_organizacion);
	  
ALTER TABLE proyecto_x_organizacionrelacionada
ADD CONSTRAINT fk_proyecto_org_relac_organizacionrelacionada
      FOREIGN KEY(id_organizacionrelacionada)
	  REFERENCES organizacionrelacionada(id_organizacionrelacionada);
	  
ALTER TABLE proyectos
ADD CONSTRAINT fk_proyectos_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE quienesefecdem_x_organizacion
ADD CONSTRAINT fk_quienesefecdem_org_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE quienesefecdem_x_organizacion
ADD CONSTRAINT fk_quienesefecdem_org_quienes_ef_dem
      FOREIGN KEY(id_quienes)
	  REFERENCES quienes_efectuan_demandas(id_quienes);

--- testeado
	  
ALTER TABLE recursofinancieronorecextcausas
ADD CONSTRAINT fk_recursofinancieronorecextcausas_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursosfinacierospresup
ADD CONSTRAINT fk_recursosfinacierospresup_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosfinancierosautogfines
ADD CONSTRAINT fk_recursosfinancierosautogfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursosfinancierosautogfines
ADD CONSTRAINT fk_recursosfinancierosautogfines_formas
      FOREIGN KEY(id_formageneracionrecurso)
	  REFERENCES recursosfinancierosautogformas(id_formageneracionrecurso);

ALTER TABLE recursosfinancierosestadofines
ADD CONSTRAINT fk_recursosfinancierosestadofines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursosfinancierosorgintfines
ADD CONSTRAINT fk_recursosfinancierosorgintfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosfinancierosorgintfines
ADD CONSTRAINT fk_recursosfinancierosorgintfines_org_int
      FOREIGN KEY(id_organismointernacional)
	  REFERENCES organismosinternacionales(id_organismointernacional);
	  
ALTER TABLE recursosfinancierosotrosfines
ADD CONSTRAINT fk_recursosfinancierosotrosfines_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosfinancierosotrosfines
ADD CONSTRAINT fk_recursosfinancierosotrosfines_ent_apor
      FOREIGN KEY(id_entidadaportante)
	  REFERENCES entidadesaportantes(id_entidadaportante);
	  
ALTER TABLE recursosfinancierosprivadofines
ADD CONSTRAINT fk_recursosfinancierosprivadofines_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosfinancierosprivadofines
ADD CONSTRAINT fk_recursosfinancierosprivadofines_ent_priv
      FOREIGN KEY(id_entidadsectorprivado)
	  REFERENCES entidadessectorprivado(id_entidadsectorprivado);
	  
ALTER TABLE recursoshumanos
ADD CONSTRAINT fk_recursoshumanos_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursoshumanosdetalle
ADD CONSTRAINT fk_recursoshumanosdetalle_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  
ALTER TABLE recursosmateriales
ADD CONSTRAINT fk_recursosmateriales_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosmateriales
ADD CONSTRAINT fk_recursosmateriales_forma_prop
      FOREIGN KEY(id_formatenenciapropiedad)
	  REFERENCES formatenenciapropiedad(id_formatenenciapropiedad);
	  
ALTER TABLE recursosmaterialesequipamiento
ADD CONSTRAINT fk_recursosmaterialesequipamiento_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE recursosmaterialesequipamiento
ADD CONSTRAINT fk_recursosmaterialesequipamiento_equipamiento
      FOREIGN KEY(id_equipamiento)
	  REFERENCES equipamiento(id_equipamiento);
	  	  
ALTER TABLE vinculacionestadodetalle
ADD CONSTRAINT fk_vinculacionestadodetalle_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE vinculacionestadodetalle
ADD CONSTRAINT fk_vinculacionestadodetalle_dependencia
      FOREIGN KEY(id_dependenciaestado)
	  REFERENCES dependenciaestado(id_dependenciaestado);
	  	  
ALTER TABLE vinculacionestadodetalle
ADD CONSTRAINT fk_vinculacionestadodetalle_vinc_motivo
      FOREIGN KEY(id_motivovinculacion)
	  REFERENCES vinculacionmotivos(id_motivovinculacion);

ALTER TABLE vinculacionotrasorg
ADD CONSTRAINT fk_vinculacionotrasorg_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);

ALTER TABLE vinculacionotrasorg
ADD CONSTRAINT fk_vinculacionotrasorg_dependencia
      FOREIGN KEY(id_otraorganizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE vinculacionotrasorg
ADD CONSTRAINT fk_vinculacionotrasorg_vinc_motivo
      FOREIGN KEY(id_motivovinculacion)
	  REFERENCES vinculacionmotivos(id_motivovinculacion);

ALTER TABLE visionrealidadopinionpoliticasocial
ADD CONSTRAINT fk_visionrealidadopinionpoliticasocial_org
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE visionrealidadopinionpoliticasocial
ADD CONSTRAINT fk_visionrealidadopinionpoliticasocial_opinion
      FOREIGN KEY(id_opinionpoliticasocial)
	  REFERENCES opinionpoliticasocial(id_opinionpoliticasocial);

ALTER TABLE visionproblemascausas
ADD CONSTRAINT fk_visionproblemascausas_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  
ALTER TABLE visonrealidad
ADD CONSTRAINT fk_visonrealidad_organizacion
      FOREIGN KEY(id_organizacion)
	  REFERENCES organizacion(id_organizacion);
	  	  



