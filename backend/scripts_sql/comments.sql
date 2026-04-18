COMMENT ON TABLE organizacion IS 'Tabla que almacena los datos de las organizaciones.';
COMMENT ON COLUMN organizacion.denominacionlegal IS 'campo que almacena la denominación legal.';
COMMENT ON COLUMN organizacion.domiciliolegal IS 'campo que almacena la dirección legal.';
COMMENT ON COLUMN organizacion.domicilioreal IS 'campo que almacena la dirección real.';
COMMENT ON COLUMN organizacion.e_mail IS 'campo que almacena el mail';
COMMENT ON COLUMN organizacion.fax IS 'campo que almacena el número de fax de la organización.';
COMMENT ON COLUMN organizacion.horarios IS 'campo que almacena los horarios de atención o funcionamiento de la organización.';
COMMENT ON COLUMN organizacion.telefonos IS 'campo que almacena los números de teléfono de la organización, utilizados para contacto y comunicación con clientes, proveedores u otras partes interesadas.';
COMMENT ON COLUMN organizacion.id_tipoorganizacion IS 'identificador del tipo de organización';
COMMENT ON TABLE forma_de_difusion IS 'Tabla con el tipo de difusion'
COMMENT ON COLUMN forma_de_difusion.id_formadifusion IS 'identificador del tipo de difusión';
COMMENT ON COLUMN forma_de_difusion.tipo_difusion IS 'campo que almacena el tipo de difusion';

#comentarios para la tabla de recursoshumnos
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

#comentarios de situacion_juridica
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

#comentarios de formatenenciapropiedad

COMMENT ON TABLE formatenenciapropiedad IS 'Catálogo de tipos de tenencia de la propiedad (Propietario, alquiler, etc.)';

COMMENT ON COLUMN formatenenciapropiedad.id_formatenenciapropiedad IS 'ID tipo tenencia (PK)';
COMMENT ON COLUMN formatenenciapropiedad.formatenenciapropiedad IS 'Descripción del tipo de tenencia (ej. Propio, Alquilado)';

#comentarios de recursosmateriales
COMMENT ON TABLE recursosmateriales IS 'Inventario de recursos (libros,hemeroteca, videos) y situación del inmueble por organización';

COMMENT ON COLUMN recursosmateriales.id_organizacion IS 'ID organización (FK)';
COMMENT ON COLUMN recursosmateriales.id_formatenenciapropiedad IS 'ID tipo tenencia (FK a formatenenciapropiedad)';
COMMENT ON COLUMN recursosmateriales.usoexclusivopropiedad IS '¿El inmueble es de uso exclusivo? (Boolean)';
COMMENT ON COLUMN recursosmateriales.cantlibros IS 'Cantidad de libros en biblioteca';
COMMENT ON COLUMN recursosmateriales.canthemeroteca IS 'Cantidad de ejemplares en hemeroteca';
COMMENT ON COLUMN recursosmateriales.cantvideoteca IS 'Cantidad de videos en videoteca';

