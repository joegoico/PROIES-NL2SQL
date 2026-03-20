-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2024-09-21 00:29:52.677

-- tables
-- Table: AUTOR
CREATE TABLE AUTOR (
    nro_autor int  NOT NULL,
    nombre_apellido varchar(30)  NOT NULL,
    CONSTRAINT PK_AUTOR PRIMARY KEY (nro_autor)
);

-- Table: CLIENTE
CREATE TABLE CLIENTE (
    nro_cliente int  NOT NULL,
    nombre varchar(60)  NOT NULL,
    apellido varchar(60)  NOT NULL,
    calle varchar(30)  NOT NULL,
    ciudad varchar(30)  NOT NULL,
    provincia varchar(30)  NOT NULL,
    cod_postal int  NOT NULL,
    telefono_contacto varchar(15)  NOT NULL,
    CONSTRAINT PK_CLIENTE PRIMARY KEY (nro_cliente)
);

-- Table: CONDICION
CREATE TABLE CONDICION (
    id_condicion int  NOT NULL,
    descripcion_cond varchar(60)  NOT NULL,
    CONSTRAINT PK_CONDICION PRIMARY KEY (id_condicion)
);

-- Table: EDITORIAL
CREATE TABLE EDITORIAL (
    id_editorial int  NOT NULL,
    nombre_editorial varchar(60)  NOT NULL,
    CONSTRAINT PK_EDITORIAL PRIMARY KEY (id_editorial)
);

-- Table: LIBRO
CREATE TABLE LIBRO (
    ISBN char(17)  NOT NULL,
    nro_trabajo int  NOT NULL,
    id_editorial int  NOT NULL,
    edicion int  NOT NULL,
    encuadernacion varchar(10)  NOT NULL,
    anio_copyright int  NOT NULL,
    CONSTRAINT PK_LIBRO PRIMARY KEY (ISBN)
);

-- Table: TITULO
CREATE TABLE TITULO (
    nro_trabajo int  NOT NULL,
    titulo varchar(60)  NOT NULL,
    nro_autor int  NOT NULL,
    CONSTRAINT PK_TITULO PRIMARY KEY (nro_trabajo)
);

-- Table: VENTA
CREATE TABLE VENTA (
    id_venta int  NOT NULL,
    fecha_venta date  NOT NULL,
    monto_total_venta decimal(8,2)  NOT NULL,
    nro_tarjeta_credito char(19)  NOT NULL,
    mes_exp int  NOT NULL,
    anio_exp int  NOT NULL,
    nro_cliente int  NOT NULL,
    CONSTRAINT PK_VENTA PRIMARY KEY (id_venta)
);

-- Table: VOLUMEN
CREATE TABLE VOLUMEN (
    id_inventario int  NOT NULL,
    fecha_compra date  NOT NULL,
    precio_venta decimal(8,2)  NOT NULL,
    precio_vendido decimal(8,2)  NULL,
    id_venta int  NULL,
    cod_condicion int  NOT NULL,
    ISBN char(17)  NOT NULL,
    CONSTRAINT PK_VOLUMEN PRIMARY KEY (id_inventario)
);

-- foreign keys
-- Reference: FK_LIBRO_EDITORIAL (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT FK_LIBRO_EDITORIAL
    FOREIGN KEY (id_editorial)
    REFERENCES EDITORIAL (id_editorial)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_LIBRO_TITULO (table: LIBRO)
ALTER TABLE LIBRO ADD CONSTRAINT FK_LIBRO_TITULO
    FOREIGN KEY (nro_trabajo)
    REFERENCES TITULO (nro_trabajo)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_TITULO_AUTOR (table: TITULO)
ALTER TABLE TITULO ADD CONSTRAINT FK_TITULO_AUTOR
    FOREIGN KEY (nro_autor)
    REFERENCES AUTOR (nro_autor)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VENTA_CLIENTE (table: VENTA)
ALTER TABLE VENTA ADD CONSTRAINT FK_VENTA_CLIENTE
    FOREIGN KEY (nro_cliente)
    REFERENCES CLIENTE (nro_cliente)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VOLUMEN_CONDICION (table: VOLUMEN)
ALTER TABLE VOLUMEN ADD CONSTRAINT FK_VOLUMEN_CONDICION
    FOREIGN KEY (cod_condicion)
    REFERENCES CONDICION (id_condicion)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VOLUMEN_LIBRO (table: VOLUMEN)
ALTER TABLE VOLUMEN ADD CONSTRAINT FK_VOLUMEN_LIBRO
    FOREIGN KEY (ISBN)
    REFERENCES LIBRO (ISBN)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: FK_VOLUMEN_VENTA (table: VOLUMEN)
ALTER TABLE VOLUMEN ADD CONSTRAINT FK_VOLUMEN_VENTA
    FOREIGN KEY (id_venta)
    REFERENCES VENTA (id_venta)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;
-- ==========================================
-- COMENTARIOS PARA LA TABLA: AUTOR
-- ==========================================
COMMENT ON TABLE AUTOR IS 'Catálogo de los autores o escritores de los libros.';
COMMENT ON COLUMN AUTOR.nro_autor IS 'Clave primaria del autor.';
COMMENT ON COLUMN AUTOR.nombre_apellido IS 'Nombre completo del autor.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: TITULO
-- ==========================================
COMMENT ON TABLE TITULO IS 'Representa la obra literaria o conceptual (ej. "El Quijote"), independientemente de su edición física.';
COMMENT ON COLUMN TITULO.nro_trabajo IS 'Clave primaria de la obra/título.';
COMMENT ON COLUMN TITULO.titulo IS 'Nombre descriptivo de la obra literaria.';
COMMENT ON COLUMN TITULO.nro_autor IS 'Clave foránea hacia AUTOR. Indica quién escribió esta obra.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: EDITORIAL
-- ==========================================
COMMENT ON TABLE EDITORIAL IS 'Casas editoriales que publican los libros.';
COMMENT ON COLUMN EDITORIAL.id_editorial IS 'Clave primaria de la editorial.';
COMMENT ON COLUMN EDITORIAL.nombre_editorial IS 'Nombre de la empresa editorial (ej. Wiley, Penguin).';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: LIBRO
-- ==========================================
COMMENT ON TABLE LIBRO IS 'Representa una edición física específica de un TITULO publicada por una EDITORIAL.';
COMMENT ON COLUMN LIBRO.ISBN IS 'Clave primaria. Código único internacional de esta edición del libro.';
COMMENT ON COLUMN LIBRO.nro_trabajo IS 'Clave foránea a TITULO. Indica a qué obra conceptual pertenece esta edición.';
COMMENT ON COLUMN LIBRO.id_editorial IS 'Clave foránea a EDITORIAL. Indica quién imprimió esta edición.';
COMMENT ON COLUMN LIBRO.edicion IS 'Número de edición (ej. 1, 2, 3).';
COMMENT ON COLUMN LIBRO.encuadernacion IS 'Tipo de tapa (ej. rústica, dura).';
COMMENT ON COLUMN LIBRO.anio_copyright IS 'Año en que se registró el copyright de esta edición específica.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: CONDICION
-- ==========================================
COMMENT ON TABLE CONDICION IS 'Catálogo de los posibles estados físicos de un ejemplar (ej. Nuevo, Usado, Dañado).';
COMMENT ON COLUMN CONDICION.id_condicion IS 'Clave primaria del estado.';
COMMENT ON COLUMN CONDICION.descripcion_cond IS 'Descripción en texto del estado del ejemplar.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: CLIENTE
-- ==========================================
COMMENT ON TABLE CLIENTE IS 'Personas que han realizado compras en la tienda.';
COMMENT ON COLUMN CLIENTE.nro_cliente IS 'Clave primaria del cliente.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: VENTA
-- ==========================================
COMMENT ON TABLE VENTA IS 'Cabecera de las transacciones de compra realizadas por los clientes.';
COMMENT ON COLUMN VENTA.id_venta IS 'Clave primaria de la transacción.';
COMMENT ON COLUMN VENTA.fecha_venta IS 'Fecha en la que se realizó la operación.';
COMMENT ON COLUMN VENTA.monto_total_venta IS 'Total pagado en la transacción. Moneda local.';
COMMENT ON COLUMN VENTA.nro_cliente IS 'Clave foránea a CLIENTE. Indica quién hizo la compra.';

-- ==========================================
-- COMENTARIOS PARA LA TABLA: VOLUMEN
-- ==========================================
COMMENT ON TABLE VOLUMEN IS 'Representa el inventario real. Cada fila es una copia física individual (ejemplar) de un LIBRO. Usar esta tabla para contar cuántos libros se vendieron o están en stock.';
COMMENT ON COLUMN VOLUMEN.id_inventario IS 'Clave primaria. Identificador único de cada copia física exacta en el depósito.';
COMMENT ON COLUMN VOLUMEN.fecha_compra IS 'Fecha en la que la tienda adquirió este ejemplar para su inventario.';
COMMENT ON COLUMN VOLUMEN.precio_venta IS 'Precio de lista al que se ofrece el ejemplar.';
COMMENT ON COLUMN VOLUMEN.precio_vendido IS 'Precio final al que se vendió el ejemplar. Si es NULL, el ejemplar no se ha vendido y sigue en stock.';
COMMENT ON COLUMN VOLUMEN.id_venta IS 'Clave foránea a VENTA. Si tiene un valor, el ejemplar fue vendido en esa transacción. Si es NULL, está en stock.';
COMMENT ON COLUMN VOLUMEN.cod_condicion IS 'Clave foránea a CONDICION. Indica el estado físico de este ejemplar puntual.';
COMMENT ON COLUMN VOLUMEN.ISBN IS 'Clave foránea a LIBRO. Indica qué edición es esta copia física.';
-- End of file.

