--
-- PostgreSQL database dump
--


INSERT INTO actores VALUES (1, 'Equipos de trabajo');
INSERT INTO actores VALUES (2, 'Beneficiarios / Socios afiliados');
INSERT INTO actores VALUES (3, 'Comisión directiva');
INSERT INTO actores VALUES (4, 'Todos');
INSERT INTO actores VALUES (5, 'Consejo Directivo Sec. Interior');
INSERT INTO actores VALUES (6, 'Otros');
INSERT INTO actores VALUES (7, 'Autoridades Externas');
INSERT INTO actores VALUES (8, 'Congreso de Delegados');
INSERT INTO actores VALUES (9, 'Comité');
INSERT INTO actores VALUES (10, 'Gerente');
INSERT INTO actores VALUES (11, 'Presidente');
INSERT INTO actores VALUES (12, 'Profesores');
INSERT INTO actores VALUES (13, 'Equipos de trabajo junto al padre');
INSERT INTO actores VALUES (14, 'Cuerpo pastoral');
INSERT INTO actores VALUES (15, 'Integrantes de la Congregación');
INSERT INTO actores VALUES (16, 'Unipersonal');
INSERT INTO actores VALUES (17, 'Colaboradores voluntarios');
INSERT INTO actores VALUES (18, 'Pastor y líderes');
INSERT INTO actores VALUES (19, 'Dirección General');
INSERT INTO actores VALUES (20, 'Secretaria');
INSERT INTO actores VALUES (21, 'Miembros de la capilla');
INSERT INTO actores VALUES (22, 'Equipo Técnico');
INSERT INTO actores VALUES (23, 'Consejeros Líderes');
INSERT INTO actores VALUES (24, 'Presidente y tesorero');
INSERT INTO actores VALUES (25, 'director');


--
-- Data for Name: forma_de_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO forma_de_organizacion VALUES (0, 'Grupos de trabajo');
INSERT INTO forma_de_organizacion VALUES (1, 'Comisión');
INSERT INTO forma_de_organizacion VALUES (2, 'Equipos de trabajo y coordinador');
INSERT INTO forma_de_organizacion VALUES (3, 'Combinación de ambas');
INSERT INTO forma_de_organizacion VALUES (4, 'Unipersonal');
INSERT INTO forma_de_organizacion VALUES (6, '2 Secretarios');
INSERT INTO forma_de_organizacion VALUES (7, 'Personas con tareas específicas');
INSERT INTO forma_de_organizacion VALUES (8, 'Mesa Directiva y Reunión de Delegados');
INSERT INTO forma_de_organizacion VALUES (9, 'Agrupación horizontal');
INSERT INTO forma_de_organizacion VALUES (11, 'Equipo de Trabajo');
INSERT INTO forma_de_organizacion VALUES (12, 'Diaconado');
INSERT INTO forma_de_organizacion VALUES (13, 'Junta oficial');
INSERT INTO forma_de_organizacion VALUES (14, 'Distribución equitativa de funciones');
INSERT INTO forma_de_organizacion VALUES (15, 'Delegados de equipo y de grupo');
INSERT INTO forma_de_organizacion VALUES (16, 'Otra');
INSERT INTO forma_de_organizacion VALUES (17, 'Asambleas');
INSERT INTO forma_de_organizacion VALUES (18, 'Grupal con coordinador rotativo');
INSERT INTO forma_de_organizacion VALUES (19, 'Mesa directiva / Consejo Directivo / Asamblea');
INSERT INTO forma_de_organizacion VALUES (20, 'Consejos');
INSERT INTO forma_de_organizacion VALUES (99, '-');


--
-- Data for Name: organizaciontipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organizaciontipo VALUES (1, 'Tipo 1', true, false, false);
INSERT INTO organizaciontipo VALUES (2, 'Tipo 2', false, true, false);
INSERT INTO organizaciontipo VALUES (3, 'Tipo 3', false, false, false);
INSERT INTO organizaciontipo VALUES (4, 'Tipo 4', false, false, true);
INSERT INTO organizaciontipo VALUES (5, 'Tipo 5', false, true, true);


--
-- Data for Name: organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organizacion VALUES (1, 'Tandil Auto Club', 'Av. España 716', 'Av. España 716', '42-3646', '42-3646', NULL, '8 a 12 y 16 a 20 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (2, 'Centro Cultural Chapaleofú', 'Montevideo 672', 'Montevideo 672', '15580346', NULL, 'gaceta@rec.unicen.edu.ar', 'Lunes a Viernes 9 a 12 y 16 a 20', 3, 0, 0);
INSERT INTO organizacion VALUES (3, 'Sindicato del Personal Trabajadores de Industrias Quimicas y Petroquimicas', 'Alberdi 308', 'Alberdi 308', '424988', NULL, NULL, 'de tarde (prácticamente no esta funcionando, casi no se reúnen)', 2, 0, 2);
INSERT INTO organizacion VALUES (4, 'Rotary Club Tandil Norte', 'Belgrano 751', 'Belgrano 751', '425588', NULL, 'granatooscar@ciudad.com.ar', 'Miércoles 21,30 en el Hotel Plaza', 3, 0, 3);
INSERT INTO organizacion VALUES (5, 'Club Social y Deportivo Excursionistas', 'Las Heras 1150', 'Las Heras 1150', '424802', NULL, NULL, '10:00 a 24:00', 3, 0, 0);
INSERT INTO organizacion VALUES (6, 'Sindicato de Mecánicos y afines del Transporte Automotor de la República Argentina', 'Av. Belgrano 665 (Capital Federal)', 'Alem 456 Seccional Tandil (42 país)', NULL, '425681', 'standilr@hotmail.com', '8:30 a 12:30 y 15:00 a 20:00', 2, 0, 3);
INSERT INTO organizacion VALUES (7, 'Asociación de Marcapasos de Tandil', 'Alem 1510', 'Alem 1510', '444023', NULL, NULL, 'LUN Y MIE: 17:00 a 18:30 -  VIE: 10:30 A 12:00', 3, 0, 0);
INSERT INTO organizacion VALUES (8, 'Comisión de Damas Hospital Ramón Santamarina', 'Paz 1400', 'Irigoyen 827', '425815', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (9, 'Asociación Civil Taller Protegido Tandil', '25 de Mayo 339', '25 de Mayo 339', '430851', NULL, 'deltaller@infovia.com.ar', '8 a 12 hs; 16 a 20 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (10, 'Asociación de Hoteles, Restaurantes, Confiterías, Bares y Afines de Tandil', 'Alberdi 136 Planta Alta', 'Echeverría 198', '442792', NULL, 'atandil2004@hotmail.com', '9 a 13', 3, 0, 0);
INSERT INTO organizacion VALUES (11, 'Unión Evangélica de la Argentina - Estrella Belén', 'Charco 1400 (Buenos Aires)', 'Mitre 647', '42121; 449485', NULL, NULL, NULL, 1, 0, 0);
INSERT INTO organizacion VALUES (12, 'Club Los 50', '25 de Mayo 875', '25 de Mayo 875', '435534', NULL, NULL, '13 a 16 hs (verano); 13 a 15 hs. (invierno)', 3, 0, 0);
INSERT INTO organizacion VALUES (13, 'La Bancaria Seccional Tandil', 'San Martin 855', 'San Martin 855', '425600', NULL, NULL, '9 a 13 hs. y 18 a 21 hs.', 2, 0, 93);
INSERT INTO organizacion VALUES (14, 'Club de Planeadores Tandil', 'Constitución 485', 'Constitución 485 - Campo de vuelo Aeródromo (Comandante Olivero, Ruta 74)', NULL, NULL, 'planeadorestandil@hotmail.com', 'jueves a domingo (de escuela, todos los días)', 3, 0, 0);
INSERT INTO organizacion VALUES (15, 'Unión Personal Civil de las Fuerzas Armadas de la República Argentina (PECIFA)', 'Av. Del Valle 930', 'Av. Del Valle 930', '447266', '447266', 'pecifatandil@ciudad.com.ar', '17 a 20 hs. (lunes a viernes)', 2, 0, 91);
INSERT INTO organizacion VALUES (16, 'Centro Gallego de Confraternidad Hispanoargentina de Tandil', 'Av. España 330', 'Av. España 330', '425563', NULL, NULL, '18 a 22 hs; sabados 9 a 12 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (17, 'Grupo de Mujeres sin Moldes', 'No tienen en este momento', NULL, '435431; 15508991', NULL, 'aureliapereyra@yahoo.com.ar', 'No tienen horario establecido', 3, 0, 0);
INSERT INTO organizacion VALUES (18, 'Liga de Lucha contra el Cáncer Tandil', 'San Martín 815', 'Las Heras 778', '42-8275', '42-7680', NULL, 'sin horario', 2, 0, 3);
INSERT INTO organizacion VALUES (19, 'Biblioteca Popular de las Mujeres', 'Rodriguez 289', 'Rodriguez 289', NULL, NULL, 'ligianza@infovia.com.ar', 'lunes a viernes 15 a 18', 3, 0, 0);
INSERT INTO organizacion VALUES (20, 'Unión de Educadores de Tandil', 'San Martín 730 Local 33', 'San Martín 730 Local 33', '44-1275', '44-1275', NULL, 'Lunes a Viernes 9 a 11 y 17 a 19', 2, 0, 5);
INSERT INTO organizacion VALUES (21, 'Agrupación Badminton Tandil', '25 de mayo 749', '25 de mayo 749', '42-0534', NULL, 'fliaberrios@infovia.com.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (22, 'Club Social y Deportivo Unidos de Tandil', 'Sarmiento 429', 'Sarmiento 429', '42-1668', NULL, NULL, '13:00 a 1:00', 3, 0, 0);
INSERT INTO organizacion VALUES (23, 'Club Independiente', 'Avellaneda 709', 'Avellaneda 709', '42-5806', '42-5806', NULL, '10 a 12 y 14 a 22', 3, 0, 0);
INSERT INTO organizacion VALUES (24, 'Club Atlético Banco de la Provincia de Buenos Aires Delegación Zonal Tandil', 'Paraje Pinar de la Sierra. Taborín 1000', 'Paraje Pinar de la Sierra. Taborín 1000', '43-1959', '43-1692', NULL, '8 a 24 hs.', 2, 0, 6);
INSERT INTO organizacion VALUES (25, 'Grupo de Estudios Socio Ambientales GESA', 'Pinto 297 1ro. B', NULL, '44-6510', NULL, 'grupogesa@hotmail.com', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (26, 'Sindicato del Seguro de la República Argentina Delegación Tandil', '9 de julio 142', '9 de julio 142', '43-0588', '42-8174', NULL, '10 a 18 hs.', 2, 0, 7);
INSERT INTO organizacion VALUES (27, 'Unión Trabajadores Hoteleros y Gastronómicos de la República Argentina Seccional Tandil', 'Alberdi 420', 'Alberdi 420', '423982', '423982', NULL, '8:30 a 15:30', 2, 0, 8);
INSERT INTO organizacion VALUES (28, 'Asociación del Trabajador de la Universidad Nacional del Centro de la Pcia. de Bs. As.', 'Pinto 348', 'Pinto 348', '42-0932', '42-0932', 'hlendez@rec.unicen.edu.ar', 'Lua Vie 7 a 14 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (29, 'Centro Social Israelita de Tandil', 'España 544', '-', '42-5944', NULL, NULL, 'Todo el día hay gente (Viven caseros)', 2, 0, 9);
INSERT INTO organizacion VALUES (30, 'Centro Cultural y Tradicionalista Fortín Independencia', 'España 784', 'España 784', '42-7057', '42-5184', NULL, 'funciona cada 15 días', 3, 0, 0);
INSERT INTO organizacion VALUES (31, 'Obizpado de Azul. Parroquia Santa Ana', 'Paz 1436', 'Paz 1436', '43-3238', NULL, NULL, '8 a 20 hs.', 2, 0, 10);
INSERT INTO organizacion VALUES (32, 'Sindicato Unión Obrera Metalúrgica de la República Argentina', 'Rodriguez 1198', 'Rodriguez 1198', '42-6757', '42-6757', NULL, '8 a 12 - 15 a 19 hs', 2, 0, 11);
INSERT INTO organizacion VALUES (33, 'Sociedad Argentina de la Cruz Roja. Filial Tandil', 'Hipólito Yrigoyen 2068. Capital federal', 'San Martín 452', '442746', '42-2746', 'tandil@cruzroja.org.ar', 'lunes a viernes de 9 a 17 hs', 2, 0, 12);
INSERT INTO organizacion VALUES (34, 'Club de Leones Tandil', NULL, 'Hotel Plaza (Pinto 438)', '42-0238', '42-0238', 'imoroquieta@ertach.com.ar', 'no hay horario fijo, se reunen en el hotel los 1º y 3º lunes de cada mes', 2, 0, 96);
INSERT INTO organizacion VALUES (35, 'Asociación Judicial Bonaerense. Delegación Tandil', 'Calle 49 Nro. 488 - La Plata', 'Rodriguez 870', '42-9306', '42-9306', NULL, '16 a 18 hs.', 2, 0, 14);
INSERT INTO organizacion VALUES (36, 'Junta de Estudios Históricos de Tandil', 'San Lorenzo 589', 'San Lorenzo 589', '43-1681', NULL, 'dperez@fch.unicen.edu.ar', 'sin horarios', 3, 0, 0);
INSERT INTO organizacion VALUES (37, 'Fundación de Actores y Colaboradores de Semana Santa', 'Sarmiento 377', 'Sarmiento 377', '44-3434', NULL, 'escenastandil@yahoo.com.ar', 'sin horarios', 3, 0, 0);
INSERT INTO organizacion VALUES (38, 'Asociación Médica de Tandil', 'Pinto 853', 'Pinto 853', '42-8168', NULL, NULL, '14:00 a 16:30', 2, 0, 15);
INSERT INTO organizacion VALUES (39, 'Asociación Amigos de la Cultura', 'Moseñor De Andrea 256', 'RestoBar La Uni', '42-2517 - 42-2504', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (40, 'Asociación Cooperadora Reserva Natural Sierra del Tigre', 'Suiza s/n', 'Suiza s/n', '15550065', NULL, NULL, '8:30 a 9:00 y 18:00 a 20:00', 3, 0, 0);
INSERT INTO organizacion VALUES (41, 'Agrupación Amigos de Carlos Gardel', NULL, 'Arana 838', '42-7609', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (42, 'Círculo de Arte de Tandil', 'Avellaneda 1025 Dto. 8', 'Franklin 188', '44-0344', NULL, 'nidiacarre@hotmail.com', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (43, 'Centro Profesional de Maestros Mayores de Obra y Técnicos de Tandil', 'Rodriguez 345', 'Rodriguez 345', '42-3810', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (44, 'Círculo de Ingenieros de Tandil', 'Rodriguez 345', 'Rodriguez 345', '42-3789', NULL, 'colintan@ciudad.com.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (45, 'Fundación Universidad de Tanil Dr. Osvaldo Zarini', 'Pinto 399', 'Pinto 399', '42-2000', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (46, 'Peña Tradicionalista El Cielito', 'Chacabuco 126', 'Chacabuco 126', '42-1054', NULL, 'elcielitotandil@hotmail.com', 'Lun a vier de 18 a 20 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (47, 'Club Náutico Tandil', 'Av. Avellaneda 37', 'Av. Carlos Saavedra Lamas s/n', '15600540/15526102/15496902', NULL, 'alvsimon@hotmail.com', '11 a 17 hs (LUN A VIERN)', 3, 0, 0);
INSERT INTO organizacion VALUES (48, 'Biblioteca Popular Bernardino Rivadavia', 'San Martín 516', 'San Martín 516', '44-9093', '44-9093', 'bpbr@arnet.com.ar', '9:30 a 19:00 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (49, 'Consejo Profesional de Ciencias Económicas de la provincia de Buenos Aires', 'Yrigoyen 873', 'Yrigoyen 873', '422438/447730/448231', '422438/447730/448231', 'cpcetdil@ciudad.com.ar', '8 a 15 hs', 2, 0, 17);
INSERT INTO organizacion VALUES (50, 'Academia Folklórica Serranías', '14 de julio 155', 'Escuela nro. 53. Barrio Falucho', '446191', NULL, NULL, '21 a 23 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (51, 'Centro Aeromodelista Tandil', 'Monseñor de Andrea 177', NULL, '42-8112', NULL, 'juanp@exa.unicen.edu.ar / cattandil@hotmail.com', NULL, 2, 0, 18);
INSERT INTO organizacion VALUES (52, 'Congregación Protestante de Tandil "Iglesia Luterana Danesa"', 'Maipú 599', 'Maipú 599', '42-7331', NULL, 'olesengorlerox@ciudad.com.ar', 'sin horario fijo', 2, 0, 3);
INSERT INTO organizacion VALUES (53, 'Sindicato de Luz y FuerzaMercedes (B) Seccional Tandil', 'Montevideo 1146', 'Montevideo 1146', '42-4530', '42-4530', NULL, 'Atención afil. 8:00 a 17:00', 2, 0, 19);
INSERT INTO organizacion VALUES (54, 'Colegio de Veterinarios de la Provincia de Buenos Aires Distrito 6', 'Maipú 934', 'Maipú 934', '42-8054', NULL, 'colvet@infovia.com.ar', '9 a 15', 2, 0, 20);
INSERT INTO organizacion VALUES (55, 'Círculo de Suboficiales de las Fuerzas Armadas. Asociación mutual, social, deportiva y cultural.', 'Belgrano 915', 'Belgrano 915', '44-5432', NULL, NULL, '9 a 12 y 18 a 20', 2, 0, 21);
INSERT INTO organizacion VALUES (56, 'Club Social y Deportivo Jorge Newbery', 'Rodriguez 1260', 'Rodriguez 1260', '426504', NULL, NULL, '9 a 24 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (57, 'Asociación Lucha contra la Bulimia y la Anorexia', '9 de julio 1205', '9 de julio 1205', '440300', '440300', 'alubatandil@arnet.com.ar', '8 a 17 hs.', 2, 0, 22);
INSERT INTO organizacion VALUES (58, 'Club Social y Deportivo Juventud Unida', 'Rodriguez 1539', NULL, '426428', NULL, NULL, '8 a 14 hs. - 17 a 23 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (59, 'Asociación de la Pequeña y Mediana Empresa deTandil', 'Irigoyen 850', 'Irigoyen 850', '422924', '422924', 'apymet@yahoo.com.ar', '8 a 18 hs (lunes a viernes) - 8 a 12 hs. (sabados)', 3, 0, 0);
INSERT INTO organizacion VALUES (60, 'Rosadas Voluntarias del Hospital Ramón Santamarina', 'Paz 1400', NULL, '422341', NULL, NULL, '8 1 11 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (61, 'Sindicato de Trabajadores Municipales de Tandil', 'Irigoyen 1059', NULL, '442271', NULL, NULL, '8:30 a 13 hs - 17 a 20 hs. (lunes a sabados)', 3, 0, 0);
INSERT INTO organizacion VALUES (62, 'Aero Club Tandil', 'Las Heras 871', NULL, '445005 / 424223', '433500', 'martapia2002@yahoo.com.ar', 'diurno todos los días', 3, 0, 0);
INSERT INTO organizacion VALUES (63, 'Centro de Jubilados y Pensionados Municipales de Tandil', 'Las Heras 208', 'Las Heras 208', '431462 / 448528', '431462', NULL, '9 a 12 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (64, 'Caritas Santisimo Sacramento', 'Fuerte Independencia 345', 'Fuerte Independencia 345', '425543', NULL, NULL, '8:30a 11 hs. (mar, jue) - 15a 19 hs. (lun, mie)', 5, 0, 23);
INSERT INTO organizacion VALUES (65, 'Club Social y Deportivo Defensores de Belgrano', 'Pinto 47', 'Pinto 47', '428324', NULL, 'clubdefensoresbelgrano@yahoo.com.ar', 'lunes, martes y jueves: a partir de las 20hs', 4, 0, 0);
INSERT INTO organizacion VALUES (66, 'FOETRA (Federación de Obreros y Empleados de Telecomunicaciones de la Rep Arg)', 'Paz 824', 'Paz 824', '430176', '430176', NULL, '7 a 14 hs.', 2, 0, 24);
INSERT INTO organizacion VALUES (67, 'El Hormiguero Cooperativa de Servicios Culturales Limitada', 'Paz 440', 'Paz 440', NULL, NULL, 'hormiguerocoop@argentina.com', 'lunes a viernes de 8 a 22:30 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (68, 'Club de Pesca Tandil', 'San Lorenzo 828', 'San Lorenzo 828', '422782', NULL, NULL, '20 a 22 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (69, 'Asociación Síndrome de Down Tandil', 'Cámara Empresaria - Mitre 856', 'Cámara Empresaria - Mitre 856', NULL, NULL, NULL, '4º viernes de c/mes 21:30 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (70, 'Sindicato Obreros de Maestranza', '9 de Julio 650', '9 de Julio 650', '443561', '9 de Julio 650', NULL, '8 a 15 hs. (lunes a viernes)', 2, 0, 25);
INSERT INTO organizacion VALUES (71, 'Centro Social y Cultural Yugoslavo de Tandil', 'Maipú 271', 'Maipú 271', '421196', NULL, NULL, 'no hay horario fijo', 3, 0, 0);
INSERT INTO organizacion VALUES (72, 'Fundación ALCO (Anónimos Luchadores Contra la Obesidad )', 'Rodríguez 337', 'Rodríguez 337', '440673', NULL, NULL, '17:30 a 18:30 hs (miercoles y sabados)', 2, 0, 0);
INSERT INTO organizacion VALUES (73, 'Club Gimnasia y Esgrima de Tandil', 'Sarmiento 139', 'Sarmiento 139', '424991', NULL, NULL, '9 a 13 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (74, 'APASBA (Asociación de Productores, Asesores de Seguros del Centro de la Pcia. De Bs. As.)', 'Mitre 856', 'Mitre 856', '449171', NULL, 'apasba@ciudad.com.ar', '8:30 a 11 hs lunes a viernes (17 a 19 hs. Martes/jueves)', 2, 0, 27);
INSERT INTO organizacion VALUES (75, 'Asociación Civil Centro de día Manos Abiertas', '9 de julio 87', '9 de julio 87', '422595', NULL, NULL, '8:30 a 16 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (76, 'Cámara Empresaria de Tandil', 'Mitre 856', NULL, '447891/92/93', '447890', 'info@tandil.org', '8:30 a 12 hs - 16 a 20:30 hs', 4, 0, 0);
INSERT INTO organizacion VALUES (77, 'Agrupación por Animales Felices APAF', 'Dorrego 120', 'Dorrego 120', '424345', NULL, NULL, 'No hay horarios fijos', 3, 0, 0);
INSERT INTO organizacion VALUES (78, 'Asociación Regiones Italianas de Tandil', 'Machado 1042', 'Machado 1042', '443530', NULL, NULL, 'Indefinido', 3, 0, 0);
INSERT INTO organizacion VALUES (79, 'Asociación Agente de Propaganda Médica de la República Argentina Seccional Centro de la Prov. De Bs. As.', 'Santamarina 778', 'Santamarina 778', '424008', '424008', 'aapmtandil@ciudad.com.ar', '9-12 y 15:30 a 19:30', 2, 0, 28);
INSERT INTO organizacion VALUES (80, 'Memoria por la vida en democracia', NULL, NULL, '445780 - 446115 - 422511 - 435439', NULL, 'memoria@hotmail.com', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (81, 'Comisión de Apoyo Local a la Oficina del INTA', 'Rodriguez 370', 'Rodriguez 370', '425311', NULL, NULL, '8 a 12 de 14 a 17', 2, 0, 29);
INSERT INTO organizacion VALUES (82, 'Consejo Profesional de la Agrimensura', 'Calle 9 595 - La Plata', NULL, '0221-4951084', NULL, 'postmater@cpa.org.ar', '8:30 a 15:30 hs.', 2, 0, 30);
INSERT INTO organizacion VALUES (83, 'Sindicato de Vendedores Ambulantes de la República Argentina', '9 de Julio 631', NULL, '15589393 / 442296', NULL, NULL, NULL, 2, 0, 31);
INSERT INTO organizacion VALUES (84, 'Círculo de Suboficiales de la Fuerza Aérea Argentina. Asociación Mutual Regional Tandil', '9 de Julio 465', '9 de Julio 465', '447086 / 447032', '447086 / 447032', 'csfaasmrt@ciudad.com.ar', '8:00 a 12:00 hs y 15:00 a 20:00 hs', 2, 0, 32);
INSERT INTO organizacion VALUES (85, 'Sociedad Rural de Tandil', 'Santamarina 479', 'Santamarina 479', '425307 / 423113', '425307 / 423113', 'srtandil@speedy.com.ar', 'Lun a Vie 8 a 12 y 15 a 19:30 - Sáb 8 a 12', 3, 0, 0);
INSERT INTO organizacion VALUES (86, 'Círculo de Ingenieros Agrónomos de Tandil', 'Rodriguez 370', 'Rodriguez 370', '425311', '425311', 'ciat@hotmail.com', '7:30 a 16:30 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (87, 'Rotary Club Tandil Oeste', 'Hotel Dior', 'D. Velez Sarsfield Nro. 38', '422781', NULL, NULL, 'sin horario fijo (permanentemente)', 2, 0, 33);
INSERT INTO organizacion VALUES (88, 'Asociación Canina Tandilense', NULL, 'Av. Marconi 1757', '428759', '428055', 'mirasierras@infovia.com.ar', 'Horario de Comercio', 2, 0, 34);
INSERT INTO organizacion VALUES (89, 'Universidad e la Tercera Edad', 'Gral. Paz 440', 'Gral. Paz 440', '447633', '440008', 'luisgalaso@ciudad.com.ar', '8:00 a 11:00 y 15:30 a 21:00', 3, 0, 0);
INSERT INTO organizacion VALUES (90, 'Centro de Panaderos', 'Mitre 901', NULL, '443662', NULL, NULL, 'Horario de Comercio', 2, 0, 35);
INSERT INTO organizacion VALUES (91, 'Unión Productora de Leche de la Cuenca Mar y Sierra', 'Gral. Paz 996', 'Gral. Paz 996', '421867', '421867', 'cuenca@infovia.com.ar', '8 a 12 y 15 a 19', 3, 0, 0);
INSERT INTO organizacion VALUES (92, 'Asociación de Kinesiólogos de Tandil. Zona VIII', 'San Martín 250', 'San Martín 250', '441711', '430012', NULL, '14 a 17 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (93, 'Asociación de Profesionales del Hospital Ramón Santamarina', 'Paz 1400', 'Paz 1400', '449136', '449136', 'aphrs@infovia.com.ar', '8:00 a 12:00 hs', 2, 0, 36);
INSERT INTO organizacion VALUES (94, 'Asociación Manualistas y Artesanos de Tandil', 'Chacabuco 355', 'Plaza Independencia', '448074 / 428095', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (95, 'Asociación de Abogados de Tandil', 'Irigoyen y Sarmiento', 'Irigoyen y Sarmiento', '442336', NULL, NULL, '9:00 a 13:30 y 17:00 a 19:00', 3, 0, 0);
INSERT INTO organizacion VALUES (96, 'Círculo de Sub-Oficiales Retirados de las FFAA "Sub-Oficial Mayor Cerone"', 'Pellegrini 270', 'Pellegrini 270', '442916', NULL, NULL, '18:00 a 21:30', 3, 0, 0);
INSERT INTO organizacion VALUES (97, 'Rotary Club Tandil', NULL, 'Maipú 566', '447484', '447484', 'marioferragine@ciudad.com.ar', 'reunión semanal Martes 21 hs.', 2, 0, 33);
INSERT INTO organizacion VALUES (98, 'Sociedad Empleados de Comercio de Tandil', 'San Martín 787', 'San Martín 787', '445830', '445830', 'sectandil@speedy.com.ar', '8:00 a 20:30 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (99, 'Sala Abierta de Lectura Infantojuvenil Biblioteca Popular Municipal', 'Chacabuco 729', 'Chacabuco 729', '447044', NULL, 'salalectura@ciudad.com.ar', '9:00 a 12:00 y 15:00 a 19:00 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (100, 'Fundación Casa de Contención Tandil', 'San Lorenzo 27', 'San Lorenzo 27', '428289', '428289', NULL, '24 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (101, 'Los Cardos Rugby Club', 'Paraje Los Laureles', NULL, '406059', '406059', 'loscardos@speedy.com.ar', '15 a 19,30 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (102, 'Sociedad de Damas de Caridad del Sagrado Corazón de Jesús', 'Estrada 48', 'Estrada 48', '423109', NULL, NULL, 'no hay horarios fijos', 4, 0, 0);
INSERT INTO organizacion VALUES (103, 'Tiro Federal de Tandil Brigadier General Martín Rodríguez', 'Lobería y Sandino', 'Lobería y Sandino', NULL, NULL, NULL, '9 a 12 hs. - 14 a 18 hs (Sabados y Domingos)', 3, 0, 0);
INSERT INTO organizacion VALUES (104, 'Sindicato Unión Gráficos de Tandil', 'Montevideo 735', 'Montevideo 735', '448225', '448225', NULL, '18:30 a 20:30 hs (Lunes, miércoles y viernes)', 2, 0, 37);
INSERT INTO organizacion VALUES (105, 'Moto Club Tandil', 'Machado 1357', 'Machado 1357', NULL, NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (106, 'Centro Tandilense de Jubilados y Pensionados', 'Garibaldi 1089', '4 de abril 976', '445020', NULL, NULL, '8:30 a 12 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (107, 'Unión Tranviarios Automotor', 'Moreno  2969 - Capital Federal', '9 de Julio 1557', '15585698', NULL, NULL, '8:30 a 12:30 hs - 16 a 19 hs. (lunes a viernes)', 2, 0, 38);
INSERT INTO organizacion VALUES (108, 'Asociación Tandilense de Basquetbol', 'Juldain 50', 'Juldain 50', '432070', '432070', NULL, '18 a 20 hs. (lunes a viernes)', 5, 0, 39);
INSERT INTO organizacion VALUES (109, 'A.PRO.NO.VID ("Asociación Pro ayuda al No Vidente y disminuido visual")', 'Alsina 1071', 'Alsina 1071', '442757', '442757', 'amilcarapronivid@hotmail.com', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (110, 'Federación Tandilense de Hockey sobre césped y pista', '9 de julio 555 - local 41', '9 de julio 555 - local 41', '433037', NULL, NULL, 'martes 21 hs.', 5, 0, 40);
INSERT INTO organizacion VALUES (111, 'Asociación Celíaca Argentina Filial Tandil', 'Duffau 723', 'Centro de Salud Mental (Hospital R. Santamarina)', '431747', NULL, 'ameliairene@ciudad.com', '2º sabado de cada mes (de marzo a diciembre)', 2, 0, 41);
INSERT INTO organizacion VALUES (112, 'Asociación Espacio Psicoanalítico', 'Monseñor de Andrea 159', NULL, '422931', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (113, 'Asociación Civil Centro de Jubilados y Pensionados Barrio General Belgrano', 'Bariffi e Ituzaingó', 'Bariffi e Ituzaingó', '428206', NULL, NULL, '10 a 12 hs (lun, mier y vier)', 3, 0, 0);
INSERT INTO organizacion VALUES (114, 'Agrupación Folklórica Amaiké', 'Soc. Fomento Bº. Belgrano (Bariffi e Ituzaingó)', 'Bariffi e Ituzaingó', '448283', NULL, NULL, '18 a 20 hs (miercoles y jueves)', 3, 0, 0);
INSERT INTO organizacion VALUES (115, 'Comedor Rinconcito de Luz', 'Juarez 2157', 'Juarez 2157', '445294', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (116, 'Peña "Antonio José Hernet"', 'Nigro 2200', 'Nigro 2200', '424710', NULL, NULL, '18 a 23:30 hs (mar, mier y jue) - 15 a 20:30 hs. (sab)', 3, 0, 0);
INSERT INTO organizacion VALUES (117, 'Centro de Jubilados San Cayetano', 'Argerich 2296', 'Argerich 2296', NULL, NULL, NULL, '15 a 18 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (118, 'Iglesia Evangélica Bautista', 'Colon 1159', NULL, '430950', NULL, 'ibautandil@yahoo.com.ar', '16 hs. en adelante', 2, 0, 42);
INSERT INTO organizacion VALUES (119, 'Biblioteca Popular Ernesto Valor', 'Bariffi e Ituzaingó', 'Bariffi e Ituzaingó', '448283', NULL, 'bibliooss@infovia.com.ar', '16 a 20 hs (lunes a viernes)', 2, 0, 43);
INSERT INTO organizacion VALUES (120, 'Sociedad de Fomento Barrio Palermo', 'Argerich 968', 'Agerich 968', NULL, NULL, NULL, 'Se reunen 1 vez por semana', 3, 0, 0);
INSERT INTO organizacion VALUES (121, 'Agrupación Che Mahuida (gente de la sierra)', NULL, 'Centro Chapaleofú', '15626696 - 432826 (Flia. Huenchul)', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (122, 'Asociación Cultural Sanmartiniana', NULL, NULL, NULL, NULL, NULL, NULL, 2, 0, 44);
INSERT INTO organizacion VALUES (123, 'Cámara Microempresarial de Tandil', 'España 37', 'España 37', '445137', NULL, 'camitandil@hotmail.com', '9:00 a 12:00 y 16:00 a 20:00', 3, 0, 0);
INSERT INTO organizacion VALUES (124, 'Asociación Patronal Conductores de Taxi', 'Camara Empresaria (Mitre 300)', NULL, NULL, NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (125, 'Asociación Amigos de la Cocina Solidaria Ña Amanda', 'Barrio UOM Pasaje 2  1879 Casa 45', 'Barrio UOM Pasaje 2  1879 Casa 45', '435568', NULL, NULL, 'De Lunes a Viernes de 8 a 13 y de 15:30 a 19hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (126, 'Uncas Rugby Club', 'Pje. Los Manantiales s/n', 'Pje. Los Manantiales s/n', '442683', '442683', 'uncasrugbyclub@speedy.com.ar', 'diariamente de 9 a 17hs', 3, 0, 0);
INSERT INTO organizacion VALUES (127, 'Asociación Centro San Francisco de Asis', 'Palacios 1703', 'Palacios 1703', '431937', NULL, 'jardin_sanfrancisco@ciudad.com.ar', '7:30 a 17 hs de lunes a viernes', 3, 0, 0);
INSERT INTO organizacion VALUES (128, 'Asociación Civil Peña  Folklórica El Palenque', 'Machado 1475/81', 'Machado 1475/81', '15499499', NULL, NULL, 'Miercoles y viernes  de 20 a 23 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (129, 'Asociación Civil Nuestra Tierra', 'Mathiasen 481', 'Mathiasen 481', '426337 o 442608', NULL, 'cdnuestratierra@speedy.com. Ar', '7:30 a 18 hs', 4, 0, 0);
INSERT INTO organizacion VALUES (130, 'Agrupación Criollos del Tandil', 'Ezeiza 1099', 'Los Tilos 1250', '434180', NULL, NULL, 'no hay horarios fijos', 3, 0, 0);
INSERT INTO organizacion VALUES (131, 'Iglesia Cristiana Peniel', 'Franklin 1350', 'Franklin 1350', '448162', NULL, NULL, 'de 7:30 a 23:00', 2, 0, 45);
INSERT INTO organizacion VALUES (132, 'Fuerte Independencia Institución Tradicionalista', '4 de Abril 845', NULL, '435573', NULL, NULL, 'de 15 a 19 Martes a Domingos', 3, 0, 0);
INSERT INTO organizacion VALUES (133, 'Sociedad de Fomento Moreno y Arana y Biblioteca Popular Mariano Moreno', 'Uriburu 1549/59', NULL, '429682', NULL, NULL, '8 a 22:30', 4, 0, 0);
INSERT INTO organizacion VALUES (134, 'Asociación Misión Iglesia Pentecostal', 'Montevideo 327', 'Maritorena 650 y 551 (templo en Construcción)', '431254', NULL, NULL, '19:30 a 21 hs.(lun a sab) - 19 a 21 hs. (domingos)', 2, 0, 46);
INSERT INTO organizacion VALUES (135, 'Fundación Tandilense de Lucha Antiaftosa (FUNTALA)', 'Santamarina 473', NULL, '431728', '431728', 'funtalagapar@ciudad.com.ar', 'Lunes a viernes7 a 12 hs. - 16 a  19 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (136, 'Unión Evangélica de la Argentina Anexo Tropezón', 'Mitre 687', 'Piccirilli 687', '15465407', NULL, NULL, '16 a 18 hs. (jueves) - 15 a 19 hs. (sabados)', 1, 11, 0);
INSERT INTO organizacion VALUES (137, 'Misión Iglesia Evangélica Pentecostal "Los Hechos Capítulo II"', 'Navarro 543', 'Navarro 543', '453005', NULL, NULL, '17:30 (mar) - 15 hs.(jue) - 19:30 (vier) - 17 hs.(dom)', 2, 0, 47);
INSERT INTO organizacion VALUES (138, 'Club Social y Deportivo Kramer', 'Kramer 250', 'Kramer 250', NULL, NULL, NULL, '10 a 13:30 hs - 18 a 24 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (139, 'Centro de Inmigrantes de Tandil', 'España 230 (Centro Gallego)', 'Velez Sarfield 149', '15521582', NULL, 'dsprovieri@arnet.com.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (140, 'Club Social y Deportivo La Movediza', 'Formosa 888', 'Formosa 888', '453480', NULL, NULL, 'no tienen horarios fijos, abierto casi todo el día', 3, 0, 0);
INSERT INTO organizacion VALUES (141, 'Sociedad de Fomento Barrio Metalúrgico Tandil', 'Caroliel y Martín García', 'Caroliel y Martín García', NULL, NULL, NULL, 'no tienen horarios fijos', 3, 0, 0);
INSERT INTO organizacion VALUES (142, 'Asociación Civil H.A.C.E.R del Tandil', 'Figueroa 880', 'Figueroa 880', NULL, NULL, NULL, '15 a 18 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (143, 'Biblioteca Popular Bepo Ghezzi', 'Formosa 888', 'Formosa 888', NULL, NULL, 'bibliobepoghezzi@hotmail.com', '15 a 19 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (144, 'Asociación Obrera Minera Argnentina (AOMA)', 'Juan B. Justo 498', 'Juan B. Justo 498', '423701', '423701', NULL, '8:30 a 12 hs - 14 a 19 hs. (lunes a viernes)', 2, 0, 48);
INSERT INTO organizacion VALUES (145, 'Centro de Oficiales Retirados de la Policía de la Pcia. de Bs. As.', 'Olivero 224', 'Olivero 224', '440180', NULL, NULL, 'no tienen horarios', 2, 0, 49);
INSERT INTO organizacion VALUES (194, 'Comisión de Lucha contra Plagas Agrícolas', 'Santamarina 477', 'Santamarina 477', '433382', NULL, NULL, '9 a 12 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (146, 'Asociación de Anestesiología del Centro de la Provincia de Bs.As.', 'Sarmiento 733 1er Piso', 'Sarmiento 733 1er Piso', '431882', '431882', 'aacpba@xaile.com / aacpba@millicom.com.ar', '7:30 a 17 hs.', 3, 0, 50);
INSERT INTO organizacion VALUES (147, 'Asociación Supervisores de la Industria Metalmecánica República Argentina (ASIMRA)', 'Pinto 341', 'Pinto 341', '424035', '424035', 'tandilasimra@yahoo.com.ar', '8:30 a 16:30 hs (lunes a viernes)', 2, 0, 51);
INSERT INTO organizacion VALUES (148, 'Sociedad de Fomento Barrio Parque "La Movediza"', 'Vela 1895', 'Vela 1895', '-', '-', '-', 'de 8 a 11:30 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (149, 'Agrupación Tradicionalista "José Hernandez"', 'Montevideo 562', 'Alem 1084', '448235', '448235', NULL, 'no tienen horarios', 3, 0, 0);
INSERT INTO organizacion VALUES (150, 'Asociación Civil la casa de Juan', 'Uspallata 243', 'Uspallata 243', '15588953', NULL, 'lacasadejuan2002@yahoo.com.ar', '17 a 18:30 hs (lun a vier) - 9 a 13 hs (dom y feriados)', 3, 0, 0);
INSERT INTO organizacion VALUES (151, 'Federación Bonaerense de Tenis de Mesa', 'Pinto y Alem', 'Pinto y Alem', '15521093', NULL, 'federacionbonaerensetm@yahoo.com.ar', '18 a 21 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (152, 'Asociación Tandilense de Patín (ATP)', 'Juldain 35 (Casa del Deporte)', 'Juldain 35 (Casa del Deporte)', '432070', '432070', NULL, '21 a 24 hs. (cada 15 días)', 5, 0, 52);
INSERT INTO organizacion VALUES (153, 'Fraterna Ayuda del Carmen', 'Av. España', 'Alberdi  - Garibaldi', '420679', '422380 (Parroquia)', NULL, '7:30 a 11 hs. (lun a sap) - 14 a 19:30 hs. (lun a vier)', 1, 0, 0);
INSERT INTO organizacion VALUES (154, 'Comedor infantil María del Cielo', 'Pje. Los Rosales 1964', 'Pje. Los Rosales 1964', NULL, NULL, NULL, '18:30 a 19:30 hs (lun a jue) - 10 a 11 hs (vier) - 12 a 13 hs (sab)', 3, 0, 0);
INSERT INTO organizacion VALUES (155, 'Sindicato Unido de Trabajadores de la Industria de aguas y gaseosas (SUTIAGA)', 'Lunghi 774', 'Lunghi 774', '450584', '450584', NULL, 'no tienen horarios (casa de familia)', 2, 0, 53);
INSERT INTO organizacion VALUES (156, 'Biblioteca Popular y Centros de Estudios Tandil', 'Vela 1863', 'Vela 1863', NULL, NULL, NULL, '8 a 12 hs - 14 a 18 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (157, 'Biblioteca Popular Nuestra Señora de Loreto', 'La Pastora 960', 'La Pastora 960', NULL, NULL, NULL, '8:30 a 10:30 hs - 16 a 18 hs (lunes a viernes)', 1, 0, 0);
INSERT INTO organizacion VALUES (158, 'Centro de Jubilados Barrio Parque La Movediza', 'Figueroa 1828', 'Figueroa 1828', '451741', NULL, NULL, '13 a 16 hs (martes) - variados (otros dias)', 3, 0, 0);
INSERT INTO organizacion VALUES (159, 'Colegio de Farmacéuticos de la Pcia. de Bs. As. filial Tandil', 'Pje. Fournier 27', 'Pje. Fournier 27', '448320/21', '448320', 'colegiodefa@speedy.com.ar', '7.30 a 15:30 hs.', 2, 0, 54);
INSERT INTO organizacion VALUES (160, 'Foro Social Tandil XXI', 'H. Irigoyen 662 Piso 1', NULL, NULL, NULL, NULL, 'Lun y juev de 14 a q7 hs. Mar mier y vier de 9 a 12 hs.', 4, 0, 0);
INSERT INTO organizacion VALUES (161, 'Centro Cultural Arabe de Tandil', 'Pellegrini 1170', 'Casa Cuberta entre Italia y Palacios', '420869', NULL, NULL, 'no tienen horario fijo', 3, 0, 0);
INSERT INTO organizacion VALUES (162, 'Centro Vasco Argentino', 'Sarmiento 1079', 'Sarmiento 1079', '422800', NULL, NULL, '17:30 a 20:00', 3, 0, 0);
INSERT INTO organizacion VALUES (163, 'Fundación Apostar a la Vida', NULL, 'Paz 1406', '451113', NULL, NULL, 'jueves 9:30', 2, 0, 55);
INSERT INTO organizacion VALUES (164, 'Sindicato La Fraternidad', 'H. Irigoyen 1938 Cap. Fed', 'Alsina 1139', '445070', NULL, NULL, '17:00 a 20:00', 2, 0, 56);
INSERT INTO organizacion VALUES (165, 'Colegio de Escribanos de la Pcia. de Buenos Aires Delegación Tandil', 'Rodriguez 453', 'Rodriguez 453', '425734', '443422', 'colegiotand@infovia.com.ar', '7 a 13 hs', 2, 0, 57);
INSERT INTO organizacion VALUES (166, 'Asociación Civil Promover, Capacitar y Educar', '9 de Julio 555. Local 30. Galería de Los Puentes', '9 de Julio 555. Local 30. Galería de Los Puentes', '444152', NULL, 'proyectopromover@yahoo.com.ar', 'Martes 9 a 12 hs. Miércoles 15 a 17 hs. Jueves 15 a 18 hs.', 3, 255, 0);
INSERT INTO organizacion VALUES (167, 'Centro de Día Pajaritos de la Calle', 'Fuerte Independencia 357', 'Salustiano Rivas 2153', '441138', NULL, NULL, '9 a 17 hs. (lunes a viernes)', 1, 255, 0);
INSERT INTO organizacion VALUES (168, 'Banco de Alimentos Tandil', 'Independencia 357', 'Ugalde 389', '426724', NULL, 'info@bat.org.ar', '9:30 a 11:30 hs.- 14 a 16 hs.', 1, 255, 0);
INSERT INTO organizacion VALUES (169, 'Hogar Mixto Brigadier Martín Rodriguez', 'Balbín 932', 'Balbín 932', '440854', NULL, NULL, '10 a 18 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (170, 'Asociación Tandilense de Atletismo', 'Juldain 50', 'Juldain 50', '432070', NULL, NULL, 'indefinidos', 2, 0, 58);
INSERT INTO organizacion VALUES (171, 'Centro Náutico del Fuerte', 'Vigil', 'Isla de Bayo - Av. Zarini', NULL, NULL, NULL, '8 a 21 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (172, 'Asociación Católica de Empleadas Adheridas al FACE', 'Avellaneda 150', 'Avellaneda 150', NULL, NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (173, 'Biblioteca Popular y Pública Monseñor Luis J. Actis', 'Venezuela 373', 'Venezuela 373', '446804', NULL, NULL, '9 a 12 hs. - 14 a 19 hs. (lunes a viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (174, 'Unión Trabajadores de Entidades Deportivas y Civiles (UTEDYC)', 'Alberdi 646 (Capital Federal)', 'Arana 1038', '426144', '426144', NULL, '8 a 13 hs.', 5, 0, 59);
INSERT INTO organizacion VALUES (175, 'Iglesia Internacional del Evangelio Cuadrangular', 'Paz 167', 'Paz 167', NULL, NULL, NULL, '18:30 a 20:30 hs. (mar y jue) - 9 a 13 hs (dom) - 20 a 24 hs. (sab)', 5, 0, 60);
INSERT INTO organizacion VALUES (176, 'Colegio de Psicólogos Distrito Octavo de la Pcia. de Bs. As.', '9 de julio 732 (Azul)', '9 de julio 732 (Azul)', '(02281) 433522', '(02281) 433522', 'distriocho@copetel.com.ar', '9 a 12:30 hs (lun, mar y mier) - 15 a 19 hs (jue y vier)', 2, 0, 61);
INSERT INTO organizacion VALUES (177, 'Asociación Civil Campamentos Educativos: Padre José Koltun', 'Av Santamarina 878', 'Domicilio de cada programa', '425579', '425579', 'raimomario@yahoo.com.ar', 'horarios de los programas', 4, 0, 0);
INSERT INTO organizacion VALUES (178, 'Comunidad Cristiana de Buenos Aires', 'Machado 220', 'Machado 220', '444992', '444992', 'aeprada@infovia.com.ar', '24 hs.', 2, 0, 62);
INSERT INTO organizacion VALUES (179, 'Centro Polideportivo Cultural y Social Tandil Fer', 'Chevalier 365', 'Chevalier 365', '15635324', '447104', 'narodin@exa.unicen.edu.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (180, 'Colectividad e Inmigrantes del Paraguay', NULL, '9 de julio 1180 (particular: 425837)', NULL, NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (181, 'Club Social, Deportivo y Biblioteca Rivadavia', 'Av. Perón 1346', NULL, '428646', NULL, NULL, '17:30 en adelante', 3, 0, 0);
INSERT INTO organizacion VALUES (182, 'Centro de Día Mailen', NULL, NULL, '15621720 - 15552505', NULL, 'mailentandil@yahoo.com.ar', '9 a 17 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (183, 'Asociación Civil Grupo Misionera Pachacamac', 'Fuerte Independencia 345', 'M. de Andrea 360', '449401', NULL, 'gnpachacamac@yahoo.com', 'sin horario fijo', 3, 0, 0);
INSERT INTO organizacion VALUES (184, 'Unión Argentina de Trabajadores Rurales y Estibadores (UATRE) Sec. 50a', '4 de Abril 1117', '4 de Abril 1117', '431794', '431794', NULL, NULL, 2, 0, 63);
INSERT INTO organizacion VALUES (185, 'Sociedad de Fomento Agrupación Lisandro de La Torre', 'Jujuy 46', 'Jujuy 46', NULL, NULL, NULL, '7 a 15 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (186, 'Asociación Tandilense de Ayuda al Discapacitado (ATAD)', NULL, '4 de abril 1409', '429130', NULL, NULL, '8 a 12 hs. - 13 a 17 hs.', 2, 0, 64);
INSERT INTO organizacion VALUES (187, 'Centros Integrales Humanistas', 'Psaje Fernandez Moreno 539 - Barrio 17 de Agosto', NULL, '15501479', NULL, 'veronicagran@yahoo.es', 'día por medio concurren al barrio', 2, 0, 65);
INSERT INTO organizacion VALUES (188, 'La Comunidad para el Desarrollo Humano', NULL, 'Belgrano 745', '425353', NULL, NULL, NULL, 2, 0, 66);
INSERT INTO organizacion VALUES (189, 'Centro de Jubilados y pensionados Luis Oscar Depau y Biblioteca Popular Martin Fierro', 'Casacuberta 581', 'Casacuberta 581', '431147', NULL, 'bcamfierrotandil@yahoo.com.ar', '10 a 12 hs. Y de 14 a 18 hs', 4, 0, 0);
INSERT INTO organizacion VALUES (190, 'Biblioteca Martín Fierro', 'Casacuberta 581', 'Casacuberta 581', '444857', NULL, NULL, '10 a 16 hs.', 1, 189, 0);
INSERT INTO organizacion VALUES (191, 'PUENTES', 'Santamarina 898', NULL, '425579', NULL, 'puente@yahoo.com.ar; cjuliarena@arnet.com.ar', NULL, 4, 0, 0);
INSERT INTO organizacion VALUES (192, 'Centro de Referencia para Adolescentes Barrio Villa Aguirre', 'Santamarina 898', 'Peyrel y Darragueira', '445579', NULL, NULL, '15 hs. (mar, mier, jue) - 9 hs. (sabados)', 1, 191, 0);
INSERT INTO organizacion VALUES (193, 'Ayuda Mutua de Artritis Rematoidea (A.M.A.R)', 'Gral. Paz 1185 (Provisorio) o Suipacha 51', 'Gral. Paz 1185 (Provisorio) o Suipacha 51', NULL, NULL, NULL, NULL, 2, 0, 67);
INSERT INTO organizacion VALUES (195, 'Mujeres para Ayuda Comunitaria (MAC)', 'Piccirilli 547', 'Piccirilli 547', '450463', NULL, NULL, '8 a 12 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (196, 'Colegio de Asistentes y/o TS de la Pcia. de Bs. As. Distrito Azul', 'Arenales 616 - Azul', 'Arenales 616 - Azul', '(02281) 429129', '(02281) 429129', NULL, NULL, 2, 0, 68);
INSERT INTO organizacion VALUES (197, 'Sociedad de Fomento "Sol Naciente"', 'Lunghi  2111', 'Lunghi  2111', '453399', NULL, 'serv_especiales@hotmail.com', 'no funciona', 3, 0, 0);
INSERT INTO organizacion VALUES (198, 'Centro Productores de Papa Tandil', 'Falucho 865 1º piso', 'Falucho 865 1º piso', '429039', '429039', NULL, '18 a 20:30 hs', 2, 0, 69);
INSERT INTO organizacion VALUES (199, 'Centro de Peluqueros y Peinadores de Tandil', 'Mitre 856 (Cámara Empresaria)', 'Mitre 856 (Cámara Empresaria)', 'los de la Cámara', 'los de la Cámara', NULL, NULL, 2, 0, 70);
INSERT INTO organizacion VALUES (200, 'Centro Acopiadores de Tandil', 'Mitre 856 (Cámara Empresaria)', 'Mitre 856 (Cámara Empresaria)', '437892', NULL, NULL, 'cámara empresaria', 3, 0, 0);
INSERT INTO organizacion VALUES (201, 'Cámara de Turismo de Tandil', 'Mitre 856', 'Mitre 856', '447891', '447890', 'camaraturismo@ciudad.com.ar', '9 a 13 hs. (lunes a viernes)', 2, 0, 0);
INSERT INTO organizacion VALUES (202, 'Complejo Casas de la Esperanza', 'Fuerte Independencia 357', 'S. Rivas 1550', '15490831', NULL, 'casasdelaesperanza@yahoo.com.ar', '24 hs.', 1, 64, 0);
INSERT INTO organizacion VALUES (203, 'Asociación Club Hípico', 'Pinto 636', 'Pinto 636', '448269', NULL, NULL, '8 a 23 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (204, 'Revivir NA (Neuróticos Anónimos)', NULL, 'Machado 1069', NULL, NULL, NULL, 'Lun, Jue, Sab 18:30 a 20', 3, 0, 0);
INSERT INTO organizacion VALUES (205, 'Iglesia Evangélica Asamblea de Dios Filial nro. 5', 'Montiel 931', 'Montiel 931', '444829', NULL, 'sybarra_tandil@hotmail.com', 'Mar 20 a 22, Mie 18 a 19, Jue 20 a 21:30, Sab 20 a 22, Dom 18 a 20', 2, 0, 71);
INSERT INTO organizacion VALUES (206, 'Iglesia Adventista del Séptimo Día', 'Mitre 442', 'Mitre 442', '431345', NULL, NULL, 'Sab 9:30 a 12 y 18 a 19', 2, 0, 72);
INSERT INTO organizacion VALUES (207, 'Asociación Tandilense de Atletas Masters', 'San Lorenzo 1602', 'San Lorenzo 1602', '451912', '427154', 'lemaibañez@infovia.com.arf', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (208, 'Asociación Tandilense de Ajedrez', 'Av. Colón 1341', 'Av. Colón 1341', '449164', '449164', 'bolprop@speedy.com.ar', 'de lunes a domingos', 3, 0, 0);
INSERT INTO organizacion VALUES (209, 'Club Social y Deportivo Imparciales', 'Brandsen 1459', 'Brandsen 1459', NULL, NULL, NULL, 'de tarde hasta 23 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (210, 'Protectora de Animales de Tandil (PAT)', 'Garibaldi 1573', NULL, NULL, '426485', NULL, '9 a 13 hs. - 17 a 19 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (211, 'Sindicato de Choferes de Camiones para el Transporte Automotor de Carga', 'Las Heras 957', 'Las Heras 957', '425262', '425262', NULL, '9 a 17 hs.', 2, 0, 73);
INSERT INTO organizacion VALUES (212, 'Centro Tradicionalista Tandil', 'Chacabuco 1121', 'Chacabuco 1121', '447973 - 451307', NULL, NULL, '18 a 20 hs. (martes, miercoles y viernes)', 3, 0, 0);
INSERT INTO organizacion VALUES (213, 'Asociación Iglesia de Dios en la Argentina', 'Paraná 777 piso 11 - Cap. Fed.', 'Sarmiento 1768', NULL, NULL, NULL, 'diversos', 2, 0, 74);
INSERT INTO organizacion VALUES (214, 'Comisión Municipal de Box', 'Juldain 50 (Casa de deporte)', NULL, '432070', NULL, NULL, '20:30 a 22 hs. (martes)', 3, 0, 0);
INSERT INTO organizacion VALUES (215, 'Liga Agraria de Fútbol zona la Boca', 'Machado 1271', 'Machado 1271', '449160', '449160', NULL, '19 a 23 hs.', 4, 0, 0);
INSERT INTO organizacion VALUES (216, 'Sindicato de Obreros y Empleados de la Educación y la Minoridad (SOEME)', 'Calle 1 Nº 1115', 'Montevideo 743', NULL, NULL, NULL, '17 a 18 hs (martes) - 10:30 a 11:30 hs. (miercoles)', 2, 0, 75);
INSERT INTO organizacion VALUES (217, 'Iglesia Evangélica Pentecostal Argentina', 'Ituzaingó 158', 'Ituzaingó 158', '445819', NULL, NULL, '13 a 22 hs (lunes a domingos)', 2, 0, 0);
INSERT INTO organizacion VALUES (218, 'Club Atlético y Biblioteca Ferrocarril Sud', 'Colón y Arana', 'Colón y Arana', '424332', '424332', NULL, '9 a12 y de 16a 20 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (219, 'Biblioteca Popular "Juan Antonio Salceda"', 'Arana 1015', 'Arana 1015', '424332', '424332', 'bibliotecajasalceda@yahoo.com.ar', '15 a 19 hs.', 3, 218, 0);
INSERT INTO organizacion VALUES (220, 'Club Social y Deportivo Talleres', 'San Martín 1248', 'San Martín 1248', '422739', NULL, NULL, '10 a 1 hs.', 4, 0, 0);
INSERT INTO organizacion VALUES (221, 'Biblioteca Alfonsina Storni', 'San Martín 1248', 'San Martín 1248', '422739', NULL, 'bibliotecaalfonsina@yahoo.com.ar', 'Lunes a viernes 15 a 19 hs.', 1, 220, 0);
INSERT INTO organizacion VALUES (222, 'Federación de Entidades de Bien Público', 'Machado 1069', 'Machado 1069', NULL, NULL, NULL, '14 a 18 hs.', 4, 0, 0);
INSERT INTO organizacion VALUES (223, 'Asociación Tandilense de Apoyo al Trasplante', 'Vigil 179', 'Vigil 179', '450456', NULL, 'atat_???@yahoo.com.ar (confuso)', '8 a 12 hs', 2, 0, 76);
INSERT INTO organizacion VALUES (224, 'Sindicato de Trabajadores de Obras Sanitarias Tandil', 'Dinamarca 1198', 'Dinamarca 1198', '428624', '428624', NULL, '10 a 12 y 16 a 18', 2, 0, 77);
INSERT INTO organizacion VALUES (225, 'Mujeres para Ayuda Comunitaria', 'Av. Machado 1069', 'Av. Machado 1069', NULL, NULL, 'mactnd@hotmail.com', 'Lunes, miercoles y viernes 16 a 18', 3, 0, 0);
INSERT INTO organizacion VALUES (226, 'Aeropuerto Asociación Civil', 'Pasaje Chopen 106', 'Pasaje Chopen 106', '440670-1563827', NULL, 'aeropuertoac@ciudad.com.ar', 'Lunes a Viernes 16:30 a 19:30', 3, 0, 0);
INSERT INTO organizacion VALUES (227, 'Cámara del Transporte Automotor de la Provincia de Buenos Aires Filial Tandil', 'Calle 7 Nro. 755 Piso 10 (La Plata)', NULL, '02293-15520588', NULL, 'elisso@ciudad.com.ar', NULL, 2, 0, 78);
INSERT INTO organizacion VALUES (228, 'Escuela Científica Basilio', 'Paraguay 27', 'Paraguay 27', '443075', NULL, NULL, '17 a 20 hs. De lunes a sábados', 2, 0, 92);
INSERT INTO organizacion VALUES (229, 'Centro de Jubilados y Pensionados de Villa Italia', 'Ameghino 334', 'Ameghino 334', '433044', NULL, NULL, '8:30 a 11:30', 3, 0, 0);
INSERT INTO organizacion VALUES (230, 'Instituto Belgraniano de Tandil', NULL, '9 de Julio 208', '431324', NULL, 'ernestowatther@infovia.com.ar', '9 a 12 y 16 a 19', 2, 0, 79);
INSERT INTO organizacion VALUES (231, 'Liga de Amas de Casa, Consumidores y Usuarios de la Rep. Arg Filial Tandil', 'Basilico 376', 'Basilico 376', '45-1113', NULL, 'fernandabidauri@yahoo.com.ar', 'Todo el dia de lunes a domingo', 2, 0, 94);
INSERT INTO organizacion VALUES (232, 'Casa de la Madre Asociación Civil', 'Garibaldi 473', 'Garibaldi 473', '432078', NULL, NULL, 'Durante todo el día', 4, 0, 0);
INSERT INTO organizacion VALUES (233, 'Casa de la Madre Sola', 'Garibaldi 473', 'Garibaldi 473', '432078', NULL, NULL, 'las 24 hrs.', 1, 232, 0);
INSERT INTO organizacion VALUES (234, 'Pequeño Hogar Fantasías de Colores', '14 de Julio 431', NULL, '422064', NULL, NULL, 'todo el dia', 1, 232, 0);
INSERT INTO organizacion VALUES (235, 'Club Fluminence', '11 de Septiembre 851', '11 de Septiembre 851', NULL, NULL, NULL, '10 a 14 y 18 a 01', 3, 0, 0);
INSERT INTO organizacion VALUES (236, 'Sociedad de Fomento Barrio General Belgrano', 'Bariffi e Ituzaingo', 'Bariffi e Ituzaingo', '448283', NULL, 'biblioteca_valor@hotmail.com', '8 a 20 hs,  Lun a Vie', 4, 0, 0);
INSERT INTO organizacion VALUES (237, 'Federación de Entidades de Salud', NULL, 'Brandsen 1148', '426733', NULL, NULL, NULL, 4, 0, 0);
INSERT INTO organizacion VALUES (238, 'Centro de Jubilados y Pensionados Fraternales Sección Tandil Roca', 'Alsina 1139', 'Alsina 1139', '445070', NULL, NULL, 'Lun, Mie y Vie 17 a 19', 2, 164, 56);
INSERT INTO organizacion VALUES (239, 'Asociación de Duatlón y Triatlón de Tandil', 'Juldain 35', 'Juldain 35', '432070', '432070', NULL, '16 a 21 hs', 2, 0, 81);
INSERT INTO organizacion VALUES (240, 'Tandil Cycles Club', 'Colombia 1389', 'Colombia 1389', NULL, NULL, NULL, 'Viernes de 19 a 24', 3, 0, 0);
INSERT INTO organizacion VALUES (241, 'Capilla Nuestra Señora de los Dolores', 'Fuerte Independencia 357', 'Venezuela 366', '426924', NULL, 'caritasdolores@hotmail.com', 'lun a vier 9:30 a 192hs. ;lunes, mar, juev y vier14 a 17 hs.', 1, NULL, 0);
INSERT INTO organizacion VALUES (242, 'Capilla Nuestra Señora de Guadalupe', 'Chile 950', 'Chile  950', '446751', NULL, NULL, '16 a 19 hs (lunes a viernes)', 1, NULL, 0);
INSERT INTO organizacion VALUES (243, 'Capilla San José Obrero', 'Constitución 950', 'Constitución 950', NULL, NULL, NULL, '16 a 18 hs.', 1, 0, 0);
INSERT INTO organizacion VALUES (244, 'Circulo de Suboficiales y Agentes de la Policía Bonaerense', 'Las Heras 1044', 'Las Heras 1044', NULL, NULL, NULL, '8 a 16 hs. (lun a vier) - 8 a 12 hs. (sabado)', 2, 0, 82);
INSERT INTO organizacion VALUES (245, 'Comedor Infantil "La Felicidad de un Niño"', 'Pozos y Costa Rica', 'Pozos y Costa Rica', '428785 (particular)', NULL, NULL, '9 a 14 hs (sap y dom) - 9 a 12 hs. (lun, mier y vier)', 3, 0, 0);
INSERT INTO organizacion VALUES (246, 'Federación Agraria Argentina', 'Marconi 1334', 'Marconi 1334', '43-1534', '43-1534', NULL, '8 a 16 hs. (lun a vier)', 2, 0, 83);
INSERT INTO organizacion VALUES (247, 'Biblioteca Popular Barrio 25 de Mayo', 'San Francisco 2148', 'San Francisco 2148', NULL, NULL, 'bibliotecabarrio25demayo@yahoo.com.ar', 'lunes a viernes 14,30 a 18 hs. Lunes, miércoles y viernes 9 a 11 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (248, 'Asociación Civil de Profesionales y Técnicos "Etica y Participación"', 'Montevideo 579', 'Montevideo 579', '447512', NULL, 'ctc0316@infovia.com.ar', '9 a 12:30 hs. - 17 a 21:30 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (249, 'Iglesia Evangélica Arca de Noe de Tandil', 'Santa María de Oro 204', 'Fragata Sarmiento 1352', '430916', NULL, NULL, 'En cualquier horario', 3, 0, 0);
INSERT INTO organizacion VALUES (250, 'Iglesia de Jesucristo de los Ultimos Días', 'avellaneda 1736', 'Avellaneda 1736', '424094', NULL, NULL, NULL, 2, 0, 0);
INSERT INTO organizacion VALUES (251, 'Asociación Evangélica Misionera', 'Ugalde 2069', 'Ugalde 2069', '15640623', NULL, 'impactoargentina@hotmail.com', 'DOM de 10 a 18 y SAB 19:30', 5, 0, 84);
INSERT INTO organizacion VALUES (252, 'Fundación Pequeños Hogares Tandil', 'Sandino 122', NULL, '442193', NULL, 'fundhogares@ciudad.com.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (253, 'Sociedad de Fomento Unión y Progreso y Biblioteca Domingo Faustino Sarmiento', 'Quintana 450', 'Quintana 450', NULL, NULL, NULL, '8 a 23', 4, 0, 0);
INSERT INTO organizacion VALUES (254, 'Biblioteca Popular domingo Faustino Sarmiento', 'Quintana 450', 'Quintana 450', '453372', NULL, 'bibliotecasarmiento1940@yahoo.com.ar', '9a 12 y 17:00 a 20:00 (lunes a viernes)', 3, 253, 0);
INSERT INTO organizacion VALUES (255, 'Asociación Civil y Ayuda Solidaria', 'Fuerte Independencia 375', 'Fuerte Independencia 375', '430760', NULL, NULL, NULL, 4, 0, 0);
INSERT INTO organizacion VALUES (256, 'La Iglesia de Jesucristo de los Santos de los Ultimos Días', 'Pasteur 250', 'Pasteur 250', '453276', '453276', NULL, 'Domingo de 9 a 12', 2, 0, 86);
INSERT INTO organizacion VALUES (257, 'Capilla San Cayetano', 'San Francisco 2148', 'San Francisco 2148', NULL, NULL, NULL, '8 a 20 hs.', 1, NULL, 0);
INSERT INTO organizacion VALUES (258, 'Asociación Civil Museo del Juguete', 'Lisandro de la Torre 1130', 'Paz 440', '451800', NULL, 'museojuguetetandil@hotmail.com', ' Lunes a viernes 8 a 10- 18 a 20', 3, 0, 0);
INSERT INTO organizacion VALUES (259, 'Asociación de Pastoral Universitaria Tandil', 'Fuerte Independencia 345', 'Fuerte Independencia 357', '446476', NULL, NULL, NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (260, 'Flor de Murga', 'montevideo 1161', 'montevideo 1161', '446415', NULL, NULL, 'no hay. Viven en la org.', 3, 0, 0);
INSERT INTO organizacion VALUES (261, 'Asociación civil Docentes por un mañana (EDUCERE)', 'San Martín 357', 'San Martín 357', '423746', NULL, 'educere@ciudad.com', 'de 9 a 13hs de lunes a viernes', 3, 0, 0);
INSERT INTO organizacion VALUES (262, 'Fundación para la Educación y el Trabajo', 'Richieri 598', 'Richieri 598', '440283', '440283', 'institutotandil@hotmail.com', '1:20 a 20:20 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (263, 'Asociació Civil Casa del Niño en la calle. Granja Los Pibes', 'Paraje El Centinela', 'Paraje El Centinela', '15545992', NULL, NULL, 'de 10:00 a 18:00 hs', 3, 0, 0);
INSERT INTO organizacion VALUES (264, 'Asociaciación de Bibliotecas Populares de Tandilia', 'Av. Rivadavia 351', NULL, '427383', NULL, 'tcdehesa@yahoo.es    abptandilia@yahoo.com.ar', NULL, 3, 0, 0);
INSERT INTO organizacion VALUES (265, 'Grupo de autoayuda "volver a Empezar"', 'Santamarina 840 (Centro cult Almafuerte)', 'Santamarina 840 (Centro cult Almafuerte)', '15504603', '-', 'sony412005@hotmail.com', '1º lyns de c/mes 16 a 18hs, 3º sábado de c/mes 18 a 20hs', 3, 0, 0);
INSERT INTO organizacion VALUES (266, 'Club de Leones Tandil', NULL, 'Hotel Plaza (Pinto 438)', '420238', '420238', 'imoroquieta@ertach.com.ar', 'No hay horario fijo de atención, se reunen los 1º y 3º lunes de cada mes en el Hotel y alli reciben la correspondencia', 2, 0, NULL);
INSERT INTO organizacion VALUES (267, 'Camara del Transporte Automotor, Pcia. de Bs As. Filial Tandil', 'Calle 7 nº 755, piso 10. La Plata', 'Av. Brasil 444', '427488', '427488', NULL, '8 a 13', 2, 0, 78);
INSERT INTO organizacion VALUES (268, 'Asociación Civil defensa a victimas de accidentes (ADEVAT)', 'Lavalle 1312 entrepiso B', '4 de Abril 621', '011 43713324', NULL, 'consultasadebat@hotmail.com / adevat@live.com', '15:30 a 18 hs.', 2, 0, 97);
INSERT INTO organizacion VALUES (269, 'Sociedad de Fomento Barrio San Juan', 'Tucumán y Sáenz Peña.', NULL, '450294', NULL, NULL, '8 a 12hs y de 16 a 20 hs.', 3, 0, 0);
INSERT INTO organizacion VALUES (270, 'Sociedad de Fomento "el Tropezón"', 'Cahel 2349', NULL, '452463', NULL, 'magamiguel@yahoo.com.ar', NULL, 3, 0, 0);


--
-- Data for Name: organizacion_interna; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organizacion_interna VALUES (258, 'Preservar la memoria colectiva en cuanto a actividades y elementos lúdicos', NULL, 'Sin definicion', 'Depende de la actividad.
No se dirigen a grupos específicos', NULL, 'Ambos', 'Comisión: se divide en grupos. Se designan responsables directos pero todos participan (son 10 en comisión y hay 3 ayudantes).
Se designan en reuniones mensuales las actividades a desarrollar.', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'Educativa (realizada por escuelas para desarrollar actividades vinculadas con lo lúdico).', 'Jardines de Infantes y Escuelas', 'Piden cursos, visitas a través del contacto con algún miembro.', 'Las visitas se cumplen todas.
De acuerdo a la demanda', NULL, NULL, NULL, NULL, '27 de Septiembre: Día del Juego. Van a hacer un petitorio a la Municipalidad, al Consejo de Deliberante para establecer una conmemoración por el Día Internacional del Derecho al Juego.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (250, 'Las familias reciben los beneficios eternos del cielo', 'Desde calle Montevideo hasta atrás del dique; y desde calle Cahapzleufú hasta calle Chacabuco.', 'Urbana', 'Todas', NULL, 'Ambos', 'Presidente: en él recaen todas las decisiones y responsabilidades. Presidencia con dos consejeros,; luego, un secretario ejecutivo.
Hay un presidente de cuorum (lider de hombres) que cuenta con sus propios consejeros.', 4, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Problemas económicos', 'Personas que están solas. Personas de la calle. Personas que se encuentran más desafortunadas.', 'Se acercan a la Iglesia', 'Tratan de hablar con ellas y ayudarlas de la forma que puedan. Los beneficios (económicos) salen de las ofrendas de ayuno que realizan los miembros de la Iglesia.', NULL, NULL, NULL, '1-Cómo mejorar la espiritualidad en la santa cena.
2-cómo mejorar la relación familiar.
3-Cómo lograr buenos hábitos dentro de la familia.', 'En casos particulares (como abusos, violaciones) recurren a la justicia', 'www.mormon.org', NULL, NULL);
INSERT INTO organizacion_interna VALUES (10, 'Dar asesoramiento a la parte patronal de hotelería y gastronomía, capacitación gratuita a los empleados de los socios, campañas de promoción de Tandil.
Difundir Tandil como turismo, junto con otras asociaciones y la municipalidad. Formamos parte del Instituto Mixto de Turismo (IMT)', NULL, 'Sin definicion', 'Dueños de establecimientos gastronómicos, hoteleros y sus empleados.', NULL, 'Ambos', 'Hay una comisión directiva que se reune como mínimo una vez por mes. Aparte hay un gerente que participa de la comisión y una secretaría (sólo tareas administrativas).', 1, 'SI', 'A VECES', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Folletería: se trata de materiales que difunden hoteles y empresas turísticas de Tandil. Algunos folletos incluyen mapas.', 'Asesoramiento legal e impositivo, laboral.
Folletería, planos y cursos
Que los socios sean representados ante otras entidades como SADAIC, AADICAPIF', 'Los socios', 'Vía mail o telefonicamente', 'Se responde lo más rápido posible. A veces tienen que llevar la consulta al cuerpo asesor de FEHGRA (Federación Empresaria Hotelera Gastronómica de la República Argentina). El gerente de la asociación es consejera de FEHGRA representando Tandil.', NULL, NULL, NULL, 'Capacitación del personal según intereses de los socios.', 'Si, se trabaja en el IMT. Lo primero es la tasa de turismo. Cuando se termine se va a tener presupuesto y con este se va poder publicitar a Tandil. Esta tasa se va a cobrar a todo lo relacionado con el turismo directa e indirectamente, va a entrar en la tasa de higiene.
EL IMT está conformado por la Cámara de Turismo, Cámara Empresaria, la Asociación de Cabañas, la Asociación de Guias de Turismo y el Municipio.', 'www.hotelesdetandil.com.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (101, 'Educar a los chicos en la parte social, en el compañerismo, buenos modales, que aprendan a compartir, a respetar al otro.', NULL, 'Periurbana', 'A la clase media desde hace 3 años de edad en adelante.
No se hace diferenciación de clases sociales.', NULL, 'Ambos', 'Pasa primero todo por la secretaria y se deriva a reunión de comisión directiva que se hace una vez por semana. Aquí se resuelven todos los temas', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', 'Publicaciones como folletos cuando hay algún evento como fiesta, seven de rugby', 'Referido a lo deportivo, más que nada por indumentaria, horarios de entrenamiento, cuota social.
Los colegios piden el predio para fiestas como dia del niño, fiesta del estudiante.', 'Los socios.
Colegios públicos y privados.', 'Llamando por teléfono o viniendo hasta el club', 'Tratan de solucionarles las dudas que tengan', NULL, NULL, NULL, NULL, 'No, nunca', 'www.loscardosrugbyclub.com.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (242, 'La animación pastoral de la comunidad
a-Trasmición de la fe
b- Culto
c- Brindar servicios asistenciales y promocioanales', 'Zona comprendidad entre Avellaneda, Alvear, Lopez de Osornio y Barrufaldi', 'Urbana', 'Clase media obrera, en general familias', NULL, 'Ambos', 'Hay equipos de trabajo por áreas. Y tienen una secretaria. 
Poseen una comisión directiva. Muchas cosas son por consensos.', 3, 'SI', 'A VECES', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Boletin parroquial.', 'Visita a las familia.
Demanda religiosa y sacramental (bautismo, catequesis, casamiento).
Demanda de instituciones, recursos alimenticios y demás.
Las demandas en cuanto a juventud están cubiertas por los scouts (referente a tener un espacio y actividades para niños y adolescentes)', 'Las familias. Personalmente o telefonicamente.
A veces uno ofrece y ve si hay respuesta o no.
En algunos ya está instalada la demanda y se cubre con el servicio que se ofrece. Ejemplo: necesidad humana, demanda de sentido que que se va orientando desde lo religioso.', 'de manera verbal en secretaria, a través del diálogo, en entrevistas, de lo que se ofrece.', 'Los equipos son voluntarios y estables, lo cual permite sostener los servicios en el tiempo.
Hay cosas que hay que asegurar, luego se hace hasta donde se puede.', NULL, NULL, NULL, 'Contención catequística', 'No recuerda.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (130, 'Agrupación de a caballo. En la Comisión no hay nadie que no ande a caballo. No queremos dejar el caballo de lado porque si se junta gente que no anda a caballo se pierde el objetivo. Segur desfilando es el objetivo.', NULL, 'Rural', 'Toda gente de trabajo, de a caballo. Son 50 entre todos. Les gustaría venir a la sede; hace 2 años que vienen 4 matrimonios de militares a los asdos que hacemos el primer viernes de cada mes.', NULL, 'Ambos', 'El tesorero y el presidente tomamos las decisiones. Tenemos reuniones cuando hay algún problema o cuando los socios piden.', 4, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', NULL, 'No recibimos demandas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (9, 'La integración socio- laboral de la persona con discapacidad a la sociedad', NULL, 'Urbana', 'Personas con discapacidad que no pueden acceder al trabajo competitivo y que tienen edad laboral', NULL, 'Ambos', 'Tienen una comision directiva. Y tambien una coordinación del taller. En la coordinación hay una dirección y un encargado de negocios. Después hay un equipo técnico integrado por terapistas ocupacionales, luego están los supervisores y los operarios.', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Publican aconteceres de la orrganización. (hace mucho que no publican) Al tener una identidad ya no necesitan aparecer tanto en los MCM. Los  pibes difunden la organización con las actividades que hacen.', 'La integración laboral
Capacitacion laboral e intervención terapéutica', 'Las personas con discapacidad y/o sus familiares directos.', 'Se acercan a la organización', 'Lo laboral lo resuelven, es lo que pueden resolvr.
Las demandas de capacitación y apoyo terapéutico serán motivo de próximos proyectos.', NULL, NULL, NULL, 'En las reuniones de equipo hablan sobre la situación de los chicos y de la institución, intercambian ideas, conocimientos , y acurdan qué hacer.
Participan de charlas o cursos específicos a cada proyecto.', 'Para lo laboral están gestionando desde el inicio de la organización.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (243, 'Animación pastoral de la comunidad
a-Trasmisión de la fe
b- Culto
c- Brindar servicios de asistencia y promocionales', 'Entre Av. Buzón, Belgrano, Santamarina y Avellaneda', 'Urbana', 'Todo tipo de familias y personas', NULL, 'Ambos', 'Hay una coordinación general del sacerdote encargado y del equipo de sacerdotes de la Parroquia Santísimo Sacramento. Encargados de las diferentes áreas liturgia, catequesis, Cáritas, administración, etc.). Cada área incorpora los agentes necesarios para llevar las acciones adelante, según las capacidades personales.', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'A VECES', NULL, 'Sistemáticos', NULL, 'SI', 'Boletín "Encuentro": poseen una hoja para la capilla. Tiene tirada mensual.', 'Religiosa: culto, catequesis, etc
Demanda social: asistencia y promoción. Es atendida por Cáritas', 'En general el propio interesado', 'en la secretaría parroquial oralmente', 'los servicios provistos se ofrecen sin dificultad.
Otras demandas que surjan, se busca como orientar.
En general se buscan respuestas desde la institución (por ej. El apoyo escolar)', NULL, NULL, NULL, 'cursos de liturgia, temas bíblicos doctrinales, talleres para Cáritas', 'cree que no.', 'www.santisimo.org.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (259, 'La formación humana y cristiana de los futuros profesionales, acompañamiento y contención a los estudiantes en su periodo formativo, brindar espacios alternativos de la fe, prestar servicios concretos a la comunidad.', NULL, 'Sin definicion', 'Principalmente estudiantes', NULL, 'Ambos', 'Funciona una comisión directiva. Las decisiones se dialogan y se consensua, y cada área incorpora los agentes necesarios para el cumplimiento de las tareas.', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'el programa radial se llama Animo Semanal, dirigido a los universitarios y a la comunidad en general, frecuencia semanal.', 'Formación
Espacios de participación
Vivienda', 'en general el propio interesado, en el caso de la vivienda tambien a veces lo hace la familia o algun conocido', 'Acercándose a la Iglesia o a algún miembro de la institución', 'se responde en la medida de lo posible', NULL, NULL, NULL, 'Doctrina social y de la Iglesia. Temas biblicos.', 'se han gestionado padrinazgos para residentes', 'www.santisimo.org.ar/pastoraluniversitaria', NULL, NULL);
INSERT INTO organizacion_interna VALUES (113, 'Ayudar. Ateción a los jubilados', 'General Belgrano', 'Urbana', 'sólo con abuelos, sin distinción de condición socio-económica. Es un lugar donde el jubilado viene y la pasa bien.', NULL, 'Ambos', 'todos trabajamos entre todos. Las decisiones se toman en reunión de comision.
Comision: Presidente, vicepresidente-,secretario, prosecretario, tesorero, Protesorero,vocales titulares(3), 2 suplentes, 2 revisores de cuentastitulares y suplentes.
Se reúnen el 1º y 3º martes de cada mes', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'A VECES', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'Alimentos, Ropa, calzado, revistas', 'Los jubilados y gente de más de 60 años que no están jubilados.', 'Vienen al centro de jubilados', 'Se hacen gestiones (completan planillas y las envian a PAMI)
Cuando buscan ropa, se les entrega.', NULL, NULL, 'sfz', NULL, 'No', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (254, 'Estar al servicio de la comunidad de Villa Italia y demás.', 'Villa Italia', 'Urbana', 'Clase media, pero se cobija mucho a la clase baja.', NULL, 'Ambos', 'Somos muy pocos los que estamos siempre pendientes: tesorera , presidente.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Radio La Sierra; FM Villa Italia', 'Los diarios para buscar trabajo, talleres, trabajo', 'Los que asisiten', 'nos las dicen', 'Se consiguen diarios para que lean y puedan conseguir trabajo', NULL, NULL, NULL, 'cómo preservar los libros; organización y proyectos', 'Respecto a esta demanda no, pero una vez nos reunimos todas las biliotecas y pedimos una suba en el subsidio para funcionamiento y sueldo.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (64, 'Ver las potencialidades de las familias. Lograr su participación en procesos de participación humana.', NULL, 'Urbana', 'Clase social carenciada y excluída, con ingresos temporarios hasta carencia de participación en ninguna oferta de trabajo', NULL, 'Ambos', 'equipo de coordinador, secretario y tesorero. Prtoyectos, areas de trabjao: es supervisado por quien hace la coordinación. Se reúnen periodicamente. Se trabaja desde un aspecto de capacitación y formación. Trabajo en taller y una parte informativa de las actividades que se están realizando.', 2, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, NULL, NULL, 'SI', 'Martes de 21 a 22 hs. En Radio de la Sierra tienen un programa de radio destinado a la ciudad, con concursos y mensajes.  Lo hacen las mismas voluntarias', 'La autoconstrucción y los alimentos. Las casas de la esperanza: listado de mujeres solas', 'Las familias y las instituciones', 'Concurrencia personal y derivación de las instituciones.', 'Son atendidas desde un equipo integrado por trabajadores sociales y voluntarios.', NULL, NULL, NULL, 'Voluntariado, relación con las familias; cómo hacer un diagnóstico de la comunidad; qué es un proyecto (las organiza cáritas Diosesana)', 'Si. De autoconstrucción, para que la gente pueda obtener la titularidad de sus terrenos: "la vivienda de interés social"', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (15, '1)Obtener el convenio colectivo de trabajo (se está trabajando sobre la carrera del personal. Entes regia la ley 20239 derogada en el 92, aún no poseen un reemplazo)
El CC aborda la reestructuración de las Fuerzas Armadas, ley de marco público.
Ellos recién ingresaron en el convenio colectivo en 2005. a partir de ahí empezaron con el armado de la carrera del personal.
2)La parte salarial, reivindicaciones de trabajo. Eso se da permanentemente', NULL, 'Sin definicion', 'todo personal civil de las Fuerzas Armadas: prefectura, gendarmería, fuerza aérea, marina, ejército, etc.
Desde que empieza la carrera laboral hasta que se jubilan', NULL, 'Ambos', 'Por comisión directiva de carácter regional. Esta seccional está integrada por Tandil, Azul, Mar del Plata con participación de gente de ambas ciudades. En general cada 30 días se reunen. Se discute y por mayoría se toman las decisiones (casi siempre se está de acuerdo)', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, NULL, NULL, 'NO', 'Se manejan con la información que brinda la sede nacional. Desde aquí hacen panfletos y cartelera a modo informativo.', 'Reclamo salarial
A nivel social: salud, obra social y ayudas económicas.
Surgen demandas puntuales de los diferentes compañeros, como algún reclamo', 'los afiliados', 'de manera verbal', 'el nivel de respuesta es buna, del uno al 10: un 7. hay veces que tenés reclamos que no pasan por tu decisión, su resolución no está a tu alcance, como por ejemplo la carrera profesional. Por ahí presentas el reclamo pero no das la solución porque la decisión es de terceros.', NULL, NULL, NULL, NULL, 'si. Acaban de juntar firmas para un petitorio con 12 puntos a elevar a Buenos Aires con diversos items: salariales, obra social, convenio colectivo.
No es una práctica habitual, ya que la mayoría lo hace PECIFA Nacional a través del gobierno nacional.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (126, 'Ser un club social y deportivo donde tratan de brindarle a la sociedad, enfocado hacia los chicos, un espacio donde a través del deporte puedan tener una elección de vida sana y acompañar la vida escolar del rugby, hockey y tenis', NULL, 'Urbana', 'Todas las clases sociales', NULL, 'Ambos', 'Comisión Directiva con 13-14 miembros. Se divide en dos o tres departamentos. 1)El Consejo Directivo está formado por 5 personas incluido el Tesorero y el Secretario., que se reunen semanalmente los lunes durante 2 horas y resuelven las obligaciones de mayor importancia. 2)Departamento legal se dedica a lo que es la parte de seguros, relacionado con lo impostivio: Están el Secretarios, el representante legal y el contador. 3) Dto. de mantenimiento, 2 miembros de la comisión directiva se encargan del control del personal.4) Comisión de Deporte, sector más importante, involucra a 3 personas, 1 por disciplina, ellas intercambian las ideas con todos los entrenadores, bajan línea de la Comisión Directiva para el año en curso. Esta comisión está en contacto con cada subcomisión y con el Tribunal de disciplina.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'No hay demandas', NULL, NULL, NULL, NULL, NULL, NULL, 'Los cursos tienen que ver con los tres deportes.', 'No contesta', 'www.uncasrugbyclub.com.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (22, '-Cambio de domicilio de la sede.
- Seguir afiliados a la Federación argentina.', NULL, 'Urbana', 'Clase media, comerciantes', NULL, NULL, 'Comisión Directiva; Subcomisión de Casin; Subcomisión de Billar; Subcomisión de ajedrez. Las decisiones se toman en comision Directiva. Se reúnen todas las semnas.', 1, 'SI', 'A VECES', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, NULL, NULL, 'NO', NULL, 'No reciben demandas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (228, 'Reformar y cambiar al individuo, su conducta
Enseñar a ser buenas personas
Buscar un ordenamiento en el terreno humano
Reflexionar sobre la conducta y hasta donde llega el bien y el mal
Alcanzar la verdad empleando la inteligencia y llegar así a la perfección', 'En Tandil su impacto es mínimo, circunscribiéndose a la zona en la que se ubica la sede. En Bs. As y otros lugares poseen mayor capacidad fr organización, por lo cual tiene otro impacto. Aquí el grupo es pequeño, por ello hacemos cosas acotadas.', 'Urbana', '"La escuela no discrimina a nadie. El que llega aquí tiene que aprender y sino se siente incómodo y solo se va. Esta abierta a todo el mundo. Esta enseñanza está al alcance de todos. (...)
Nosotros no señalamos errores sino que enseñamos la práctica del bien y estamos organizados de manera verticalista. Dependemos de una dirección espiritual."', NULL, 'Ambos', 'Directora a cargo, directores espirituales, discipulos colaboradores. "En las reuniones espirituales se concertan los trabajos y el modo de trabajo".', 2, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'A VECES', NULL, 'Eventuales', NULL, 'SI', 'Radio Basilio (no sabia especificar ya que pertenece a la sede central)
publicaciones: todo material especializado sobre la ciencia del espíritu', 'En Tandil: "El ser humano busca la solución  a los problemas. Esta acostumbrado a que le solucionen las cosas. Aca en la Escuela les enseñamos a salir por sus medios, a defenderse con amor, dignidad, virtud, verdad. A encontrar las respuestas que buscan".
Dinero. Ropa. Comida. (Sostiene que gente que está de paso o del barrio plantea esas demandas en la organización y ellos intentan darles respuesta siempre de manera anónima).', '"Las personas se acercan con su inquietud" "Sino vienen ellas..." 
Luego agrega en referencia a las personas que solicitan cualquier tipo de asistencia: "Entre nosotros (los integrantes de la Escuela Científica) no hay necesidad, es gente de paso que solicita o personas que nosotros nos enteramos que necesitan algo, entonces nos organizamos para que pueda acceder."', 'De manera verbal', '"En general si son espirituales siempre se les da respuesta, siempre que la persona se aboque a un cambio. Por eso somos escuela (...) el que encuentra solución no vuelve porque la encontró y no entiende que se trata de una evolución que debe hacer y el que no la encuentra tampoco vuelve..."', NULL, NULL, NULL, '1-Estudio de la ciencia espiritual.
2-Toda inquietud es tomada como campo de investigación y con ello se forma espacios de capacitación internos y externos.', 'No', 'www.basilio.org.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (149, '-Difusión de los conocimientos tradicionalistas referidos al hombre de capo con charlas
-Viajes de a caballo a lugares históricos', NULL, 'Sin definicion', 'Con entidades tradicionalistas de todo el pais, especialmente la Provincia de Buenos Aires.
Capataces, mayordomos, domadores', NULL, 'Ambos', 'Comisión Directiva con varios miembros: presidente, vicepresidente, tesorero, secretaria.
Las decisiones se toman entre todos
cena todos los martes y ahí toman resoluciones, en alem 1084', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'NO', NULL, NULL, NULL, 'NO', NULL, 'Colaboración para algun desfile religioso', 'El Padre Troncoso, vienen de Gardey. Participamos "siempre a caballo"', 'Personalmente y telefonicamente o por carta', 'Positivamente. Participamos siempre a caballo', NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (238, 'Atender a los afiliados jubilados o pensionados para consultas o problemas por sueldos que vengan mal pagos. Ahora con ANSES y PAMI van todos ahí.
Tramites', NULL, 'Urbana', 'Es privado , es del sindicato La Fraternidad. Ahora son jubilados y pensionados', NULL, 'Ambos', 'Reunion de Comisión Directiva del Centro de Jubilados y se toma la resolución necesaria', 1, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', NULL, 'Asesoramiento cuando tienen algun problema', 'los socios', 'Se acercan al centro personalmente o telefonicamente', 'Si tienen algún problema llaman a la sede central en Buenos Aires', NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (246, 'Seguir trabajando en la defensa del pequeño y mediano productor,  sin perder de vista los objetivos comunes con las comunidad de Tandil y en trabajos mancomunados con los diferentes sectores', NULL, 'Rural', 'pequeños y medianos productores', NULL, 'Ambos', 'se toman mediante reuniones de consejo', 4, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', 'Diario La Tierra, para los asociados, es de tirada nacional', 'estar siempre frente a la probelmática lical, provincial y nacional que hacen a la producción agropecuaria', 'los productores', 'Se acercan a la entidad', 'si es local se responde con acciones directas, si es provincial o nacional se realizan  gestiones a través de los directores nacionales y los representantes de la institución en diferentes organismos', NULL, NULL, NULL, NULL, 'hemos participado del Congreso Anual Ordinario de Federación Agraria, en donde se efectúa un dictamen general de la actividad agropecuaria para ser elevado a los diferentes organismos provinciales y nacionales.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (47, 'Reunir a todos los aficionados de los deportes naúticos. Fomentar esos deportes y fomentar la práctica del tenis y la actividad social.', NULL, 'Urbana', 'Gente joven entre 25 y 40 años. Profesionales por lo general. Gente de comercios de Tandil', NULL, 'Ambos', 'Comisión directiva, se hacen reuniones quincenales y se distribuyen tareas a realizar.
Participan 10, 12 personas en las reuniones y a 5 se le asignan tareas', 1, 'SI', 'SI', 'A VECES', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'A VECES', 'Nota con el cobro de la cuota social, comentando lo que se está haciendo', 'Capacitación naútica
La parte social del club: pileta, tener un lugar para reunirse, lugar de escuentro.
Tenis', 'Normalmente los socios', 'En el lugar o a través del cobrador', 'Tratando de comunicarse con la persona y dando repsuesta', NULL, NULL, NULL, 'Funcionamiento interno del club
Guarderia naútica o Pañol (funcionamiento)
Charlas de seguridad (uso de chalecos)', 'No', 'www.academiaperezroldan.com.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (260, 'Presentarse en el carnaval;hacer presentaciones solidarias en la comunidad durante todo el año; promover el ingreso de niños, adolescentes y adultos con discapacidad provenientes de todos los sectores ssociales y culturales de la comunidad, prestando mayor atención a aquellos que se encuentren en situación de riesgo social; Armar un archivo de la murga y actividades que tengan que ver con el carnaval para hacer un museo; Organizar actividades recreativas a fin de usar el tiempo libre de forma saludable; Relaconarse con otras organizaciones; Desarrollar un ambiente de cordialidad y solidaridad entre los asociados y propender a la resolución pacífica de conflictos.', NULL, 'Urbana', 'Han venido de todos los niveles sociales y culturales, pero se hace hincapié en los sectores mas en riesgo.
El propósito es que "se mezclen", que no teman juntarse con otras clases sociales.
Acá somos todos iguales Todos nos pintamos la cara del mismo color.
Acá viene gente con títulos, chicos de la universidad, gente que no sabe escribir, trabajadores.', NULL, 'Ambos', 'Las tareas se realizan entre todos. Vamos definiendo las puestas. Cada uno hace según las capacidades. Pardo hace más. Él es que más horas le pone altrabjo, por ejemplo en época de preparación del carnaval. Se cierra la carpintería. La murga sin gente no se podría hcer. Pardo y Ma. Del Carmen dirigen las actividades.', 2, 'SI', 'SI', 'A VECES', 'Eventuales', NULL, NULL, 'A VECES', NULL, 'Eventuales', NULL, 'SI', 'Dos tipos de folletos: unos se reparten en el carnaval. Llevan el mensaje y canción de la murga en ese carnaval. Otros son para contrataciones privadas.', 'Actuación en instituciones de la comunidad
Que les tengamos los pibes, que los contengamos, que vengan a trabajar con nosotros, que les ayudemos con la educación.
Actuaciones en familias, fiestas privadas (solo por este se cobra dinero)', 'Insituciones de la comunidad en la 1ª demanda; en la 2ª los padres de lo pibes o los pibes mismos. También organizaciones como ATAD, Pajaritos de la Calle. La 3ª, la demandan las familias, las empresas para llevar adelante un espectáculo en una fiesta.', 'Generalmente hacen un contacto por teléfono para ver si podemos y cuñales son las condiciones. A veces, después vienen hasta acá, y con otros arreglamos directamente por teléfono.', 'Donde nos llman tratmos de estar. Sólo ponemos condicones mínimas, por ejemplo, transporte y refrigerio. Cuando nos traen pibes tratamos de resolver para que haya lugar. Se hace lo más posible siempre para incorporarlos a las actividades.', NULL, NULL, NULL, 'Ensayos, practica de lo que se va a actuar y bailar en la murga. En epocas de carnaval se ensaya todos los días.', 'Les decimos a las Instituciones que gestionen transporte en Desarrollo Social o Cultura. A veces lo hacemos nosotrs.', 'en proceso', NULL, NULL);
INSERT INTO organizacion_interna VALUES (218, 'Netamente sociale sy deportivos.', 'Cales circundantse al club', 'Urbana', 'Clase trabajdora', NULL, 'Ambos', 'Se reunen en comision y deciden', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, '-Deporte infantil
-Trabajo (a veces los padres de los chicos que vienen al club, realizan algunas changas de electricidad o cortan el pasto y se hacen algunos pesos)', 'Gente allegada a la institución', 'Con toda confianza nos lo dicen.', 'ayudamos en lo que podemos y tratamos de acceder a las demandas', NULL, NULL, NULL, 'Dirigencia deportiva.
Pedagogía', 'No', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (65, '-Practicar el deporte
-Mantener un local adecuado, la subsede para que sirva como lugar de encuentro
-Mantener un alto concepto en la competencia deportiva', 'El barrio del estadio, de la avda Rivadavia, venían de Villa Cordobita, de Tunitas, de Villa Aguirre y de distintos lugares de la ciudad.', 'Urbana', 'Diversificado en toda la ciudad. Clase media-baja a clase media.', NULL, 'Varones', 'Dos reuniones mensuales de comisión directiva. La sub-comisión de pesca se reúne todos los lunes. Se toman las decisiones por consenso.', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'SI', NULL, 'Servicios educativos y culturales, la gente que está ligada al club desde hace años.', 'Los socios.', 'En las reuniones.', 'Las inquietudes siempre se escuchan pero muchas veces por falta de tiempo no se hacen.', NULL, NULL, NULL, 'Escuela de pesca, se les enseña a los niños', 'A través de la Dirección de deportes hemos solicitado algún tipo de tratamiento para la pesca, de apoyo. Hemos tenido poco, pero hemos tenido apoyo del municipio, en esta gestión y en anteriores.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (135, 'Estamos dentro de un programa nacional de control y erradicación de la fiebre aftosa', NULL, 'Rural', 'Productores', NULL, 'Ambos', 'Diregencia: presidente y conformado por las instituciones representativas del campo: Sociedad Rural, Federación Agraria, Ministerio de Asuntos Agrarios, Universidad, Municipalidad, Colegio de Veterinarios, Cuenca Lechera Mar y Sierras, Cooperativas.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'Es muy técnico al ser un programa nacional. Tenés que cumplirlo. Dos veces al año tenés que vacunar. No hay demandas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (139, 'Recuperar las raices y tradiciones', NULL, 'Urbana', 'Población, en general al descendiente del extranjero, del inmigrante', NULL, 'Ambos', 'Comisión directiva compuesta por 20 paises. Cada uno tiene un representante y así se toman las decisiones entre todos', 1, 'NO', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', 'Radio de la Sierra: domingo de 9 a 11 horas
Radio Tandil: 13,30 a 14,30
Son programas de radio de la colectividad italiana', 'Mucha documentación: ciudadania, pasaporte, asistencia en salud. Los italianos, españoles y alemanes disponen de un servicio de farmacia para indigentes.', 'los inmigrantes o familiares de los mismo', 'Se acercan al mismo Tripodi o la gente llama por teléfono', 'Intentamos responder 100%', NULL, NULL, NULL, NULL, 'Acudo a los consulados', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (235, 'Mantener y prestar las instalaciones a entidades que lo necesiten.', 'Cercano al club', 'Urbana', 'Clase media baja, gente de bien, trabajadores, "normal".', NULL, 'Varones', 'Comisión directiva se reune una vez por mes o se reúnen en el buffet.', 1, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'NO', NULL, 'Las instalaciones cuando las necesitan', 'las personas del barrio', 'se acercan', 'se le presta siempre y cuando sea del barrio', NULL, NULL, NULL, NULL, 'No', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (221, '-Promocionar la lectura
-Fomentar la lectura
-Tratar de que los conocimientos y la información lleguen a todos
-Préstamos de libros a domicilio', NULL, 'Sin definicion', 'Está abierto a todos', NULL, 'Ambos', 'Se charla entre todos y se decide por mayoría. Hay reunión de asamblea para renovar la comisión directiva (incluye a los socios).', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'En Radio Tandil. También se difunde en las páginas de internet ABC hoy y Tandil por Tandil', 'Apoyo escolar gratis
Libros, internet
Talleres', 'Los niños que vienen', 'De manera espontánea', 'Tratamos de ayudar y responder a las demandas', NULL, NULL, NULL, '- Bibliotecas virtuales
- Fomento de la lectura
- Cuidados del libro', 'No respecto a estas demandas, pero nos hemos reunido entre bibliotecas para pedir un aumento en el subsidio que se nos otorga.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (133, '-Fomentar el deporte
-Tener sala de primeros auxilios como un centro de salud
-Brindar el espacio a quien lo necesita.', 'Zona 11 (según zonificación municipal)', 'Urbana', 'es abierto a toda la comunidad. Asisten todos los niveles, dependiendo del servicio que se les brinde. En fútbol y baby fútbol los chicos son todos del barrio.
Perfiles económicos variados.
Es necesario tener en cuenta que, si bien se cobra una cuota de socios, o es necesario ser socio para participar de las actividades.', NULL, 'Ambos', 'En comisión directiva, con todos los cargos cubiertos. Tambien hay una subcomisión de fútbol y una subcomisión de biblioteca
Las decisiones se toman en grupo, las tareas ya están asigenadas.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', 'cada 4 meses se saca un boletín con todas las actividades desarrolladas y con novedades útiles. Se reparte en la ciudad, a todas las persoas y se dejan en kioscos, almacenes, etc.', 'Que haya una sala de salud, que aplique la vacuna antigripal', 'Los vecinos, la gente grande', 'se lo solicitan a la bibliotecaria o a los diferentes profesores, de forma directa y personal.', 'Pidiendo lo necesario para poder satisfacer los pedidos concretos. Se trata en las reuniones mensuales y se ve la forma de resolución', NULL, NULL, NULL, NULL, 'Si. En el caso de la sala de salud se envió el proyecto a la municipalidad, pero se obtuvo de respuesta que, además de una gran cercanía con el hospital, hacen falta insumos y personal.
En cuanto a los talleres, se piden al comienzo del año al municipio y, si no hay respuesta, pagan a alguien particular para que los dicte.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (261, 'Actualizar la tarea docente.', NULL, 'Sin definicion', 'Docentes y directores de escuelas públicas.', NULL, 'Ambos', 'Directora ejecutiva. Facilitadoras: son las que están a cargo de los talleres. Gestora de proyectos. Desarrollo institucional.
Comisión directiva.', 2, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Invitaciones ajornadas, folletos, panfletos; cuando tenemos algo para contar.', 'No esusual que las ecuelas se acerquen a demandar, EDUCERE va a las escuelas, que le dicen que esta escuela necesita apoyo y ahí sugen las demandas.', 'ONG''s', 'Por mail o por teléfono.', 'Intentamos dar respuesta.', NULL, NULL, NULL, 'Evaluación, diversidad , aprendizaje y servicios.', 'No, sólo ir detrás de los puntajes para los docentes, pero como los puntos "se compran" nunca obtuvimos una respuesta positiva.', 'www.educere.org.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (120, 'Trtaar d egestionar y trabajar con el Estado para lograr mejorar el barrio', 'Barrio palermo', 'Periurbana', 'Gente del barrio con ingresos medio, o medio-bajos', NULL, 'Ambos', 'Nos basamos en el estatuto. Trabajamos en conjunto. Es muy poca la participación de la gente, se convoca a asambleas barriales pero siempre somosl os mismos.', 1, 'SI', 'SI', 'A VECES', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'Eso se habla directamente con la social del centro de salud. La iniciativa de hacer cosas es propia, es difícil que se acerque a la sociedad de fomento.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Se armaron petitorios para que pase la red cloacal, se haga la plaza y se ilumnine y se ensanche la calle Actis.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (129, 'Educación de los chicos', NULL, 'Urbana', 'Inicialmente se busca que sea como la escuela pública. Queda desfasado porque la cuota aumenta a causa del salario docente. Se apunta a todas las clases sociales. Está armada como cooperativa, se distribuyen los gastos y se saca el valor de la cuota.', NULL, 'Ambos', 'Asociación Civil : la comisión directiva integrada por 12/13 personas, son los representantes de los socios, realizan tareas administrativas.
Representantes legales: manejan la parte pedagógica.
Los docentes son empleados de la asociación', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Lo que mas perturba a los padres es que la cuota no aumente', 'Los padres y los socios', 'Concurriendo al colegio y hablando con la Comisión', 'Escuchan y se intenta dar una respuesta.', NULL, NULL, NULL, 'Ciencias naturales, lengua, CEAD', 'Si, se han pedido subsidios a la provincia y nación sin respuesta favorable', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (202, 'Brindar vivienda a mayores de 65 años. 
Brindar ayuda asistencial ( salud, alimentación, vestimenta) a los que habitan el complejo. 
Promoción a la comunidad (talleres culturales, educación)', 'V illa Gaucho', 'Periurbana', 'Adultos mayores de 60 años de escasos recursos, con deficit habitacional.', NULL, 'Ambos', 'Paloma Cabana como Directora de Cáritas y Raul Troncoso como presidente de la Asociación Civil. Comisión de voluntarios de Cáritas encargados de la gestión de recursos y obra (infraestructura). Voluntarias de cáritas mas abocadas a lo cotidiano de la institución y la coordinadora y las decisiones se toman entre todos.', 3, 'SI', 'A VECES', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, NULL, NULL, 'NO', NULL, 'Demanda económica, para diferentes necesidades', 'Los beneficiarios', 'Las demandas se relaizan a la coordinadora', 'Se trata de responder a todos de alguna manera. Nos manejamos con donaciones, no se cuentan con recursos estables. Se articula con otras organizaciones para la provision de medicamentos.', NULL, NULL, NULL, NULL, 'Si. Articulación con otras instituciones', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (208, 'Difusión, enseñanza y organización de eventos relacionados con el ajedrez.', 'Vela, Gardey, Ayacucho', 'Urbana', 'Es totalmente abierto', NULL, 'Ambos', 'Las decisiones las tomamos entre todos, aunque siempre trato de traer pensadas opciones.', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'SI', 'Para las vacaciones hacemos una cartilla con las actividades a realizar.', 'El material de juego para el hogar y aprender a jugar', 'Los chicos que juegan o quieren jugar al ajedrez', 'Boca a boca nos demandan', 'Como podemos', NULL, NULL, NULL, '1-Reglamento de ajedrez
2-Técnica y práctica
3-Regulación de torneos', 'Si. Hemos conseguido subsidios municipales a través de gestiones que lo hemos aplicado el 50% para equipamiento y el otro 50% para viajes', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (4, 'Colaborar con la comunidad en el aspecto social y refuerzo de proyectos institucionales
El sostenimiento de becas a estudiantes locales. Y también en el nivel internacional, impulsando la existencia de embajadores culturales.', NULL, 'Sin definicion', 'No pueden tipicarse perfiles, desde los inicios y en toda la trayectoria de vida del rotary se ha atendido a todo tipo de personas, sin distinción social, económica, religiosa, etc.', NULL, 'Ambos', 'Están organizados en una comisión directiva, que se reune una vez por mes, momento en el que toman decisiones y resuelven como desarrollar las diferentes tareas que surgen.', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'SI', NULL, 'dinero
muebles
materiales
becas de estudio
referidas a la salud (discapacidad)', 'la comunidad en general', 'personalmente, acercándose a referentes del Rotary', 'Si bien todo cuesta mucho esfuerzo y voluntades, se responde bien... perfecto.', NULL, NULL, NULL, '1-Directivas a nivel internacional
2-Nuevos valores', 'El contacto con el estado municipal ha sido para pedir autorizaciones en dos opportunidades para colocar placas en dos plazas: Rodriguez y del Valle, Rodriguez y 25 de Mayo', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (128, '-Enseñanza de folklore
-Hacer actividades para recaudar fondos.', NULL, 'Urbana', 'Familiar. "hay de todo"', NULL, 'Ambos', 'Reuniones de comisión una vez por semana o cada 15 días. Todo por comisión directiva, salvo los viajes (que se les consulta si quieren y pueden ir)', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'A VECES', NULL, 'Eventuales', NULL, 'NO', NULL, 'cuerpo de baile para colaborar a juntar fondos para otras instituciones.', 'Instituciones y personas particulares', 'Se acercan con cartas para que quede registrado', 'Se colaborabora con la mayoría. Dan un teléfono para confirmar y , si no se puede ir, se responde con cartas.', NULL, NULL, NULL, NULL, 'Realizaron una interpeña en la UNT, hicieron la Comisión con diferentes peñas.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (46, '-Enseñanza de la Danza Tradicional Argentina
-Hacer reuniones sociales', NULL, 'Urbana', '"Todo tipo de personas. Acá viene gene de tunitas, de Villa Aguirre, por decir algunos"', NULL, 'Ambos', 'Comisión directiva y subcomisiones de trabajo.
Las subcomisiones son: de fiesta, de escuela de danzas, de mantenimiento y de vestuario.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', 'Sacaron una publicación para los 50 años de la Peña.
Dolleteria del festival de la sierra y regalmentcion.
Afiches, volantes', '-A través de la sala, el alquiler de la misma.
- Tambien colaboramos con eltidades de beneficencia (Cruz Roja, Centro de Salud menta.)
-Pedido de colaboración con espectáculos folklóricos o de tango de la Peña  (lo hacen otras instituciones)
- Ceder un espacio de enseñanza (becas)', 'Entidades de todo tipo: escuelas, instituciones del mismo rubro, Cruz Roja.', 'Se acercan al lugar', 'Tratan de colaborar a través del espectáculo de la danza folklórica y del tango.', NULL, NULL, NULL, NULL, 'no.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (67, '-"El objetivo primordial es la igualdad de oportunidades en todos los aspectos, sobre todo en el cultural"
-"Ser solidarios, porque ese es el fin", esto tiene que ver con todos los proyectos
"Esos son los ejes"', NULL, 'Sin definicion', 'Es general, no tenemos una categoría.
En yoga y gimnasia son de alto nivel económico, después tenemos todo tipo de gente.
Sí culturalmente formada, esa es una  sensación fuerte.', NULL, 'Ambos', 'Consejo de administración. Consejo dierctivo y ejecutivo. Se toman las decisiones. Además tiene que ver tambien con a qué apunta el proyecto. A la hora de ejecutar tartamos de que uno sea la cabeza del proyecto. "somos bastante organizados en eso"', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, '-formación, contención  (la entrevistada dice que detrás de la formación la gente pide contención)', 'El alumnado', 'acercándose continuamente. Están en contacto directo.', 'Primero vemos si está en nuestras posibilidades. Después por ahí piden cosas que no están en Tandil y no queremos traer a cualquier persona.', NULL, NULL, NULL, '-Cooperativismo.
-Sobre el trabajo de gestión de comisiones directivas eficaces.
Cómo encarar proyectos.', 'no', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (219, '-Sala de lecturas.
-Abierta a los ciudadanos para las consultas.', 'Abarca las escuelas nº 11, 21 y 37', 'Urbana', 'dirigida a la clase trabajadora', NULL, 'Ambos', 'Tratamos de ser equitativos y para tomar decisiones nos reunimos en comisión.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Apoyo escolar', 'los chicos que asisten', 'nos lo dicen', 'De manera informal les damos apoyo escolar y los hacemos sentir como en su casa.', NULL, NULL, NULL, 'Atención al público.
Promoción y lectura', 'Con la Asociación de bibliotecas hemos elaborado proyectos para la asociación de bibliotecas.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (127, 'Promover una progresiva integración del niño y del grupo familiar partiendo de una respuesta pedagógica y social.
Favorecer el trabajo en red.
Enseñar al niño a vivir colectivamente con otros niños y con los adultos que no sean sus padres, aceptando su propia identidad.', 'Palermo, Villa Gaucho y barrio de la Sociedad Rural.', 'Urbana', 'Medio/ bajo en general. Ahora ha cambiado un poco con el advenimiento de los nuevos barrios se ha mezclado y hay gente de nivel medio. Pero hemos comenzado con bajo, bajo. Igual el comedor no baja de 120 chicos.', NULL, 'Ambos', 'Las decisiones son tomadas en equipo, hay mucha delegación, cada una tiene una función. Mobiliario, libros, material didáctico, si se rompe o falta algo lo tienen que remponer.
La coperadora de la Asociación del Jardín se mantiene con una cuota de $8 que casi nadie paga.', 2, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Alimentarias e indumentarias y hasta medicamentos.', 'Las familias, "hay muchas necesidades".', 'Se acercan al Jardín', 'Intentamos dentro de los recursos que tenemos ayudarlos y sino canalizamos los medios por Binestar Social.', NULL, NULL, NULL, 'Ley de educación
Nuevo diseño curricular.
Temas que hacen al trabajo cotidiano: valores, como ser mejores compañeros.
Temas que les interesan a las chicas como cursos de matemáticas, que después actuan como agentes multiplicadores.', 'Si, con Ministerio de Desarrollo Humano que son lo que me mandan las zapatillas , con ellos tenemos becas. Peor sino tuvieramos donaciones, las becas no me alcanzarían. Una vez al año mandan zapatillas.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (13, 'Defensa de los compañeros bancarios
Discusión de convenciones colectivas de trabajo', NULL, 'Urbana', 'Empleados bancarios', NULL, 'Ambos', 'Hay secretariado, formado por 30 compañeros. Se reúnen y resuelven', 1, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', 'Folletos y cartillas que se envían a bancos de la zona', '90% aumento de sueldo y el resto son demandas por otras condiciones de trabajo.

Inspección a los bancos por parte del Ministerio de Trabajo.
Lugares para ir de vacaciones, turismo.', 'Los empelados de banco', 'Vienen a la organización', 'Cuando se consigue un aumento de sueldo es para todos. El reclamo se trata con la comisión interna del banco (en muy pocos hay), luego la comisión lo plantea al banco. Si esto no funciona, presentan al gremio. Es más fácil con los bancos oficiales que con  los otros.', NULL, NULL, 'Diariamente, se tratan los problemas diariamente, hay días que tenés cincuenta despelotes y hay días que ninguno.', NULL, 'Se va al Ministerio de Trabajo cuando hay problemas con los sueldos, condiciones de trabajo e inspecciones. Se mandan cartas por ejemplo porque se va a hacer paro.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (231, 'Incluye no solo la defensa del consumidor respecto a un precio, sino tambien lo que atañe al consumidor como ciudadano: salud, medio ambiente, niñez, vejez, juventud, adicciones, violencia', NULL, 'Sin definicion', 'Es amplio pero siempre tratamos de beneficiar a quienes mas lo necesitan.', NULL, 'Ambos', 'Nos reunimos, nos consultamos, mi opinion tiene mucha importancia por mis años de experiencia', 1, 'SI', 'SI', 'SI', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'SI', 'Radio Tandil, Radio de la Sierra, Cablevision', 'Asesoria por algun producto, tarifas de servicios, alimentos', 'Gentes con problemas', 'Por telefono y boca a boca', 'Nos vinculamos, organizamos y tratamos de responder con nuestros propios medios, y si es un problema legal los contactamos con abogados.', NULL, NULL, NULL, 'Todo lo que atañe a ser ciudadano
Las demandas que nos hacen', 'Ai, por ejemplo una vez impedimos que se instalara una planta de residuos toxicos a traves de marchas', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (262, 'Capacitación para el trabajo', NULL, 'Urbana', 'Clase socioeconómica media y media-baja.', NULL, NULL, 'planificación estratégica. Equipos de conducción.
Comité ejecutivo.
Educación, deporte, recreación, gastronomía, hotelería y turismo.', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Es una revista interna que sale trimestralmente (se adjuntó al formulario)', 'Capacitación.
Becas.', 'Los usuarios', 'Por e-mail o, casi todas, verbalemente.', 'Estamos ante un proceso de certificación de ISO (normas de calidad). Se trata de brindar un trato personalizado e individualizado, contemplando las particularidades de cada uno.', NULL, NULL, NULL, '-Valores.
-Capacitación técnica específica de cada área.', 'Si. Consejo del menor; Procuradura Generl de Provincia; Inspeccion de la rama de Educación Especial.', 'www.institutotamdil.edu.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (125, '- Atender a las necesidades de la gente por hambre, por abrigo, y por educación.
"Es muy duro decir por hambre, pero e la realidad"', NULL, 'Periurbana', 'La gente se acerca y cuando tenemos emergencias por el diario y por la radio, voy en remis o me llevan los del ejército. Teníamos 24 familias, ahora 46 que les damos de comer.', NULL, 'Ambos', 'Las desiciones pasan por mi cbeza. Cuando es algo muy imortante hablo con el secretario y la tesorera. (Se refire a papeles para presenta en algún momento que lo necesite).', 4, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, NULL, NULL, 'NO', NULL, 'Alimentos, insumos para limpieza, vivienda.', 'Se acercan, por lo general, las madres', 'Se acercan al domicilio. Ahora no, pero antes derivaba a la Sala de Saud del Barrio Selvetti.', 'Tenemos para todos los que vienen a buscar.', NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (236, '-Atender los reclamos e inquietudes del barrio.
-Brindar actividades gratuitas al barrio.', 'Barrio Gral. Belgrano.', 'Urbana', 'Personas de todas las edades qu viven en el barrio. También vienen personas de fuera del barrio.', NULL, 'Ambos', 'Se toman las decisiones entre la comisión Directiva . Tenemos reuniones quincenales, ahí nos consultamos entre los que venimos, tomamos las decisiones y nos ayudamos entre todos. No todos vienen. La Comisión estáformada por veinte personas.', 1, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'A VECES', NULL, 'Por inseguridad. Por temas de salud relacionado con la salita. Principalmente por horarios de atención. 
También por los horarios de los talleresq ue se dictan', 'Gente del barrio', 'Viniendo a la Sociedad de fomento.', 'Conversando, tratando de calmar los ánimos. Buscando soluciones.', NULL, NULL, 'como van saliendo las cosas, van surgiendo y las vamos haciendo entre todos.', 'En el 2006 hubo computación.', 'no.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (189, 'Si uno tuviese dinero esto tendria que ser Hogar de Día. Se presento el proyecto en Pami pero se necesitaria mucho dinero.
Abrimos a la gente jóven a través de actividades como apoyo escolar, gimnasia, biblioteca.
También asesoramos y defendemos a los jubilados.', 'Los límites son Colectora Macaya, Cuba y Ceferino Pedersen, Ruta 226', 'Urbana', 'A la clase trabajadora de media para abajo, a los pobres. También a los jubilados de esta zona.', NULL, 'Ambos', 'La comisión directiva se forma por 20 miembros. Hoy se quiere bajar a 10 porque muchos no tomaban parte. Se esta trabajando en modificar el estatuto.
Se toma en cuenta para la toma de decisiones la opinión de los miembros. Se reunen una vez por mes, asisten 10, 11 a las reuniones. A veces no se dan cuenta de lo que se va a hacer.  Muchas veces depositan las responsabilidades en uno, dos o tres. A veces el presidente toma las decisiones, el resto delsiga responsabilidades.', 1, 'SI', 'SI', 'A VECES', 'Eventuales', NULL, NULL, 'SI', NULL, 'Eventuales', NULL, 'NO', 'Se utiliza un espacio en un programa de LU 22 "LA hora de los Jubilados". Es un programa de la Federación que se transmite los días sábados, donde se difunden novedades del Cnetro de Jubialdos.', 'Que se difundan los intereses de los jubildados.
En cuanto a los servicios que brinda la organización, los horarios de la biblioteca, de los otros talleres y servicios.', 'Los jubilados del barrio realizan la primer demanda (difusión de sus intereses)
Las personas del barrio en general realizan la segunda demanda expresada.', 'Directamente al presidente, concurriendo a la institución o com unicandose personalmente.', 'Tratando de solucionar el problema, reclamando ante quien corresponda, por ejemplo ante PAMI o la Municipalidad.', NULL, NULL, NULL, NULL, 'Si, por ejemplo se realizo un proyecto para que PAMI Tandil sea autónomo. También la ordenanza de los geriátricos es producto del proyecto que se realizo aca ("fue un afano"). También nos "afanaron" el proyecto de hacer una Secretaria de Personeria Juridica aca., esto fue en el año 2003. Quedo como que era un proyecto de un concejal, la idea era de un grupo de centros de jubilados.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (159, 'La regulación de la matrícula profesional
La defensa del farmacéutico y su asesoramiento
Brindar capacitaciones', NULL, 'Urbana', NULL, NULL, 'Ambos', 'Primero la comisión directiva; luego el gerente, luego la sra. Encargada de relaciones profesionales, un contador y los empleados administrativos.
Las decisiones principales las toma la comisión directiva (formada por 12 farmacéuticos). Se reúnen una vez a la semana', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Percibir los pagos de las obras sociales
Exigir el cumplimiento de la Ley de farmacéuticos (venta de medicamentos solo en farmacias, exigir que las farmacias sindicales cumplan con el fin con el que fueron creadas: atender a sus miembros solamente)', 'los farmacúticos', 'telefónicamente', 'Se hacen las gestiones necesarias y/o se dan las explicaciones de lo que pasa, cuando es necesario se hacen acciones legales (por. Ej contra los kioscos que venden medicamentos)', NULL, NULL, NULL, 'Relacionados con la salud y el quehacer profesional
Marketing', 'Si. Por ej. Hemos hecho demandas contra la venta de medicamentos fuera de las farmacias, con respecto a las farmacias sindicales por el no cumplimiento de los fines para los cuales fueron creadas, también con respecto al incumplimiento de las obras sociales.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (263, 'El principal objetivo de La Granja es que los pibes sean capaces de transformarse en sujetos capaces de transformar. La idea es que los chicos aprendan y a determinada edad (14-15 años) puedan ellos mismo decidir entre que quieren hacer, salir a robar o trabajar.', NULL, 'Periurbana', 'Son pobres, excluidos. No tienen otra forma de llamarse. EL problema de fonde es la distribución de la riqueza, vienen de generaciones de pobres.', NULL, 'Ambos', 'Las decisiones se toman en reuniones conjuntas con los miembros de la Asociación y con los educadores, los cuales son algunas madres y chicos mas grandes. Igualmente hay veces que se toman decisiones con los casos que van surgiendo, en el día a día.', 2, 'SI', 'A VECES', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Hay una revista que se llama "Voces" y se hace en conjunto con otras dos fundaciones. Se reparte gratuitamente. EN nuestra sección hablamos sobre el zoológico, se saco una nota sobre deserción escolar, de todo un poco.', 'Que se cuide a los chicos, porque no pueden tenerlos, ya sea porque callejean  o porque no tienen para comer.', 'Las mismas madres por lo general. También hablan de las escuelas, de las salas de salud. Ahora también del Area de Infancia del municipio.', 'Las madres llaman por telefono porque les queda lesjos. EN cambio de las escuelas vienen personalmente.', 'Es un proceso, todo chico que tiene ganas se queda. Una vez que los pibes vienen se trata todo de transformación. Lo que falta es involucrar a la s madres a que también participen.', NULL, NULL, NULL, 'Se capacita sobre historia argentina para que logren entender donde estamos parados y por qué.
Se realizan cursos de educadores con base en Paulo Freire', 'No, en lo local no. Por ahí en determinadas ocasiones se va al municipio.. Por ejemplo el caso de la familia Zabaleta cuando se murio la madre, se logro que los chicos no fueran adoptados gracias al trabajo conjunto con el municipio.', 'movimiento chicos del pueblo', NULL, NULL);
INSERT INTO organizacion_interna VALUES (177, 'Contención de niños y adolescentes en situación de riesgo social.
Educación y capacitación de niños y jóvenes de escasos recursos económicos.
Promoción y realización de diversos emprendimientos laborales.
Formación de coordinadores grupales y líderes comunitarios.', 'Proyecto La Tribu en V. Aguirre.. Los otros proyectos son de alcance local.', 'Urbana', 'Niños y adolescentes en situación de riesgo social, también jóvenes de escasos recursos económicos.', NULL, 'Ambos', 'Hay una comisión directiva que se encarga de todo lo que tiene que ver con cuestiones legales para que se mantenga la personería jurídica. Hay un coordinador técnico que articula tareas y todo lo que es articular los programas cada programa tiene su propio coordinador.', 2, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Revista "Voces", producida por La Tribu junto con Granja Los Pibes y Mafalda. 
Afiches en actividades especiales como en un festival de rock.', 'Un lugar, es la demanda de un espacio identitario para ser uno, un espacio de referencia.
Capacitación', 'la población para la cual trabajamos 8niños, adolescentes y jóvenes)', 'Es un ida y vuelta. Por un lado van a la organización. Por otro lado nosostros estamos mucho en la calle, vamos en busca de, estamos en la calle.', 'Respondemos con los proyectos que tenemos. La Tribu por ejemplo, sale de la demanda de la misma población.
Tomamos el emergente social y lo devolvemos a través de un proyecto en la medida en que se puede.', NULL, NULL, NULL, 'Los temas son según los emergentes, tienen que ver generalmente con la función, el rol, la coordinación grupal. 
Relación poder judicial - ONG. 
Violencia. Conetención en situaciones límites', 'Si, por ejemplo articulamos con otras organziaciones, presentando proyectos en provincia y nación para que financien determinados proyectos.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (166, 'Constribuir a la construcción de economía social', NULL, 'Urbana', 'la población con la que trabaja la organizción se caracteriza por ser carente de recursos económicos', NULL, 'Ambos', 'Las decisiones son tomadas de forma horizontal entre la comisión de la organización, el campo promotor y los emprendedores', 2, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, NULL, NULL, 'SI', 'Boletín', 'Microcrédito
Capacitación
Asistencia para la construcción vinculada al emprendimiento
Comercialización de los productos', 'Los mismos emprendedores', 'a través de los promotores, coordinadores de los espacios de vida de centro.', 'Se responde a las demandas evaluando cada situación y a ala capacidad de respuesta y gestión de la organización de recursos.', NULL, NULL, NULL, 'Economía social
Educación popular', 'En algunos casos si, a través de la articulación con otras organizaciones', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (33, 'Prevenir y aliviar con absoluta imparcialidad el sufrimiento humano.', NULL, 'Periurbana', 'Fundamentalmente sectores vulnerables, desde lo económico, social y ecológico.', NULL, 'Ambos', 'La comisión directiva siempre se encuentra predispuesta arecibir propuestas internas (por cualquier integrante de la organización) como externas a la organización. Posteriormente se evalúan posibilidades y se toman las decisiones en el espacio de comisión, que se reune quincinalmente', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Acuden solicitando medicación.
Solicitan vestimenta/hospedaje.
Las escuelas solicitan cursos de primeros auxilios.', 'Las demandas en general son realizadas en forma particular por la persona que requiere el recurso. En ocasiones, son efectuadas por otras organizaciones, fundamentalmente lo relacionado a salud (CAPS, Apronovid)', 'Las demandas son realizadas espontaneamente por las personas interesadas, en la organización; y en algunos casos, a través de referentes institucionales por medio de informes sociales/notas solicitando el o los recursos.', 'De acuerdo a la demanda se evalúan los recursos con los que cuenta la organización y se responde.
En cuanto a los cursos, se van atendiendo las demandas en función de la disponibilidad.', NULL, NULL, NULL, 'Vinculadas a la misión de la organización (atención) contención de situaciones de catástrofe', 'En lo que refiere a salud, se han establecido vínculos (no llegan a ser relaciones sostenidas en el tiempo) con Servicio Social del Hospital Municipal, con los Centros de Salud y con Desarrollo Social.', 'www.cruzrojaargentina.org.ar', NULL, NULL);
INSERT INTO organizacion_interna VALUES (7, 'Dar marcapasos
Prestar servicios en Clínica Chacabuco (inyecciones, curaciones, todo lo relacionado con enfermería).
Banco ortopédico: préstamo de camas, sillas de ruedas, etc.', NULL, 'Sin definicion', 'llegar a todos los asociados. Cualquier persona que quiera asociarse pagando una cuota de $3.', NULL, 'Ambos', 'La comisión toma las decisiones. Es una comisión muy unida. Todos los años se hacen asambleas.
También tenemos 2 asesores médicos cardiólogo y cirujano y un asesor letrado, que asesoran el accionar de la asociación.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', 'Calcos de la institución. Afiches sobre los servicios que brinda la organización.', 'cuestiones relacionadas con el banco ortopédico y enfermería
Servicio de quincho', 'Los socios. Trabajamos puramente con los socios', 'viniendo o llamando a la asociación. Algunos se hacen socios para acceder a los servisios de la asociación.', 'tratamos de responder lo más rápido.', NULL, NULL, NULL, NULL, 'no', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (269, 'Hacer diferentes actividades. (no contestó la pregunta, solo menciono las actividades realizadas)', 'Barrio San Juan', 'Periurbana', 'Todos los vecinos del barrio', NULL, 'Ambos', 'Se organizan en Comisión. La integran 9 personas. Deciden por mayoría.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'cloacas, asfalto, iluminación, abrir la calle quintana, ampliar la sociedad de Fomento, hacer un gimnasio, servicio de regado de las calles.
Edificar y hacer un polideportivo con baños y duchas.', 'los vecinos del barrio', 'verbalmente', NULL, NULL, NULL, NULL, NULL, 'le pidieron a la Provincia y al Municipio que atendieran las demandas y desde Provincia les dijeron que debían presentar un proyecto para poder consegir subsidio.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (247, 'Servicio a la comunidad a través de talleres, como encuadernación, apoyo escolar y préstamo de libros.
Tener sede propia, para poder tner subsidio provincial y tener todos los libros y muebles al alcance de todos.', 'Barrio 25 de Mayo, zona Villa Aguirre, La unión, La Tandilera. Es la única biblioteca de la zona. La más cercana es la Martín Fierro. Estas 2 bibliotecas son las únicas detrás de la ruta 226.', 'Urbana', 'chicos del barrio mayoritariamente (hasta 15-16 años). También adultos que viene a buscar novelas y diarios. También vienen a talleres como el de encuadernación.', NULL, 'Ambos', 'las decisiones se toman en comisión directiva. Hacemos asambleas, se ponen puntos y se discute. Ahí se resuelve o queda pendiente. Se realizan cada un mes. A veces se dificulta que estemos todos o se hace cada 2 meses', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Se hicieron folletos y un albun de fotos  para presentar en la Feria del Libro de Tandil', 'que tengamos libros de estudio para los chicos que van a la escuela. También piden novelas', 'chicos y familias del barrio. Principalmente las mujeres en el caso de las novelas.', 'Vienen acá a la biblioteca y preguntan o piden lo que necesitan.', 'tratamos de conseguirlos. Es muy difícil a vecs porque tenemos poco dinero para comprar libros. Por eso estamos tratando de tener reconocimiento provincial y así acceder a subsidios.', NULL, NULL, NULL, 'Capacitación de CONABIP para líderes de bibliotecas. Las bibliotecas tienen un rol social y comunitario', 'si, hemos hecho gestiones para tener reconocimiento provincial, para luego acceder al reconocimiento nacional. Para esto se articula con la Asociación de Bibliotecas Populares y con Cultura del Municipio.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (241, '-que con la descentralización (1989) no haya que acercarse a la Parroquia de Santísimo Sacramento.', 'Desde Brasil y Buzón hasta la ruta 226. Y desde Pozos hasta Caseros.', 'Urbana', 'Perfil socioeconómico medio, aunque en su mayoría se acerca gente de pocos recursos.', NULL, 'Ambos', 'Se reúnen: el Padre Marcos, Marina (Coordinadora general), Jorgelina (Lic. En trabajo social), por la parte social.
Alejandra y Rodrigo se reúnen por lo religioso.
Tres veces al año se reúnen los cinco.', 20, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'boletín Parroquial', '- Los proyectos y actividades que realizamos están basados en las demandas', 'Las familias del Barrio.', 'Nos las dicen.', 'A través de actividades y proyectos.', NULL, NULL, NULL, '-Voluntariado
-Familia', 'Una vez nos reunimos con los vecinos para que saquen la antena de personal (porque hace mal a la salud). Pero igual no nos escucharon.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (264, 'Objetivos generales:
Fomentar actividades que fortalezcan la vinculación de las instituciones barriales y educativas con las bibliotecas populares.
Promover la formación y capacitación del personal y dirigentes de las bibliotecas populares.
Gestionar actividades culturales que permitan acompañar economicamente el funcionamiento cotidiano de las bibliotecas asociadas de acuerdo a la situación particular de cada una de ellas.
Representar al conjunto de asociaciones ante distintos organismos locales, provinciales, nacionales o internacionales.
Brindar asesoramiento a grupos o personas que deseen conformar bibliotecas populares.
Establecer una red fluida de comunicaciones con bibliotecas zonales para discutir, promover y cambiar impresiones en temas que afecten sus intereses.

Este año:
Conseguir la sede.
Conseguir un subsidio para comprar muebles y gastos varios.
Poder traer gente importante para conferencias (en vistas del aniversario de la Biblioteca Rivadavia)', NULL, 'Urbana', 'Con todos los ciudadanos de Tandil, porque no hay diferencias. Pensemos que hay 20 blibliotecas en Tandil, distribuidas en todos los barrios. Nosotros trabajamos con las bibliotecas y las bibliotecas trabajan con todos.', NULL, 'Ambos', 'Hay una reunión por mes, rotando por las bibliotecas. Las decisiones las toma el presidente y vice (la cabecera nada más). Se toman las decisiones en estas reuniones mensuales. 
Es una comisión directiva formada por delegados de las distintas bibliotecas y presidente, vicepresidente, tesorero, secretario y revisores de cuentas.
Los delegados tienen voz en las reuniones mensuales pero solo tienen voz y voto en asamblea.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', 'Folleto con el logo de laasociación e información sobre las bibliotecas populares de Tandil, su dirección y teléfono, los objetivos de la asociación y la historia.
Videos de todas las bibliotecas. Se muestra en la Feria del Libro de Tandil.', 'estanterias, computadoras, libros.
También asesoramiento de cómo manejar una biblioteca', 'las bibliotecas populares de Tandil. Actualmente son 20. algunas tienen más dificultades que otras.', 'lo tratan en reuniones mensuales a través de los delegados.', 'Siempre les decimos que les vamos a tratar de solucionar el problema. Le buscamos la solución, hacemos gestiones.', NULL, NULL, NULL, '1- asesoramientoa  bibliotecas y dirección de biblioteca (cómo llevar adelantre una biblioteca). Concurre la comisión. Son brindadas por CONABIP', 'si. Por ejemplo, con el Centro de Estudios Luis María Macaya, en CONBIP, y en Provincia cuando la biblioteca no puede acceder al subsidio para pagar al bibliotecario.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (109, '-Rehabilitación e integración del ciego y disminuído visual a la sociedad.
-Promover la independencia.
-Insertar a la sociedad.', NULL, 'Urbana', 'Personas disminuídas visuales y ciegas. Son personas con muchas necesidades.', NULL, 'Ambos', 'Hay una directora que organiza y coordina los talleres. Una comisión Directiva compuesta por presidente, secretaria, vocal titular, vocales suplentes y 9 fiscalizadores', 3, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Certificados de discapacidad,; asesoramiento sobre realización de trámites (gestiones_); Asesoramiento en la utilización de braile y manejo del bastón.
Otras: Demandas habitacionales; alimentación y salud.', 'Personas disminuidas sociales o ciegas, y también sus familiares.', 'Se presentan en la organización y, en algunos casos, el equipo de A. PRO.NO.VID se acercan al domicilio de la persona.', 'Tratan d edar soluión y orientar', NULL, NULL, NULL, 'Congreso de Trabajo social; Jornadas de Trabajo social; foros de discapacidad.', 'Con el Municipio y con el Área de  Integración de la Secretaría de Desarrollo social.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (106, '-Realizar difrentes actividades para los jubilados.
-Entretenimiento para el jubilado.
-Asesoramiento (abogada)', 'Zona centrica mayormente.', 'Urbana', 'Personas de la tercera edad. Clase media. Zona céntrica', NULL, 'Ambos', 'La Comisión está compuesta por presidente, vicepresidente, tesorero, vocales (en total son 21 personas).
Se dividen las tareas en sub-comisiones. En la subcomision de fiestas hacen cenas, y, en la semana del jubilado, realizan un festival y recaudan alimentos para los asilos de ancianos. Tambien hay una subcomision de bochas.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Quejas sobre las acciones del PAMI.
Quejas de las familias de los jubilados, y de los jubilados hacia los hijos. (Problemas familiares)', 'Se comunica con la trabajadora social de PAMI. (no especifica mas  la entrevistadora)', 'Verbalmente', 'Escucha y asesoramiento con PAMI.', NULL, NULL, NULL, '-Asesoramiento para ANSES y PAMI.
-Jornada sobre maltrato a la vejez.', 'Si, para el barrio F. Brogño (calle Quintana y La Pampa). Respondieron bien.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (268, 'Llegar al Congreso y llevar nuevas ideas y decretos de ley que se traten y evalúen.
Patentar un reductor de velocidad.
Llevar propuestas al Congreso.', NULL, 'Sin definicion', 'Toda la población. 
Los peatones son por lo general de clase baja y los automovilistas de clase media- alta. Esto se da en Tandil. En Bs As atienden a todo tipo de gente, desde un cartonero hasta un empresario.', NULL, 'Ambos', 'Trabajan por separado en el Estudio Jurídico.', 4, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'SI', NULL, 'Sobre accidentes de tránsito. Asesoramiento legal. Casos de pensionados y muertes. A failias que están involucradas en accidentes.', 'Clientes.', 'verbalemnete', 'Dando asesoramiento legal.', NULL, NULL, NULL, 'sS está evaluando hacer una capacitación en accidentología.', 'No. Han hecho juicios al municipio por las condiciones de las calles y la falta de control.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (160, 'Fortalecer los intereses, promover proyectos conjuntos para representar las demandas de la comunidad, y trabajar en red.
Construir un espacio abierto donde toda la comunidad pueda participar en proyectos que mejoren la situación actual.
Fortalecer la democracia participando para aportar ideas desde un espacio abierto, no político.', NULL, 'Urbana', 'a toda la población, gente que tenga ganas de participar.', NULL, 'Ambos', 'Se reúnen cada 15 días, cuando lo necesitan.
Se reúnen, deciden y derivan.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'En el 2003 pedidos de generar posibilidades de trabajo.', 'abierto a todos', ' les avisan y se los adhiere a la sede del foro social en la Universidad.', 'Se habla si es posible o no. En grupo o comisión.', NULL, NULL, NULL, 'no explicita', 'plan jefes y jefas.', 'se esta construyendo.', NULL, NULL);
INSERT INTO organizacion_interna VALUES (270, 'Los mismos que al inicio.
Hacer un centro deportivo y trabajar con otras instituciones.', 'Barrio Tropezón y alrededores', 'Periurbana', 'a todos los vecinos. Son gente de trabajo y tienen diferentes realidades.', NULL, 'Ambos', 'Antes se hacían comisiones. Ahora se están reordenando. Se trata de no tomar decisiones importantes. ¿?', 1, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'NO', 'Actualmente no tienen. Antes hacían un periódico.', 'Red de gas, arreglo d elas calles en mal estado, denuncia por perros sueltos y gente que tira residuos en las calles', 'los vecinos', 'verbalmente', 'Se vinculan conMariela Palazo, del C_entro Comunitario de Movediza, o directamente a través de cartas al Municipio.', NULL, NULL, 'hay que reconvocar a la gente.', NULL, 'sí, para que coloquen semáforos, lomas de burro, refugios para esperar el colectivo, arreglo de calles y red de gas.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (34, 'Amistad, obras de servicio (Programa "Primero a la vista"), pezquisa visual para preescolares (tratamiento y provisión de anteojos), trabajar para la comunidad, destrezas para la adolescencia (prevención de drogas)', NULL, 'Sin definicion', 'carenciados, quienes no tienen posibilidades de solventarse, ancianos, niños.', NULL, 'Ambos', 'Comisión directiva que se renueva anualmente (periodos 1º de julio al 30 de junio): Realizan una reunión plenaria cada 15 días. No toman las decisiones por mayoría sino por consenso. No hablan ni de política ni de religión durante las reuniones para que no se generen conflictos. Cuando comienza el año, el presidente fija los objetivos', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'NO', NULL, NULL, NULL, 'SI', 'Antes realizaban una revista pero ahora nadie puede hacerlo por falta de tiempo', 'Operaciones de cataratas, provisión de lentes para los chicos.', 'Asistentes sociales para lentes de los chicos (informe social de la T.S. y receta del oftamologo); hogar de ancianos (Casitas de la Esperanza y otros)', 'Se acercan personalmente y hablan con algún miembro del Club', 'La organización realiza gestiones a las ópticas, al municipio. Las ópticas les dejan los recursos prácticamente al costo para que puedan acceder a ellos. Se compran los anteojos, se gestionan y pagan operaciones de vista, etc.', NULL, NULL, NULL, 'Instrucción leonística y efemérides( se lee en la reunión para todos, asistencia a reuniones o convenciones, reciben material del Club de Leones Internacional.
Efemérides: en las reuniones plenarias ver que paso en los quince días posteriores a la última reunión, y revisar fechas importantes e instrucciones leonísticas, se lee en el cuaderno de efemerides (también material que proviene de la matriz internacional)
Reuniones o convenciones ( se realizan en lugares turísticos grandes , concurre el que puede ir y luego le comunica al resto de la comisión) cada distrito organiza la convención un año', 'Articulan con oftalmologos, con el Hospital, con ópticas y con el municipio (Bienestar Social), y ante una asociación que posee los kits de recursos a nivel nacional.', 'cltandil@yahoo (017769 clave)', NULL, NULL);
INSERT INTO organizacion_interna VALUES (146, 'Trabajar en pos de la excelencia de nuestro servicio personalizado de anestesiología, mediante un equipo cohesionado y comprometido con la salud de nuestros pacientes.
Promover nuestro modelo de trabajo en la región
Difundir en la comunidad programas de prevención', NULL, 'Urbana', 'Población en general', NULL, 'Ambos', 'En comisión directiva. Se reunen los últimos martes de cada mes; se envía por e-mail, con 10 días de anticipación, el temario y se discute antes de llegar a la reunión. En la reunión se toman las decisiones. Los martes se reunen con actividad científica: lectura, comentarios, etc.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'NO', NULL, NULL, NULL, 'SI', NULL, 'Cubrir el dolor oncológico sobre todo en pacientes que no tienen recursos', 'Pacientes y médicos: ayudando a que muera sib dolor, en el hospital no se está cubriendo. No hay programa para cubrir esto.', 'Se acercan, llaman, nos vemos.', 'No responde, porque no hay un programa en Tandil para cubrir esto', NULL, NULL, NULL, 'Administración hospitalaria', 'El Estado sacó el tema en el momento de la terceriazión, pero se armó lío y no llegamos a acuerdos.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (8, 'Solucionar los problemas que se presentan en el hospital que estén a su alcance (material para quirófano, ropa, instrumental vario, equipamiento, etc.) Cubrir las necesidades emergentes en el hospital', NULL, 'Urbana', 'Se trabaja para el hospital y el bienestar del enfermo hospitalizado', NULL, 'Ambos', 'Organizadas en Comisión directiva, en las reuniones se toman las decisiones. Existe un registro en archivo de las adquisiciones realizadas. En general se ponen de acuerdo con facilidad ya que si el recurso existe, se realiza el aporte requerido.', 1, 'SI', 'SI', 'A VECES', 'Eventuales', NULL, NULL, 'A VECES', NULL, 'Eventuales', NULL, 'NO', NULL, 'Todos los requerimientos necesarios para suplir o comprar elementos de las diferentes áreas o servicios del hospital. Aparatología en general. También ropa blanca, a veces leche en polvo o pañales.', 'A través de la dirección del Hospital. Jefes de Servicios / médicos.', 'Por medio de notas firmadas por la dirección (siempre se les dice a los doctores)', 'Se responde a medida que se puede, acorde al presupuesto. Si tenemos fondos les respondemos de inmediato, si demora es por el trámite que demora hacerlo.', NULL, NULL, NULL, NULL, 'Por ofrecimiento para la administración de la propiedad, pero no porque nosotros los hayamos gestionado o solicitado (gestiones específicas con el Estado)', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (1, 'Llegar a concretar la obra del autódromo. Todas las mejoras relativas a brindar a los socios.', NULL, 'Sin definicion', 'Se trabaja en general con todos. La mayoría de los asociados son familias, nosotros hacemos el socio y entra el grupo familiar, y de generación en generación se van incorporando.', NULL, 'Ambos', 'A través de la comisión directiva. Se reunen los días jueves a las 20:30 hs y discuten las cuestiones a tratar. Se hace con "todas las de la ley", se hacen actas y se vuelca luego en el libro de actas. Cada tanto se reunen los días sábado.
Las reuniones son abiertas, con temario previo, los socios pueden llevar inquietudes y se tratan', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'SI', NULL, 'Mejoramiento de la infraestructura y equipamiento para el socio', 'Depende, los socios y los competidores. Siempre surgen cosas para solucionar, a veces los ingresos no dan, el único ingreso que tenemos es la cuota de socios, 80 personas; y las carreras, den o no den, tenemos que hacerlas.', 'Se les solicita que sean por escrito para ser tratadas en la comisión directiva', 'La respuesta de la organización es buena, sería de aproximadamente un 70%. Se adecúa a la disponibilidad económica de la organización.', NULL, NULL, NULL, 'Perfeccionamiento en cuanto a la parte organizativa de las competencias. Algunos viajan a capacitarse a cursos que da el Automóvil Club Argentino, como el curso de comisario deportivo.', 'Por gestiones, sí.', NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (265, 'Guí, contención, ayuda permanente (las 24hs), derivación para diagnósticos adecuados e inducción a consultas profesionales como psicólogos y psiquiatras.', NULL, 'Urbana', 'Todas las personas con problemáticas de ansiedad. Clase media por lo general.', NULL, 'Ambos', 'Trabajo de grupo con la coordinadora y supervisión del psicólogo.', 4, 'SI', 'SI', 'NO', NULL, NULL, NULL, 'NO', NULL, NULL, NULL, 'NO', 'en ocasiones con invitaciones de radios locales.', NULL, NULL, NULL, NULL, NULL, NULL, 'Se hace un seguimiento de los testimonios y sus problemáticas, y se aportan sugerencias y se escuchan nuevos testimonios.', NULL, NULL, NULL, NULL, NULL);
INSERT INTO organizacion_interna VALUES (148, 'El objetivo principal es fomentar. La integración de la gente, trabajar con los jóvenes, realizar un censo 8el p´roximo año) para ver las actividades e inquietudes de los vecinos, y para que conozcan la nueca Comisión Directiva.
Trabajar para la gente del barrio, para poder vivir todos un poquito mejor.', 'Barrio Maggiori/ Tropezón', 'Urbana', 'A toda la gente del barrio. Calse media baja.
Generalmente se trabaja para todo el barrio, hay gente que puede más, que tienen un mayor poder adquisitivo y éstos ayudan a los que no tienen.', NULL, 'Ambos', 'Es una Comisión directiva de 10 personas. Las decisiones se toman democraticamente, pero muchas veces solo son cuatro, y toman las decisiones los que están. Hacen reuniones una vez por semana, con escaza convocatoria.', 1, 'SI', 'SI', 'SI', 'Sistemáticos', NULL, NULL, 'SI', NULL, 'Sistemáticos', NULL, 'NO', NULL, 'no tienen todavía.  Solo arreglar la plaza.
Hay una Trabajadora social a la cual le llegan todos los pedidos. "nosotros ayudamos pero lo maneja ella con la Municipalidad)', 'los vecinos', 'verbalmente', 'Internamente, la CD, ve las posibilidades que tienen de hacer el arreglo de la laza. También se relacionan con el municipio.', NULL, NULL, NULL, NULL, 'El municiio evalúa lo que ellos hacen. Hasta ahora les dan recursos y no les dicen nada sobre lo que están haciendo.', NULL, NULL, NULL);


--
-- Data for Name: actores_eval_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO actores_eval_x_organizacion VALUES (1, 9);
INSERT INTO actores_eval_x_organizacion VALUES (1, 64);
INSERT INTO actores_eval_x_organizacion VALUES (1, 126);
INSERT INTO actores_eval_x_organizacion VALUES (1, 228);
INSERT INTO actores_eval_x_organizacion VALUES (1, 242);
INSERT INTO actores_eval_x_organizacion VALUES (1, 243);
INSERT INTO actores_eval_x_organizacion VALUES (1, 258);
INSERT INTO actores_eval_x_organizacion VALUES (1, 260);
INSERT INTO actores_eval_x_organizacion VALUES (1, 261);
INSERT INTO actores_eval_x_organizacion VALUES (2, 47);
INSERT INTO actores_eval_x_organizacion VALUES (2, 133);
INSERT INTO actores_eval_x_organizacion VALUES (3, 10);
INSERT INTO actores_eval_x_organizacion VALUES (3, 15);
INSERT INTO actores_eval_x_organizacion VALUES (3, 22);
INSERT INTO actores_eval_x_organizacion VALUES (3, 65);
INSERT INTO actores_eval_x_organizacion VALUES (3, 101);
INSERT INTO actores_eval_x_organizacion VALUES (3, 113);
INSERT INTO actores_eval_x_organizacion VALUES (3, 120);
INSERT INTO actores_eval_x_organizacion VALUES (3, 126);
INSERT INTO actores_eval_x_organizacion VALUES (3, 133);
INSERT INTO actores_eval_x_organizacion VALUES (3, 139);
INSERT INTO actores_eval_x_organizacion VALUES (3, 218);
INSERT INTO actores_eval_x_organizacion VALUES (3, 221);
INSERT INTO actores_eval_x_organizacion VALUES (3, 238);
INSERT INTO actores_eval_x_organizacion VALUES (3, 242);
INSERT INTO actores_eval_x_organizacion VALUES (3, 246);
INSERT INTO actores_eval_x_organizacion VALUES (3, 254);
INSERT INTO actores_eval_x_organizacion VALUES (3, 258);
INSERT INTO actores_eval_x_organizacion VALUES (3, 259);
INSERT INTO actores_eval_x_organizacion VALUES (4, 260);
INSERT INTO actores_eval_x_organizacion VALUES (23, 250);
INSERT INTO actores_eval_x_organizacion VALUES (24, 130);
INSERT INTO actores_eval_x_organizacion VALUES (25, 135);
INSERT INTO actores_eval_x_organizacion VALUES (3, 129);
INSERT INTO actores_eval_x_organizacion VALUES (12, 129);
INSERT INTO actores_eval_x_organizacion VALUES (3, 202);
INSERT INTO actores_eval_x_organizacion VALUES (2, 202);
INSERT INTO actores_eval_x_organizacion VALUES (3, 208);
INSERT INTO actores_eval_x_organizacion VALUES (3, 4);
INSERT INTO actores_eval_x_organizacion VALUES (3, 128);
INSERT INTO actores_eval_x_organizacion VALUES (3, 46);
INSERT INTO actores_eval_x_organizacion VALUES (1, 67);
INSERT INTO actores_eval_x_organizacion VALUES (3, 67);
INSERT INTO actores_eval_x_organizacion VALUES (1, 127);
INSERT INTO actores_eval_x_organizacion VALUES (3, 13);
INSERT INTO actores_eval_x_organizacion VALUES (1, 231);
INSERT INTO actores_eval_x_organizacion VALUES (1, 262);
INSERT INTO actores_eval_x_organizacion VALUES (2, 262);
INSERT INTO actores_eval_x_organizacion VALUES (3, 262);
INSERT INTO actores_eval_x_organizacion VALUES (11, 125);
INSERT INTO actores_eval_x_organizacion VALUES (3, 236);
INSERT INTO actores_eval_x_organizacion VALUES (3, 189);
INSERT INTO actores_eval_x_organizacion VALUES (3, 159);
INSERT INTO actores_eval_x_organizacion VALUES (1, 263);
INSERT INTO actores_eval_x_organizacion VALUES (1, 177);
INSERT INTO actores_eval_x_organizacion VALUES (1, 166);
INSERT INTO actores_eval_x_organizacion VALUES (3, 166);
INSERT INTO actores_eval_x_organizacion VALUES (1, 33);
INSERT INTO actores_eval_x_organizacion VALUES (3, 33);
INSERT INTO actores_eval_x_organizacion VALUES (3, 7);
INSERT INTO actores_eval_x_organizacion VALUES (3, 247);
INSERT INTO actores_eval_x_organizacion VALUES (1, 241);
INSERT INTO actores_eval_x_organizacion VALUES (3, 264);
INSERT INTO actores_eval_x_organizacion VALUES (1, 109);
INSERT INTO actores_eval_x_organizacion VALUES (3, 109);
INSERT INTO actores_eval_x_organizacion VALUES (1, 106);
INSERT INTO actores_eval_x_organizacion VALUES (3, 8);
INSERT INTO actores_eval_x_organizacion VALUES (3, 1);
INSERT INTO actores_eval_x_organizacion VALUES (3, 148);
INSERT INTO actores_eval_x_organizacion VALUES (1, 160);
INSERT INTO actores_eval_x_organizacion VALUES (1, 269);
INSERT INTO actores_eval_x_organizacion VALUES (3, 269);


--
-- Data for Name: actores_planif_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO actores_planif_x_organizacion VALUES (1, 9);
INSERT INTO actores_planif_x_organizacion VALUES (1, 64);
INSERT INTO actores_planif_x_organizacion VALUES (1, 126);
INSERT INTO actores_planif_x_organizacion VALUES (1, 228);
INSERT INTO actores_planif_x_organizacion VALUES (1, 242);
INSERT INTO actores_planif_x_organizacion VALUES (1, 258);
INSERT INTO actores_planif_x_organizacion VALUES (1, 259);
INSERT INTO actores_planif_x_organizacion VALUES (1, 260);
INSERT INTO actores_planif_x_organizacion VALUES (1, 261);
INSERT INTO actores_planif_x_organizacion VALUES (3, 10);
INSERT INTO actores_planif_x_organizacion VALUES (3, 15);
INSERT INTO actores_planif_x_organizacion VALUES (3, 22);
INSERT INTO actores_planif_x_organizacion VALUES (3, 47);
INSERT INTO actores_planif_x_organizacion VALUES (3, 65);
INSERT INTO actores_planif_x_organizacion VALUES (3, 101);
INSERT INTO actores_planif_x_organizacion VALUES (3, 113);
INSERT INTO actores_planif_x_organizacion VALUES (3, 120);
INSERT INTO actores_planif_x_organizacion VALUES (3, 126);
INSERT INTO actores_planif_x_organizacion VALUES (3, 133);
INSERT INTO actores_planif_x_organizacion VALUES (3, 135);
INSERT INTO actores_planif_x_organizacion VALUES (3, 139);
INSERT INTO actores_planif_x_organizacion VALUES (3, 149);
INSERT INTO actores_planif_x_organizacion VALUES (3, 218);
INSERT INTO actores_planif_x_organizacion VALUES (3, 221);
INSERT INTO actores_planif_x_organizacion VALUES (3, 242);
INSERT INTO actores_planif_x_organizacion VALUES (3, 246);
INSERT INTO actores_planif_x_organizacion VALUES (3, 254);
INSERT INTO actores_planif_x_organizacion VALUES (3, 258);
INSERT INTO actores_planif_x_organizacion VALUES (4, 260);
INSERT INTO actores_planif_x_organizacion VALUES (7, 242);
INSERT INTO actores_planif_x_organizacion VALUES (21, 243);
INSERT INTO actores_planif_x_organizacion VALUES (23, 250);
INSERT INTO actores_planif_x_organizacion VALUES (24, 130);
INSERT INTO actores_planif_x_organizacion VALUES (3, 129);
INSERT INTO actores_planif_x_organizacion VALUES (12, 129);
INSERT INTO actores_planif_x_organizacion VALUES (25, 202);
INSERT INTO actores_planif_x_organizacion VALUES (2, 202);
INSERT INTO actores_planif_x_organizacion VALUES (3, 208);
INSERT INTO actores_planif_x_organizacion VALUES (3, 4);
INSERT INTO actores_planif_x_organizacion VALUES (3, 128);
INSERT INTO actores_planif_x_organizacion VALUES (3, 46);
INSERT INTO actores_planif_x_organizacion VALUES (1, 67);
INSERT INTO actores_planif_x_organizacion VALUES (2, 67);
INSERT INTO actores_planif_x_organizacion VALUES (3, 67);
INSERT INTO actores_planif_x_organizacion VALUES (3, 219);
INSERT INTO actores_planif_x_organizacion VALUES (1, 127);
INSERT INTO actores_planif_x_organizacion VALUES (3, 231);
INSERT INTO actores_planif_x_organizacion VALUES (1, 262);
INSERT INTO actores_planif_x_organizacion VALUES (2, 262);
INSERT INTO actores_planif_x_organizacion VALUES (11, 125);
INSERT INTO actores_planif_x_organizacion VALUES (3, 189);
INSERT INTO actores_planif_x_organizacion VALUES (3, 159);
INSERT INTO actores_planif_x_organizacion VALUES (1, 263);
INSERT INTO actores_planif_x_organizacion VALUES (1, 177);
INSERT INTO actores_planif_x_organizacion VALUES (1, 166);
INSERT INTO actores_planif_x_organizacion VALUES (3, 166);
INSERT INTO actores_planif_x_organizacion VALUES (1, 33);
INSERT INTO actores_planif_x_organizacion VALUES (3, 33);
INSERT INTO actores_planif_x_organizacion VALUES (3, 7);
INSERT INTO actores_planif_x_organizacion VALUES (3, 247);
INSERT INTO actores_planif_x_organizacion VALUES (1, 241);
INSERT INTO actores_planif_x_organizacion VALUES (3, 264);
INSERT INTO actores_planif_x_organizacion VALUES (1, 109);
INSERT INTO actores_planif_x_organizacion VALUES (3, 109);
INSERT INTO actores_planif_x_organizacion VALUES (3, 106);
INSERT INTO actores_planif_x_organizacion VALUES (3, 146);
INSERT INTO actores_planif_x_organizacion VALUES (3, 8);
INSERT INTO actores_planif_x_organizacion VALUES (3, 1);
INSERT INTO actores_planif_x_organizacion VALUES (3, 148);
INSERT INTO actores_planif_x_organizacion VALUES (1, 160);
INSERT INTO actores_planif_x_organizacion VALUES (1, 269);
INSERT INTO actores_planif_x_organizacion VALUES (3, 269);
INSERT INTO actores_planif_x_organizacion VALUES (3, 34);


--
-- Data for Name: alcance_de_difusion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO alcance_de_difusion VALUES (1, 'Barrial');
INSERT INTO alcance_de_difusion VALUES (2, 'Municipal / local');
INSERT INTO alcance_de_difusion VALUES (3, 'Regional');
INSERT INTO alcance_de_difusion VALUES (4, 'Nacional');
INSERT INTO alcance_de_difusion VALUES (5, 'Internacional');


--
-- Data for Name: alcanceaccionar_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO alcanceaccionar_x_organizacion VALUES (9, 2, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (10, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (15, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (15, 4, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (22, 4, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (47, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (47, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (64, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (65, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (65, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (101, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (113, 1, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (120, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (126, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (126, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (126, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (130, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (130, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (133, 1, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (133, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (135, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (139, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (149, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (149, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (149, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (218, 1, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (218, 2, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (221, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (228, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (228, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (235, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (238, 2, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (242, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (243, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (243, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (246, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (246, 4, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (250, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (254, 1, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (258, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (259, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (259, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (259, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (260, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (260, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (261, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (261, 4, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (129, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (202, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (202, 1, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (208, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (208, 4, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (4, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (4, 5, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (128, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (128, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (128, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (46, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (46, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (46, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (46, 5, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (67, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (219, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (219, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (127, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (127, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (13, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (231, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (262, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (262, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (262, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (125, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (236, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (189, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (159, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (159, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (159, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (263, 2, 0);
INSERT INTO alcanceaccionar_x_organizacion VALUES (177, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (177, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (166, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (33, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (7, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (247, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (241, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (264, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (264, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (264, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (109, 1, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (109, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (109, 3, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (106, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (106, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (146, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (146, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (8, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (1, 3, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (1, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (1, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (265, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (265, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (148, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (148, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (268, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (268, 3, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (268, 4, 3);
INSERT INTO alcanceaccionar_x_organizacion VALUES (160, 2, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (269, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (270, 1, 1);
INSERT INTO alcanceaccionar_x_organizacion VALUES (270, 2, 2);
INSERT INTO alcanceaccionar_x_organizacion VALUES (34, 2, 0);


--
-- Data for Name: area_tematica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO area_tematica VALUES (1, 'Salud');
INSERT INTO area_tematica VALUES (2, 'Trabajo / Producción');
INSERT INTO area_tematica VALUES (3, 'Vivienda');
INSERT INTO area_tematica VALUES (4, 'Alimentación');
INSERT INTO area_tematica VALUES (5, 'Educación');
INSERT INTO area_tematica VALUES (6, 'Arte / Cultura');
INSERT INTO area_tematica VALUES (7, 'Servicio de  Equipamiento e Infraestructura');
INSERT INTO area_tematica VALUES (8, 'Reacreación / Deporte / Sociabilidad');
INSERT INTO area_tematica VALUES (9, 'Defensa civil y catástrofe');
INSERT INTO area_tematica VALUES (10, 'Discapacidad');
INSERT INTO area_tematica VALUES (11, 'Religión');
INSERT INTO area_tematica VALUES (12, 'Ecología y Medio ambiente');
INSERT INTO area_tematica VALUES (13, 'Justicia');
INSERT INTO area_tematica VALUES (14, 'Ciencia / Tecnología');
INSERT INTO area_tematica VALUES (15, 'Violencia');
INSERT INTO area_tematica VALUES (16, 'Género');
INSERT INTO area_tematica VALUES (17, 'Vestimenta');
INSERT INTO area_tematica VALUES (18, 'Promoción');
INSERT INTO area_tematica VALUES (19, 'Defensa de Derechos');
INSERT INTO area_tematica VALUES (20, 'Formación Dirigentes Gremiales');
INSERT INTO area_tematica VALUES (21, 'Créditos para compra de productos');
INSERT INTO area_tematica VALUES (22, 'Información General');
INSERT INTO area_tematica VALUES (23, 'Gremial');
INSERT INTO area_tematica VALUES (24, 'Beneficencia');
INSERT INTO area_tematica VALUES (25, 'Servicios Religiosos');
INSERT INTO area_tematica VALUES (26, 'Proyectos Socio-Comunitarios');
INSERT INTO area_tematica VALUES (27, 'Seguridad Social (Caja jubilatoria y seguros)');
INSERT INTO area_tematica VALUES (28, 'Tradición étnica');
INSERT INTO area_tematica VALUES (29, 'Servicios Fúnebres');
INSERT INTO area_tematica VALUES (30, 'Contención');
INSERT INTO area_tematica VALUES (31, 'Otra');
INSERT INTO area_tematica VALUES (32, 'Asesoramiento / Orientación');
INSERT INTO area_tematica VALUES (33, 'Comunicaciones y servicios');
INSERT INTO area_tematica VALUES (34, 'Protección de animales');
INSERT INTO area_tematica VALUES (35, 'Animales');
INSERT INTO area_tematica VALUES (36, 'Marketing');
INSERT INTO area_tematica VALUES (37, 'Gestoría');
INSERT INTO area_tematica VALUES (38, 'Comercialización');
INSERT INTO area_tematica VALUES (39, 'Indistinto');
INSERT INTO area_tematica VALUES (40, 'Seguridad');
INSERT INTO area_tematica VALUES (41, 'Captación de Socios');
INSERT INTO area_tematica VALUES (42, 'Transporte público de pasajeros');
INSERT INTO area_tematica VALUES (43, 'Recaudación de fondos');
INSERT INTO area_tematica VALUES (44, 'Social');
INSERT INTO area_tematica VALUES (45, 'Guerra Irak-EEUU');
INSERT INTO area_tematica VALUES (46, 'Educación no formal');
INSERT INTO area_tematica VALUES (47, 'Intervención sobre la familia');
INSERT INTO area_tematica VALUES (48, 'Pensiones / Subsidios');
INSERT INTO area_tematica VALUES (49, 'Construcción de información pública');
INSERT INTO area_tematica VALUES (50, 'Diversas temáticas');
INSERT INTO area_tematica VALUES (51, 'Responsabilidad y compromiso familiar');
INSERT INTO area_tematica VALUES (52, 'Mantenimiento');
INSERT INTO area_tematica VALUES (53, 'Biblioteca');
INSERT INTO area_tematica VALUES (54, 'Educación Especial');
INSERT INTO area_tematica VALUES (55, 'Ayuda psicológica');
INSERT INTO area_tematica VALUES (56, 'Capacitación');
INSERT INTO area_tematica VALUES (57, 'Peluquería');
INSERT INTO area_tematica VALUES (58, 'Tercera Edad');
INSERT INTO area_tematica VALUES (59, 'Divulgación');
INSERT INTO area_tematica VALUES (60, 'Servicios Públicos');
INSERT INTO area_tematica VALUES (61, 'Formación Integral de los niños');
INSERT INTO area_tematica VALUES (62, 'Familia');
INSERT INTO area_tematica VALUES (63, 'Desarrollo Humano Integral');
INSERT INTO area_tematica VALUES (64, 'Minoridad');
INSERT INTO area_tematica VALUES (65, 'Niños en riesgo');
INSERT INTO area_tematica VALUES (66, 'religion y asistencia');
INSERT INTO area_tematica VALUES (67, 'Turismo');
INSERT INTO area_tematica VALUES (68, 'Asistencia Social');
INSERT INTO area_tematica VALUES (69, 'Estudio e Investigación');
INSERT INTO area_tematica VALUES (70, 'servicio');
INSERT INTO area_tematica VALUES (71, 'gestión de recursos');


--
-- Data for Name: area_tematica_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO area_tematica_x_organizacion VALUES (9, 2, 2);
INSERT INTO area_tematica_x_organizacion VALUES (9, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (9, 10, 1);
INSERT INTO area_tematica_x_organizacion VALUES (10, 56, 2);
INSERT INTO area_tematica_x_organizacion VALUES (10, 67, 1);
INSERT INTO area_tematica_x_organizacion VALUES (15, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (15, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (15, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (15, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (15, 7, 2);
INSERT INTO area_tematica_x_organizacion VALUES (15, 14, 3);
INSERT INTO area_tematica_x_organizacion VALUES (15, 16, 3);
INSERT INTO area_tematica_x_organizacion VALUES (15, 17, 3);
INSERT INTO area_tematica_x_organizacion VALUES (22, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (47, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (64, 2, 3);
INSERT INTO area_tematica_x_organizacion VALUES (64, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (64, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (64, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (65, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (101, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (113, 1, 3);
INSERT INTO area_tematica_x_organizacion VALUES (113, 4, 1);
INSERT INTO area_tematica_x_organizacion VALUES (113, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (120, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (120, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (120, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (126, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (126, 10, 2);
INSERT INTO area_tematica_x_organizacion VALUES (130, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (130, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (133, 1, 3);
INSERT INTO area_tematica_x_organizacion VALUES (133, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (133, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (135, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (135, 12, 2);
INSERT INTO area_tematica_x_organizacion VALUES (139, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (139, 6, 1);
INSERT INTO area_tematica_x_organizacion VALUES (149, 6, 1);
INSERT INTO area_tematica_x_organizacion VALUES (149, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (218, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (221, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (221, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (221, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (228, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (228, 14, 2);
INSERT INTO area_tematica_x_organizacion VALUES (228, 68, 3);
INSERT INTO area_tematica_x_organizacion VALUES (235, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (238, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (238, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (242, 4, 2);
INSERT INTO area_tematica_x_organizacion VALUES (242, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (242, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (243, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (243, 4, 2);
INSERT INTO area_tematica_x_organizacion VALUES (243, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (243, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (246, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (246, 9, 2);
INSERT INTO area_tematica_x_organizacion VALUES (246, 12, 3);
INSERT INTO area_tematica_x_organizacion VALUES (246, 14, 3);
INSERT INTO area_tematica_x_organizacion VALUES (250, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (254, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (254, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (254, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (258, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (258, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (258, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (259, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (259, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (259, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (260, 6, 1);
INSERT INTO area_tematica_x_organizacion VALUES (260, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (260, 10, 3);
INSERT INTO area_tematica_x_organizacion VALUES (261, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (261, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (129, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (129, 12, 2);
INSERT INTO area_tematica_x_organizacion VALUES (129, 10, 3);
INSERT INTO area_tematica_x_organizacion VALUES (202, 3, 1);
INSERT INTO area_tematica_x_organizacion VALUES (202, 1, 2);
INSERT INTO area_tematica_x_organizacion VALUES (202, 2, 3);
INSERT INTO area_tematica_x_organizacion VALUES (208, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (208, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (4, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (4, 1, 2);
INSERT INTO area_tematica_x_organizacion VALUES (4, 10, 3);
INSERT INTO area_tematica_x_organizacion VALUES (128, 6, 1);
INSERT INTO area_tematica_x_organizacion VALUES (46, 6, 1);
INSERT INTO area_tematica_x_organizacion VALUES (46, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (67, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (67, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (67, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (219, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (219, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (219, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (127, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (127, 1, 2);
INSERT INTO area_tematica_x_organizacion VALUES (127, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (13, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (231, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (231, 2, 2);
INSERT INTO area_tematica_x_organizacion VALUES (231, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (262, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (262, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (262, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (262, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (262, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (262, 10, 3);
INSERT INTO area_tematica_x_organizacion VALUES (262, 12, 3);
INSERT INTO area_tematica_x_organizacion VALUES (125, 4, 1);
INSERT INTO area_tematica_x_organizacion VALUES (125, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (125, 2, 3);
INSERT INTO area_tematica_x_organizacion VALUES (236, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (236, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (236, 1, 3);
INSERT INTO area_tematica_x_organizacion VALUES (189, 8, 1);
INSERT INTO area_tematica_x_organizacion VALUES (189, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (189, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (159, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (159, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (263, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (263, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (263, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (177, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (177, 8, 0);
INSERT INTO area_tematica_x_organizacion VALUES (177, 15, 0);
INSERT INTO area_tematica_x_organizacion VALUES (166, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (166, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (166, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (33, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (33, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (33, 9, 3);
INSERT INTO area_tematica_x_organizacion VALUES (7, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (247, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (247, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (241, 11, 1);
INSERT INTO area_tematica_x_organizacion VALUES (241, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (241, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (241, 5, 3);
INSERT INTO area_tematica_x_organizacion VALUES (241, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (241, 2, 3);
INSERT INTO area_tematica_x_organizacion VALUES (241, 17, 3);
INSERT INTO area_tematica_x_organizacion VALUES (241, 13, 3);
INSERT INTO area_tematica_x_organizacion VALUES (264, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (264, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (264, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (109, 10, 1);
INSERT INTO area_tematica_x_organizacion VALUES (109, 3, 2);
INSERT INTO area_tematica_x_organizacion VALUES (109, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (106, 4, 1);
INSERT INTO area_tematica_x_organizacion VALUES (106, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (106, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (146, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (146, 2, 2);
INSERT INTO area_tematica_x_organizacion VALUES (8, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (1, 8, 0);
INSERT INTO area_tematica_x_organizacion VALUES (265, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (148, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (148, 4, 2);
INSERT INTO area_tematica_x_organizacion VALUES (148, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (148, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (148, 1, 3);
INSERT INTO area_tematica_x_organizacion VALUES (268, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (268, 13, 2);
INSERT INTO area_tematica_x_organizacion VALUES (160, 2, 1);
INSERT INTO area_tematica_x_organizacion VALUES (160, 6, 2);
INSERT INTO area_tematica_x_organizacion VALUES (160, 7, 3);
INSERT INTO area_tematica_x_organizacion VALUES (269, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (269, 5, 2);
INSERT INTO area_tematica_x_organizacion VALUES (269, 4, 3);
INSERT INTO area_tematica_x_organizacion VALUES (269, 8, 3);
INSERT INTO area_tematica_x_organizacion VALUES (270, 5, 1);
INSERT INTO area_tematica_x_organizacion VALUES (270, 8, 2);
INSERT INTO area_tematica_x_organizacion VALUES (270, 6, 3);
INSERT INTO area_tematica_x_organizacion VALUES (34, 1, 1);
INSERT INTO area_tematica_x_organizacion VALUES (34, 7, 2);


--
-- Data for Name: autodiagnostico; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO autodiagnostico VALUES (9, 'Las ONGs son las que han sabido interpretar las necesidades de la comunidad y organizarse para buscar soluciones, casi siempre reemplazando al Estado asusente.', 'Deberían constituirse como consejos asesores en políticas referidas a cada temática en particular como una manera de aunar criterios, monitorear y dar transparencia a la gestión del Estado.');
INSERT INTO autodiagnostico VALUES (10, 'Complementar el accionar con la Municipalidad, a través del IMT trabajamos en conjunto.', 'El que estamos cumpliendo');
INSERT INTO autodiagnostico VALUES (15, 'Contención social y cubrir las necesidades que el Estado no llega.', 'si todo funcionaría bien se volcarían a una actividad social recreativa cultural');
INSERT INTO autodiagnostico VALUES (22, 'Un rol importante en la formación de deportistas. Forman personas de bien. Son un aayuda para la niñez y la juventud.', 'Albergar a la juventud para que no se meta en cosas que no deban. Amparar a la juventud');
INSERT INTO autodiagnostico VALUES (47, 'Dan el apoyo que el Estado no puede dar. Es la forma de llegar a lo que tendrá que llegar el Estado.
El club es el que estña más cercano a la gente para llegar al Estado, no puede hacerlo colo.', 'Generar contención social, educación deportiva');
INSERT INTO autodiagnostico VALUES (64, 'En algunos casos se les pide más de lo que pueden dar. La función fundamental del Estado es la atención  de bien común, pero en los hechos no siempre se ve.', 'Complenmentario y no supletorio');
INSERT INTO autodiagnostico VALUES (65, 'Las instituciones complementan la acción del Estado y se rescata al club como lugar de reunión.', 'Complementar la acción del Estado');
INSERT INTO autodiagnostico VALUES (101, 'Es fundamental para el acompañamiento del chico y el apoyo en la educación.
El club es un lugar de contención y de recreación donde se valora mucho la parte social.', 'Me parece que el rol que debería cumplir es el acompañamiento.');
INSERT INTO autodiagnostico VALUES (113, 'Nada.', 'Sin recursos no podemos hacer otras cosas');
INSERT INTO autodiagnostico VALUES (120, 'Depende de la voluntad de cada organización, en varios casos lo que se hace es ayudar al Estado en aquellos casos que falla. Están creciendo día a día y esto demuestra que son necesarias para ayudar al Estado para resolver ciertas cuestiones.', 'Trabajan bien pero no deberían perder la independencia aunque trabajen en conjunto.');
INSERT INTO autodiagnostico VALUES (126, 'Hay una política que tiene un proyecto a nivel nacional en todos los deportes. Hay una política donde te dicen los lineamientos principales para darle a la sociedad lo mejor.', 'Complementar la acción del Estado. "El que está más arriba está para algo"');
INSERT INTO autodiagnostico VALUES (130, 'A mi me parece que bueno por todo lo que se hace, ojalá que uno se pudiera mover como antes, a mi me tiraron mucho las escuelas; sino hubiera tanta traba seguiría trabajando con las escuelas.', 'Las agrupaciones tiene que sobrevivir, si pueden sólas sino con el apoyo del municipio o de alguien.');
INSERT INTO autodiagnostico VALUES (133, 'Las OSC lo que hicieron fue tratar de ayudar a la gente en una época determinada, cosas que el Estado no hace bien, y a la gente hay que atenderla.', 'El rol que se cumple esta bien, pero se merece otro reconocimiento por parte del Estado y su ayuda es algo fundamental.');
INSERT INTO autodiagnostico VALUES (135, 'Es muy importante. Como fundación ha crecido nuestro trabajo. Se puede exportar e ingresar en el circuito aftósico económico.', 'no opina');
INSERT INTO autodiagnostico VALUES (139, 'se suple al Estado, si el Estado hiciera lo que tendría que hacer no existirían.', 'Trabajar en forma independientes del Estado. "El Estado nos provee el espacio físico para ña Fiesta."');
INSERT INTO autodiagnostico VALUES (149, 'Son útiles, pero que lleguen a incidir en las decisiones políticas del Esatdo, no creo.', 'Hacer la educación de los principios civiles');
INSERT INTO autodiagnostico VALUES (218, 'Deasistencia, paliar las emergencias, resolución de lo inmediato.', 'De mayor integración entre las organizaciones y con la comunidad.');
INSERT INTO autodiagnostico VALUES (228, 'Me parece interesante, es como que el ser humano está tratando de hacer un vuelco favorable. Y también hace lo que el Estado no hace', 'Tengo la sensación de que están despertando a la realidad. Habría que inuirse más para trabajar en conjunto. Creo que muchas se sienten desvalidas en su accionar ya que no cuentan con apoyo. Deberían apoyarse entre si y con el Estado');
INSERT INTO autodiagnostico VALUES (235, NULL, '"Laburan más en conjunto y subsidiar más a los pobres"
Contención de jóvenes y haciendo deporte y mateniendo que no haya droga, lo que pasa es que lleva plata sacarla.');
INSERT INTO autodiagnostico VALUES (238, 'Para mi están trabajando bien', 'Trabajar con el bien de la comunidad, con obras, con ayuda y estando siempre cerca de los Centros Comunitarios.');
INSERT INTO autodiagnostico VALUES (242, 'Un rol es el de contención socioafectiva ("un lugar para estar"). Promover  las capacidades de las personas (organizaciones deportivas, bibliotecas). Superar la exclusión', 'Ayudar a que la comunidad tome fuerza, que el tejido social que se ha deteriorado se fortalezca a través de este tipo de acciones.');
INSERT INTO autodiagnostico VALUES (243, 'Es un rol de contención socioafectiva, un lugar "para estar". Promover a las personas en su capacidad, superar la exclusión.', 'Ayudar a la formación del tejido social, que se fortalezca');
INSERT INTO autodiagnostico VALUES (246, 'es muy importante, complementa la acción del Estado', 'Las entidades intermedias deberían ser entidades formadoras y capacitadoras de ciudadanos que se inserten en las carreras políticas, esto tendiente a lograr que las personas que ocupen cargos públicos tengan conocimientos certeros de las problemáticas sectoriales y que luego de estar en lugares estratégicos donde se toman las decisiones poder saber de que se trata.');
INSERT INTO autodiagnostico VALUES (250, 'lo que el Estado debería cumplir en cuanto a la satisfacción de diferentes necesidades se encuentra saturado y lo termina cumpliendo la Iglesia (como ser el bienestar, atención psicológica, psiquiátrica, etc.) El Estado tiene pocos lugares y pocos recursos.', 'De capacitación');
INSERT INTO autodiagnostico VALUES (254, 'Existen organizaciones muy chiquitas que dispersan la atención. Por ejemplo, no se respeta que tiene que haber una biblioteca cada 20 cuadras y no cada 3 cuadras.', 'Tendrían que reunirse y unificarse para lograr un mejor servicio.');
INSERT INTO autodiagnostico VALUES (258, 'Suplen las actividades que el Estado no brinda.', 'Deberían tener más apoyo, trabajar sin presiones.');
INSERT INTO autodiagnostico VALUES (259, 'Un rol es el de contención socioafectiva ("un lugar para estar"). Promover  las capacidades de las personas (organizaciones deportivas, bibliotecas). Superar la exclusión', 'Son diversas en su naturaleza y es dificil decir que rol deben cumplir en general');
INSERT INTO autodiagnostico VALUES (260, 'estamos como llamándole la atención a los poderes sobre las necesidades que tenemos. Estamos más cerca de la Comunidad.
Seríamos como un puente entre el poder político y la comunidad.
En estas Orgs. De Base es donde se ejerce efectivamente la Democracia.', 'El rol que hay que cumplir es el enunciado anteriormente, porque es todo trabajo voluntario. Creo que en una org. Hay que trabajar para la comunidad, no como un puente para la política partidaria. No porque esté mal la política, uno no tiene que entrar a la organización para ser vidriera. Esto pasa. (Ejemplo: Macri en Boca, acá en Club Ferro,  esto pasa en instituciones con mucho renombreno en instituciones como la nuestra.');
INSERT INTO autodiagnostico VALUES (129, 'Están trabajando desvinculadas del Estado. Se trabaja de otra manera', 'Complementar la función del Estado.');
INSERT INTO autodiagnostico VALUES (221, 'Tratan de hacerse cargo de la funciones que no suplen. Un problema que se presenta actualmente refiere a que queda muy poca gente que se ofrece a trabajar sin obtención de remuneración económica.', 'La gente debería sumarse más a las actividades voluntarias, pero cada vez es más difícil que así sea.');
INSERT INTO autodiagnostico VALUES (208, 'Un rol muy importante. El rol de parchar lo que nos hemos encontrado en esta sociedad desatendida durante décadas y que han quedado marginado.', 'el estado debería regular las actividades, entonces nosotros sólo nos encargaríamos de llevarlas a la práctica.');
INSERT INTO autodiagnostico VALUES (261, 'Cumple funciones que debería cumplir el Estado. El estado no puede estar en estas pequeñas organizaciones.', 'Debería cumplir el mismo rol que el Estado y con un gran apoyo del Estado pero conservando lo propio por fuera del Estado.');
INSERT INTO autodiagnostico VALUES (202, 'Suplen al Estado, otras se superponen entre sí. Desde la crisis del 2001 adquirieron un rol más protagónico y les "salvaron las papas" al estado. Tiene otros espacios para trabajar. Es diferente laburar para 30 que para 3000. se superponen y hay un desgaste para las dos partes.', 'Complementar al Estado, no lo que se viene dando.');
INSERT INTO autodiagnostico VALUES (128, 'Trabajamos totalmente separados del Estado', 'Podriamos ayudarnos mutuamente.');
INSERT INTO autodiagnostico VALUES (46, 'Están cumpliendo un rol importante. Cada una en lo suyo aporta a una mejor calidad de vida en cuanto a la formación cultural.', 'Apoyar a la difusión. La enseñanza del folklore en las escuelas. Esto ha quedado trunco como materia. Tendrían que implemntarla en la escuela primaria, donde se aprendan leyendas, danzas, supersticiones...');
INSERT INTO autodiagnostico VALUES (67, '"cumplimos un rol muy importante a medida que entendemos que somos parte de la sociedad sin cumplir con la función pública de nuestro Municipio, siguiendo a lo que fuimos formados como institución"', '"Estaoy fundada para un rol determinado. Yo no vengo a ser el Estado, ni el Estado viene a competir conmigo"
"Las instituciones nos hemos convertido en unicatos de pequeños poderes y las instituciones estamos para servir, terminamos igual que el Estado: UNICATOS"');
INSERT INTO autodiagnostico VALUES (219, 'de asistencia, paliar las emergencias, de resolución de lo inmediato', 'De mayor integración entre las organizaicones y con la comunidad.');
INSERT INTO autodiagnostico VALUES (13, 'Están cumpliendo una función trascendental porque están tratando de entrar en la distribución de la riqueza', 'El que están cumpliendo');
INSERT INTO autodiagnostico VALUES (231, 'Hoy nuestras organizaciones estan supliendo las falencias que existen en la sociedad, estamos poniendo parches.', 'La funcion especifica de cada organización sin tener que detenerse en poner parches');
INSERT INTO autodiagnostico VALUES (262, 'En el ámbito local están reemplazando las funciones del Estado. Se dedican acá a la satisfacción de las NBI, en otros lugares a ecología, medio ambiente (en otros paises).', 'La promoción del hombre. En la pirámide de Maslow, el último escalón.');
INSERT INTO autodiagnostico VALUES (125, 'Malo. Estamos supiendo al Estado. Vamos a ver de ahora en adelante cómo va a ser por la gestión que estamos haciendo nosotros.', 'Si no fuera por las ONGs, Tandil sería otro pueblo: empobrecido como tantos otros pueblos que hay. Hay mucha gente se puso a ayudar');
INSERT INTO autodiagnostico VALUES (236, 'Un rol de albergar a las personas que necesitan ayuda, quye vienen a distraerse. Creo que brindan contención.', 'Lo que cumplimos, nada más. Porque más no podemos hacer.');
INSERT INTO autodiagnostico VALUES (127, 'Gracias a las organizaciones de la sociedad civil es que camina la cosa', 'No se crearon para suplrir al estado. Todo recae sobre el docente. Hay una desvalorización del docente.');
INSERT INTO autodiagnostico VALUES (189, 'En el estatuto se prohibe que se traten temas políticos, religiosos o sociales. Si bien yo milito para el Frente para la Victoria no mezclo las cosas y no se permitio que otros usen la organización para hacer política partidiaria. Pero muchas organizaciones son usadas para fines partidiarios, especialmente en época de elecciones.', 'Servir al ciudadano, estar al servicio de los demás, prescindiendo de ansis de figuración, de intereses económicos en el manejo del dinero,etc.');
INSERT INTO autodiagnostico VALUES (159, 'Son lugares donde se van a buscar votos, después no se si tienen poder de decisión o ingerencia en la política.', 'Un rol más activo. Poder tener una participación o que estén representados, poder ser escuchados.');
INSERT INTO autodiagnostico VALUES (263, 'Muchas son bomberos, lo que hacen es salir a emparchar. Se atiende la coyuntura, se les da de comer a los chicos en varios comedores pero no se les dice porque están ahí, que es porque el padre esta sin trabajo y no tiene posibilidades. Lo que se hace es un servico al gobierno, al sistema.', 'Lograr realmente que se solucione sesto, que se transforme');
INSERT INTO autodiagnostico VALUES (177, 'Ápendices de la acción estatal sin posibilidad de co - gestión y por ende, sin posibilidad de implementar poryectos.', 'Un rol mucho más activo en la sociedad, de co- gestión en políticas específicas y d eparticipación activa en la discusión de la crítica cotidiana. Propiciar espacios de debate de la vida cotidiana.');
INSERT INTO autodiagnostico VALUES (4, 'Las organizaciones de la sociedad civil en el escenario social actual están cubriendo falencias de las organizaciones oficiales', 'Deberían colaborar en la administración de los recursos estatales, aportando iniciativas y propuestas de trabajo.');
INSERT INTO autodiagnostico VALUES (166, 'Se considera que en general se cumple el rol que debería estar cumpliendo el Estado, en otras ocasiones según la organización, complementando el accionar del Estado', 'Las organizaciones deben desarrollar su accionar como un complemento del Estado. El Estado no puede hacerse cargo de todo.');
INSERT INTO autodiagnostico VALUES (33, 'Surgen para dar respusta a necesidades de determinada población. De alguna manera están cumpliendo la función que desarrollaban los clubes (nucleamiento/socialización).', 'Depende de la función social que cumpla la organización. La mayoría surge para atender necesidades específicas que debería hacerse cargo el Estado, en otros casos se complementa la acción del Estado y no está mal porque todo no se le puede pedir al Estado');
INSERT INTO autodiagnostico VALUES (7, 'Todos trabajan muy bien para la sociedad de Tandil y para el progreso de Tandil (un ejemplo son las Rosadas del Hospital, Cáritas). Trabajan dando su tiempo su amor', 'El que están cumpliendo');
INSERT INTO autodiagnostico VALUES (241, 'Estamos haciendo aquello que el Gobierno debería hacer y no hace.', 'Trabajar en red y no superponer actividades porque todos trabajamos por el bien común.');
INSERT INTO autodiagnostico VALUES (247, 'Un buen rol, de contención de los chicos, recreación, esparcimiento. Esto por lo que vemos acá. Ayudan a que los chicos no estén en la calle.', 'Hoy en día la contención de los chicos sirve. No vamos a hacer milagros pero sirve. A los chicos le sirve. Creemos que es un buen rol a cumplir');
INSERT INTO autodiagnostico VALUES (264, 'algunos un buen rol porque hace poco que comenzaron con esto y ayudan a otros, por ejemplo una fundación que nos trae computadoras', 'seguir colaborando y visitar donde ellos hicieron las donaciones. Estas donaciones se deberían abocar más a bibliotecas y escuelas.');
INSERT INTO autodiagnostico VALUES (109, 'el rol que no cumple el Estado en cuanto a la asistencia.
Asistencia, asesoramiento, integración.', 'Deberíamos tener más ayuda del Estado y del sector Privado.; tener más recursos y estar más acompañados.');
INSERT INTO autodiagnostico VALUES (106, 'Las organizaciones están cumpliendo un buen rol, pero suplen al Estado. No se distribuye bien.', 'Deberían complementar la acción del estado. Las cooperadoras escolares desde hace años suplen al Estado.');
INSERT INTO autodiagnostico VALUES (146, 'Las organizaciones civiles están cumpliendo el rol que no cumple el Estado. Ej, el Banco de Alimentos Tandil, la cantidad de recursos que ha conseguido Raúl supera los recursos de Acción Social.', 'Fiscalizar, observar la acción del Estado, ver lo que es más urgente: educación, salud, seguridad. Acompañar al Estado.');
INSERT INTO autodiagnostico VALUES (8, 'Ayudar a que la comunidad viva mejor. Sin fines lucrativos', 'El mismo que antes mencionamos');
INSERT INTO autodiagnostico VALUES (1, 'Se hacen cargo. Suplantan lo que no hace el Estado. Creo que tiene que haber una relación màs directa con el Estado. En nuestro caso, con la parte deportiva, automovilismo, que trae turismo y muchas cosas buenas a la ciudad. Hay una falla de visión, no te brindan apoyo.', 'Interrelacionadas con el Estado, fundamentalmente trabajar en conjunto.');
INSERT INTO autodiagnostico VALUES (265, 'no contestado.', 'no contestado');
INSERT INTO autodiagnostico VALUES (148, 'Desde las organizaciones se trabaj para la gente, para que el dia de mañana los chicos tengan donde ir, para que progrese el barrio. Igual esto tendría que hacerlo el estado, no las organizaciones.
El municipio edifica pero no se mantiene el trabajo, por ej. El CIC de Movediza. Lo barrial es muy fuerte, el trabajo de la gente.', 'Ayudar a que el estado haga las cosas y no hacerla ellas enteramente.
Las organizaciones civiles no tiene respaldo, pasa por lo laboral. No se cuida la producción, se destruye. En otros paises no es así.');
INSERT INTO autodiagnostico VALUES (268, 'A las asociaciones se las concibe como personas jurídicas. Buscan particpar. Tienen más fuerza a nivel barrial, no sobre asociaciones. No tienen el camino para llegar a modificar normas.', NULL);
INSERT INTO autodiagnostico VALUES (160, 'Son parte de la vida del Estado. Hay desigualdad.', 'No suplir, pero fortalecer para ser más eficaces.');
INSERT INTO autodiagnostico VALUES (269, 'No tenemos contacto. El trabajo se hace desde el municipio. Este año no se generó ninguna actividad. 
(No responde la pregunta. No se reconoce como OSC)', NULL);
INSERT INTO autodiagnostico VALUES (270, 'Están cumpliendo el rol de denunciar y reclamar.', 'Tendrían que cumplir la función de crear y transmitirla información.');
INSERT INTO autodiagnostico VALUES (34, 'Es muy importante, suplantan las deficiencias del Estado, en parte eh, hay responsabilidades que no se pueden delegar', 'Esta bien que se haga lo que se hace, compartir');


--
-- Data for Name: dificultades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dificultades VALUES (1, 'Sobredemanda');
INSERT INTO dificultades VALUES (2, 'Escasez de Recursos Financieros');
INSERT INTO dificultades VALUES (3, 'Falta de Capacitación');
INSERT INTO dificultades VALUES (4, 'Insuficiencia de Espacios Físicos');
INSERT INTO dificultades VALUES (5, 'Insuficiencia de Equipamiento');
INSERT INTO dificultades VALUES (6, 'Falta de vinculación con otras organizaciones');
INSERT INTO dificultades VALUES (7, 'Dificultades en relación a Recursos Humanos');
INSERT INTO dificultades VALUES (8, 'Dificultades de comunicación y organización interna');
INSERT INTO dificultades VALUES (9, 'Dificultades de vinculación con la población destinataria');
INSERT INTO dificultades VALUES (10, 'Falta de espacio en el medio radial');
INSERT INTO dificultades VALUES (11, 'Vinculada a la situación social actual');
INSERT INTO dificultades VALUES (12, 'Falta de apliación de las leyes por parte del Estado');
INSERT INTO dificultades VALUES (13, 'Falta de Demanda');
INSERT INTO dificultades VALUES (14, 'Corrupción de la comisión anterior que llevo a la intervención del club');
INSERT INTO dificultades VALUES (15, 'Falta de Conocimiento de las autoridades prov. y nacionales');
INSERT INTO dificultades VALUES (16, 'Fata de respuesta del empleador ante las demandas y reclamos');
INSERT INTO dificultades VALUES (17, 'Falta de respuesta a reclamos puntuales del gremio');
INSERT INTO dificultades VALUES (18, 'Falta de compromiso');
INSERT INTO dificultades VALUES (19, 'Financiamiento');
INSERT INTO dificultades VALUES (20, 'Marcado individualismo que dificulta la integración');
INSERT INTO dificultades VALUES (21, 'Burocracia');
INSERT INTO dificultades VALUES (22, 'Falta de políticas reguladoras de la actividad lechera');
INSERT INTO dificultades VALUES (23, 'Dificultades con relación a poder ejecutivo');
INSERT INTO dificultades VALUES (24, 'Falta de motivación en la gente de trabajar e integrar comisiones');
INSERT INTO dificultades VALUES (25, 'Desinterés en algunos socios y eventuales destinatarios');
INSERT INTO dificultades VALUES (26, 'Falta de apoyo de las instituciones en gral');
INSERT INTO dificultades VALUES (27, 'Falta de Vicedirectora y A. Social');
INSERT INTO dificultades VALUES (28, 'Falta de tiempo disponible');
INSERT INTO dificultades VALUES (29, 'Falta de apoyo estatal');
INSERT INTO dificultades VALUES (30, 'No encuentra dificultad');
INSERT INTO dificultades VALUES (31, 'Poco peso de la ley para hacer cumplir lo que corresponde');
INSERT INTO dificultades VALUES (32, 'No reconocimiento por parte de la población de los directivos de las instituciones');
INSERT INTO dificultades VALUES (33, 'Que la población sepa para que estamos');
INSERT INTO dificultades VALUES (34, 'Trabajar de manera honesta en la sociedad');
INSERT INTO dificultades VALUES (35, 'Egoísmo de muchas entidades');
INSERT INTO dificultades VALUES (36, 'Falta de recursos materiales específicos');
INSERT INTO dificultades VALUES (37, 'Inaccesibilidad a créditos');
INSERT INTO dificultades VALUES (38, 'Mal clima');
INSERT INTO dificultades VALUES (39, 'Competencia desleal');
INSERT INTO dificultades VALUES (40, 'Sobreoferta de peluquerías');
INSERT INTO dificultades VALUES (41, 'Ventas en negro');
INSERT INTO dificultades VALUES (42, 'Incompetencia desde municipio');
INSERT INTO dificultades VALUES (43, 'Falta de participación de productores por su idiosincracia');
INSERT INTO dificultades VALUES (44, 'Desconocimiento por parte del Estado');
INSERT INTO dificultades VALUES (45, 'Superposición de funciones con el Estado');
INSERT INTO dificultades VALUES (46, 'Falta de convenio colectivo');
INSERT INTO dificultades VALUES (47, 'Indiferencia de los seres a buscar respuestas, a buscar la perfección y la verdad');
INSERT INTO dificultades VALUES (48, 'Superposición con la Fiesta de la Tradición');
INSERT INTO dificultades VALUES (49, 'falta de identidad como pais');
INSERT INTO dificultades VALUES (50, 'superposición de funciones con otras organizaciones');
INSERT INTO dificultades VALUES (51, 'Falta de participación de nueva gente');


--
-- Data for Name: autodiagnosticodificultades; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO autodiagnosticodificultades VALUES (9, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (9, 3, '2');
INSERT INTO autodiagnosticodificultades VALUES (9, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (10, 5, '1');
INSERT INTO autodiagnosticodificultades VALUES (15, 3, '2');
INSERT INTO autodiagnosticodificultades VALUES (15, 4, '4');
INSERT INTO autodiagnosticodificultades VALUES (15, 6, '5');
INSERT INTO autodiagnosticodificultades VALUES (15, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (15, 46, '1');
INSERT INTO autodiagnosticodificultades VALUES (22, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (22, 4, '1');
INSERT INTO autodiagnosticodificultades VALUES (47, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (47, 6, '4');
INSERT INTO autodiagnosticodificultades VALUES (47, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (47, 8, '3');
INSERT INTO autodiagnosticodificultades VALUES (64, 1, '1');
INSERT INTO autodiagnosticodificultades VALUES (64, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (65, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (65, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (65, 7, '1');
INSERT INTO autodiagnosticodificultades VALUES (101, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (113, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (113, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (113, 7, '4');
INSERT INTO autodiagnosticodificultades VALUES (113, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (120, 2, '4');
INSERT INTO autodiagnosticodificultades VALUES (120, 4, '5');
INSERT INTO autodiagnosticodificultades VALUES (120, 5, '3');
INSERT INTO autodiagnosticodificultades VALUES (120, 6, '2');
INSERT INTO autodiagnosticodificultades VALUES (120, 9, '1');
INSERT INTO autodiagnosticodificultades VALUES (126, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (126, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (130, 2, NULL);
INSERT INTO autodiagnosticodificultades VALUES (133, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (133, 5, '2');
INSERT INTO autodiagnosticodificultades VALUES (133, 6, '3');
INSERT INTO autodiagnosticodificultades VALUES (139, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (139, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (139, 5, '4');
INSERT INTO autodiagnosticodificultades VALUES (139, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (149, 48, '1');
INSERT INTO autodiagnosticodificultades VALUES (218, 1, '1');
INSERT INTO autodiagnosticodificultades VALUES (218, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (218, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (228, 47, '1');
INSERT INTO autodiagnosticodificultades VALUES (235, 7, '1');
INSERT INTO autodiagnosticodificultades VALUES (238, 1, '1');
INSERT INTO autodiagnosticodificultades VALUES (242, 3, '5');
INSERT INTO autodiagnosticodificultades VALUES (242, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (242, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (242, 8, '1');
INSERT INTO autodiagnosticodificultades VALUES (242, 9, '4');
INSERT INTO autodiagnosticodificultades VALUES (243, 3, '5');
INSERT INTO autodiagnosticodificultades VALUES (243, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (243, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (243, 8, '1');
INSERT INTO autodiagnosticodificultades VALUES (243, 9, '4');
INSERT INTO autodiagnosticodificultades VALUES (246, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (250, 1, NULL);
INSERT INTO autodiagnosticodificultades VALUES (250, 44, NULL);
INSERT INTO autodiagnosticodificultades VALUES (250, 45, NULL);
INSERT INTO autodiagnosticodificultades VALUES (254, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (254, 7, '1');
INSERT INTO autodiagnosticodificultades VALUES (258, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (258, 4, '1');
INSERT INTO autodiagnosticodificultades VALUES (259, 3, '4');
INSERT INTO autodiagnosticodificultades VALUES (259, 4, '5');
INSERT INTO autodiagnosticodificultades VALUES (259, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (259, 8, '3');
INSERT INTO autodiagnosticodificultades VALUES (259, 9, '1');
INSERT INTO autodiagnosticodificultades VALUES (260, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (260, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (260, 5, '3');
INSERT INTO autodiagnosticodificultades VALUES (129, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (129, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (129, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (129, 8, '4');
INSERT INTO autodiagnosticodificultades VALUES (221, 44, '1');
INSERT INTO autodiagnosticodificultades VALUES (221, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (221, 5, '3');
INSERT INTO autodiagnosticodificultades VALUES (208, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (208, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (208, 5, '3');
INSERT INTO autodiagnosticodificultades VALUES (208, 7, '4');
INSERT INTO autodiagnosticodificultades VALUES (261, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (202, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (202, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (128, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (128, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (46, 44, '1');
INSERT INTO autodiagnosticodificultades VALUES (46, 9, '2');
INSERT INTO autodiagnosticodificultades VALUES (46, 49, '3');
INSERT INTO autodiagnosticodificultades VALUES (67, 5, '1');
INSERT INTO autodiagnosticodificultades VALUES (219, 1, '1');
INSERT INTO autodiagnosticodificultades VALUES (219, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (219, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (13, 5, '1');
INSERT INTO autodiagnosticodificultades VALUES (231, 4, '1');
INSERT INTO autodiagnosticodificultades VALUES (231, 5, '2');
INSERT INTO autodiagnosticodificultades VALUES (231, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (231, 7, '4');
INSERT INTO autodiagnosticodificultades VALUES (231, 2, '5');
INSERT INTO autodiagnosticodificultades VALUES (262, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (262, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (262, 50, '3');
INSERT INTO autodiagnosticodificultades VALUES (262, 8, '4');
INSERT INTO autodiagnosticodificultades VALUES (262, 3, '5');
INSERT INTO autodiagnosticodificultades VALUES (125, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (127, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (189, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (189, 50, '2');
INSERT INTO autodiagnosticodificultades VALUES (159, 44, '1');
INSERT INTO autodiagnosticodificultades VALUES (263, 18, '1');
INSERT INTO autodiagnosticodificultades VALUES (177, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (177, 1, '2');
INSERT INTO autodiagnosticodificultades VALUES (177, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (4, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (4, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (166, 6, '1');
INSERT INTO autodiagnosticodificultades VALUES (166, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (166, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (33, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (33, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (33, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (7, 30, '1');
INSERT INTO autodiagnosticodificultades VALUES (241, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (241, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (241, 45, '3');
INSERT INTO autodiagnosticodificultades VALUES (247, 4, '1');
INSERT INTO autodiagnosticodificultades VALUES (247, 2, '2');
INSERT INTO autodiagnosticodificultades VALUES (264, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (264, 44, '2');
INSERT INTO autodiagnosticodificultades VALUES (264, 4, '3');
INSERT INTO autodiagnosticodificultades VALUES (264, 7, '4');
INSERT INTO autodiagnosticodificultades VALUES (264, 9, '5');
INSERT INTO autodiagnosticodificultades VALUES (109, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (109, 6, '2');
INSERT INTO autodiagnosticodificultades VALUES (109, 7, '3');
INSERT INTO autodiagnosticodificultades VALUES (146, 1, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 2, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 44, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 4, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 5, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 7, NULL);
INSERT INTO autodiagnosticodificultades VALUES (146, 9, NULL);
INSERT INTO autodiagnosticodificultades VALUES (8, 2, NULL);
INSERT INTO autodiagnosticodificultades VALUES (8, 5, NULL);
INSERT INTO autodiagnosticodificultades VALUES (265, 2, NULL);
INSERT INTO autodiagnosticodificultades VALUES (148, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (148, 9, '1');
INSERT INTO autodiagnosticodificultades VALUES (148, 6, '2');
INSERT INTO autodiagnosticodificultades VALUES (148, 7, '2');
INSERT INTO autodiagnosticodificultades VALUES (148, 8, '3');
INSERT INTO autodiagnosticodificultades VALUES (268, 30, '1');
INSERT INTO autodiagnosticodificultades VALUES (160, 50, '1');
INSERT INTO autodiagnosticodificultades VALUES (269, 2, '1');
INSERT INTO autodiagnosticodificultades VALUES (269, 3, '2');
INSERT INTO autodiagnosticodificultades VALUES (269, 44, '3');
INSERT INTO autodiagnosticodificultades VALUES (269, 5, '4');
INSERT INTO autodiagnosticodificultades VALUES (269, 6, '5');
INSERT INTO autodiagnosticodificultades VALUES (270, 9, '1');
INSERT INTO autodiagnosticodificultades VALUES (270, 4, '2');
INSERT INTO autodiagnosticodificultades VALUES (270, 2, '3');
INSERT INTO autodiagnosticodificultades VALUES (270, 8, '4');
INSERT INTO autodiagnosticodificultades VALUES (270, 7, '5');
INSERT INTO autodiagnosticodificultades VALUES (34, 51, NULL);


--
-- Data for Name: rolorganizaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO rolorganizaciones VALUES (1, 'Suplir al Estado');
INSERT INTO rolorganizaciones VALUES (2, 'Complementar la acción del Estado');
INSERT INTO rolorganizaciones VALUES (3, 'Interpelar y denunciar al Estado');
INSERT INTO rolorganizaciones VALUES (4, 'Contener a la población ante la crisis socio-económica actual');
INSERT INTO rolorganizaciones VALUES (5, 'Reivindicar derechos sociales');
INSERT INTO rolorganizaciones VALUES (6, 'Administrar con transparencia y eficacia los recursos del Estado y de la comunidad');
INSERT INTO rolorganizaciones VALUES (7, 'Trabajar en forma autónoma e independiente del Estado');
INSERT INTO rolorganizaciones VALUES (8, 'Propiciar iniciativas creativas y eficaces de atención de las necesidades de la población');
INSERT INTO rolorganizaciones VALUES (9, 'Construir demandas sociales');
INSERT INTO rolorganizaciones VALUES (10, 'Tendrían que poder hacer más');
INSERT INTO rolorganizaciones VALUES (11, 'Entre todas hacer todo lo que se necesite');
INSERT INTO rolorganizaciones VALUES (12, 'Desconocimiento de cómo trabajan las instituciones');
INSERT INTO rolorganizaciones VALUES (13, 'Cumplir con los objetivos para lo que fueron creadas');
INSERT INTO rolorganizaciones VALUES (14, 'Trabajan hasta donde pueden');
INSERT INTO rolorganizaciones VALUES (15, 'Enfrentar a un sistema opresor e inoperante');
INSERT INTO rolorganizaciones VALUES (16, 'Agruparse para actuar en forma cooperativa');
INSERT INTO rolorganizaciones VALUES (17, 'Lo que delimitan sus objetivos fundacionales');
INSERT INTO rolorganizaciones VALUES (18, 'Generar espacios participativos');
INSERT INTO rolorganizaciones VALUES (19, 'Espacios con poca participación');
INSERT INTO rolorganizaciones VALUES (20, 'Canales no transparentes para administrar recursos');
INSERT INTO rolorganizaciones VALUES (21, 'Producción / Capacitación');
INSERT INTO rolorganizaciones VALUES (22, 'Receptoras de problemas');
INSERT INTO rolorganizaciones VALUES (23, 'Trabajo descoordinado e individualista');
INSERT INTO rolorganizaciones VALUES (24, 'Coordinarse');
INSERT INTO rolorganizaciones VALUES (25, 'Organización en cuanto a la distribución de recursos para que no exista superposición');
INSERT INTO rolorganizaciones VALUES (26, 'Dedicarse a lo Recerativo');
INSERT INTO rolorganizaciones VALUES (27, 'General espacios de gestión asociada de recursos');
INSERT INTO rolorganizaciones VALUES (28, 'Organización de una nueva cultura');
INSERT INTO rolorganizaciones VALUES (29, 'Trabajar sectorialmante de acuerdo a una actividad');
INSERT INTO rolorganizaciones VALUES (30, 'Lideradas por oligarcas');
INSERT INTO rolorganizaciones VALUES (31, 'Poner Orden / Controlar');
INSERT INTO rolorganizaciones VALUES (32, 'Otras');
INSERT INTO rolorganizaciones VALUES (33, 'Ser intermediario');
INSERT INTO rolorganizaciones VALUES (34, 'Mantenerse en el tiempo a traves de tener una obra social buena.');
INSERT INTO rolorganizaciones VALUES (35, 'Hacer cumplir la ley');
INSERT INTO rolorganizaciones VALUES (36, 'Atender las necesidades de la gente');
INSERT INTO rolorganizaciones VALUES (37, 'Lo que hacen está bien');
INSERT INTO rolorganizaciones VALUES (38, 'Contención Social');
INSERT INTO rolorganizaciones VALUES (39, 'Priorizan su rédito personal y no el comunitario');
INSERT INTO rolorganizaciones VALUES (40, 'Asistir a la población en áreas específicas');
INSERT INTO rolorganizaciones VALUES (41, 'Priman intereses personales');
INSERT INTO rolorganizaciones VALUES (42, 'Trabajar honestamente en la sociedad');
INSERT INTO rolorganizaciones VALUES (43, 'Son desconocidas por el gobierno');
INSERT INTO rolorganizaciones VALUES (44, 'Voluntad de hacer, falta de planificación');
INSERT INTO rolorganizaciones VALUES (45, 'Propiciar el encuentro de la comunidad');
INSERT INTO rolorganizaciones VALUES (46, 'Crear un espacio de participación');
INSERT INTO rolorganizaciones VALUES (47, 'Luchar por la obtención de recursos');
INSERT INTO rolorganizaciones VALUES (48, 'Fomentar la vagancia');
INSERT INTO rolorganizaciones VALUES (49, 'Dedicarse a actividades deportivas y/o recreativas');
INSERT INTO rolorganizaciones VALUES (50, 'Trabajan de manera eficiente');
INSERT INTO rolorganizaciones VALUES (51, 'Ayudan mucho');
INSERT INTO rolorganizaciones VALUES (52, 'Son desconocidas por el Estado');
INSERT INTO rolorganizaciones VALUES (53, 'Trabajo en red');
INSERT INTO rolorganizaciones VALUES (54, 'No debería realizar tareas por que le corresponden al estado');
INSERT INTO rolorganizaciones VALUES (55, 'Ayudar a la gente');
INSERT INTO rolorganizaciones VALUES (56, 'Atender la necesidades de la Población');
INSERT INTO rolorganizaciones VALUES (57, 'Actuar según las necesidades de la gente');
INSERT INTO rolorganizaciones VALUES (58, 'Ocuparse de las necesidades primarias');
INSERT INTO rolorganizaciones VALUES (59, 'Capacitación');
INSERT INTO rolorganizaciones VALUES (60, 'Fragmentan la realidad');
INSERT INTO rolorganizaciones VALUES (61, 'Trabajar con apoyo del Estado');
INSERT INTO rolorganizaciones VALUES (62, 'Educar');
INSERT INTO rolorganizaciones VALUES (63, 'Formar y capacitar futuros líderes políticos');
INSERT INTO rolorganizaciones VALUES (64, 'Contener y orientar a la juventud');
INSERT INTO rolorganizaciones VALUES (65, 'Mejoramiento de la calidad de vida en la formación cultural');
INSERT INTO rolorganizaciones VALUES (66, 'Difundir la identidad nacional');
INSERT INTO rolorganizaciones VALUES (67, 'Entrar en loa distribución de la riqueza');
INSERT INTO rolorganizaciones VALUES (68, 'Promoción del Hombre');
INSERT INTO rolorganizaciones VALUES (69, 'Instrumento usado en epoca de elecciones');
INSERT INTO rolorganizaciones VALUES (70, 'Espacios utilizados en época de elecciones');
INSERT INTO rolorganizaciones VALUES (71, 'mecanismos de clientelismo político');
INSERT INTO rolorganizaciones VALUES (72, 'Ápendice de la acción estatal');
INSERT INTO rolorganizaciones VALUES (73, 'Co - gestión de políticas');
INSERT INTO rolorganizaciones VALUES (74, 'Asistencia a otras organizaciones');
INSERT INTO rolorganizaciones VALUES (75, 'Ayudar a que la comunidad viva mejor');
INSERT INTO rolorganizaciones VALUES (76, 'crear y transmitir información');


--
-- Data for Name: autodiagnosticoroldeberiancumplir; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO autodiagnosticoroldeberiancumplir VALUES (9, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (9, 9);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (10, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (15, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (22, 64);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (47, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (47, 38);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (47, 62);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (64, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (65, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (101, 38);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (113, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (113, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (120, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (120, 7);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (126, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (130, 61);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (133, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (139, 7);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (149, 62);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (218, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (218, 5);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (218, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (228, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (228, 53);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (228, 61);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (235, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (238, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (238, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (242, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (242, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (242, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (243, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (243, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (243, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (246, 63);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (254, 5);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (254, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (258, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (259, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (259, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (259, 7);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (259, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (260, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (260, 9);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (129, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (221, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (221, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (208, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (208, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (261, 32);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (261, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (202, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (128, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (46, 66);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (67, 13);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (219, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (219, 5);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (219, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (13, 67);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (231, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (262, 68);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (125, 1);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (236, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (127, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (189, 57);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (159, 9);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (263, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (177, 73);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (4, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (4, 7);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (166, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (33, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (7, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (241, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (241, 6);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (241, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (247, 4);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (264, 74);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (109, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (109, 5);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (109, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (106, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (146, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (8, 75);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (1, 61);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (148, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (148, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (160, 2);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (160, 8);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (160, 9);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (270, 76);
INSERT INTO autodiagnosticoroldeberiancumplir VALUES (34, 2);


--
-- Data for Name: autodiagnosticorolorganizaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO autodiagnosticorolorganizaciones VALUES (9, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (9, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (10, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (15, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (15, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (22, 49);
INSERT INTO autodiagnosticorolorganizaciones VALUES (22, 62);
INSERT INTO autodiagnosticorolorganizaciones VALUES (47, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (64, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (65, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (101, 38);
INSERT INTO autodiagnosticorolorganizaciones VALUES (113, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (113, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (120, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (120, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (126, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (130, 37);
INSERT INTO autodiagnosticorolorganizaciones VALUES (133, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (135, 50);
INSERT INTO autodiagnosticorolorganizaciones VALUES (139, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (149, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (218, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (228, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (228, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (238, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (242, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (242, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (242, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (243, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (243, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (243, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (246, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (250, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (250, 59);
INSERT INTO autodiagnosticorolorganizaciones VALUES (254, 60);
INSERT INTO autodiagnosticorolorganizaciones VALUES (258, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (259, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (259, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (259, 59);
INSERT INTO autodiagnosticorolorganizaciones VALUES (260, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (260, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (260, 9);
INSERT INTO autodiagnosticorolorganizaciones VALUES (129, 7);
INSERT INTO autodiagnosticorolorganizaciones VALUES (221, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (221, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (221, 7);
INSERT INTO autodiagnosticorolorganizaciones VALUES (208, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (261, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (202, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (202, 23);
INSERT INTO autodiagnosticorolorganizaciones VALUES (202, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (128, 7);
INSERT INTO autodiagnosticorolorganizaciones VALUES (46, 65);
INSERT INTO autodiagnosticorolorganizaciones VALUES (67, 7);
INSERT INTO autodiagnosticorolorganizaciones VALUES (219, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (13, 67);
INSERT INTO autodiagnosticorolorganizaciones VALUES (231, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (262, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (262, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (125, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (236, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (127, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (189, 70);
INSERT INTO autodiagnosticorolorganizaciones VALUES (159, 71);
INSERT INTO autodiagnosticorolorganizaciones VALUES (263, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (263, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (177, 72);
INSERT INTO autodiagnosticorolorganizaciones VALUES (4, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (166, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (166, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (33, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (33, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (33, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (7, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (241, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (247, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (264, 74);
INSERT INTO autodiagnosticorolorganizaciones VALUES (109, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (109, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (109, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (106, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (106, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (146, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (8, 75);
INSERT INTO autodiagnosticorolorganizaciones VALUES (1, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (148, 1);
INSERT INTO autodiagnosticorolorganizaciones VALUES (148, 4);
INSERT INTO autodiagnosticorolorganizaciones VALUES (268, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (268, 3);
INSERT INTO autodiagnosticorolorganizaciones VALUES (160, 2);
INSERT INTO autodiagnosticorolorganizaciones VALUES (160, 8);
INSERT INTO autodiagnosticorolorganizaciones VALUES (160, 9);
INSERT INTO autodiagnosticorolorganizaciones VALUES (270, 3);
INSERT INTO autodiagnosticorolorganizaciones VALUES (270, 5);
INSERT INTO autodiagnosticorolorganizaciones VALUES (270, 9);
INSERT INTO autodiagnosticorolorganizaciones VALUES (34, 2);


--
-- Data for Name: capacitaciontema; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO capacitaciontema VALUES (1, 'Educación');
INSERT INTO capacitaciontema VALUES (2, 'Otro');
INSERT INTO capacitaciontema VALUES (3, 'Espiritualidad');
INSERT INTO capacitaciontema VALUES (4, 'Cpacitación laboral');
INSERT INTO capacitaciontema VALUES (5, 'cuestion organizacional');
INSERT INTO capacitaciontema VALUES (6, 'sobre temas de los proyectos');
INSERT INTO capacitaciontema VALUES (7, 'sobre los destinatarios');
INSERT INTO capacitaciontema VALUES (8, 'Ralización de Diagnósticos');
INSERT INTO capacitaciontema VALUES (9, 'cooperativismo');
INSERT INTO capacitaciontema VALUES (10, 'formulación y realizacion de proyectos');
INSERT INTO capacitaciontema VALUES (11, 'direccion organizaconal');
INSERT INTO capacitaciontema VALUES (12, 'Atención al público');
INSERT INTO capacitaciontema VALUES (13, 'promoción y lectura');
INSERT INTO capacitaciontema VALUES (14, 'valores');
INSERT INTO capacitaciontema VALUES (15, 'computación');
INSERT INTO capacitaciontema VALUES (16, 'marketing');
INSERT INTO capacitaciontema VALUES (17, 'Hisotira argentina');
INSERT INTO capacitaciontema VALUES (18, 'Violencia');
INSERT INTO capacitaciontema VALUES (19, 'relación poder judicial - ONG');
INSERT INTO capacitaciontema VALUES (20, 'Economía Social');
INSERT INTO capacitaciontema VALUES (21, 'voluntariado');
INSERT INTO capacitaciontema VALUES (22, 'Administración hospitalaria');
INSERT INTO capacitaciontema VALUES (23, 'Organización de competencias');


--
-- Data for Name: capacitaciontema_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO capacitaciontema_x_organizacion VALUES (9, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (9, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (9, 7);
INSERT INTO capacitaciontema_x_organizacion VALUES (47, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (47, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (64, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (64, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (64, 8);
INSERT INTO capacitaciontema_x_organizacion VALUES (65, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (126, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (218, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (228, 3);
INSERT INTO capacitaciontema_x_organizacion VALUES (242, 3);
INSERT INTO capacitaciontema_x_organizacion VALUES (243, 3);
INSERT INTO capacitaciontema_x_organizacion VALUES (250, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (250, 3);
INSERT INTO capacitaciontema_x_organizacion VALUES (259, 3);
INSERT INTO capacitaciontema_x_organizacion VALUES (260, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (261, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (129, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (129, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (221, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (221, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (208, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (208, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (4, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (67, 9);
INSERT INTO capacitaciontema_x_organizacion VALUES (67, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (67, 10);
INSERT INTO capacitaciontema_x_organizacion VALUES (219, 12);
INSERT INTO capacitaciontema_x_organizacion VALUES (219, 13);
INSERT INTO capacitaciontema_x_organizacion VALUES (127, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (231, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (262, 4);
INSERT INTO capacitaciontema_x_organizacion VALUES (262, 14);
INSERT INTO capacitaciontema_x_organizacion VALUES (236, 15);
INSERT INTO capacitaciontema_x_organizacion VALUES (159, 4);
INSERT INTO capacitaciontema_x_organizacion VALUES (159, 16);
INSERT INTO capacitaciontema_x_organizacion VALUES (263, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (263, 17);
INSERT INTO capacitaciontema_x_organizacion VALUES (177, 18);
INSERT INTO capacitaciontema_x_organizacion VALUES (177, 19);
INSERT INTO capacitaciontema_x_organizacion VALUES (166, 1);
INSERT INTO capacitaciontema_x_organizacion VALUES (166, 20);
INSERT INTO capacitaciontema_x_organizacion VALUES (33, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (33, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (247, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (241, 7);
INSERT INTO capacitaciontema_x_organizacion VALUES (241, 21);
INSERT INTO capacitaciontema_x_organizacion VALUES (264, 5);
INSERT INTO capacitaciontema_x_organizacion VALUES (109, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (106, 12);
INSERT INTO capacitaciontema_x_organizacion VALUES (106, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (146, 22);
INSERT INTO capacitaciontema_x_organizacion VALUES (1, 23);
INSERT INTO capacitaciontema_x_organizacion VALUES (268, 6);
INSERT INTO capacitaciontema_x_organizacion VALUES (34, 5);


--
-- Data for Name: codigos_contenido_registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO codigos_contenido_registro VALUES (1, 'Reuniones institucionales');
INSERT INTO codigos_contenido_registro VALUES (2, 'Datos personales de los miembros/destinatarios de la organización');
INSERT INTO codigos_contenido_registro VALUES (3, 'Datos demográficos de los miembros/destinatarios de la organización');
INSERT INTO codigos_contenido_registro VALUES (4, 'Situación socioeconómica de la población');
INSERT INTO codigos_contenido_registro VALUES (5, 'Datos del personal');
INSERT INTO codigos_contenido_registro VALUES (6, 'Producción');
INSERT INTO codigos_contenido_registro VALUES (7, 'Proyectos');
INSERT INTO codigos_contenido_registro VALUES (8, 'Datos del Club (horas de vuelos, campo, etc)');
INSERT INTO codigos_contenido_registro VALUES (9, 'Otro');
INSERT INTO codigos_contenido_registro VALUES (10, 'Datos de los Socios');
INSERT INTO codigos_contenido_registro VALUES (11, 'Trabajos');
INSERT INTO codigos_contenido_registro VALUES (12, 'Síntesis de la historia del grupo');
INSERT INTO codigos_contenido_registro VALUES (13, 'Hechos puntuales problemáticos');
INSERT INTO codigos_contenido_registro VALUES (14, 'Ranking y Torneos');
INSERT INTO codigos_contenido_registro VALUES (15, 'Desarrollo Técnico del Deporte');
INSERT INTO codigos_contenido_registro VALUES (16, 'Asistencia');
INSERT INTO codigos_contenido_registro VALUES (17, 'Actividades Específicas');
INSERT INTO codigos_contenido_registro VALUES (18, 'Servicios Religiosos');
INSERT INTO codigos_contenido_registro VALUES (19, 'Historia de las Escenas');
INSERT INTO codigos_contenido_registro VALUES (20, 'Leyes y resoluciones');
INSERT INTO codigos_contenido_registro VALUES (21, 'Evaluación de jurados');
INSERT INTO codigos_contenido_registro VALUES (22, 'Demandas / Pedidos / Solcitudes');
INSERT INTO codigos_contenido_registro VALUES (23, 'Recursos (Ingresos / Egresos)');
INSERT INTO codigos_contenido_registro VALUES (24, 'Relación con casa matriz y otras organizaciones');
INSERT INTO codigos_contenido_registro VALUES (25, 'Funcionalidad de los asociados');
INSERT INTO codigos_contenido_registro VALUES (26, 'Diferentes actividades');
INSERT INTO codigos_contenido_registro VALUES (27, 'Notas a empresas u organismos');
INSERT INTO codigos_contenido_registro VALUES (28, 'Jugadores de futbol y resultados');
INSERT INTO codigos_contenido_registro VALUES (29, 'Registro de visitas domiciliarias');
INSERT INTO codigos_contenido_registro VALUES (30, 'Historias de animales');
INSERT INTO codigos_contenido_registro VALUES (31, 'Inventario');
INSERT INTO codigos_contenido_registro VALUES (32, 'Propuestas y Asambleas');
INSERT INTO codigos_contenido_registro VALUES (33, 'Evaluaciones en conjunto con otras instituciones');
INSERT INTO codigos_contenido_registro VALUES (34, 'Denuncias de los afiliados');
INSERT INTO codigos_contenido_registro VALUES (35, 'Resultados de partidos');
INSERT INTO codigos_contenido_registro VALUES (36, 'Historia de la Organización');
INSERT INTO codigos_contenido_registro VALUES (37, 'Comunicación con otras organizaciones (clubes)');
INSERT INTO codigos_contenido_registro VALUES (38, 'Eventos');
INSERT INTO codigos_contenido_registro VALUES (39, 'Distribución de las donaciones');
INSERT INTO codigos_contenido_registro VALUES (40, 'Fiesta del Inmigrante y actos del Día del Inmigrante');
INSERT INTO codigos_contenido_registro VALUES (41, 'Distribución de horarios de trabajo');
INSERT INTO codigos_contenido_registro VALUES (42, 'Acciones cotidianas');
INSERT INTO codigos_contenido_registro VALUES (43, 'Información científica');
INSERT INTO codigos_contenido_registro VALUES (44, 'Cursos');
INSERT INTO codigos_contenido_registro VALUES (45, 'Seguimiento, evaluación, eventos, fotos');
INSERT INTO codigos_contenido_registro VALUES (46, 'Instituciones y personas cubiertas');
INSERT INTO codigos_contenido_registro VALUES (47, 'Datos pedagógicos y sanitarios');
INSERT INTO codigos_contenido_registro VALUES (48, 'Todo');
INSERT INTO codigos_contenido_registro VALUES (49, 'Evaluación');
INSERT INTO codigos_contenido_registro VALUES (50, 'Información referente a la institución');
INSERT INTO codigos_contenido_registro VALUES (51, 'Publicaciones que se realizan');
INSERT INTO codigos_contenido_registro VALUES (52, 'Objetivos y avances');
INSERT INTO codigos_contenido_registro VALUES (53, 'Información sobre la situación de cada club');
INSERT INTO codigos_contenido_registro VALUES (54, 'Registro de Donaciones que Realizan');
INSERT INTO codigos_contenido_registro VALUES (55, 'Decisiones que se toman');
INSERT INTO codigos_contenido_registro VALUES (56, 'Demandas de los socios');
INSERT INTO codigos_contenido_registro VALUES (57, 'casamientos, nacimientos, bautismos, campamentos');
INSERT INTO codigos_contenido_registro VALUES (58, 'Desarrollo de actividades');
INSERT INTO codigos_contenido_registro VALUES (59, 'Entrevistas');
INSERT INTO codigos_contenido_registro VALUES (60, 'Derivacion de instituciones');
INSERT INTO codigos_contenido_registro VALUES (61, 'Información nutricional y médica de los jugadores');
INSERT INTO codigos_contenido_registro VALUES (62, 'dibujos canciones y versos');
INSERT INTO codigos_contenido_registro VALUES (63, 'Autrizaciones de los chicos');
INSERT INTO codigos_contenido_registro VALUES (64, 'Debates');
INSERT INTO codigos_contenido_registro VALUES (65, 'Asambleas');


--
-- Data for Name: formas_de_registro; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO formas_de_registro VALUES (1, 'Actas');
INSERT INTO formas_de_registro VALUES (2, 'Grabaciones');
INSERT INTO formas_de_registro VALUES (3, 'Informes');
INSERT INTO formas_de_registro VALUES (4, 'Videos');
INSERT INTO formas_de_registro VALUES (5, 'Planillas');
INSERT INTO formas_de_registro VALUES (6, 'Estadísticas');
INSERT INTO formas_de_registro VALUES (7, 'Diskette');
INSERT INTO formas_de_registro VALUES (8, 'Fichas');
INSERT INTO formas_de_registro VALUES (9, 'Documentos');
INSERT INTO formas_de_registro VALUES (10, 'Expedientes');
INSERT INTO formas_de_registro VALUES (11, 'Historias clínicas');
INSERT INTO formas_de_registro VALUES (12, 'Otras');
INSERT INTO formas_de_registro VALUES (13, 'Libros');
INSERT INTO formas_de_registro VALUES (14, 'Archivos de notas');
INSERT INTO formas_de_registro VALUES (15, 'Cuaderno Diario');
INSERT INTO formas_de_registro VALUES (16, 'Recortes periodísticos');
INSERT INTO formas_de_registro VALUES (17, 'Fotos');
INSERT INTO formas_de_registro VALUES (18, 'Memoria');
INSERT INTO formas_de_registro VALUES (19, 'Tablas de pocisiones');
INSERT INTO formas_de_registro VALUES (20, 'Circulares');
INSERT INTO formas_de_registro VALUES (21, 'En computadora');
INSERT INTO formas_de_registro VALUES (22, 'Registros');
INSERT INTO formas_de_registro VALUES (23, 'Cuaderno de firmas');
INSERT INTO formas_de_registro VALUES (24, 'CD');
INSERT INTO formas_de_registro VALUES (25, 'Crónicas');
INSERT INTO formas_de_registro VALUES (26, 'Encuestas');
INSERT INTO formas_de_registro VALUES (27, 'Publicación');
INSERT INTO formas_de_registro VALUES (28, 'Cuadernos');
INSERT INTO formas_de_registro VALUES (29, 'Juguetes y elementos');
INSERT INTO formas_de_registro VALUES (30, 'boletín mensual');
INSERT INTO formas_de_registro VALUES (31, 'Libro de socios');
INSERT INTO formas_de_registro VALUES (32, 'archivo');
INSERT INTO formas_de_registro VALUES (33, 'padrones');
INSERT INTO formas_de_registro VALUES (34, 'documentos informáticos');


--
-- Data for Name: codigo_x_forma_registro_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (258, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (258, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (258, 31, 29, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (258, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 3, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 4, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 5, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (250, 16, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (10, 1, 1, 1);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (10, 58, 3, 2);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (10, 5, 5, 3);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (10, 2, 8, 3);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (10, 3, 8, 3);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (101, 1, 1, 1);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (101, 58, 1, 2);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (101, 2, 21, 1);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (242, 2, 5, NULL);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (242, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (242, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (242, 1, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (242, 58, 18, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (130, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (130, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (130, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (130, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (9, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (9, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (9, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (9, 59, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (9, 36, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 2, 8, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 3, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (243, 58, 30, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (259, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (259, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (259, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (259, 2, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (113, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (113, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (113, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (113, 2, 31, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 16, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (254, 1, 12, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 60, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 3, 8, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 4, 8, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (64, 5, 8, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (15, 4, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (126, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (126, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (126, 1, 2, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (126, 61, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (22, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (228, 1, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (228, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (228, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (228, 58, 20, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (149, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (149, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (149, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (149, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (238, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (238, 2, 32, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (246, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (246, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (47, 3, 31, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (47, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (47, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (47, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 58, 2, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 58, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 58, 32, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 62, 32, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (260, 63, 14, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (65, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (65, 1, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (65, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 4, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 5, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 1, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 4, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 1, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 3, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (135, 4, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (139, 58, 2, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (139, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (235, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (235, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (221, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (221, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (221, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (218, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (218, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (218, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (218, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (133, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (133, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (133, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (133, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (133, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 1, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (261, 58, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (120, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (120, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (120, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (129, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (129, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (129, 4, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (129, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (129, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (202, 1, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (202, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (202, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (208, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (208, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (208, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (208, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (4, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (4, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (4, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (4, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (128, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (128, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (128, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (46, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (46, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (46, 38, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (46, 38, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (67, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (67, 64, 2, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (67, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (67, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (67, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (219, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (219, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (219, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (219, 58, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (219, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 2, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (127, 4, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (13, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (13, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (13, 2, 33, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (231, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (231, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (231, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (231, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 4, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 5, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 2, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (262, 58, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (125, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (125, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (125, 22, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (236, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (236, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (236, 5, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (236, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (189, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (189, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (189, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (189, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (159, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (159, 2, 34, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (159, 5, 34, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (159, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 2, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 3, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 3, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 4, 25, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 4, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 5, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (263, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 1, 28, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 4, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (177, 26, 28, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (166, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (166, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (166, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (33, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (33, 58, 18, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (33, 2, 31, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (33, 1, 13, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 58, 16, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 38, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 1, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (7, 38, 16, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (247, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (247, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (247, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (247, 58, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (247, 58, 17, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 4, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 5, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (241, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 3, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (264, 58, 4, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (109, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (109, 2, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (109, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (106, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (106, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (106, 3, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (146, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (146, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (146, 65, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (8, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (8, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (8, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (8, 10, 31, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (8, 23, 18, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (1, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (1, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (1, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (1, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (1, 58, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (265, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 3, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 4, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 5, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (148, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (268, 2, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (268, 2, 5, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (160, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (160, 1, 3, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (269, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (269, 58, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (270, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (270, 2, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (270, 3, 6, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (34, 1, 1, 0);
INSERT INTO codigo_x_forma_registro_x_organizacion VALUES (34, 2, 5, 0);


--
-- Data for Name: como_efectuan_demandas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO como_efectuan_demandas VALUES (1, 'Individualmente');
INSERT INTO como_efectuan_demandas VALUES (2, 'Grupalmente');
INSERT INTO como_efectuan_demandas VALUES (3, 'Colectivamente');
INSERT INTO como_efectuan_demandas VALUES (4, 'Institucionalmente');


--
-- Data for Name: como_efectuan_demandas_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO como_efectuan_demandas_x_organizacion VALUES (9, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (10, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (15, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (47, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (64, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (64, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (65, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (101, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (101, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (113, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (133, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (133, 2);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (149, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (218, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (228, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (235, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (238, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (242, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (243, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (246, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (250, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (254, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (258, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (259, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (260, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (260, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (261, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (261, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (129, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (221, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (208, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (4, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (202, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (128, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (46, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (67, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (219, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (127, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (13, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (231, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (262, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (125, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (236, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (189, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (159, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (263, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (263, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (177, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (166, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (33, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (33, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (7, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (241, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (264, 4);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (109, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (106, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (146, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (8, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (1, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (148, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (268, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (269, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (270, 1);
INSERT INTO como_efectuan_demandas_x_organizacion VALUES (34, 4);


--
-- Data for Name: condicionescontratacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO condicionescontratacion VALUES (1, 'Personal temporario contratado');
INSERT INTO condicionescontratacion VALUES (2, 'Personal en relación de dependencia');
INSERT INTO condicionescontratacion VALUES (3, 'Becas');
INSERT INTO condicionescontratacion VALUES (4, 'Autónomo sin contrato');
INSERT INTO condicionescontratacion VALUES (5, 'Pasantías');
INSERT INTO condicionescontratacion VALUES (6, 'Planes de empleo');
INSERT INTO condicionescontratacion VALUES (7, 'Otros');

--
-- Data for Name: demandas_sociales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO demandas_sociales VALUES (1, 'Trabajo');
INSERT INTO demandas_sociales VALUES (2, 'Medicamentos / salud');
INSERT INTO demandas_sociales VALUES (3, 'Alimentación');
INSERT INTO demandas_sociales VALUES (4, 'Gestiones institucionales');
INSERT INTO demandas_sociales VALUES (5, 'Materiales para la vivienda');
INSERT INTO demandas_sociales VALUES (6, 'Terreno / vivienda');
INSERT INTO demandas_sociales VALUES (7, 'Asesoramiento o asistencia técnica');
INSERT INTO demandas_sociales VALUES (8, 'Ayuda económica (subsidio, beca, crédito)');
INSERT INTO demandas_sociales VALUES (9, 'Equipamiento');
INSERT INTO demandas_sociales VALUES (10, 'Contención');
INSERT INTO demandas_sociales VALUES (11, 'Asistencia profesional');
INSERT INTO demandas_sociales VALUES (12, 'Servicios recreativos o culturales');
INSERT INTO demandas_sociales VALUES (13, 'Servicios educativos');
INSERT INTO demandas_sociales VALUES (14, 'Otro');
INSERT INTO demandas_sociales VALUES (15, 'Vestimenta');
INSERT INTO demandas_sociales VALUES (16, 'Promoción');
INSERT INTO demandas_sociales VALUES (17, 'Colectas');
INSERT INTO demandas_sociales VALUES (18, 'Bibliografía');
INSERT INTO demandas_sociales VALUES (19, 'Transporte');
INSERT INTO demandas_sociales VALUES (20, 'Gremiales');
INSERT INTO demandas_sociales VALUES (21, 'Servicios Religiosos');
INSERT INTO demandas_sociales VALUES (22, 'Instalaciones');
INSERT INTO demandas_sociales VALUES (23, 'Seguridad Social');
INSERT INTO demandas_sociales VALUES (24, 'Trastornos Alimenticios - Obesidad');
INSERT INTO demandas_sociales VALUES (25, 'Promoción - Protección comercial/financiera');
INSERT INTO demandas_sociales VALUES (26, 'Atención de animales perdidos');
INSERT INTO demandas_sociales VALUES (27, 'Participación en Microemprendimientos');
INSERT INTO demandas_sociales VALUES (28, 'Medio Ambiente');
INSERT INTO demandas_sociales VALUES (29, 'Nucleamiento / Organización / Apoyo');
INSERT INTO demandas_sociales VALUES (30, 'Defensa de Intereses');
INSERT INTO demandas_sociales VALUES (31, 'Mano de Obra para Pintura');
INSERT INTO demandas_sociales VALUES (32, 'Prestamo del predio deportivo');
INSERT INTO demandas_sociales VALUES (33, 'Servicios Religiosos');
INSERT INTO demandas_sociales VALUES (34, 'Instalaciones');
INSERT INTO demandas_sociales VALUES (35, 'Vacunas');
INSERT INTO demandas_sociales VALUES (36, 'Material Bibliográfico');
INSERT INTO demandas_sociales VALUES (37, 'Servicios de infraestructura');
INSERT INTO demandas_sociales VALUES (38, 'Control de la Matrícula');
INSERT INTO demandas_sociales VALUES (39, 'Información');
INSERT INTO demandas_sociales VALUES (40, 'Mayor cant. de actividades');
INSERT INTO demandas_sociales VALUES (41, 'Económico / product.');
INSERT INTO demandas_sociales VALUES (42, 'Mayor representación');
INSERT INTO demandas_sociales VALUES (43, 'Préstamo de espacios físicos');
INSERT INTO demandas_sociales VALUES (44, 'Serv. De Transporte');
INSERT INTO demandas_sociales VALUES (45, 'Alojamiento');
INSERT INTO demandas_sociales VALUES (46, 'Ayuda Espiritual');
INSERT INTO demandas_sociales VALUES (47, 'Asistencia Profesional');
INSERT INTO demandas_sociales VALUES (48, 'Material de lectura');
INSERT INTO demandas_sociales VALUES (49, 'Información');
INSERT INTO demandas_sociales VALUES (50, 'Condiciones de Trabajo');
INSERT INTO demandas_sociales VALUES (51, 'Formación');
INSERT INTO demandas_sociales VALUES (52, 'turismo');
INSERT INTO demandas_sociales VALUES (53, 'seguridad');
INSERT INTO demandas_sociales VALUES (54, 'servicios de salud');


--
-- Data for Name: demandas_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO demandas_x_organizacion VALUES (1, 9);
INSERT INTO demandas_x_organizacion VALUES (1, 218);
INSERT INTO demandas_x_organizacion VALUES (1, 254);
INSERT INTO demandas_x_organizacion VALUES (2, 15);
INSERT INTO demandas_x_organizacion VALUES (2, 133);
INSERT INTO demandas_x_organizacion VALUES (2, 243);
INSERT INTO demandas_x_organizacion VALUES (3, 64);
INSERT INTO demandas_x_organizacion VALUES (3, 113);
INSERT INTO demandas_x_organizacion VALUES (3, 228);
INSERT INTO demandas_x_organizacion VALUES (3, 242);
INSERT INTO demandas_x_organizacion VALUES (3, 243);
INSERT INTO demandas_x_organizacion VALUES (4, 10);
INSERT INTO demandas_x_organizacion VALUES (4, 15);
INSERT INTO demandas_x_organizacion VALUES (4, 139);
INSERT INTO demandas_x_organizacion VALUES (4, 238);
INSERT INTO demandas_x_organizacion VALUES (4, 246);
INSERT INTO demandas_x_organizacion VALUES (6, 64);
INSERT INTO demandas_x_organizacion VALUES (7, 10);
INSERT INTO demandas_x_organizacion VALUES (7, 15);
INSERT INTO demandas_x_organizacion VALUES (7, 47);
INSERT INTO demandas_x_organizacion VALUES (7, 238);
INSERT INTO demandas_x_organizacion VALUES (7, 246);
INSERT INTO demandas_x_organizacion VALUES (8, 9);
INSERT INTO demandas_x_organizacion VALUES (8, 15);
INSERT INTO demandas_x_organizacion VALUES (8, 228);
INSERT INTO demandas_x_organizacion VALUES (8, 250);
INSERT INTO demandas_x_organizacion VALUES (10, 218);
INSERT INTO demandas_x_organizacion VALUES (10, 228);
INSERT INTO demandas_x_organizacion VALUES (10, 242);
INSERT INTO demandas_x_organizacion VALUES (10, 243);
INSERT INTO demandas_x_organizacion VALUES (10, 250);
INSERT INTO demandas_x_organizacion VALUES (10, 260);
INSERT INTO demandas_x_organizacion VALUES (11, 10);
INSERT INTO demandas_x_organizacion VALUES (12, 47);
INSERT INTO demandas_x_organizacion VALUES (12, 65);
INSERT INTO demandas_x_organizacion VALUES (12, 101);
INSERT INTO demandas_x_organizacion VALUES (12, 133);
INSERT INTO demandas_x_organizacion VALUES (12, 149);
INSERT INTO demandas_x_organizacion VALUES (12, 218);
INSERT INTO demandas_x_organizacion VALUES (12, 242);
INSERT INTO demandas_x_organizacion VALUES (12, 243);
INSERT INTO demandas_x_organizacion VALUES (12, 254);
INSERT INTO demandas_x_organizacion VALUES (12, 258);
INSERT INTO demandas_x_organizacion VALUES (12, 260);
INSERT INTO demandas_x_organizacion VALUES (13, 65);
INSERT INTO demandas_x_organizacion VALUES (13, 133);
INSERT INTO demandas_x_organizacion VALUES (13, 228);
INSERT INTO demandas_x_organizacion VALUES (13, 258);
INSERT INTO demandas_x_organizacion VALUES (13, 261);
INSERT INTO demandas_x_organizacion VALUES (15, 113);
INSERT INTO demandas_x_organizacion VALUES (15, 228);
INSERT INTO demandas_x_organizacion VALUES (21, 242);
INSERT INTO demandas_x_organizacion VALUES (21, 243);
INSERT INTO demandas_x_organizacion VALUES (21, 259);
INSERT INTO demandas_x_organizacion VALUES (22, 235);
INSERT INTO demandas_x_organizacion VALUES (39, 64);
INSERT INTO demandas_x_organizacion VALUES (45, 259);
INSERT INTO demandas_x_organizacion VALUES (46, 228);
INSERT INTO demandas_x_organizacion VALUES (47, 9);
INSERT INTO demandas_x_organizacion VALUES (48, 113);
INSERT INTO demandas_x_organizacion VALUES (48, 254);
INSERT INTO demandas_x_organizacion VALUES (50, 15);
INSERT INTO demandas_x_organizacion VALUES (30, 129);
INSERT INTO demandas_x_organizacion VALUES (8, 202);
INSERT INTO demandas_x_organizacion VALUES (13, 221);
INSERT INTO demandas_x_organizacion VALUES (11, 221);
INSERT INTO demandas_x_organizacion VALUES (39, 221);
INSERT INTO demandas_x_organizacion VALUES (9, 208);
INSERT INTO demandas_x_organizacion VALUES (13, 208);
INSERT INTO demandas_x_organizacion VALUES (12, 208);
INSERT INTO demandas_x_organizacion VALUES (8, 4);
INSERT INTO demandas_x_organizacion VALUES (9, 4);
INSERT INTO demandas_x_organizacion VALUES (2, 4);
INSERT INTO demandas_x_organizacion VALUES (13, 4);
INSERT INTO demandas_x_organizacion VALUES (5, 4);
INSERT INTO demandas_x_organizacion VALUES (12, 128);
INSERT INTO demandas_x_organizacion VALUES (22, 46);
INSERT INTO demandas_x_organizacion VALUES (12, 46);
INSERT INTO demandas_x_organizacion VALUES (10, 67);
INSERT INTO demandas_x_organizacion VALUES (51, 67);
INSERT INTO demandas_x_organizacion VALUES (13, 219);
INSERT INTO demandas_x_organizacion VALUES (10, 219);
INSERT INTO demandas_x_organizacion VALUES (3, 127);
INSERT INTO demandas_x_organizacion VALUES (15, 127);
INSERT INTO demandas_x_organizacion VALUES (2, 127);
INSERT INTO demandas_x_organizacion VALUES (50, 13);
INSERT INTO demandas_x_organizacion VALUES (52, 13);
INSERT INTO demandas_x_organizacion VALUES (7, 231);
INSERT INTO demandas_x_organizacion VALUES (2, 231);
INSERT INTO demandas_x_organizacion VALUES (11, 231);
INSERT INTO demandas_x_organizacion VALUES (13, 231);
INSERT INTO demandas_x_organizacion VALUES (13, 262);
INSERT INTO demandas_x_organizacion VALUES (8, 262);
INSERT INTO demandas_x_organizacion VALUES (3, 125);
INSERT INTO demandas_x_organizacion VALUES (2, 125);
INSERT INTO demandas_x_organizacion VALUES (6, 125);
INSERT INTO demandas_x_organizacion VALUES (53, 236);
INSERT INTO demandas_x_organizacion VALUES (2, 236);
INSERT INTO demandas_x_organizacion VALUES (12, 236);
INSERT INTO demandas_x_organizacion VALUES (30, 189);
INSERT INTO demandas_x_organizacion VALUES (13, 189);
INSERT INTO demandas_x_organizacion VALUES (12, 189);
INSERT INTO demandas_x_organizacion VALUES (47, 159);
INSERT INTO demandas_x_organizacion VALUES (30, 159);
INSERT INTO demandas_x_organizacion VALUES (10, 263);
INSERT INTO demandas_x_organizacion VALUES (13, 263);
INSERT INTO demandas_x_organizacion VALUES (3, 263);
INSERT INTO demandas_x_organizacion VALUES (50, 263);
INSERT INTO demandas_x_organizacion VALUES (10, 177);
INSERT INTO demandas_x_organizacion VALUES (13, 177);
INSERT INTO demandas_x_organizacion VALUES (8, 166);
INSERT INTO demandas_x_organizacion VALUES (7, 166);
INSERT INTO demandas_x_organizacion VALUES (9, 166);
INSERT INTO demandas_x_organizacion VALUES (2, 33);
INSERT INTO demandas_x_organizacion VALUES (6, 33);
INSERT INTO demandas_x_organizacion VALUES (13, 33);
INSERT INTO demandas_x_organizacion VALUES (2, 7);
INSERT INTO demandas_x_organizacion VALUES (54, 7);
INSERT INTO demandas_x_organizacion VALUES (43, 7);
INSERT INTO demandas_x_organizacion VALUES (36, 247);
INSERT INTO demandas_x_organizacion VALUES (11, 241);
INSERT INTO demandas_x_organizacion VALUES (12, 241);
INSERT INTO demandas_x_organizacion VALUES (13, 241);
INSERT INTO demandas_x_organizacion VALUES (10, 241);
INSERT INTO demandas_x_organizacion VALUES (9, 264);
INSERT INTO demandas_x_organizacion VALUES (7, 264);
INSERT INTO demandas_x_organizacion VALUES (4, 109);
INSERT INTO demandas_x_organizacion VALUES (7, 109);
INSERT INTO demandas_x_organizacion VALUES (3, 109);
INSERT INTO demandas_x_organizacion VALUES (4, 106);
INSERT INTO demandas_x_organizacion VALUES (7, 106);
INSERT INTO demandas_x_organizacion VALUES (2, 106);
INSERT INTO demandas_x_organizacion VALUES (9, 8);
INSERT INTO demandas_x_organizacion VALUES (15, 8);
INSERT INTO demandas_x_organizacion VALUES (3, 8);
INSERT INTO demandas_x_organizacion VALUES (12, 1);
INSERT INTO demandas_x_organizacion VALUES (4, 1);
INSERT INTO demandas_x_organizacion VALUES (7, 1);
INSERT INTO demandas_x_organizacion VALUES (37, 148);
INSERT INTO demandas_x_organizacion VALUES (7, 268);
INSERT INTO demandas_x_organizacion VALUES (11, 268);
INSERT INTO demandas_x_organizacion VALUES (1, 160);
INSERT INTO demandas_x_organizacion VALUES (7, 160);
INSERT INTO demandas_x_organizacion VALUES (50, 160);
INSERT INTO demandas_x_organizacion VALUES (4, 269);
INSERT INTO demandas_x_organizacion VALUES (3, 269);
INSERT INTO demandas_x_organizacion VALUES (4, 270);
INSERT INTO demandas_x_organizacion VALUES (10, 270);
INSERT INTO demandas_x_organizacion VALUES (12, 270);
INSERT INTO demandas_x_organizacion VALUES (2, 34);


--
-- Data for Name: dependenciaestado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO dependenciaestado VALUES (1, 'Secretaría Ministerio de Trabajo', 'Nacional');
INSERT INTO dependenciaestado VALUES (2, 'Poder Ejecutivo', 'Municipal');
INSERT INTO dependenciaestado VALUES (3, 'Secretaría de Acción Social', 'Municipal');
INSERT INTO dependenciaestado VALUES (4, 'Hospital Ramón Santamarina', 'Municipal');
INSERT INTO dependenciaestado VALUES (5, 'Ministerio de Trabajo y Derechos Humanos', 'Provincial');
INSERT INTO dependenciaestado VALUES (6, 'Talleres protegidos de produccion en el Ministerio de Trabajo', 'Nacional');
INSERT INTO dependenciaestado VALUES (7, 'Dirección de Turismo', 'Municipal');
INSERT INTO dependenciaestado VALUES (8, 'Intendente y Secretario de Gobierno', 'Municipal');
INSERT INTO dependenciaestado VALUES (9, 'Consejo Deliberante', 'Municipal');
INSERT INTO dependenciaestado VALUES (10, 'Ministerio de Educación', 'Nacional');
INSERT INTO dependenciaestado VALUES (11, 'Ministerio de Trabajo', 'Nacional');
INSERT INTO dependenciaestado VALUES (12, 'Consejo de Deportes Federados', 'Municipal');
INSERT INTO dependenciaestado VALUES (13, 'Municipalidad de Tandil', 'Municipal');
INSERT INTO dependenciaestado VALUES (14, 'Instituto de la Mujer', 'Nacional');
INSERT INTO dependenciaestado VALUES (15, 'Ministerio de Desarrollo Social', 'Nacional');
INSERT INTO dependenciaestado VALUES (16, 'Consejo Escolar', 'Municipal');
INSERT INTO dependenciaestado VALUES (17, 'Secretaría de Inspección', 'Municipal');
INSERT INTO dependenciaestado VALUES (18, 'Inspecciones de Rama', 'Municipal');
INSERT INTO dependenciaestado VALUES (19, 'Dirección General de Escuelas', 'Provincial');
INSERT INTO dependenciaestado VALUES (20, 'Consejo de Deportes Federados', 'Municipal');
INSERT INTO dependenciaestado VALUES (21, 'UNICEN', 'Nacional');
INSERT INTO dependenciaestado VALUES (22, 'Ministerio de Trabajo y Producción', 'Provincial');
INSERT INTO dependenciaestado VALUES (23, 'Secretaría de Cultura', 'Municipal');
INSERT INTO dependenciaestado VALUES (24, 'Secretaría de Turismo', 'Municipal');
INSERT INTO dependenciaestado VALUES (25, 'Ministerio de Educación', 'Provincial');
INSERT INTO dependenciaestado VALUES (26, 'Escuelas de la Ciudad', 'Municipal');
INSERT INTO dependenciaestado VALUES (27, 'Archivo Histórico', 'Municipal');
INSERT INTO dependenciaestado VALUES (28, 'Archivo Histórico de la Provincia de Buenos Aires', 'Provincial');
INSERT INTO dependenciaestado VALUES (29, 'Archivo General de la Nación', 'Nacional');
INSERT INTO dependenciaestado VALUES (30, 'Academia Nacional de la Historia', 'Nacional');
INSERT INTO dependenciaestado VALUES (31, 'Dirección de Obras Públicas', 'Municipal');
INSERT INTO dependenciaestado VALUES (32, 'Tesorería y Contaduría', 'Municipal');
INSERT INTO dependenciaestado VALUES (33, 'Secretaría de Empleo', 'Municipal');
INSERT INTO dependenciaestado VALUES (34, 'Dirección de Hidráulica', 'Provincial');
INSERT INTO dependenciaestado VALUES (35, 'Comisión Nacional Protectora de Bibliotecas', 'Nacional');
INSERT INTO dependenciaestado VALUES (36, 'Secretaría de Hacienda', 'Municipal');
INSERT INTO dependenciaestado VALUES (37, 'Fuerza Aérea', 'Nacional');
INSERT INTO dependenciaestado VALUES (38, 'Bromatología', 'Municipal');
INSERT INTO dependenciaestado VALUES (39, 'COPROSA', 'Provincial');
INSERT INTO dependenciaestado VALUES (40, 'INTA', 'Nacional');
INSERT INTO dependenciaestado VALUES (41, 'SENASA', 'Nacional');
INSERT INTO dependenciaestado VALUES (42, 'Becas', 'Municipal');
INSERT INTO dependenciaestado VALUES (43, 'Secretaría de Personería Jurídica', 'Provincial');
INSERT INTO dependenciaestado VALUES (44, 'UIA', 'Nacional');
INSERT INTO dependenciaestado VALUES (45, 'ADyMBA', 'Nacional');
INSERT INTO dependenciaestado VALUES (46, 'Secretaría de Promoción y Desarrollo', 'Municipal');
INSERT INTO dependenciaestado VALUES (47, 'UIPBA', 'Provincial');
INSERT INTO dependenciaestado VALUES (48, 'SEGBA', 'Provincial');
INSERT INTO dependenciaestado VALUES (49, 'Todas las Dependencias', 'Municipal');
INSERT INTO dependenciaestado VALUES (50, 'Distintas Secretarías', 'Provincial');
INSERT INTO dependenciaestado VALUES (51, 'Dirección del Personal de la Municipalidad', 'Municipal');
INSERT INTO dependenciaestado VALUES (52, 'Sindicato Municipal', 'Municipal');
INSERT INTO dependenciaestado VALUES (53, 'IPPS', 'Provincial');
INSERT INTO dependenciaestado VALUES (54, 'ANSES', 'Nacional');
INSERT INTO dependenciaestado VALUES (55, 'Hospital / Centros de Salud', 'Municipal');
INSERT INTO dependenciaestado VALUES (56, 'Consejo de la Familia', 'Provincial');
INSERT INTO dependenciaestado VALUES (57, 'Consejo del Menor', 'Provincial');
INSERT INTO dependenciaestado VALUES (58, 'Subsecretaría de Trabajo', 'Provincial');
INSERT INTO dependenciaestado VALUES (59, 'REDECOP', 'Provincial');
INSERT INTO dependenciaestado VALUES (60, 'Area de Discapacidad', 'Municipal');
INSERT INTO dependenciaestado VALUES (61, 'Secretaría de Desarrollo Social', 'Provincial');
INSERT INTO dependenciaestado VALUES (62, 'Inst. Nacional de Rehabilitación', 'Nacional');
INSERT INTO dependenciaestado VALUES (63, 'Comisión Nacional del Discapacitado', 'Nacional');
INSERT INTO dependenciaestado VALUES (64, 'Taller Protegido', 'Provincial');
INSERT INTO dependenciaestado VALUES (65, 'Aeropuerto', 'Provincial');
INSERT INTO dependenciaestado VALUES (66, 'Sala de lectura', 'Provincial');
INSERT INTO dependenciaestado VALUES (67, 'Fundacion ECBER', 'Provincial');
INSERT INTO dependenciaestado VALUES (68, 'Senadores', 'Provincial');
INSERT INTO dependenciaestado VALUES (69, 'Diputados', 'Provincial');
INSERT INTO dependenciaestado VALUES (70, 'Gobernador', 'Provincial');
INSERT INTO dependenciaestado VALUES (71, 'Ministros', 'Nacional');
INSERT INTO dependenciaestado VALUES (72, 'Sect.  PyMES', 'Nacional');
INSERT INTO dependenciaestado VALUES (73, 'DGI', 'Nacional');
INSERT INTO dependenciaestado VALUES (74, 'COPECOS', 'Municipal');
INSERT INTO dependenciaestado VALUES (75, 'Comisión Provincial', 'Provincial');
INSERT INTO dependenciaestado VALUES (76, 'Catastro', 'Municipal');
INSERT INTO dependenciaestado VALUES (77, 'Catastro', 'Provincial');
INSERT INTO dependenciaestado VALUES (78, 'Dirección de Obras Públicas', 'Provincial');
INSERT INTO dependenciaestado VALUES (79, 'Secretario de Gobienro', 'Municipal');
INSERT INTO dependenciaestado VALUES (80, 'Inspección General', 'Municipal');
INSERT INTO dependenciaestado VALUES (81, 'Sub-Secretaría de Trabajo', 'Provincial');
INSERT INTO dependenciaestado VALUES (82, 'Secretaría de Relaciones Públicas', 'Municipal');
INSERT INTO dependenciaestado VALUES (83, 'Dirección de Parques y Paseos', 'Municipal');
INSERT INTO dependenciaestado VALUES (84, 'Ministerio de Asuntos Agrarios', 'Provincial');
INSERT INTO dependenciaestado VALUES (85, 'Of. Del Senado trato con ONG''s', 'Nacional');
INSERT INTO dependenciaestado VALUES (86, 'Inspección de Justicia de la Nación', 'Nacional');
INSERT INTO dependenciaestado VALUES (87, 'Secretaría de Agricultura, Ganadería y Pesca', 'Provincial');
INSERT INTO dependenciaestado VALUES (88, 'Secretaría de Agricultura, Ganadería y Pesca', 'Nacional');
INSERT INTO dependenciaestado VALUES (89, 'Ministerio de Producción', 'Nacional');
INSERT INTO dependenciaestado VALUES (90, 'Región Sanitaria VIII', 'Provincial');
INSERT INTO dependenciaestado VALUES (91, 'Fuerzas Armadas', 'Nacional');
INSERT INTO dependenciaestado VALUES (92, 'Aeronáutica', 'Nacional');
INSERT INTO dependenciaestado VALUES (93, 'Dirección Provincial de Bibliotecas', 'Provincial');
INSERT INTO dependenciaestado VALUES (94, 'Sub Secretaría de Minoridad', 'Provincial');
INSERT INTO dependenciaestado VALUES (95, 'Bienestar Social', 'Municipal');
INSERT INTO dependenciaestado VALUES (96, 'Registro Provincial de Armas', 'Provincial');
INSERT INTO dependenciaestado VALUES (97, 'Registro Nacional de Armas', 'Nacional');
INSERT INTO dependenciaestado VALUES (98, 'AFIP', 'Nacional');
INSERT INTO dependenciaestado VALUES (99, 'Ministerio de Transporte', 'Provincial');
INSERT INTO dependenciaestado VALUES (100, 'PAMI', 'Provincial');
INSERT INTO dependenciaestado VALUES (101, 'ANSSAL', 'Nacional');
INSERT INTO dependenciaestado VALUES (102, 'PronYlab (Promoción Nac. y laboral)', 'Nacional');
INSERT INTO dependenciaestado VALUES (103, 'Dirección de Cultura', 'Municipal');
INSERT INTO dependenciaestado VALUES (104, 'Ministerio de Relaciones Exteriores y Culto', 'Nacional');
INSERT INTO dependenciaestado VALUES (105, 'Dirección de Educación Municipal', 'Municipal');
INSERT INTO dependenciaestado VALUES (106, 'Centros de Salud', 'Municipal');
INSERT INTO dependenciaestado VALUES (107, 'Dirección de Cultura', 'Provincial');
INSERT INTO dependenciaestado VALUES (108, 'Ministerio de Producción', 'Provincial');
INSERT INTO dependenciaestado VALUES (109, 'Dirección de Transporte', 'Municipal');
INSERT INTO dependenciaestado VALUES (110, 'Escuela 32', 'Provincial');
INSERT INTO dependenciaestado VALUES (111, 'Dirección de Deportes', 'Municipal');
INSERT INTO dependenciaestado VALUES (112, 'Registro Nacional de Culto', 'Nacional');
INSERT INTO dependenciaestado VALUES (113, 'Ministerio de Religión y Culto', 'Nacional');
INSERT INTO dependenciaestado VALUES (114, 'Desarrollo Social', 'Municipal');
INSERT INTO dependenciaestado VALUES (115, 'Vialidad', 'Municipal');
INSERT INTO dependenciaestado VALUES (116, 'Parques y Paseos', 'Municipal');
INSERT INTO dependenciaestado VALUES (117, 'Subsecretaría de Educación', 'Municipal');
INSERT INTO dependenciaestado VALUES (118, 'Area de Cultura', 'Municipal');
INSERT INTO dependenciaestado VALUES (119, 'Desarrollo Industrial', 'Municipal');
INSERT INTO dependenciaestado VALUES (120, 'Obras Públicas', 'Municipal');
INSERT INTO dependenciaestado VALUES (121, 'Consejo del Menor', 'Municipal');
INSERT INTO dependenciaestado VALUES (122, 'Instituto Provincial de la vivienda', 'Provincial');
INSERT INTO dependenciaestado VALUES (123, 'CAI MATER', 'Municipal');
INSERT INTO dependenciaestado VALUES (124, 'Escuela 36 y Jardín 910', 'Provincial');
INSERT INTO dependenciaestado VALUES (125, 'Sala de Lectura', 'Municipal');
INSERT INTO dependenciaestado VALUES (126, 'Guardería Municipal María Teresa Diez', 'Municipal');
INSERT INTO dependenciaestado VALUES (127, 'Secretaría de Salud', 'Municipal');
INSERT INTO dependenciaestado VALUES (128, 'Ministerio de Salud', 'Provincial');
INSERT INTO dependenciaestado VALUES (129, 'Consejo Consultivo', 'Municipal');
INSERT INTO dependenciaestado VALUES (130, 'Ministerio de Economía', 'Provincial');
INSERT INTO dependenciaestado VALUES (131, 'Promoción y desarrollo', 'Municipal');
INSERT INTO dependenciaestado VALUES (132, 'Escuelas', 'Provincial');
INSERT INTO dependenciaestado VALUES (133, NULL, 'Provincial');
INSERT INTO dependenciaestado VALUES (134, 'Comedores', 'Provincial');
INSERT INTO dependenciaestado VALUES (135, 'Organizaciones', 'Municipal');
INSERT INTO dependenciaestado VALUES (136, 'Dirección de Deportes de la UNCPBA', 'Nacional');
INSERT INTO dependenciaestado VALUES (137, 'Dirección de Deportes', 'Provincial');
INSERT INTO dependenciaestado VALUES (138, 'Minoridad', 'Provincial');
INSERT INTO dependenciaestado VALUES (139, 'Consejo Nacional del Menor, Adolescente y Flia.', 'Nacional');
INSERT INTO dependenciaestado VALUES (140, 'DINAJU', 'Nacional');
INSERT INTO dependenciaestado VALUES (141, 'Tribunal y Juzgado de Menores', 'Municipal');
INSERT INTO dependenciaestado VALUES (142, 'Subsecretaría de Minoridad Deleg. Tandil', 'Municipal');
INSERT INTO dependenciaestado VALUES (143, 'Sub Secretaría de Minoridad', 'Provincial');
INSERT INTO dependenciaestado VALUES (144, 'Superintendencia de Salud', 'Municipal');
INSERT INTO dependenciaestado VALUES (145, 'CGT', 'Nacional');
INSERT INTO dependenciaestado VALUES (146, 'Org. de Salud (Municipal)', 'Municipal');
INSERT INTO dependenciaestado VALUES (147, 'Org. de Salud (Provincial)', 'Provincial');
INSERT INTO dependenciaestado VALUES (148, 'Org. de Salud (Nacional)', 'Nacional');
INSERT INTO dependenciaestado VALUES (149, 'Sala Rodriguez Selvetti', 'Municipal');
INSERT INTO dependenciaestado VALUES (150, 'Jardín San Francisco', 'Municipal');
INSERT INTO dependenciaestado VALUES (151, 'Comisión de Derechos Humanos del Honorable Consejo Deliberante', 'Municipal');
INSERT INTO dependenciaestado VALUES (152, 'Centros de Salud Villa Aguirre y San Cayetano', 'Municipal');
INSERT INTO dependenciaestado VALUES (153, 'Escuela de Música Popular', 'Municipal');
INSERT INTO dependenciaestado VALUES (154, 'Escuela 59', 'Provincial');
INSERT INTO dependenciaestado VALUES (155, 'Escuela 47', 'Provincial');
INSERT INTO dependenciaestado VALUES (156, 'Escuela Villa Alduncin', 'Provincial');
INSERT INTO dependenciaestado VALUES (157, 'Escuela Polivalente', 'Provincial');
INSERT INTO dependenciaestado VALUES (158, 'Poder Judicial', 'Provincial');
INSERT INTO dependenciaestado VALUES (159, 'Dirección de Servicios', 'Municipal');
INSERT INTO dependenciaestado VALUES (160, 'Federación de Turismo', 'Nacional');
INSERT INTO dependenciaestado VALUES (161, 'Area de 3º Edad Municipal', 'Municipal');
INSERT INTO dependenciaestado VALUES (162, 'Secretaría de Deportes', 'Municipal');
INSERT INTO dependenciaestado VALUES (163, 'Consejales', 'Municipal');
INSERT INTO dependenciaestado VALUES (164, 'Secretaría de Trabajo', 'Municipal');
INSERT INTO dependenciaestado VALUES (165, 'CONABIP', 'Nacional');
INSERT INTO dependenciaestado VALUES (166, 'Consejo de Discapacidad Provincial', 'Provincial');
INSERT INTO dependenciaestado VALUES (167, 'CUCAIBA', 'Provincial');
INSERT INTO dependenciaestado VALUES (168, 'INCUCAI', 'Nacional');
INSERT INTO dependenciaestado VALUES (169, 'Secretaría de Obras Públicas', 'Municipal');
INSERT INTO dependenciaestado VALUES (170, 'Dirección de Obras Públicas', 'Municipal');
INSERT INTO dependenciaestado VALUES (171, 'Secretaría Privada', 'Municipal');
INSERT INTO dependenciaestado VALUES (172, 'Secretaría Personal', 'Municipal');
INSERT INTO dependenciaestado VALUES (173, 'Dirección de Transporte de Pasajeros', 'Provincial');
INSERT INTO dependenciaestado VALUES (174, 'Subsecretaría de Transporte de Pasajeros', 'Nacional');
INSERT INTO dependenciaestado VALUES (175, 'Oficina de consumidores y usuarios', 'Municipal');
INSERT INTO dependenciaestado VALUES (176, 'Ministerio de Desarrollo Social y Trabajo', 'Provincial');
INSERT INTO dependenciaestado VALUES (177, 'Presidencia de la Nación', 'Nacional');
INSERT INTO dependenciaestado VALUES (178, 'Camara de Diputados', 'Nacional');
INSERT INTO dependenciaestado VALUES (179, 'Senadores', 'Nacional');
INSERT INTO dependenciaestado VALUES (180, 'Dirección Nacional de Juventud', 'Nacional');
INSERT INTO dependenciaestado VALUES (181, 'CENOC', 'Nacional');
INSERT INTO dependenciaestado VALUES (182, 'Dirección de Tránsito', 'Municipal');
INSERT INTO dependenciaestado VALUES (183, 'Ministerio de Defensa', 'Provincial');
INSERT INTO dependenciaestado VALUES (184, 'Ministerio del Interior', 'Nacional');
INSERT INTO dependenciaestado VALUES (185, 'Secretaria de Desarrollo Humano', 'Provincial');
INSERT INTO dependenciaestado VALUES (186, 'Comisión de Emergencia Agropecuaria', 'Provincial');
INSERT INTO dependenciaestado VALUES (187, 'Jardines de infantes', 'Provincial');
INSERT INTO dependenciaestado VALUES (188, 'Dirección de Migraciones', 'Nacional');
INSERT INTO dependenciaestado VALUES (189, 'Escuela Nº 5', 'Provincial');
INSERT INTO dependenciaestado VALUES (190, 'Centro de Salud Barrio Palermo', 'Municipal');
INSERT INTO dependenciaestado VALUES (191, 'INSSJP', 'Nacional');
INSERT INTO dependenciaestado VALUES (192, 'FEPYLBA', 'Provincial');
INSERT INTO dependenciaestado VALUES (193, 'Centro comunitario', 'Municipal');
INSERT INTO dependenciaestado VALUES (194, 'Escuela Nº 42', 'Provincial');
INSERT INTO dependenciaestado VALUES (195, 'Escuela Nº 22', 'Provincial');
INSERT INTO dependenciaestado VALUES (196, 'Jardín Nº904', 'Provincial');
INSERT INTO dependenciaestado VALUES (197, 'Jardín Nº 912', 'Provincial');
INSERT INTO dependenciaestado VALUES (198, 'Facultad de Ciencias Económicas. UNICEN', 'Nacional');
INSERT INTO dependenciaestado VALUES (199, 'Secretaría legal y técnica', 'Municipal');
INSERT INTO dependenciaestado VALUES (200, 'Area de Infancia', 'Municipal');
INSERT INTO dependenciaestado VALUES (201, 'Dirección de Juventud de la provincia', 'Provincial');
INSERT INTO dependenciaestado VALUES (202, 'Subsecretaria de protección y promoción de los derechos de los niños', 'Provincial');
INSERT INTO dependenciaestado VALUES (203, 'Servicio de Neumoticiología', 'Provincial');
INSERT INTO dependenciaestado VALUES (204, 'Ministerio de Salud', 'Nacional');
INSERT INTO dependenciaestado VALUES (205, 'Hospital de Niños Debilio Blanco Villegas', 'Municipal');
INSERT INTO dependenciaestado VALUES (206, 'Dirección de Bibliotecas', 'Provincial');
INSERT INTO dependenciaestado VALUES (207, 'Policía', 'Provincial');


--
-- Data for Name: entidadesaportantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO entidadesaportantes VALUES (1, 'Club Atlético Banco de la Provincia de Buenos Aires');
INSERT INTO entidadesaportantes VALUES (2, 'Círculo de Suboficiales de las FF AA');
INSERT INTO entidadesaportantes VALUES (3, 'Donaciones Varias');
INSERT INTO entidadesaportantes VALUES (4, 'Caritas Diocesana Nac.');
INSERT INTO entidadesaportantes VALUES (5, 'Banco Provincia');
INSERT INTO entidadesaportantes VALUES (6, 'Colegio de Abogados');
INSERT INTO entidadesaportantes VALUES (7, 'SUTEBA');
INSERT INTO entidadesaportantes VALUES (8, 'Lab. Aventis y Novartis');
INSERT INTO entidadesaportantes VALUES (9, 'FEHGRA');
INSERT INTO entidadesaportantes VALUES (10, 'Parroquia Santísimo Sacramento');
INSERT INTO entidadesaportantes VALUES (11, 'socios');
INSERT INTO entidadesaportantes VALUES (12, 'Laboratorios');


--
-- Data for Name: entidadessectorprivado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO entidadessectorprivado VALUES (1, 'FEHGRA');
INSERT INTO entidadessectorprivado VALUES (2, 'Matelec');
INSERT INTO entidadessectorprivado VALUES (3, 'Tiendas Tandil');
INSERT INTO entidadessectorprivado VALUES (4, 'Martín Faravela');
INSERT INTO entidadessectorprivado VALUES (5, 'Garmendia, Silicane & Andre');
INSERT INTO entidadessectorprivado VALUES (6, 'Varias Entidades');
INSERT INTO entidadessectorprivado VALUES (7, 'Sin especificar');
INSERT INTO entidadessectorprivado VALUES (8, 'Particulares Anónimos');
INSERT INTO entidadessectorprivado VALUES (9, 'Convenios locales');
INSERT INTO entidadessectorprivado VALUES (10, 'Supermercados Norte');
INSERT INTO entidadessectorprivado VALUES (11, 'CONABIP');
INSERT INTO entidadessectorprivado VALUES (12, 'CREA');
INSERT INTO entidadessectorprivado VALUES (13, 'particulares');
INSERT INTO entidadessectorprivado VALUES (14, NULL);
INSERT INTO entidadessectorprivado VALUES (15, 'D');
INSERT INTO entidadessectorprivado VALUES (16, 'ONG');
INSERT INTO entidadessectorprivado VALUES (17, 'Monarca');
INSERT INTO entidadessectorprivado VALUES (18, 'Carrefour');
INSERT INTO entidadessectorprivado VALUES (19, 'Loimar');
INSERT INTO entidadessectorprivado VALUES (20, 'Laboratorios');


--
-- Data for Name: supervisor; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO supervisor VALUES (1, 'TOMELLINI, Marisa');
INSERT INTO supervisor VALUES (2, 'Sin Especificar');
INSERT INTO supervisor VALUES (3, 'MARTIGNONI, Natalia');
INSERT INTO supervisor VALUES (4, 'ROIGE, Mariana');
INSERT INTO supervisor VALUES (5, 'RODRIGUEZ, Paula');
INSERT INTO supervisor VALUES (6, 'THERENZIO, Cintia');
INSERT INTO supervisor VALUES (7, 'Tripiana, Jorge D.');
INSERT INTO supervisor VALUES (8, 'Martinez, Leticia');
INSERT INTO supervisor VALUES (9, 'Terenzio Cynthia');
INSERT INTO supervisor VALUES (10, 'Martinez,L;Tomellini, M.');

--
-- Data for Name: entrevistador; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO entrevistador VALUES (2, 'CASTELLANI, Paula');
INSERT INTO entrevistador VALUES (3, 'ESAINS, Alejandra');
INSERT INTO entrevistador VALUES (4, 'FERNANDEZ, Gladys');
INSERT INTO entrevistador VALUES (5, 'GIMENEZ, Roxana');
INSERT INTO entrevistador VALUES (6, 'CIANCIO, Natalia');
INSERT INTO entrevistador VALUES (7, 'EYHARABIDE,  Mercedes');
INSERT INTO entrevistador VALUES (8, 'MALLARDI, Manuel');
INSERT INTO entrevistador VALUES (9, 'ARRUPE, Alejandra');
INSERT INTO entrevistador VALUES (10, 'hs.');
INSERT INTO entrevistador VALUES (11, 'CABALLERO, Alicia');
INSERT INTO entrevistador VALUES (12, 'SCHNEIDER, María Soledad');
INSERT INTO entrevistador VALUES (13, 'ARGENTINO, Ana Paula');
INSERT INTO entrevistador VALUES (14, 'LABARONI, María Daniela');
INSERT INTO entrevistador VALUES (15, 'ROIGE, Mariana');
INSERT INTO entrevistador VALUES (16, 'Escurra María I');
INSERT INTO entrevistador VALUES (17, 'Rodriguez Ma. Cristina');
INSERT INTO entrevistador VALUES (18, 'GARRALDA, Ma. Celeste
de avila, Verónica
Garralda, Ma. Celeste');
INSERT INTO entrevistador VALUES (19, 'Escurra Ma. Isabel');
INSERT INTO entrevistador VALUES (20, 'LUENGO, Leticia');
INSERT INTO entrevistador VALUES (21, 'CHERICHETTI, Luciana');
INSERT INTO entrevistador VALUES (22, 'ALVAREZ, Ma. Guadalupe');
INSERT INTO entrevistador VALUES (23, ' María Isabel Escurra');
INSERT INTO entrevistador VALUES (24, 'VACCA, Ma. Laura');
INSERT INTO entrevistador VALUES (25, 'OLOCCO, Belén');
INSERT INTO entrevistador VALUES (26, 'Alvarez, Gudalupe; Olocco Belén');
INSERT INTO entrevistador VALUES (27, 'Veronica de Avila');



--
-- Data for Name: entrevista; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO entrevista VALUES (1, 12, 1, NULL, 'Perfecto Lopez', 'Secretario', '10 a 12 años', '2007-11-06 00:00:00', '1:20 hs', 'PRT');
INSERT INTO entrevista VALUES (2, 6, 3, '14', 'Néstor Di Paola', 'Director', '4 años', '2002-10-12 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (3, 2, 1, NULL, 'Enrique Nielsen', 'Secretario General', '20 años', '2002-12-11 00:00:00', '1:10 hs', 'SS');
INSERT INTO entrevista VALUES (4, 11, 8, NULL, 'Oscar Santos Granato', 'Presidente', '25 años', '2007-12-10 00:00:00', '2 horas', 'ME');
INSERT INTO entrevista VALUES (5, 4, 2, NULL, 'Héctor Reegan', 'Secretario', '18 años', '2003-03-18 00:00:00', '1 hora', 'SS');
INSERT INTO entrevista VALUES (6, 5, 3, '15', 'César Trapote', 'Secretario General', '10 años', '2002-06-12 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (7, 19, 6, '14', 'Argentina Bugne', 'Secretaria', '20 años', '2008-04-14 00:00:00', '2:30hs', 'ME');
INSERT INTO entrevista VALUES (8, 12, 1, NULL, 'Aida Meira de Villalba', 'Presidente', '10 años', '2007-11-09 00:00:00', '1:50', 'PRT');
INSERT INTO entrevista VALUES (9, 19, 2, '15', 'Liliana Echeverria', 'Coordinadora y directora', '24 años', '2007-11-13 00:00:00', '2 hs 30 min', 'VdA');
INSERT INTO entrevista VALUES (10, 16, 6, '15', 'Margarita GIOVENES', 'Secretaria', '20 años', '2007-11-06 00:00:00', '90 min.', 'ME');
INSERT INTO entrevista VALUES (11, 5, 3, '15', 'Krüger, Roberto', 'Representante legal', '16 años', '2002-12-04 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (12, 7, 3, '15', 'CADENAS, José', 'Sec. Administrativo', '4 años', '2002-12-20 00:00:00', '75 min.', 'AV');
INSERT INTO entrevista VALUES (13, 16, 9, '15', 'BARANDIARAN, Luis', 'Secretario general', '22', '2007-11-12 00:00:00', '1 hora 15 min', 'CT');
INSERT INTO entrevista VALUES (14, 7, 3, '15', 'LOMBARTI, Jesús', 'Presidente', '10 años', '2002-12-11 00:00:00', '60 min.', 'AV');
INSERT INTO entrevista VALUES (15, 12, 1, '14', 'AIELLO, José María;', 'Sec. Gral; Sec. Gremial', '11 años', '2007-11-09 00:00:00', '75 mins', 'ME');
INSERT INTO entrevista VALUES (16, 6, 3, '14', 'MARTOS, Juan Carlos; LOPEZ, Luis', 'Presidente; Tesorero', '11 años; 3 años', '2002-12-09 00:00:00', '1:20 hs.', 'AV');
INSERT INTO entrevista VALUES (17, 6, 3, '14', 'PEREYRA, Aurelia', 'No hay puestos jerárquicos', '10 años', '2002-12-16 00:00:00', '45 min.', 'AV');
INSERT INTO entrevista VALUES (18, 5, 3, '15', 'Ruth Helena Leegstra de Zund', 'Presidente', '39 años', '2002-03-12 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (19, 4, 4, '15', 'Liliana Giannastasio', 'Presidente', '5 años', '2002-04-12 00:00:00', '2 hs', 'SS');
INSERT INTO entrevista VALUES (20, 4, 4, '15', 'Miriam Iriquin', 'Secretario Adjunto', '12 años', '2002-09-12 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (21, 4, 4, '15', 'Joaquín Berrios', 'Presidente', '9 años', '2002-11-12 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (22, 9, 5, '15', 'Joaquín Silva', 'Secretario', '9 años', '2007-11-06 00:00:00', '1 h', 'VdA');
INSERT INTO entrevista VALUES (23, 4, 4, '15', 'Montes, Ma. De los Angeles', 'Contadora', '1 año', '2002-04-12 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (24, 8, 4, '15', 'Heber Errezarret', 'Miembro del Tribunal de Honor', '30 años', '2002-12-13 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (25, 8, 4, '15', 'Martín Guillenea', 'Director', '1,5 años', '2002-10-12 00:00:00', '1 hs', 'SS');
INSERT INTO entrevista VALUES (26, 5, 3, '15', 'Marcos Moreno', 'Secretario', 'Desde 1973', '2002-04-12 00:00:00', '1:10 hs', 'SS');
INSERT INTO entrevista VALUES (27, 7, 3, '15', 'José Ramirez', 'Secretario General', '22 años', '2002-02-12 00:00:00', '2:05 hs', 'SS');
INSERT INTO entrevista VALUES (28, 2, 1, '14', 'Hugo Alberto Lendez', 'Secretario General', '16 años', '2002-09-12 00:00:00', '55 min', 'SS');
INSERT INTO entrevista VALUES (29, 9, 5, NULL, 'Miryam Rojsen', 'Presidente', '45 años', '2002-04-12 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (30, 2, 1, '14', 'María Esther Silva de Peirano', 'Vocal Segundo', '2 años', '2002-04-12 00:00:00', '1:25 hs.', 'SS');
INSERT INTO entrevista VALUES (31, 9, 5, NULL, 'Garciarena, Carlos', 'Párroco', '1 año', '2002-06-12 00:00:00', '50 min', 'SS');
INSERT INTO entrevista VALUES (32, 9, 5, '14', 'Barrientos Luis', 'Secretario Administrativo', '10 años', '2002-02-12 00:00:00', '2:30 hs', 'SS');
INSERT INTO entrevista VALUES (33, 24, 8, '15', 'Gladys Araolaza', 'Secretaria administrativa', '10 años', '2008-04-23 00:00:00', '2:30 hs', 'ME');
INSERT INTO entrevista VALUES (34, 27, 7, NULL, 'Indalecio Oroquieta', 'Protesorero', '25 años', '2008-04-16 00:00:00', '1:15 hs', 'MT');
INSERT INTO entrevista VALUES (35, 7, 4, NULL, 'Bliotta, Graciela', 'Delegada', '13 años', '2003-03-13 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (36, 7, 4, NULL, 'Daniel Eduardo Perez', 'Presidente', '27 años', '2003-03-26 00:00:00', '1 h.', 'SS');
INSERT INTO entrevista VALUES (37, 7, 4, NULL, 'Chialva, Rubén', 'Presidente', '6 años', '2003-05-19 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (38, 7, 4, NULL, 'Amenabar, María Laura', 'Secretaria', '14 años', '2003-12-05 00:00:00', '45 min', 'SS');
INSERT INTO entrevista VALUES (39, 7, 4, NULL, 'Delia Carreira', 'Secretaria', '3 años', '2003-05-19 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (40, 7, 4, NULL, 'Héctor Llorens', 'Tesorero', '3 años', '2003-03-14 00:00:00', '1 h', 'SS');
INSERT INTO entrevista VALUES (41, 3, 4, NULL, 'Omar Gomez', 'Presidente', '6 años', '2003-12-04 00:00:00', '1 h', 'SS');
INSERT INTO entrevista VALUES (42, 11, 4, NULL, 'Nidia Carré', 'Presidenta', '3 años', '2003-02-05 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (43, 7, 4, NULL, 'Julio Cesar Via', 'Presidente', '12 años', '2003-05-26 00:00:00', '40 min', 'SS');
INSERT INTO entrevista VALUES (44, 6, 4, NULL, 'Trinchero Guillermo', 'Presidente', '1 año', '2003-08-05 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (45, 7, 4, NULL, 'Daniel Perez', 'Presidente', '20 años', '2003-02-04 00:00:00', '30 min', 'SS');
INSERT INTO entrevista VALUES (46, 6, 1, '15', 'Miguel Rovaux', 'Director Artístico, Miembro de la CD', '38años', '2007-11-07 00:00:00', '90 min', 'VdA');
INSERT INTO entrevista VALUES (47, 6, 1, '15', 'Simón Alvarez', 'Presidente', '8 años', '2007-11-30 00:00:00', '75 mins', 'ME');
INSERT INTO entrevista VALUES (48, 2, 4, '15', 'Teresa Abraham de Beretta', 'Directora', '2 años', '2003-03-17 00:00:00', '2:45  hs', 'SS');
INSERT INTO entrevista VALUES (49, 2, 4, '14', 'Fernando Gonzalez Guerra', 'Presidente', '3 años', '2003-03-19 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (50, 6, 4, NULL, 'Luis Molina', 'Director', '14 años', '2003-12-03 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (51, 7, 4, NULL, 'Pomarico Juan Antonio', 'Secretario', '5 años', '2003-04-15 00:00:00', '1 hs', 'SS');
INSERT INTO entrevista VALUES (52, 3, 1, '15', 'Martín Olesen', 'Pastor', '5 años', '2002-06-12 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (53, 12, 2, NULL, 'Sr. José Gomez', 'Secretario Seccional', '5 años', '2003-05-17 00:00:00', '1:15 hs.', 'SS');
INSERT INTO entrevista VALUES (54, 7, 4, NULL, 'Julio Simons', 'Presidente', '10 años', '2003-03-17 00:00:00', NULL, 'SS');
INSERT INTO entrevista VALUES (55, 6, 4, NULL, 'Juan Carlos Benavente', 'Presidente', '7 años', '2003-03-20 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (56, 13, 5, '14', 'BATELLI, Ricardo Víctor', 'Presidente', '14 años', '2002-12-13 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (57, 13, 5, '14', 'JOSE, Viviana', 'Lic. En Psicología', '8 años', '2002-12-05 00:00:00', '1:45 hs.', 'AV');
INSERT INTO entrevista VALUES (58, 9, 5, '14', 'SALGADO, Enrique; RIVERO, Felipe; ZAMPIERI, Atilio; PINNA, Santiago; FERNANDINO, Hector', 'Presidente; Subsecretario; Vocal; VicePresidente; Tesorero', '40 años (Presidente)', '2002-12-14 00:00:00', '1:45 hs.', 'AV');
INSERT INTO entrevista VALUES (59, 13, 5, '14', 'DRAGHI, Mario', 'Secretario', '2 años', '2002-12-09 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (60, 9, 5, '14', 'UZANDIZAGA, María Teresa', 'Secretaria', '25 años', '2002-12-10 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (61, 9, 5, '14', 'MARTINEZ LASTRA, Roberto; ARTAZA, Raul Horacio', 'Secretario Gral.; Secretario de Finanzas', '4 años (ambos)', '2002-12-13 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (62, 13, 5, '14', 'TAPIA, Mario', 'Presidente', '10 años', '2002-12-10 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (63, 13, 5, '14', 'DE LORENZO, Humberto; MC HARDY, Maite', 'Presidente, Secretaria', '2 años (ambos)', '2002-12-05 00:00:00', '2:15 hs.', 'AV');
INSERT INTO entrevista VALUES (64, 6, 1, '15', 'DACOSTA AMARO de CABANA, Leontina; Silvina', 'Directora; Coordinadora de casas de la esp.', '18 años (directora)', '2007-11-06 00:00:00', '2 hs.', 'VdA');
INSERT INTO entrevista VALUES (65, 6, 1, NULL, 'César Martín', 'Presidente', '35 años', '2008-02-26 00:00:00', '1:40 hs.', 'CG');
INSERT INTO entrevista VALUES (66, 11, 6, '14', 'MANARITI, Francisco; GAGEY, Alejandro', 'Sec. Gral; Sec. Adj.', 'mas de 30 años; 10 años', '2002-12-18 00:00:00', '2:15 hs.', 'AV');
INSERT INTO entrevista VALUES (67, 6, 1, '15', 'Oudokian, Marcela', 'Secretaria y gerente', '20 años', '2007-10-30 00:00:00', '2hs 30 min', 'VdA');
INSERT INTO entrevista VALUES (68, 14, 6, '15', 'GIRELI, Rodolfo', 'Presidente', '7 años', '2002-12-06 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (69, 14, 6, '15', 'ACUÑA, Sergio Argentino; LASARTE, Graciela', 'Presidente; Secretaria', '2 años (ambos)', '2002-12-11 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (70, 14, 6, '15', 'MARQUEZ, María de los Angeles', 'Delegada zonal', '4 años', '2002-12-24 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (71, 14, 6, '15', 'LACOVICH', 'Presidente', '6 años', '2002-12-20 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (72, 14, 6, '15', 'FERNANDEZ de GUIDA, Teresita; FERRER, Dora', 'Presidente; VicePresidente', '1 año (ambas)', '2002-12-23 00:00:00', '45 min.', 'AV');
INSERT INTO entrevista VALUES (73, 11, 6, '14', 'SALVI, Cristina', 'Gerente', '4 años', '2002-12-10 00:00:00', '1:20 hs.', 'AV');
INSERT INTO entrevista VALUES (74, 12, 6, '15', 'ZAPPINO, Antonio Mario', 'Vicepresidente', '6 meses', '2002-12-20 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (75, 12, 6, '15', 'GONZALEZ, Mabel; BIONDI, Carmen; LIBARONA, Ma. Del Carmen', 'Tesorera; Revisora de cuentas; Coordinadora', '4, 7 y 4 años', '2002-12-03 00:00:00', '1:55 hs.', 'AV');
INSERT INTO entrevista VALUES (76, 12, 6, '15', 'FACCIN, Jorge', 'Gerente', '12 años', '2002-12-10 00:00:00', '1:50 hs.', 'AV');
INSERT INTO entrevista VALUES (77, 6, 6, NULL, 'Lucía Gentile', 'Presidente', '10 años', '2003-03-14 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (78, 6, 6, NULL, 'Francisco Tripodi', 'Vocal Primero', '13 años', NULL, '1:25 hs', 'SS');
INSERT INTO entrevista VALUES (79, 3, 6, NULL, 'Atilio Eduardo Abalsemo', 'Secretario Adjunto', '4 años', '2003-05-29 00:00:00', '2:30 hs', 'SS');
INSERT INTO entrevista VALUES (80, 7, 6, NULL, 'Varios', NULL, 'Desde origen', '2003-05-16 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (81, 7, 6, NULL, 'María Teresa Urrutia de Irastorsa', 'Vocal de la comisión', '2 años', '2003-03-18 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (82, 7, 6, NULL, 'ZABALETA, Jorge', 'Vice Presidente del Distrito', '25 años', '2003-09-04 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (83, 7, 6, NULL, 'Victor H. DELO', 'Secretario General', '2 años', '2003-05-26 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (84, 2, 6, '15', 'Raúl Alberto Ahumada', 'Presidente', '5 años', '2003-03-27 00:00:00', '1:10 hs', 'SS');
INSERT INTO entrevista VALUES (85, 2, 6, '15', 'José Luis Iribarren', 'Gerente', '24 años', '2003-04-21 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (86, 2, 6, '15', 'Hugo Inza', 'Presidente', '2 años', '2003-04-14 00:00:00', '1:10 hs', 'SS');
INSERT INTO entrevista VALUES (87, 11, 6, '14', 'Pedro Clement', 'Presidente', '15 años', '2002-05-12 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (88, 11, 6, NULL, 'Roberto Gomez', 'Secretario', '18 años', '2003-02-04 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (89, 11, 6, NULL, 'Galaso, Luis Ramón', 'Presidente', '12 años', '2003-03-17 00:00:00', '2:30 hs.', 'SS');
INSERT INTO entrevista VALUES (90, 11, 6, NULL, 'Jorgensen, Juan Carlos', 'Tesorero', '7 meses', '2003-01-04 00:00:00', '1:10 hs.', 'SS');
INSERT INTO entrevista VALUES (91, 11, 6, NULL, 'Claudio Ersinger', 'Presidente', '6 años', '2003-03-21 00:00:00', '1:40 hs.', 'SS');
INSERT INTO entrevista VALUES (92, 11, 6, NULL, 'Petra Marzoca', 'Presidente', '11 años', '2003-03-28 00:00:00', '1:25 hs.', 'SS');
INSERT INTO entrevista VALUES (93, 7, 4, NULL, 'Cristina Grill', 'Secretario General', '22 años', '2003-03-24 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (94, 7, 4, NULL, 'Irma Tomellini', 'Secretaria', '5 años', '2003-05-24 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (95, 7, 4, NULL, 'Pay Roberto', 'Vicepresidente segundo', '32 años', '2003-06-05 00:00:00', '40 min', 'SS');
INSERT INTO entrevista VALUES (96, 6, 4, NULL, 'Amoroso Jorge', 'Presidente', '5 años', '2003-08-04 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (97, 3, 1, '15', 'Alejandro Martín Juan Ortiz', 'Presidente', '11 años', '2002-12-19 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (98, 3, 1, '15', 'Cecilia Baggesen de di Tactor', 'Sec. General', '3 años', '2002-12-16 00:00:00', '1:50 hs.', 'SS');
INSERT INTO entrevista VALUES (99, 13, 5, '14', NULL, NULL, NULL, '2002-11-12 00:00:00', '2:15 hs.', 'SS');
INSERT INTO entrevista VALUES (100, 8, 4, '15', 'José Mercante. Julio Elichiribeti', 'Subdirector. Director', '10 años', '2002-02-12 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (101, 16, 1, '16', 'Roveda, Daniela', 'Secretaria', '8 años', '2007-11-16 00:00:00', '50 mins.', 'ME');
INSERT INTO entrevista VALUES (102, 14, 1, '15', 'UZANDIZAGA, Ma. de los Dolores', 'Tesorera', '23 años', '2003-03-19 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (103, 14, 1, '16', 'ECHAIDE, Federico', 'Presidente', '2 años', '2003-04-11 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (104, 2, 1, '14', 'RODRIGUEZ, Edgardo N.', 'Secretario Gral.', '12 años', '2002-12-18 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (105, 9, 1, '9', 'JARQUE, Carlos y otros miembros de la comisión directiva', 'Presidente', '4 años', '2003-03-20 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (106, 25, 8, '9', 'Carciochi, elvira Elisabet', 'Presidente', '3 años; 9 años; 8 años', '2007-11-29 00:00:00', '2 hs', 'VdA');
INSERT INTO entrevista VALUES (107, 2, 1, '14', 'FERREIROS, Osvaldo', 'Delegado Regional', '8 años', '2002-12-05 00:00:00', '1:40 hs.', 'AV');
INSERT INTO entrevista VALUES (108, 12, 1, '16', 'MONTEIRO, Carina', 'Secretaria Administrativa', '4 o 5 años', '2003-03-19 00:00:00', '1:40 hs.', 'AV');
INSERT INTO entrevista VALUES (109, 25, 8, '9', 'MENDOZA, Amilcar', 'Presidente', '5 años', '2007-11-27 00:00:00', '1 hora', 'VdA');
INSERT INTO entrevista VALUES (110, 2, 1, '14', 'ROUSSEU SALET, Hector Raúl', 'Presidente', '10 meses', '2002-12-18 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (111, 13, 1, '15', 'BIANCHI, Zulema Delia; ELORZA, Amelia Irene', 'Secretaria; Presidente', '14 años ambas', '2003-03-12 00:00:00', '1:40 hs.', 'AV');
INSERT INTO entrevista VALUES (112, 8, 3, NULL, 'LOREAL, Adolfo', 'Presidente', '11 años', '2003-04-17 00:00:00', '45 min.', 'AV');
INSERT INTO entrevista VALUES (113, 14, 5, '17', 'AYUL, Teresita y Mabel noemí gonzales', 'Presidente, secretaria', '14años', '2008-01-01 00:00:00', '2 hs.', 'VdA');
INSERT INTO entrevista VALUES (114, 3, 3, '2', 'CASAL, Marina B.; CASAL, Ricardo', 'Profesores ambos', '14 años ambos', '2003-05-17 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (115, 3, 3, '2', 'LAMOURE, Lucía', NULL, '1 año y 9 meses', '2003-06-03 00:00:00', '1:25 hs.', 'AV');
INSERT INTO entrevista VALUES (116, 3, 3, '2', 'LOPEZ, Marcelo', 'Profesor y Director', '14 años', '2003-05-31 00:00:00', '1:10 hs.', 'AV');
INSERT INTO entrevista VALUES (117, 3, 3, '2', 'BARRIO, María Ester; BURGADT, Vicente', 'Tesorera; Revisor de Cuentas', '4 años; 8 años', '2003-06-03 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (118, 8, 3, '17', 'GARCIA, José', 'Pastor', NULL, '2003-05-22 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (119, 13, 3, '17', 'ABAN, Sandra Cecilia', 'Presidente', '1 año', NULL, '1:25 hs.', 'AV');
INSERT INTO entrevista VALUES (120, 22, 1, NULL, 'Asvaldo Rosso', 'Presidente', '11 años', '2008-04-29 00:00:00', ' 150 min', 'VdA');
INSERT INTO entrevista VALUES (121, 7, 4, NULL, 'Delia Caniunier', 'Coordinadora', '1 año', '2003-06-17 00:00:00', '2:40 hs', 'SS');
INSERT INTO entrevista VALUES (122, 7, 2, NULL, 'José Pasucci', 'Presidente', '10 años', '2003-05-05 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (123, 7, 4, NULL, 'Montani, Alberto', 'Presidente', '6 años', '2003-06-27 00:00:00', '2:40 hs', 'SS');
INSERT INTO entrevista VALUES (124, 7, 4, NULL, 'Correnti Carlos', 'Presidente', '30 años', '2003-06-28 00:00:00', '40 min.', 'SS');
INSERT INTO entrevista VALUES (125, 6, 1, NULL, 'Amanda Luro', 'Presidenta', '7 años', '2007-11-23 00:00:00', '1 hora 50 min.', 'VdA');
INSERT INTO entrevista VALUES (126, 6, 1, NULL, 'Saul González', 'Presidente', '30 años', '2007-12-19 00:00:00', '1 hs.', 'PRT');
INSERT INTO entrevista VALUES (127, 6, 1, NULL, 'Beatriz Lamaita', 'Directora', '21 años', '2007-11-27 00:00:00', '1 y media hs.', 'LM');
INSERT INTO entrevista VALUES (128, 6, 1, NULL, 'Hernet Andrea', 'Vocal', '22 años', '2008-03-13 00:00:00', '50 min.', 'VdA');
INSERT INTO entrevista VALUES (129, 6, 1, NULL, 'Juan Cruz Torres, Patricia Campi, Andrés Gómez', 'Presidente, secretaria, vocal', '1 año', '2008-02-26 00:00:00', '1:25 hs', 'PRT');
INSERT INTO entrevista VALUES (130, 6, 1, NULL, 'Néstor Alem', 'Presidente', '22 años', '2007-12-11 00:00:00', '1: 30 hs', 'PRT');
INSERT INTO entrevista VALUES (131, 11, 1, '8', 'Szpiga Teófilo', 'Pastor', '47 años', '2003-05-23 00:00:00', '1:30 hs.', 'SS');
INSERT INTO entrevista VALUES (132, 9, 5, '9', 'Alonso Ismael', 'Secretario', '40 años', '2003-03-05 00:00:00', '1:15 hs.', 'SS');
INSERT INTO entrevista VALUES (133, 22, 1, NULL, 'Patricia Ugarte', 'Tesorera', '10 años', '2008-04-22 00:00:00', '2 hs.', 'VdA');
INSERT INTO entrevista VALUES (134, 14, 6, '6', 'SOBARZO, Víctor', 'Pastor', '17 años', '2003-05-16 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (135, 6, 1, NULL, 'BILBAO, Emilio', 'Asesor técnico y director del laboratorio', '20 años', '2007-12-06 00:00:00', '50 min.', 'ME');
INSERT INTO entrevista VALUES (136, 2, 6, '6', 'MELO, Roberto Fabián', 'Encargado del anexo de la iglesia', '6 meses', '2003-06-18 00:00:00', '1:10 hs', 'AV');
INSERT INTO entrevista VALUES (137, 2, 6, '6', 'SALAS, Cristina; SANHUEZA, Aliro', 'Esposa de pastor; Pastor', '10 años ambos', '2003-05-30 00:00:00', '1:45 hs.', 'AV');
INSERT INTO entrevista VALUES (138, 14, 6, '13', 'BERACOCHEA, Juan', 'Vocal', '1 semana (como vocal)', '2003-06-02 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (139, 6, 1, NULL, 'TRIPODI, Francisco', 'presidente', '6 años y medio', '2007-12-11 00:00:00', '1:40 hs.', 'ME');
INSERT INTO entrevista VALUES (140, 14, 6, '13', 'VALINE, Ernesto', 'Secretario', '54 años', '2003-05-12 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (141, 14, 6, '13', 'DEPAU, Carlos', 'Presidente', '4 años', '2003-05-19 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (142, 14, 6, '7', 'PEÑA, Alicia', 'Presidente', '4 años', '2003-05-20 00:00:00', '1:10 hs.', 'AV');
INSERT INTO entrevista VALUES (143, 14, 6, '13', 'ROSSETTI, María Eva', 'Presidente', '6 meses', '2003-05-19 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (144, 14, 6, '13', 'MARCOVICH', 'Secretario Gral.', '4 años', '2003-05-08 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (145, 3, 2, NULL, 'DALFONZO, Antonio', 'Delegado', '4 años', '2003-05-02 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (146, 6, 1, NULL, 'José María Pastor', 'Presidente', '29 años en la asociación', '2008-03-07 00:00:00', '1:30 hs.', 'PRT');
INSERT INTO entrevista VALUES (147, 2, 1, '14', 'ROSSI, Raúl; CABRAL, Roberto', 'Secretario gral;Pro-secretario gremial nacional', '3 años; 7 años', '2003-06-04 00:00:00', '1:40 hs.', 'AV');
INSERT INTO entrevista VALUES (148, 26, 6, '6', 'TOLEDO, Gerardo; GALLEGO, Margarita Hortensia; GONZALEZ, Horacio Mario', 'Presidente; Tesorera; Revisor de cuentas', '3 años los tres', '2004-12-05 00:00:00', '1 h/ 1h 40 min', 'VdA');
INSERT INTO entrevista VALUES (149, 6, 1, '8', 'VILLALBA, Jorge Alfonso', 'Presidente', '23 años', '2007-11-08 00:00:00', '90 mins', 'ME');
INSERT INTO entrevista VALUES (150, 4, 1, '16', 'LABANCA, Facundo', 'Presidente', NULL, '2003-03-21 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (151, 4, 1, '15', 'CLAURI, Rubén', 'Secretario', '1 año', '2003-03-20 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (152, 13, 1, '9', 'de VARELA, Olga', 'Presidente', '2 años', '2003-03-28 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (153, 12, 6, '17', 'SAÑUDO, Paula', 'Secretaria', '13 años', '2003-03-26 00:00:00', '2:15 hs.', 'AV');
INSERT INTO entrevista VALUES (154, 12, 2, '6', 'MORALES, Mónica Viviana', 'Fundadora y cocinera', '2 años y medio', '2003-05-19 00:00:00', NULL, 'AV');
INSERT INTO entrevista VALUES (155, 14, 6, '13', 'DISABATINO, Emidio', 'Delegado zonal', '8 años', '2003-05-12 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (156, 2, 6, '6', 'ALFARO, Claudia Susana', 'Presidente', '4 años', '2003-05-29 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (157, 12, 6, '6', 'NOGUEZ, Verónica; MAGARO, Carlos; PEDERSEN, Elsa', 'Bibliotecaria; Fundador- Coordinador; Fundador- Coordinador', '5 meses; 17 años; 17 años', '2003-05-21 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (158, 12, 6, '6', 'MAÑA, Angélica', 'Presidente del Centro de Jubilados', '4 años', '2003-05-17 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (159, 16, 9, NULL, 'María Dolores USANDIZAGA, y Javier Insaurralde', 'Administrativa y Gerente', '5años; 1 mes y medio', '2007-11-26 00:00:00', '1:20 hs.', 'CT');
INSERT INTO entrevista VALUES (160, 25, 8, '14', 'Troncoso Raúl', 'Vicepresidente', '6 años', '2007-11-19 00:00:00', '2 hs.', 'VdA');
INSERT INTO entrevista VALUES (161, 14, 5, '10', 'Alak Salvador', 'Presidente', '18 años', '2003-03-18 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (162, 9, 5, '9', 'Legarreta Isidro', 'Presidente', '20 años', '2003-03-21 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (163, 8, 5, '9', 'Susana P. de Bidauri', 'Presidenta', '9 años', '2003-05-13 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (164, 13, 5, '9', 'Gonzalez Néstor Fabián', 'Secretario seccional', '5 años', '2003-07-03 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (165, 2, 6, '15', 'Nilda Cecilia Saling', 'Presidente', '7 meses', '2003-03-24 00:00:00', '1:15 hs.', 'SS');
INSERT INTO entrevista VALUES (166, 24, 8, '15', 'CERATTO, Carlos', 'Presidente', '8 años', '2008-04-28 00:00:00', '2 hs.', 'ME');
INSERT INTO entrevista VALUES (167, 6, 4, NULL, 'CIANCIO, Natalia; DIEGUEZ Rubén', 'Coordinadora; Trabajador Social', NULL, '2003-05-16 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (168, 6, 4, NULL, 'LURO, Clara', 'Presidente', '1 año', '2003-05-13 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (169, 8, 1, '9', 'de BALLEJAS, Margarita', 'Directora', '5 años', '2003-03-21 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (170, 13, 1, '16', 'BELTRAME, Ricardo Arturo', 'Vicepresidente', '5 meses', '2003-06-26 00:00:00', '1:25 hs.', 'AV');
INSERT INTO entrevista VALUES (171, 13, 1, '16', 'BERTOLLERO, Carlos', 'Secretario', '13 años', '2003-06-19 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (172, 5, 1, '16', 'GIMENEZ, Natividad; RICO de DICOSIMO, Alba; BLANCO, Nilda', 'Presidente; Secretaria; Tesorera', '3 años; 3 meses; 3 meses', '2003-07-07 00:00:00', '1:10 hs.', 'AV');
INSERT INTO entrevista VALUES (173, 11, 1, '8', 'OLOMBRIZ, Laura', 'Presidenta', '7 años', '2003-05-19 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (174, 13, 5, '9', 'LEIVAS, Leandro', 'Secretario Gral. De Tandil', '10 años', '2003-03-14 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (175, 3, 1, '15', 'LAZAREC, Abel', 'Pastor Licenciado', '5 años', NULL, '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (176, 5, 6, NULL, 'CHIDIAC, Catalina; JORNE, Pía', 'Presidente Colegio de Psicólogos Vocal', '6 años; 2 años', '2003-04-15 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (177, 19, NULL, NULL, 'Raimondi Mario', 'Coordinador Técnico', '2hs. 15 min.', '2007-12-10 00:00:00', '2hs 15 min', 'LM');
INSERT INTO entrevista VALUES (178, 8, 3, '17', 'Prada, A.', 'Pastor', '11 años', '2003-05-30 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (179, 4, 3, '17', 'Hugo Rodriguez', 'Presidente', '3 años', '2003-05-22 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (180, 5, 3, '17', 'Agustin Nuñez Monti', 'Presidente', '4 años', '2003-01-07 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (181, 8, 3, '17', 'Maria del Carmen Lamadrid', 'Presidenta', '20 años', '2003-03-18 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (182, 4, 3, '17', 'Cristina Roteño (Patronato de Liberados: Las Heras entre Colón y Paz)', 'Trab. Social', '4 meses', '2003-05-16 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (183, 9, 3, '17', 'Habarna Nicolás', 'Presidente', '17 años', '2003-03-15 00:00:00', '3 hs.', 'SS');
INSERT INTO entrevista VALUES (184, 3, 3, '15', 'Jorge Gigena', 'Sec. General', '3 años', '2003-06-06 00:00:00', '2 hs.', 'SS');
INSERT INTO entrevista VALUES (185, 8, 3, '17', 'Santiago Librante', 'Presidente', '9 años', '2003-02-04 00:00:00', '2:30 hs.', 'SS');
INSERT INTO entrevista VALUES (186, 8, 4, '15', 'CAMARGO, Laura', 'Trabajadora Social', '15 años', '2002-12-17 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (187, 2, 4, '15', 'CACHELA, Rodolfo', 'Secretario Gral. Partido Humanista', '19 años', '2003-03-12 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (188, 5, 4, NULL, 'MATE, María Evangelina', 'Participa del Mov. Humanista', '6 años', '2003-03-14 00:00:00', '1:45 hs.', 'AV');
INSERT INTO entrevista VALUES (189, NULL, NULL, NULL, 'MARQUEZ, Emir', 'Presidente', '14 años', '2007-11-20 00:00:00', '5:00 hs', 'LM');
INSERT INTO entrevista VALUES (190, 6, 4, NULL, 'MENENDEZ, Marina', 'Bibliotecaria', '2 años', '2003-05-13 00:00:00', NULL, 'AV');
INSERT INTO entrevista VALUES (191, 7, 4, NULL, 'RAIMONDI, Mercedes', 'Presidente', '1 año', '2003-03-27 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (192, 15, 4, NULL, 'MARTIGNONI, Natalia', 'Trabajadora Social', '6 meses', '2003-07-25 00:00:00', '1:10 hs.', 'AV');
INSERT INTO entrevista VALUES (193, 12, 4, '10', 'CORTINA, Adela; GARCIA, Marta', 'Tesorera; Pro-Tesorera', '9 años ambas', '2003-07-22 00:00:00', '1:40 hs.', 'AV');
INSERT INTO entrevista VALUES (194, 7, 6, NULL, 'IRASTORSA, Teresita', 'Administrativa', '3 años', '2003-03-20 00:00:00', '40 min.', 'AV');
INSERT INTO entrevista VALUES (195, 2, 6, '6', 'MARTIN, Ma. Laura; CAMBRONERA, Nancy E.; DIAZ, Gladys M.', 'Coordinadora; Coordinadora; Colaboradora', '7 meses; 7 meses; 3 meses', '2003-05-29 00:00:00', '1:10 hs.', 'AV');
INSERT INTO entrevista VALUES (196, 5, 6, NULL, 'BALLINI, Estela', 'Secretaria', '2 años', '2003-04-03 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (197, 2, 6, '6', 'GALLO, Rubén', 'Presidente', '9 años', '2003-06-24 00:00:00', '1:05 hs.', 'AV');
INSERT INTO entrevista VALUES (198, 11, 6, NULL, 'SANCHEZ, Cerafín; MICHEO, Susana', 'Pro-secreatrio; Esposa pro-secretario', '18 años', '2003-03-12 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (199, 11, 6, NULL, 'TRIVIÑO, Pedro A.; GONZALEZ, Ricardo; LOPEZ DASPERI, Roberto; TEOFILO, Ramón A.; IBARRAZ, Abel A; LEONETI, Vicente; FERNANDEZ, Irma R.', 'Presidente; Tesorero; Secretario; Pro-secretario; Vocal; Vice-presidente; Pro-tesorera', '15 años; 10 años; 28 años; 5 años; 40 años; 47 años; 15 años', '2003-04-09 00:00:00', '2:20 hs.', 'AV');
INSERT INTO entrevista VALUES (200, 5, 6, NULL, 'JULIARENA, Carlos', 'Presidente', '60 años', '2003-03-09 00:00:00', '40 min.', 'AV');
INSERT INTO entrevista VALUES (201, 5, 6, NULL, 'PAGES, Adrian; BIANCHI, Laura', 'Gerente; Colaboradora', '3 meses; 1 año', '2003-03-25 00:00:00', '45 min.', 'AV');
INSERT INTO entrevista VALUES (202, 6, 1, NULL, 'TIMPANARO Mariela', 'Coordinadora', '2 años', '2008-04-23 00:00:00', '1:35 hs.', 'CG');
INSERT INTO entrevista VALUES (203, 5, 3, '15', 'Rubén Elizeri', 'Gerente', '30 años', '2003-06-27 00:00:00', '40 min', 'SS');
INSERT INTO entrevista VALUES (204, 8, 5, '9', 'Anónimos', 'Miembros', NULL, '2003-05-31 00:00:00', '1:30  hs.', 'SS');
INSERT INTO entrevista VALUES (205, 4, 5, '9', 'Sergio Ybarra', 'Pastor', '4 años', '2003-06-17 00:00:00', '1: hs', 'SS');
INSERT INTO entrevista VALUES (206, 4, 5, '14', 'Mario Alberto Constantino', 'Pastor', NULL, '2003-10-06 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (207, 4, 1, '16', 'Silvia Battaia', 'Presidente', '4 años', '2003-03-27 00:00:00', '1:30 hs', 'SS');
INSERT INTO entrevista VALUES (208, 18, 7, '9', 'José Villalba', 'Presidente', '1año y 6 meses', '2007-11-30 00:00:00', '1 hora', 'MT');
INSERT INTO entrevista VALUES (209, 9, 3, '17', 'OREGIONES, Olga', 'Secretaria', '4 años', '2003-03-18 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (210, 9, 2, NULL, 'CORNEJO, Marta', 'Secretaria', '10 años', '2003-04-02 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (211, 14, 5, '14', 'CERAUTO, Juan Carlos', 'Tesorero', '12 años', '2003-03-24 00:00:00', '1:30 hs.', 'AV');
INSERT INTO entrevista VALUES (212, 4, 5, '14', 'SANCHEZ, Nely Edel', 'Vocal', '5 años', '2003-05-15 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (213, 8, 5, '9', 'FABRE, José', 'Pastor', '5 años', '2003-05-29 00:00:00', '50 min.', 'AV');
INSERT INTO entrevista VALUES (214, 9, 1, '16', 'CANALES, Raúl; PERALTA Nazario; LOPEZ Alberto; BOUCIGUEZ Claudia', 'Presidente; Vicepresidente; Secretaria; Secretaria', '10 años (presidente)', '2003-04-01 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (215, 4, 1, '9', 'MONTERO, Gustavo', 'Presidente', '10 años', '2003-03-25 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (216, 4, 1, '14', 'LOPEZ, Elsa Dominga', 'Secretaria', '12 años', '2003-07-01 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (217, 4, 1, '16', 'POBLETE, Adam', 'Pastor', '12 años', '2003-05-29 00:00:00', '1 hora', 'AV');
INSERT INTO entrevista VALUES (218, 18, 7, '9', 'Santoro, Norberto', 'Presidente', '10 años', '2008-04-17 00:00:00', '1 hora', 'VdA');
INSERT INTO entrevista VALUES (219, 18, 7, NULL, 'SANTORO Norberto', 'Presidente', '10 años', '2008-04-17 00:00:00', '1:00 hs.', 'LM');
INSERT INTO entrevista VALUES (220, 4, 1, '9', 'CASTIGLIONE, Alfonso', 'Presidente', '48 años', '2003-04-02 00:00:00', '2 hs.', 'AV');
INSERT INTO entrevista VALUES (221, 18, 7, '9', 'Bruno Carlos
Petrucci Micaela', '
Fundador
Bibliotecaria', NULL, '2008-02-19 00:00:00', '2 hs.', 'ME');
INSERT INTO entrevista VALUES (222, 13, 5, '9', 'Juan Carlos Incunado', 'Presidente', '4 años', '2003-03-26 00:00:00', '1:50 hs', 'SS');
INSERT INTO entrevista VALUES (223, 13, 5, '7', 'Mirta Echeverria', 'Presidente', '6 meses', '2003-02-05 00:00:00', '2:00', 'SS');
INSERT INTO entrevista VALUES (224, 13, 5, '7', 'Luis Alberto Menantonio', 'Secretario General', '11 años', NULL, '45 min', 'SS');
INSERT INTO entrevista VALUES (225, 13, 5, NULL, 'Gladys Flores', 'Presidente', '8 meses', NULL, '1:10 hs.', 'SS');
INSERT INTO entrevista VALUES (226, 8, 5, '14', 'Alicia Maggiori-Lucila Martinez Goya-Damiana Rojo', 'Directora Fundadora-Psicopedagoga-Psicologa', '7-1-2 años', '2003-03-24 00:00:00', '1:30', 'SS');
INSERT INTO entrevista VALUES (227, 5, 5, NULL, 'Esteban Riso', 'Presidente', 'Julio 2002', '2003-07-07 00:00:00', '1:10', 'SS');
INSERT INTO entrevista VALUES (228, 12, 1, '17', 'Maria Antonia Rusos', 'Directora a cargo', '20años', '2007-11-12 00:00:00', '90 mins', 'VdA');
INSERT INTO entrevista VALUES (229, 5, 5, '7', 'Elida Fernandez', 'Presidente', '20 años', '2003-05-21 00:00:00', '1 hs.', 'SS');
INSERT INTO entrevista VALUES (230, 5, 5, '7', 'Ernesto Walther', 'Presidente', '10 años', '2003-06-06 00:00:00', '3:30', 'SS');
INSERT INTO entrevista VALUES (231, 18, 7, '7', 'Susana Bidoun', 'Presidente', '20 años', '2007-12-06 00:00:00', '3 horas', 'MT');
INSERT INTO entrevista VALUES (232, 11, 6, '14', 'Cecilia Grieco de Lusto', 'Presidenta', '16 años', '2002-06-12 00:00:00', '1:45', 'SS');
INSERT INTO entrevista VALUES (233, 12, 6, '14', 'Josefina Grieco', 'Coordinadora', '2 años', '2003-03-06 00:00:00', '1:30', 'SS');
INSERT INTO entrevista VALUES (234, 7, 6, NULL, 'Isabel Elemenzon', 'Vicepresidente', '17 años', '2003-05-28 00:00:00', '50 min', 'SS');
INSERT INTO entrevista VALUES (235, 6, 1, '9', 'Oscar Lopez', 'Secretario', '3 años', '2008-02-27 00:00:00', '45 min.', 'ME');
INSERT INTO entrevista VALUES (236, 19, 6, '17', 'Mabel Noemí González', 'Presidente', '6 años', '2007-11-28 00:00:00', '1 h 20 min', 'VdA');
INSERT INTO entrevista VALUES (237, 8, 3, '17', 'Santiago Librante', 'Presidente', '9 años', '2003-03-18 00:00:00', '2 horas', 'SS');
INSERT INTO entrevista VALUES (238, 6, 1, '9', 'Carlos Dieguez', 'Presidente', '17 años', '2007-11-19 00:00:00', '1 hs.', 'ME');
INSERT INTO entrevista VALUES (239, 3, 1, '16', 'Carlos Canale', 'Presidente', '10 años', '2003-07-01 00:00:00', '1:10 hs', 'SS');
INSERT INTO entrevista VALUES (240, 11, 1, '8', 'Ramón Gonzalez', 'Secretario', '5 años', '2003-06-03 00:00:00', '1:20 hs', 'SS');
INSERT INTO entrevista VALUES (241, 18, 7, '8', 'GOMEZ, Marina Soledad', 'Secretaria. Coordinadora.', '9 años', '2007-11-22 00:00:00', '75 min.', 'VdA');
INSERT INTO entrevista VALUES (242, 12, 1, NULL, 'Picaroni, Marcos', 'Sacerdote encargado transitoriamente', '6 meses', '2007-11-20 00:00:00', '135 mins', 'ME');
INSERT INTO entrevista VALUES (243, 12, 1, NULL, 'Marcos Preanonni', 'Sacerdote encargado transitoriamente', '6 meses', '2007-11-29 00:00:00', '90 mins', 'ME');
INSERT INTO entrevista VALUES (245, 11, 1, '8', 'MONTERO, Elsa', 'Coordinadora', '3 años', '2003-09-01 00:00:00', '3 hs.', 'AV');
INSERT INTO entrevista VALUES (246, 6, 1, '9', 'VESTER, Juan Carlos; SERENO, Nelida', 'Secretario Gremial; Prosecretaria', '8', '2007-11-23 00:00:00', '80 mins', 'ME');
INSERT INTO entrevista VALUES (247, 16, 6, NULL, 'Soler, Mariela', 'Bibliotecaria', '5 años', '2008-04-08 00:00:00', '2 hs.', 'ME');
INSERT INTO entrevista VALUES (248, 9, 3, '9', 'BAUMGARTNER, Mariela', 'Secretaria', '3 años', '2003-03-22 00:00:00', '1:20 hs.', 'AV');
INSERT INTO entrevista VALUES (249, 4, 3, '17', 'PANIZZO, Luis María', 'Pastor - Presidente', '6 años', '2003-06-03 00:00:00', '1:15 hs.', 'AV');
INSERT INTO entrevista VALUES (250, 21, 5, NULL, 'Esteban Papini', 'presidente de rama', '2 años', '2008-05-13 00:00:00', '2 hs. 20 minutos', 'VdA');
INSERT INTO entrevista VALUES (251, 3, 3, '2', 'Jorge Enrique Gracie', 'Pastor', '15 años', '2003-05-22 00:00:00', '1:50', 'SS');
INSERT INTO entrevista VALUES (252, 8, 3, NULL, 'Francisco Kodan', 'Presidente', '1 año', '2003-05-09 00:00:00', '45 min', 'AV');
INSERT INTO entrevista VALUES (253, 13, 5, '7', 'Bierge, Osmar', 'Vocal', '1 año', NULL, '45 min', 'SS');
INSERT INTO entrevista VALUES (254, 18, 7, '7', 'Ackerley Mónica', 'Tesorera', '2 años', '2008-02-18 00:00:00', '1 hs 30 min', 'VdA');
INSERT INTO entrevista VALUES (255, 11, 6, '14', 'Federico Echaire', 'Tesorero', '10 años', '2003-12-13 00:00:00', '1:40 hs.', 'SS');
INSERT INTO entrevista VALUES (256, 13, 5, '7', 'Mannera Carlos Alberto', '1er. Consejero Distrito Tandil', '10 años', NULL, '1:45 hs.', 'SS');
INSERT INTO entrevista VALUES (257, 3, 3, '2', 'Beatriz Galvan', 'Encargada gral.', '20 años', '2003-05-30 00:00:00', '1:15 hs', 'SS');
INSERT INTO entrevista VALUES (258, 20, 5, NULL, 'Ilda Canelas', 'secretaria', '1 año', '2008-04-29 00:00:00', '55 minutos', 'ME');
INSERT INTO entrevista VALUES (259, 12, 1, NULL, 'Marcos Preanoni', 'Referente', '18 años', '2007-11-29 00:00:00', '3hs. 45 minutos', 'ME');
INSERT INTO entrevista VALUES (260, 19, 6, NULL, 'Dardo Cazal y Ma. Del carmen silva', 'Director y letrista, guionista, colaboradora', '21 años', '2007-11-19 00:00:00', '4 horas', 'VdA');
INSERT INTO entrevista VALUES (261, 6, 1, NULL, 'María Elena Godoy', 'Desarrollo Institucional', '18 meses', '2008-04-15 00:00:00', '1hora 30 mins', 'CG');
INSERT INTO entrevista VALUES (262, 6, 1, NULL, 'Echaide Federico', 'Tesorero', '15 años.', '2008-04-28 00:00:00', '1 hora', 'VdA');
INSERT INTO entrevista VALUES (263, 22, 1, NULL, 'Fernandez Walter', 'Coordinador', '20 años', '2008-04-22 00:00:00', '2 hs 30 min', 'LM');
INSERT INTO entrevista VALUES (264, 16, 9, NULL, 'Teresita Diez', 'presidente', '2 años', '2008-04-11 00:00:00', '3 hs', 'ME');
INSERT INTO entrevista VALUES (265, 25, 8, NULL, 'Sonia Carco', 'Coordinadora', '8 años', '2007-11-17 00:00:00', '2hs', 'VdA');
INSERT INTO entrevista VALUES (268, 25, 8, NULL, 'José a. Phiu', 'abogado', '1 año', '2007-12-07 00:00:00', '90 min.', 'VdA');
INSERT INTO entrevista VALUES (269, 25, 8, NULL, 'Juan A. Guillermo', 'presidente', '10 años', '2007-12-14 00:00:00', '35 min.', 'VdA');
INSERT INTO entrevista VALUES (270, 25, 8, NULL, 'Miguel A. García', 'Presidente', '2 años', '2007-12-15 00:00:00', '1 hora', 'VdA');




--
-- Data for Name: equipamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO equipamiento VALUES (1, 'Computadora');
INSERT INTO equipamiento VALUES (2, 'Teléfono');
INSERT INTO equipamiento VALUES (3, 'Internet');
INSERT INTO equipamiento VALUES (4, 'Vehículo');
INSERT INTO equipamiento VALUES (5, 'Herramientas/Instrumentos');
INSERT INTO equipamiento VALUES (6, 'Material Didáctico');
INSERT INTO equipamiento VALUES (7, 'Elementos particulares');
INSERT INTO equipamiento VALUES (8, 'Fotocopiadora');
INSERT INTO equipamiento VALUES (9, 'Vajilla completa / Mantelería');
INSERT INTO equipamiento VALUES (10, 'Material bibliográfico');
INSERT INTO equipamiento VALUES (11, 'Aparatología Rehabilitación');
INSERT INTO equipamiento VALUES (12, 'Edificio CROM');
INSERT INTO equipamiento VALUES (13, 'Equipamiento Salud');
INSERT INTO equipamiento VALUES (14, 'Mobiliario');
INSERT INTO equipamiento VALUES (15, 'Barcos');
INSERT INTO equipamiento VALUES (16, 'Vestuario');
INSERT INTO equipamiento VALUES (17, 'Consultorio Odontológico');
INSERT INTO equipamiento VALUES (18, 'Televisor / Video');
INSERT INTO equipamiento VALUES (19, 'Salón de fiestas');
INSERT INTO equipamiento VALUES (20, 'Jardín de Infantes');
INSERT INTO equipamiento VALUES (21, 'Aviones');
INSERT INTO equipamiento VALUES (22, 'Otros');
INSERT INTO equipamiento VALUES (23, 'Mesas y sillas');
INSERT INTO equipamiento VALUES (24, 'Libros');
INSERT INTO equipamiento VALUES (25, 'Inmuebles');
INSERT INTO equipamiento VALUES (26, 'Equipamiento de salon de fiestas');
INSERT INTO equipamiento VALUES (27, 'Terreno para futura sede');
INSERT INTO equipamiento VALUES (28, 'Equipo de música');
INSERT INTO equipamiento VALUES (29, 'Elementos de comedor');
INSERT INTO equipamiento VALUES (30, 'Equipamiento de cocina');
INSERT INTO equipamiento VALUES (31, 'Muebles');
INSERT INTO equipamiento VALUES (32, 'Instrumentos musicales');
INSERT INTO equipamiento VALUES (33, 'Terreno');
INSERT INTO equipamiento VALUES (34, 'Talleres');
INSERT INTO equipamiento VALUES (35, 'Sede');
INSERT INTO equipamiento VALUES (36, 'equipamiento social (mesas, sillas, etc.)');
INSERT INTO equipamiento VALUES (37, 'salón de actos');
INSERT INTO equipamiento VALUES (38, 'equipamiento de oficina (escritorio, archiveros, etc.)');
INSERT INTO equipamiento VALUES (39, 'Espacio deportivo/recreativo');
INSERT INTO equipamiento VALUES (40, 'Fax');
INSERT INTO equipamiento VALUES (41, 'Equipo de video');
INSERT INTO equipamiento VALUES (42, 'DVD');
INSERT INTO equipamiento VALUES (43, 'Sonido');
INSERT INTO equipamiento VALUES (44, 'Salón de comedor');
INSERT INTO equipamiento VALUES (46, 'Biblioteca');
INSERT INTO equipamiento VALUES (47, 'camara de fotos');
INSERT INTO equipamiento VALUES (48, 'Proyector');
INSERT INTO equipamiento VALUES (49, 'Filmadora');
INSERT INTO equipamiento VALUES (50, 'Televisor');
INSERT INTO equipamiento VALUES (51, 'retroproyectores');
INSERT INTO equipamiento VALUES (52, 'otro');
INSERT INTO equipamiento VALUES (53, 'Invernadero');
INSERT INTO equipamiento VALUES (54, 'Propiedades donadas que están en alquiler');
INSERT INTO equipamiento VALUES (55, 'elementos identificatorios de la organización (bandera, estandarte, campana)');

--
-- Data for Name: forma_de_difusion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO forma_de_difusion VALUES (1, 'Medios de comunicación');
INSERT INTO forma_de_difusion VALUES (2, 'Boca a boca');
INSERT INTO forma_de_difusion VALUES (3, 'Publicaciones');
INSERT INTO forma_de_difusion VALUES (4, 'Internet');
INSERT INTO forma_de_difusion VALUES (5, 'Radio o programa radial propio');
INSERT INTO forma_de_difusion VALUES (6, 'Correo electrónico');
INSERT INTO forma_de_difusion VALUES (7, 'Material de divulgación (folletos, volantes, afich');
INSERT INTO forma_de_difusion VALUES (8, 'Misiones');
INSERT INTO forma_de_difusion VALUES (9, 'Circulares');
INSERT INTO forma_de_difusion VALUES (10, 'Gacetilla de prensa');
INSERT INTO forma_de_difusion VALUES (11, 'Dirección de cultura municipal');
INSERT INTO forma_de_difusion VALUES (12, 'carteles');
INSERT INTO forma_de_difusion VALUES (13, 'Promotoras');


--
-- Data for Name: forma_difusion_x_alcance_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (9, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (9, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (9, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (10, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (10, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (10, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (10, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 4, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 4, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 6, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 6, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (15, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (22, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (47, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (47, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (47, 4, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (47, 4, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (47, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (64, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (64, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (64, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (65, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (65, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (65, 6, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (101, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (101, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (101, 5, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (101, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (113, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (113, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (120, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (120, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (126, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (126, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (126, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (126, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (130, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (130, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (133, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (133, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (133, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (135, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (139, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (139, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (139, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (139, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (149, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (218, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (218, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (218, 10, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 1, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 3, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 3, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 9, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 9, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 9, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (228, 9, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (238, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (242, 8, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 4, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 4, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (243, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (246, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (246, 3, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (250, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (250, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (250, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (250, 7, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (254, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (254, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (254, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (254, 6, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (254, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (258, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (258, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (258, 6, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 2, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (259, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (260, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (260, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (260, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (260, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (260, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 4, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (261, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (129, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (129, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (129, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (129, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (202, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (202, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (221, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (221, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (221, 4, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (208, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (208, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (208, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (208, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (4, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (128, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (128, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (128, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (46, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (67, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (67, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (67, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (67, 6, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (219, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (219, 11, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (127, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (127, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (13, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (13, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (13, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (231, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (231, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (231, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (231, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (231, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 2, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 6, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 4, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (262, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (125, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (125, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (236, 12, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (189, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (159, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (159, 6, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (159, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 3, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (263, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 3, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 6, 5);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (177, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (166, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (166, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (166, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (33, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (33, 4, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (7, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (7, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (7, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (247, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (247, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (247, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (247, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (241, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (241, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (241, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (241, 5, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (241, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 2, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 2, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 3, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 3, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 3, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 6, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (264, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (109, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (109, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (109, 6, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (106, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (106, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (106, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (8, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (8, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (8, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 1, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 1, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 7, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 7, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 7, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 13, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (1, 13, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (265, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (148, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (148, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (148, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (268, 2, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (268, 2, 3);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (268, 2, 4);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (160, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (160, 6, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (269, 1, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (269, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (270, 2, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (270, 3, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (270, 7, 1);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (34, 1, 2);
INSERT INTO forma_difusion_x_alcance_x_organizacion VALUES (34, 4, 5);


--
-- Data for Name: formatenenciapropiedad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO formatenenciapropiedad VALUES (1, 'En propiedad con escritura');
INSERT INTO formatenenciapropiedad VALUES (2, 'Fiscal en comodato');
INSERT INTO formatenenciapropiedad VALUES (3, 'Espacio cedido por un particular de modo informal');
INSERT INTO formatenenciapropiedad VALUES (4, 'En propiedad sin escritura');
INSERT INTO formatenenciapropiedad VALUES (5, 'En comodato');
INSERT INTO formatenenciapropiedad VALUES (6, 'Espacio en préstamo dentro de otra institución');
INSERT INTO formatenenciapropiedad VALUES (7, 'En alquiler');
INSERT INTO formatenenciapropiedad VALUES (8, 'Toma de un espacio físico');
INSERT INTO formatenenciapropiedad VALUES (9, 'No tienen espacio físico definido');
INSERT INTO formatenenciapropiedad VALUES (10, 'Oupación espacio público p/ordenanza municipal');
INSERT INTO formatenenciapropiedad VALUES (11, 'Cedido por la Municipalidad');


--
-- Data for Name: frecuenciacapacitacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO frecuenciacapacitacion VALUES (1, 'Anual');
INSERT INTO frecuenciacapacitacion VALUES (2, 'Semestral');
INSERT INTO frecuenciacapacitacion VALUES (3, 'Trimestral');
INSERT INTO frecuenciacapacitacion VALUES (4, 'Mensual');
INSERT INTO frecuenciacapacitacion VALUES (5, 'Semanal');
INSERT INTO frecuenciacapacitacion VALUES (6, 'Bimestral');
INSERT INTO frecuenciacapacitacion VALUES (7, 'Contínua');
INSERT INTO frecuenciacapacitacion VALUES (8, 'Esporádica');

INSERT INTO religion VALUES (1, 'Católica');
INSERT INTO religion VALUES (2, 'Protestante');
INSERT INTO religion VALUES (3, 'Judía');
INSERT INTO religion VALUES (4, 'Sin Especificar');
INSERT INTO religion VALUES (5, 'Ninguna');
INSERT INTO religion VALUES (6, 'Adventista');
INSERT INTO religion VALUES (7, 'Enseñanza espiritual única');
INSERT INTO religion VALUES (8, 'Evangélica');
INSERT INTO religion VALUES (9, 'Restaurada');
INSERT INTO religion VALUES (10, 'mormon');


--
-- Data for Name: historia; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO historia VALUES (1, 1941, 'Laico', 5, 'Marzo de 1941 se hace una convocatoria x Nueva Era y El Eco y se los nombró como Presidente a Caravelli y Sec. A Angel Esperoni para q'' conformen la 1ra. Comisión Directiva.
Asambleistas: Jacinto Rojas y Toma Ruiz', 'Fundadores afectados por problemas comunes', 'Desarrollo de la actividad automovilística', 'Organizar lo que es el deporte automotor. Organizar competencias a nivel zonal, regional y nacional. Carreras de Turismo Carretera.', 'Pos-peronismo');
INSERT INTO historia VALUES (2, 1998, 'Laico', 5, 'Néstor Di Paola, AnabelaTvijhang, Esteban Di Paola y otros "gente de la cultura"', 'Fundadores afectados por problemas comunes', 'Difundir la temática cultural local y regional favoreciendo especialmente a los artistas locales brindándoles espacio para expresarse (objetivo fundamental)
Bibliográfico: Reunir material bibliográfico y de hemeroteca que tengan que ver fundamentalmente con nuestra identidad cultural.', 'Nombre: la denominación Chapaleofú tiene que ver con una cuestión de identidad regional ya que sobre las márgenes de ese caudaloso arroyo se asentaron miles de Mapuches durante el medio siglo anterior a la fundación de Tandil. En esa zona desarrollaron la famosa Feria Indígena del Chapaleofú. Además el partido se llamó Chapaleofú entre los años 1839 y 1854. Chapaleofú quiere decir Arroyo Pantanoso', 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (3, 1973, 'Laico', 5, 'Enrique Nielsen; Luis Lopez; Cortagerena. Eran trabajadores de Indiustrias Químicas "La Oxigena" y "Martínez Escalada"', 'Fundadores afectados por problemas comunes', 'Defensa de los derechos de los trabajadores', 'Una inquietud nuestra, nos pusimos en contacto con la Federacion (a nivel nacional). Gracias a ellos fuimos logrando muchas cosas: Reconocimiento de feriados, obras extras, horarios, ropa de trabajo.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (4, 1972, 'Laico', 5, 'Mario Vulcano (Martillero Público) y Martinez Velsa (comerciante) 
Alonso Frías (Médico Clínico) Edgardo Carra (Calefacción y Aire Acondicionado) 
(Surge porque el Rotary Tandil estaba saturado de gente)', 'Fundadores afectados por problemas comunes', 'Servicios en el club se relaciona con lo social de los miembros del Club (cumpleaños, aniversarios, etc.) 
-Ubicar algo útil para cada persona.
-Servicios en la comunidad.
-Servicio a través de la ocupación.', '6 o 7 amigos se juntaron (apadrinados por Rotary Club Tandil) por "amistad"
No es una cosa que vos decis quiero entrar y vas a entrar (capacitada)', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (5, 1931, 'Laico', 5, 'Anselmo Fernández, Luis Fangorras, José Gallarreto, Rubén Gallareto, Ignacion Polich, Rodolfo Bertuchi, Homero Bertuchi, Juan Fernandez, José Cruz, José Daher, Urbano Alvarez, Aurelio Gallarreto y otros', 'Fundadores afectados por problemas comunes', 'Desarrollar actividades deportivas, especialmente fútbol y recreativas.', 'Este club se desprendió del Club Jorge Newbery por una crisis institucional de éste.', 'Década infame (década del 30)');
INSERT INTO historia VALUES (6, 1974, 'Laico', 5, 'Secr. Francisco Esnaola. Juan Molina. Agustín Masan. Roberto Mosca
Trabajadores agremiados al gremio', 'Fundadores afectados por problemas comunes', '- Velar por intereses de trabajadores mecánicos
- Actividad Gremial', 'No estaba en el gremio. No sabe', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (7, 1975, 'Laico', 5, 'Nació desde el Rotary Club Tandil en Asamblea Pública', 'Fund. externos a las problematicas que dieron origen a la org.', 'Dar marcapasos a la ciudad de Tandil', NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (8, 1942, 'Laico', 5, 'Toda la familia de Ramón Santamarina y descendientes', 'Fund. externos a las problematicas que dieron origen a la org.', 'Las autoridades directivas se dieron cuenta que la comunidad de Tandil y la zona necesitaba ayuda y pidieron colaboración a un grupo de señoras. Organizaron una reunión en la Municipalidad el 7-11-1942 en el Salón Blanco invitando a todas las señoras de Tandil. Así se constituyó la primer comisión.', 'Es una comisión apolítica de ayuda al enfermo', 'Década infame (década del 30)');
INSERT INTO historia VALUES (9, 1983, 'Laico', 5, 'Fundadores, grupos de padres y profesionales que recibieron su apoyo para la realización del taller.', 'Presencia de ambos', 'Integración laboral de los discapacitados', 'Necesidad de un grupo de padres de encontrar una salida laboral para los chicos egresados de las escuelas especiales.
Se estaba dando no solo la apertura de muchas instituciones sino también se empezaba a dar un cambio en cuanto a la apertura de la valoración y reconocimiento del discapacitado. Se empezo de a poco, a salir del ocultamiento y la vergüenza. En Tandil no existía ninguna institución así.', 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (10, 1940, 'Laico', 5, 'Armendariz, Rafael (''40); Armendariz, Roberto (''45) (durante 40 años); Escarnato, Francisco  (''75),', 'Fundadores afectados por problemas comunes', 'Colaborar con las autoridades en el fomento de desarrollo del turismo.
Manetner estrecha vinculación con  .... y asesorarlos.
Intervenir en la fijación de normas para unificar cond. de trabajo.', 'No conoce mucho de la historia, pero sí habia una idea muy fuerte por actuar en común frente al poder sindical del momento, fue el porque del nucleamiento de empresarios hoteleros y afines para obtener mejoras.', 'Década infame (década del 30)');
INSERT INTO historia VALUES (11, 1986, 'Religioso', 2, 'Iglesia, referentes pastores con comis q'' trabajan a ad-honorem', 'Fundadores afectados por problemas comunes', 'Dar buen nivel y contener a los chicos con pautas cristianas basadas en la biblia, en la palabra de Dios.', 'Surge a partir de la busqueda de un pastor y su esposa, de un jardin para sus hijos con las características de los objetivos fundacionales. Piensan en la posibilidad de la creación de una institución que brinde principios cristianos.
A partir de alli hablan con la iglesia y pautan la apertura del jardín. 4 años después surge la escuela.', 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (12, 1938, 'Laico', 5, 'Cereseto, Pedro.
Eran todas personas que pertenecen a la  elite de la sociedad.', 'Fundadores afectados por problemas comunes', 'Proporcionar a los  miembros  comodidad y elementos para la práctica de la natación y otros deportes.
Desarrollar un ambiente de cordialidad y solidaridad.
Realizar espectáculos públicos concordantes con los fines soc. que proporcione beneficios.', 'No menciona características sel contexto que hayan dado origen o afecten al club. Sí hubo un fuerte énfasis en el grupo de personas (50), varones que pretendían un lugar para ellos, para la elite.', 'Década infame (década del 30)');
INSERT INTO historia VALUES (13, 1924, 'Laico', 5, 'Donovan Ban (o Bari, o Bare)
Carlos A. Agote
Juan C. Cavagme (o Cavagne).
Todos empleados bancarios.', 'Fundadores afectados por problemas comunes', 'Lograr mejorar condiciones laborales del personal bancario.', 'Leyes Peron. Que empezaron a favorecer.
Hasta ese momento no había consideración por el empleado bancario, trabaja a veces hasta los sabados y domingos, nunca un feriado, nadie reclamaba por sus derechos. Hasta que en 1925 se fundó la caja de jubilaciones y pensiones, y se sancionó la ley 11575 que empieza a favorecer a los trabajadores. Con el gobierno peronista (3º) se establece el feriado bancario. A partir del 76 tuvimos una nueva argentina. El país quedó dividido y marcado para siempre por en "no te metas".', 'Período radical (1916-30)');
INSERT INTO historia VALUES (28, 1983, 'Laico', 5, 'Hugo Lendez, Marta Teste, Luis Guzmán, Interesados por la problemática de representación', 'Fund. externos a las problematicas que dieron origen a la org.', 'Defender intereses gremiales de los trabajadores', 'Nuevo período democrático. La necesidad de representación, motivos gremiales', 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (111, 1986, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (14, 1936, 'Laico', 5, 'Roberto Matsen.
Hans Ots; alemán, vino Alemania trayendo la experiencia del vuelo sin motor (planeadores) después de la 1º Guerra Mundial.
Seeson', 'Fundadores afectados por problemas comunes', 'Práctica y difusión del vuelo a vela.
Enseñanza de actividades de vuelo.
Fromación de pilotos de planeadores.', '2º Guerra Mundial, vuelo del planeador. Tratado de Versalles.
Durante la 2º Guerra Mundial, Alemania, por lo dispuesto en el tratado de Versalles, no podía fabricar armamentos y dentro de ellos aviones preparados para la guerra. Así surge empezar a fabricar aviones sin motor (planeadores) y empiezan a formar pilotos preparados para manejar este tipo de aviones. La Guerra a Alemania con miles de pilotos de este tipo y la práctica rápidamente se difundió mundialmente y llegó a nuestro país.', 'Década infame (década del 30)');
INSERT INTO historia VALUES (15, 1986, 'Laico', 5, 'No sabe, no recuerda quienes fueron los primeros fundadores.', 'Fundadores afectados por problemas comunes', 'Surge por una necesidad gremial, eran 300 en esta época (delegados). En ese momento, no había representantes locales, eran de afuera.
Surge para contener las necesidades del personal civil. Luego se ampliaron las acciones sociales.', 'Las Fuerzas Armadas no tienen obra social propia. Como gremio hacemos acción social.
Surge para legalizar la acción gremial. Los delegados eran impuestos en ese momento, entonces empezaron a elegirse entre ellos.
Ni la gente, ni los militares estaban acostumbrados a organizarse. Costó mucho porque "ellos" (los militares) no entendían que nuestras acciones no eran en contra de ellos.', 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (16, 1957, 'Laico', 5, 'Lo fundaron 7 gallegos y un hijo de gallego, el Dr. Alfonso Calvo, que es el que queda vivo (de los 8) y está en la Comisión Directiva como Secretario.', 'Fundadores afectados por problemas comunes', 'La Confraternidad Hispano Argentina', 'Se juntaron para difundir la cultura de Galicia y para apoyar moral y materialemente al progreso de la ciudad y para realizar obras de bien.
También para recrear costumbres de Galicia, de España en gral.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (17, 1992, 'Laico', 5, 'Surge por inquitudes comunes.
Poupee Cáseres Cano, Matilde Rodríguez, Aurelia Pereyra y Liliana Gianastasio fuimos las fundadoras.', 'Presencia de ambos', 'Visualizar toda la problemática de mujeres en la sociedad.
Visualizar la problemática de la violencia en las mujeres.', 'Comenzamos con un programa de radio, trabajabamos la problemática para discutir y difundir.
El apoyo a la defensa de Estela Cora es hecho histórico que nos dio mas difusión.
Nosotras asesoramos desde nuestro punto de vista al abogado, haciendole comprender que esto era fruto de años de sufrimiento de esta mujer.', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (18, 1963, 'Laico', 5, 'Bs.As.: Helena Lorroque de Raffo
Grupo de médicos', 'Fund. externos a las problematicas que dieron origen a la org.', 'Contribuir a luchar contra el cáncer aportando recursos para investigaciones y divulgación para el conocimiento sobre cáncer. A fin de propender el diagnóstico precoz de la enfermedad. Señalando los 1eros. Síntomas permite combatirlo a tiempo.
Cooperar en la asistencia de enfermos dentro de las posibilidades.', 'Iniciativa de un grupo de médicos debido al aumento de enfermos de cáncer.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (19, 1997, 'Laico', 5, 'Grupo Sin Moldes. Se funda a raiz del fallecimiento de Pouppie Caceres Cano. Su biblioteca personal y la de otros integrantes y donaciones dieron pie a su fundación.', 'Fundadores afectados por problemas comunes', 'Crear un lugar para la voz de las mujeres. (Derechos Humanos, Violencia Doméstica, Situación de las Mujeres en el mundo)', 'Necesidad de formación, de denuncia, de concientización. Impulsar espacios de participación de las mujeres y de tratamiento de sus problemáticas.', 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (20, 1979, 'Laico', 5, 'Haydee Viana y una comisión de docentes de la provincia de Buenos Aires', 'Fundadores afectados por problemas comunes', 'Defensa de los derechos de los docentes de la Provincia de Buenos Aires específicamente en el distrito de Tandil', 'Campaña central de expansión del gremio para solucionar problemas de los docentes. Entonces los fundadores crearon una sucursal del gremio acá en Tandil.', 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (21, 1993, 'Laico', 5, 'Germán Christensen, Gustavo Comini, Sergio Harques, Angel Puglia, José Sangregrorio, Laura Barni, Mónica García, Eva Rasmussen, Hilda Torres. Todos unidos por este deporte', 'Fundadores afectados por problemas comunes', 'Desarollar y difundir el badminton', 'Nació como necesidad de lograr estructura, orden y transparencia para lograr los objetivos señalados. Coincidió con un momento de crecimiento de la disciplina.', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (22, 1998, 'Laico', 5, 'Jorge Vallejos, Jorge Fernandez, Ricardo Silicani, Saúl Vacaressa, Carlos Fasciolo, Carlos Corradi, Carlos Giuliotti, Raúl Marcovich, Leonardo B. Prumale.', 'Fundadores afectados por problemas comunes', 'Continuar con la especialidad del billar y el casin', 'La subcomisión de casin del club Santamarina fundó este club con la especialidad del billar y el casin porque el club Santamarina se fundió', 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (23, 1918, 'Laico', 5, 'Arturo Setzes, Emilio Cardona, Agustin Diez, Juan Gardey. Empezaron haciendo un club de fútbol, 50 fundadores.', 'Fundadores afectados por problemas comunes', 'Diferenciarse de otros clubes de fútbol. Tener una camiseta diferente y fundar su propio club.', NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (24, 1972, 'Laico', 5, 'Empleados jubilados y pensionados que dependían de la Sucursal Tandil y Villa Italia del Banco', 'Fundadores afectados por problemas comunes', 'Generar actividades sociales y deportivas', 'Empleados del Banco conformaron una Caja Social para ayudarse mutuamente. Luego surgió la idea de crecer y fundar un Club.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (25, 2001, 'Laico', 5, 'Martin Guillenea, Pedro Cenoz, Héctor Creparula, Guillermo Saenz y Patricia Ñancupoli. Profesores de Geografía y tesistas de Gestión Ambiental y Comunicador Social', 'Fundadores afectados por problemas comunes', 'Generar trabajos de asesoría ambiental vinculados con cuestiones sociales.
Capacitar, asesorar y divulgar sobre la problemática ambiental.', 'Generar alternativas laborales a los miembros del Grupo ante el alto nivel de desocupación en la ciudad', 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (26, 1973, 'Laico', 5, 'Elección -> Objetivo: derechos de los trabajadores', 'Fundadores afectados por problemas comunes', 'Defensa derechos del trabajador del seguro, reaseguro, capitalizac. y ahorro', 'Marca como iniciativa de origen la lucha x los derechos de los trabajadores. Vincula esta lucha al contexto histórico del proceso de reorganización nacional.
Identifica la situación socioeconómica, política y cultural estrechamente vinculada a la situación de los tjadores del sindicato.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (27, 1937, 'Laico', 5, 'En 1937 el Sindicato se llamaba "Sindicato de cocineros"
Manuel Lantes, pasteleros y anexos de Tandil
Antonio Sainz. Todos los integrantes eran empleados.
José Gonzalez gastronómicos', 'Fundadores afectados por problemas comunes', 'Representar los intereses de los trabajadores del sector. Mejorar la calidad de vida del trabajador. Mejorar condiciones laborales, salariales, salud, etc.', 'Surgi// de todos los sindicatos llegada de Perón al poder', 'Década infame (década del 30)');
INSERT INTO historia VALUES (106, 1983, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (107, 1984, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (29, 1898, 'Religioso', 3, 'Siberman, Rabinovich, Kazdan, Levin. Pertenecientes a la comunidad judía', 'Fundadores afectados por problemas comunes', 'Sociales , benéficos, culturales, religiosos.', 'La corriente inmigratoria del año 1889 que llegaron a Argentina en el barco "Weser" de grupos "Azquenazim" provenientes  de europa oriental y cuya lengua es el "Idich" (dialecto alemán) con manifestaciones en el teatro, la música, bailes, hechos culturales.', 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (30, 2001, 'Laico', 5, 'Estevez, Oscar - Pedrosa, Raúl - Perirano, Abel - González Jorge - Peñalba Susana - Arata José - Silva María Ester - Crossi Abel - Gimenez, Carmen - Estevez Luis - Ciancio Mónica - Montero Juana - La mayoría de los integrantes formaban parte de la Agrupación Criollos de Tandil, hubo un "cortocircuito" con el Presidente y crearon esta nueva organización', 'Fundadores afectados por problemas comunes', 'Por la tradición, les gusta desfilar. Realizar actos culturals. A través de las actividades que realizan a veces pueden beneficiar a los alumnos de alguna escuela. Hacer algunos cuentos "en beneficio".', 'No existe relación entre el contexto histórico y el surgimiento de la institución. Se entiende que la organización surge por iniciativa e interés de los involucrados, y no como respuesta a alguna situación de contexto.', 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (31, 1950, 'Religioso', 1, 'Padre Elías Heinrich', 'Fundadores afectados por problemas comunes', 'Una nueva Parroquia para una ciudad que está creciendo.', 'Crecimiento de la ciudad que hace necesaria la creación de una nueva Parroquia en una zona densamente poblada.
Importancia de la actividad ferroviaria en la zona.
Ubicación en la zona del Hospital Municipal', 'Período peronista (43-55)');
INSERT INTO historia VALUES (32, 1944, 'Laico', 5, 'Tuero Alfredo, Salvador Américo, Pechia Nicolás, Jaramillo Angel (Obreros Metalúrgicos)', 'Fundadores afectados por problemas comunes', 'La lucha obrera', 'Antes del año 1944 funcionaba el Sindicato de Obreros Metalúrgicos', 'Período peronista (43-55)');
INSERT INTO historia VALUES (33, 1939, 'Laico', 5, 'Pedro Cereseto, María Rabal, Francisco Vistali, Zabaleta, Brun, Herrecarret, Reddati, Tuñon, Basilico, Nicola, Buzón (1ra. Comisión)', 'Fund. externos a las problematicas que dieron origen a la org.', 'Aliviar el sufrimiento hermano en tiempo de paz o de guerra.', 'Dar carácter institucional a la escuela de enfermería "San Maritanas" que se encontraba en la ciudad', 'Década infame (década del 30)');
INSERT INTO historia VALUES (34, 1958, 'Laico', 5, 'Victor Jua - Adolfo Calvo - Eduardo Camuña - Carlos Gentile - Raúl Martín - Francisco Delgado - Juan Luis Calvo', 'Fundadores afectados por problemas comunes', 'Fomentar la teoría y la práctica de los principios del buen gobierno y de la buena ciudadanía. Fromar parte activa en el desarrollo cívico, cultural, social, moral y en el bienestar de la comunidad. Promover la discusión de ?? De intereses, salvo religiosos, de política partidaria, sectarismo. Alentar a las personas a servir a la comunidad desinteresadamente. Fomentar una ética uniforme en todas las esferas de la vida', 'El Club de Leones surgió a partir de la iniciativa de las personas indicadas anteriormente ante la necesidad de contar con un espacio que les permitiese participar y colaborar con la comunidad. No se plantean cuestiones propias a la respuesta.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (35, 1970, 'Laico', 5, 'Víctor Gorini, empleado judicial.', 'Fundadores afectados por problemas comunes', 'Gremiales y sociales. Protección de la persona respecto de su salud y brindar protección gremial.', 'La Asociación en Tandil surge a partir de la creación de los juzgados en la ciudad para proteger al empleado judicial. Aunque hace 30 años que existe aún hoy siguen peleando para que Tandil deje de ser una delegación y pase a ser un departamento.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (36, 1975, 'Laico', 5, 'Dr. Víctor Mandrini, Dr. Huberto Cuevas Acevedo, Dr. Hugom Nario y Prof. Daniel Perez', 'Fundadores afectados por problemas comunes', 'El estudio, la investigación y la difusión de la historia de Tandil y la zona.', 'Se origina a raíz de la agrupación de diferentes personas apoyadas en ese momento por la Dirección de Cultura de la Municipalidad y por la Universidad. Agruparnos a fin de lograr profundizar la búsqueda de datos sobre Tandil para difundirlos.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (37, 1991, 'Laico', 5, 'Cicopiedi, Chialva, Adriana Palacio y José María Guimet', 'Fundadores afectados por problemas comunes', 'Artístico e institucional, Institucionalizar el espectáculo Escen as de la Redención', 'Surge como descentralización de la Municipalidad de la Dirección de Cultura. El espectáculo se hace desde 1948 en forma ininterrumpida.', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (38, 1939, 'Laico', 5, 'Dr. Blanco Villegas, Pedro Ceresetto, Dr. Martinez Goya', 'Fundadores afectados por problemas comunes', 'Capacitación y actualización médica. Otro: constituir una sociedad científica.', 'Los médicos en general no tienen muchas oportunidades de capacitarse y mantenerse actualizado y es respecto de esta necesidad que actua la Asociación', 'Década infame (década del 30)');
INSERT INTO historia VALUES (39, 2000, 'Laico', 5, 'Julio César de Galvagni, Adolfo Loreal, Esteban Rosso, Emilio Cardona', 'Fundadores afectados por problemas comunes', 'Cooperar con el Estado Municipal en la conservación del Patrimonio de Tandi. Organizar, presentar y difundir actividades artísticas y obras de estructura e infraestructura que suponga un aporte a la comunidad tandilense. Organizar distintas actividades culturales.', 'Decisión de buscar un grupo en la sociedad para formar esta asociación que tome un quehacer propio desvinculado de la Dirección de Cultura. Inicialmente fue una comisión grande luego quedó un grupo reducido. La necesidad era reactivar el quehacer cultural de Tandil. Fue por mutua iniciativa. Sociedad Civil y Dirección de Cultura que se independizan en buenos términos.', 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (40, 1973, 'Laico', 5, 'Dr. Cuevas Acevedo, Reynaldo Scoott, Juan Calvo y Adolfo Dominguez', 'Fundadores afectados por problemas comunes', 'Preservar un espacio serrano con su flora y fauna particular.', 'El municipio cede en comodato la zona. En un principio no fue pensado como lugar turístico. Los fundadores eran gente común de la comunidad que tuvo esa iniciativa por el cuidado de los recursos naturales de la sierra.', 'Período peronista (43-55)');
INSERT INTO historia VALUES (41, 1960, 'Laico', 5, 'Pascual Tangorra, José Tangorra, Julio Almada, José Angelillo entre otros. Todos compartían su simpatía por la voz de Carlos Gardel, por sus películas y sus canciones.', 'Fundadores afectados por problemas comunes', 'Recordar días importantes en la vida de Gardel, nacimiento, muerte.
Mantener en vigencia la imagen, la biografía y la discografía de Gardel.', 'Año 1964  Monumento a Carlos Gardel, Actos recordatorios anuales por su nacimiento y muerte. Peñas familiares.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (42, 1993, 'Laico', 5, 'Héctor Beltrán, Angeles Unzue, Daniel Perez, Agustin Monti y Antonio Rizzo. En su mayoría pintores. Intereses comunes.', 'Fundadores afectados por problemas comunes', 'Formar un grupo de pintores y escultores amantes del arte para poder realizar exposiciones, difundir el arte y la cultura en Tandil y localidades vecinas y lograr un contacto fluido entre artistas.', 'Alrededor del año de fundación existían muchos pin tores pero no tenían un lugar para exponer las obras. El Museo en ese tiempo no era para esto.', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (108, 1936, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (109, 1976, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (43, 1965, 'Laico', 5, 'Américo Marochi, Jacobo Guerman, Machi. Todos técnicos electomecánicos y Maestros Mayores de Obra.', 'Fundadores afectados por problemas comunes', 'Formar una sociedad para tratar temas relacionados con la profesión ante entidades públicas y privadas. Luchar por la defensa de los derechos e intereses de los trabajadores Maestros Mayores de Obra y Técnicos.', 'En un pricipio la organización no se planteaba objetivos gremiales. Se abocaba a actividades relacionadas a la creación de una asociación que nucleara a los Maestros Mayores de Obra. Lo que se ve hoy(salón de fiestas, obra social, vínculos con colegio de ingenieros, etc) es a partir de 1997 cuando nos proponemos crecer más y brindar otros servicios.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (44, 1994, 'Laico', 5, 'Fue refundado en 1994 pues desde el 86 hasta esta fecha estuvo sin funcionar. El ingeniero José Segura era el Presidente. Somos 12 o 14 ingenieros', 'Fundadores afectados por problemas comunes', 'Asistir a la comunidad en la faz técnica aportando el conocimiento de su profesión.
Asistir a los colegas.', 'Parte de la misma sociedad para asistirnos mutuamente y prestar servicios a la comunidad.', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (45, 1964, 'Laico', 5, 'Dr. Osvaldo Zarini, Dr. Lisandro Cabana, Cr. Enrique Davos, Prof. Francisco Serrano, Prof. Marta Hargougas, Prof. Elsa Subiliaga, Prof. Teresa Suarez de Roca', 'Fundadores afectados por problemas comunes', 'Creación de estudios universitarios en Tandil', 'Por esos años se dicta la ley de educación libre que permite la creación de universidades privadas y así surge la fundación frente a la necesidad de dotar a Tandil y la región de estudios universitarios, de su estructura organizativa. La Fundación crea la Universidad en Tandil y opera en su mantención jurídico-económico hasta su nacionalización 1975. A partir de esta fecha se trabaja en conjunto, pero poco a poco la Fundación va perdiendo sus actividades y hoy está totalmente limitada en "stand by".', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (46, 1957, 'Laico', 5, 'Sr. Ferrari Bravo, Diego Bustos, Delia Bustos', 'Fundadores afectados por problemas comunes', 'Enseñanza de la danza tradicional organizada', 'Un grupo de vecinos, amantes de lo trasdicional se juntaron para cultivar la danza tradicional argentina, funciona hasta 1970 en el Club Boca, fecha en la que se compra la sede actual.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (47, 1962, 'Laico', 5, 'Verellen, Pilati, Machiarena, F. Reich, Usandizaga. Vecinos de la ciudad afectos a la náutica.', 'Fundadores afectados por problemas comunes', 'Fomentar el ejercicio del remo, la navegación a vela, natación, así como todos los deportes complementarios relacionados a la náutica', 'A partir de la construcción del Dique del Fuerte, se reunen ciudadanos afectos a la náutica y a la actividad acuática y piden el predio a la Dirección Provincial de Hidráulica para fundar el club.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (48, 1908, 'Laico', 5, 'Un grupo de vecinos encabezados por José A. Cabral quien luego fundó el Diario Nueva Era. Participaron además un jefe radical dos masones, un sastre, un maestro y dos anarquistas. Sostuvieron que si los libros no estaban al alcance de sus bolsillos, la sociedad debía ponérselos al alcance de las manos.', 'Presencia de ambos', 'Promover la cultura, promover la libertad del hombre liberándolo de su ignorancia. Enriquecer el espíritu y el conocimiento de los hombres mediante la lectura, único instrumento capaz de permitirlo.', 'La Fundación se inspira en las ideas de Sarmiento, 1917 se ubican en el local actual. Se eligió el nombre B. Rivadavia como representante de las ideas liberales. 
1923: Primer remodelación del frente actual.
1959: Remodelación de espacios, hemeroteca y depósitos de libros.
1990: Remodelación del sótano y transformación de la sala de usos múltiples.
1991: Catalogación computarizada, sistema CDU
1992: Nueva remodelación. Sala de lectura silenciosa y sala de investigadores.
1997: Adquisición del inmueble contiguo.
1998: Remodelación de planta baja y articulación con el edificio histórico
1999: Se organiza la sala de lectura.
2003: Se habilitó la hemeroteca del siglo XXI', 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (49, 1965, 'Laico', 5, 'Ignacio Regairaz, Manuel Nabeiro, Enrique Davos, José Romero, Hernán Figlas, Carlos Casanovas, Roberto Mauco, Juan Piagentini, Oscar Redoblatti, Juan Boltiansky, José Palermo. Todos profesionales de ciencias económicas.', 'Fundadores afectados por problemas comunes', 'Regular el ejercicio de la profesión en ciencias económicas', 'Fueron la necesidad de agruparse, el compartir necesidades, capacitación, y la defensa de la profesión lo que dio origen a esta institución', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (50, 1989, 'Laico', 5, 'Luis Molina, Mabel Islas, Damián Montes, Nicolás Quiroga. Serranías incorporó bailarines que no estaban en ninguna organización pero que si habían estado antes, la mayoría de la Peña El Cielito', 'Fundadores afectados por problemas comunes', 'La idea fue fundar una escuela, cuestión que no se pudo concretar por dinero y tiempo.
Bailar y participar junto a otras instituciones de diferentes encuentros.', 'Estuvieron un año formándose. Desde el año 91 al 94 fueron fuertes, había juventud y tiempo disponible.', 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (51, 1974, 'Laico', 5, 'Lieron Pedro y Leoni. Entusiastas del deporte, lo hacían por hobby.', 'Fundadores afectados por problemas comunes', 'Objetivos: Nuclear a la gente que practica la actividad. Promover la actividad y promover la competencia deportiva a nivel local, nacional e internacional.', 'Se junta un grupo de gente entusiastas de la actividad que quisieron formalizarla, tener un club y tener contacto, pues para poder competir en diferentes niveles se necesita pertenecer a un club.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (52, 1866, 'Religioso', 2, 'Fundador: Juan Fugl (inmigrantes protestantes)
Motivo: Celebraciones religiosas "1er. Iglesia de Tandil"', 'Fundadores afectados por problemas comunes', '"Promover la fe evangélica y propiciar un lugar de encuentro social y religioso"', '"Contexto de inmigrantes que estaban fuera de sus tierras y poseen necesidades religiosas y sociales. Trabajo conjunto y con esfuerzo. Al principio sin aportes a nivel internacional. Surge en un contexto católico como respuesta a las necesidades de una minoría', 'Periodo fundacional de Tandil (hasta 1880)');
INSERT INTO historia VALUES (53, 1971, 'Laico', 5, 'Cestona (miembro activo) Rio, Saenz, Guidi. No recordaban ni contaban con información "se fue perdiendo en el tiempo"', 'Fundadores afectados por problemas comunes', 'Una copia de lo que sería, reflejado en Mercedes. Para agrupar a la gente que trabaja en la cooperativa (Usina) y poder tener un convenio en lo social y salarial.', 'El lema hist. Es "uno para todos y todos para uno". Trata de abrirse a la sociedad. Por ej. Poseemos una escuela: Sind. Luz y F. de capacitación y emprendimientos como en Mercedes. Era para capacitar a los trabajadores y aumentaba el nivel de la coop. Para ayuda a la coop. Y abierta a la soc.', 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (54, 1977, 'Laico', 5, 'Todos veterinarios.', 'Fundadores afectados por problemas comunes', 'Control de la matrícula profesional.
Creación de la Caja de Seguridad Social
Creación del Tribunal de Etica Profesional
Defender a sus miembros en el derecho y ejercicio de la profesión', 'En el ''55 hay movimiento para nuclear a todos los veterinarios. Primero se conforman círculos, Tandil es pionero. La idea era crear una red de ifnormación y protección del veterinario, nombrando representates en organizaciones nacionales. Que el decreto haya salido junto con el gobierno militar fue casual, mera coincidencia.', 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (110, 1967, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (55, 1983, 'Laico', 5, 'Se fundó en Buenos Aires y en cada provincia destinaron personas destinadas a este trabajo.', 'Fundadores afectados por problemas comunes', 'Apoyar al militar y su familia. Cuando él fallece quedan las pensionadas,  se las orienta hasta en sus compras.', NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (56, 1914, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (57, 1985, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (58, 1901, NULL, 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (59, 1970, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (60, 1964, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (61, 1946, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (62, 1940, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (63, 1986, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (64, 1989, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (65, 1950, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (66, 1958, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (67, 1995, 'Laico', 5, 'Javier Adaro, Miguel Iberlucía, Liliana Giomatasio, Alberto D´Roco, Marcela Audokian, Luis Mejás, Pupe Caseres cano, Berkunsky Gullermina y otros', 'Fundadores afectados por problemas comunes', '"La igualdad de oportunidades"', 'El quiebre del Hogar Obrero fue un antes y un despues. No sabíamos que hacer. Nació por la gente. Eso pasó en el 91.estiramos 4 anos sin nombre hasta que tuvieron que tomar una identidad propia. Pertenecían al IEC, con motivo de la quiebra del hogar obrero, que era el IEC, veníamos constituyendo la comisión. Eramos 31 IEC a nivel nacional. Nos dicen de desalojar y decidimos no entrgarnos. Armamos una cooperativa e hicimos un convenio con el Hogar Obrero para tener en comodato el Hogar.De todo, del mantenimiento y resistimos y seguimos resistiendo. Una cosa a destacar, por una cuestion de libertad cultural e independiente, no somos subsidiados por entidades provinciales ni nacionales. Son todos rcursos de autogestión. "orgullosa" por esa libertad.Independiente, cultura independiente.
Se llama "El Hormiguero" por la cantidad de gente que circula (1500 personas). Se preguntaron ¿qué pasa en esta lugar?: camina gente. Ese fue el disparados.
"Quiero aclarar que es la única cooperativa de servicios culturales en Sudamérica (...) elegidos por la embajada de Sudamérica"', 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (68, 1951, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (69, 2000, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (70, 1998, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (71, 1976, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (72, 1979, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (73, 1934, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (74, 1991, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (75, 1994, 'Laico', 5, NULL, 'Presencia de ambos', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (76, 1922, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (77, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (78, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (79, 1974, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (80, 1996, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (81, 1973, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (82, 1986, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (83, 2001, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (84, 1999, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (85, 1931, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (86, 1997, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (87, 1931, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (88, 1984, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (89, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (90, 2002, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (91, 1964, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (92, 1992, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (93, 1981, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (94, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (95, 1954, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (96, 1965, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (97, 1931, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (98, 1902, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (99, 1988, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (100, 1993, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (101, 1965, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (102, 1888, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (103, 1924, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (104, 1942, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (105, 1946, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (112, 1994, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (113, 1994, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (114, 1989, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (115, 2001, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (116, 1983, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (117, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (118, 1978, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (119, 1978, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (120, 1996, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (121, 2002, 'Laico', 5, NULL, 'Presencia de ambos', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (122, 0, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (123, 1997, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (124, 1939, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (125, 2000, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (126, 1965, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (127, 1986, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (128, 1986, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (129, 1996, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (130, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (131, 1956, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (132, 1955, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (133, 1952, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (134, 1985, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (135, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (136, 1994, 'Religioso', 2, NULL, 'Presencia de ambos', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (137, 1977, 'Religioso', 2, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (138, 1977, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (139, 2000, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (140, 1923, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (141, 1976, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (142, 1983, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (143, 1999, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (144, 1906, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (145, 1992, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (146, 1968, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (147, 1956, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (148, 0, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (149, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (150, 2002, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (151, 0, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, NULL);
INSERT INTO historia VALUES (152, 1987, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (153, 1979, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (154, 2000, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (155, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (156, 1999, 'Laico', 5, NULL, 'Presencia de ambos', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (157, 1986, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (158, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (159, 1977, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (160, 2001, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (161, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (162, 1958, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (163, 1995, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (164, 1908, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Régimen oligárquico (1880-1916)');
INSERT INTO historia VALUES (165, 1957, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (166, 1999, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (167, 1997, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (168, 2002, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (169, 1923, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (170, 1973, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (171, 1982, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (172, 1946, 'Religioso', 1, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (173, 1995, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (174, 1947, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (175, 1987, 'Religioso', 2, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (176, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (177, 1997, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (178, 1968, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (179, 2000, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (180, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (181, 1943, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (182, 2003, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (183, 1986, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (184, 1930, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (185, 1988, 'Laico', 5, NULL, 'Presencia de ambos', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (186, 1982, 'Laico', 5, NULL, 'Presencia de ambos', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (187, 2002, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (188, 1980, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (189, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (190, 1999, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (191, 2002, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (192, 2003, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (193, 1994, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (194, 1988, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (195, 2002, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Recesión y salida de la convertibilidad (2001 en adelante)');
INSERT INTO historia VALUES (196, 1989, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (197, 1994, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (198, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (199, 1920, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (200, 1940, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (201, 1999, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (202, 1992, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (203, 1866, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Periodo fundacional de Tandil (hasta 1880)');
INSERT INTO historia VALUES (204, 1992, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (205, 1964, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (206, 1963, 'Religioso', 6, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (207, 1985, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (208, 1974, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (209, 1958, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (210, 1986, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (211, 1939, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (212, 1967, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (213, 1975, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (215, 1964, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (216, 1950, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (217, 1969, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (218, 1919, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (219, 1919, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período radical (1916-30)');
INSERT INTO historia VALUES (220, 1954, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (221, 1988, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (222, 1949, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (223, 1998, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (224, 1957, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (225, 2000, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (226, 1996, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (227, 1978, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Dictadura Militar (76-82)');
INSERT INTO historia VALUES (228, 1961, 'Religioso', 7, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (229, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (230, 1993, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (231, 1992, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (232, 1986, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (233, 1986, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (234, 1986, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (235, 1953, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (236, 1953, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (237, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (238, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (239, 1990, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (240, 1946, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (241, 1993, 'Religioso', 1, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (242, 1976, 'Religioso', 1, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (243, 1954, 'Religioso', 1, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (244, 1992, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (245, 2000, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (246, 1942, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (247, 1999, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (248, 1997, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (249, 1997, 'Religioso', 2, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (250, 1950, 'Religioso', 8, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (251, 1968, 'Religioso', 8, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (252, 1989, 'Laico', 5, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (253, 1939, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (254, 1940, 'Laico', 5, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Década infame (década del 30)');
INSERT INTO historia VALUES (255, 1992, 'Religioso', 1, NULL, 'Fund. externos a las problematicas que dieron origen a la org.', NULL, NULL, 'Estabilidad económica y bajo desempleo (91-95)');
INSERT INTO historia VALUES (256, 1950, 'Religioso', 9, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Período peronista (43-55)');
INSERT INTO historia VALUES (257, 1975, 'Religioso', 1, NULL, 'Fundadores afectados por problemas comunes', NULL, NULL, 'Pos-peronismo (55-76)');
INSERT INTO historia VALUES (258, 2006, 'Laico', 5, 'Silvana Willams, noemí Rebollo, Estela Tornini, Hilda Canelas. Son docentes de Inicial. Silvana unica maestra en actividad, las demás son jubiladas.', NULL, 'Preservar la memoria colectiva en cuanto a actividades y elementos lúdicos.', 'Convocaron amigos psra conformar la comisión. La idea fue de Hilda, quien veía  la pérdida de la importancia del juego en la niñez. En ese momonto habiía un Plan del Ministerio de Trabajo de la Provincia para organizar a las ONGs en el momento en el que se formaban las organizaciones', '2003 en adelante');
INSERT INTO historia VALUES (259, 1989, 'Religioso', 1, 'Párroco Raúl Troncoso y la comisión directiva de ese momento, inspirados en prestar un apoyo a los universitarios en el marco de la fe. Ese es el objetivo principal.', NULL, 'Prestar apoyo a los universitarios, en realción a sus problemas, encauzando en ayudar a descubrir el sentido de la vida por el desarrollo de la fe. Formarlos en la fe y la razón, entre la fe y lavida, en el evangelio como parte de sus vidas. Fortalecer una cultura del bien comun. Emprender la busqueda de una madurez humana plena, fortaleciendo la espiritualidad, la dignidad, la responsabilidad, la apertura a prestar ayuda. Contribuir a construir una autentica comunidad entre todos los integrantes de la Universidad a fin de dar testimonio tambien por este hecho, de la concepción de la vida.', 'fue originada en la necesidad de acompañar a los universitarios locales y de otros pueblos vecinos en el desrrollo de su formación. Se comenzó con 3 servicios: comedor universitario, misa universitaria y pensionados universitarios.', 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (260, 1986, 'Laico', 5, 'Dardo Casais con muchachos de la casa peronista.', NULL, 'Aprovechar el ámbito de carnaval para expresar una realidad que se podía expresar a través de la murga.
Aprovechar que estabamos en democracia para decir lo que antes no se podía decir. Poder hablar sin miedo.', 'Después de ir a la plaza de Mayo un 17 de octubre, cuando volvía, se le ocurrió hacer una murga. A la semana siguiente empezó. Otra causa, según cree, es que escuchaban música oriental, uruguaya. Esto influyó,  además era muy importante el mensaje que podian dar en carnaval en época democrática..
Otra causa es el gusto por el juego. A dardo siempre le gustó jugar, divertir y divertirse. Además creía en la importancia del juego y la necesidad de revalorizarlo.', 'Apertura democrática (83-87)');
INSERT INTO historia VALUES (263, 1988, 'Laico', 5, 'Quienes fundaron la asociación, quienes estaban en ese momento eran Ana Torrent, Walter Fernandez, Martinez Beatriz, Alberto Arozarena y Angel Mena. Al pasar el tiempo fueron quedano pocos. Actualmente solo estan Walter Fernandez y Ana Torrent quien es la presidenta.', NULL, 'Los objetivos que originaron el programa era dar una mano a los primeros chicos de la calle, que eran chicos en situación de riesgo. Recién se empezaba a ver este fenómeno en Tandil. Siempre la idea fue ayudar a estos chicos. Mas tarde surgio La Granja Los Pibes.', 'En ese momento basicamente era un Estado que abandonaba, había un índice de pobreza cada vez mayor. Justo estaba cerrando sus puertas la Metalúrgica y empezaban a aparecer los primeros desocupados, y con ello se fue agravando todo. También estaban los hijos de estos desocupados, los primeros chicos que se empezaban a ver en las calles. Ahí decidimos que algo teniamos que hacer, y bueno, se empezo a trabajr en eso.', 'Hiperinflación (88- 91)');
INSERT INTO historia VALUES (264, 2001, 'Laico', 5, 'Ernesto Ramirez fu el primer presidente junto con Bacarani, Adriana Calvar, Emir Marquez, Sapia, Juan Carlos Subrado. Eran miembros de las bibliotecas afiliadas (bibliotecas populares de Tnaidl)', NULL, 'Agrupar a las bibliotecas populares para guiarlas en su funcionamiento', 'Se forma para ayudar a las bibliotecas. Se asociaron 20 bibliotecas, cada una ponía 2 pesos por mes para el funcionamiento de la asociación. Comenzamos formando una comisión directiva, reordenando las bibliotecas que no sabían como seguir adelante. Asesorando en relación a la ley provincial 93016 (manda subsidios para pagar a bibliotecarios), la ley de CONABIP (ley nacional) (subsidios de libros, local propio, etc.) y la ordenanza municipal 9301/04.', 'Recesión y salida de la convertibilidad (2001-2003)');
INSERT INTO historia VALUES (265, 1998, 'Laico', 5, 'Sonia Carco fue la fundadora. Jorge Garahuro es el referente profesional (psicólogo)', NULL, 'La coordinadora, por estar afectada por trastornos de ansiedad (ataques de pánico), bajo una inquietud personal, abre el grupo de autoayuda. El objetivo es encontrar pares con la problemática dado que, por aquellos años, el tema no tenía tanta difusión como en estos años.', '----------------------------', 'Estabilidad y crecimiento del desempleo (96-2000)');
INSERT INTO historia VALUES (268, 2006, 'Laico', 5, 'cuatro abogados que trabajan juntos desde Buenos Aires y tinen la sede de ADEVAT en Tandil.', NULL, 'Educación vial. 
Llevar propuestas al Congreso
Trabajr para que se traten leyes sobre accidentes e tránsito.', 'Comenzaron a partir de la idea de brindar un servicio de asesoramiento y defensa gratuita para toda la gente.', '2003 en adelante');
INSERT INTO historia VALUES (270, 2005, 'Laico', 5, 'Sánchez, Heriberto Francisco; Melo, Roberto Fabián; Sánchez, Graciela Helena; Tomás, Alberto Enrrique; Guzmásn, Zulema Cristina; Espindola, Ma. Cecilia; Diaz, Nestor Hugo; Coppola, Paula Cecilia; Pose Ma. Adela; Muarez, Natalia; Vilani, Rosa; Comnte, aAalía.', NULL, 'Promover actividades para el barrio.
Lograr tener un esacio físico donde se puedan hacer actividades y que no se pierda la identidad del barrio.', '(no dice nada en formulario)', '2003 en adelante');


--
-- Data for Name: identidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO identidad VALUES (1, 'Centro de atención interdisciplinario');
INSERT INTO identidad VALUES (2, 'Centro comunitario');
INSERT INTO identidad VALUES (3, 'Cooperativa');
INSERT INTO identidad VALUES (4, 'Biblioteca');
INSERT INTO identidad VALUES (5, 'Centro cultural y/o educativo');
INSERT INTO identidad VALUES (6, 'Colectividad');
INSERT INTO identidad VALUES (7, 'Iniciativas comunitarias en proceso de organización');
INSERT INTO identidad VALUES (8, 'Cooperadora escolar');
INSERT INTO identidad VALUES (9, 'Unión o comisión vecinal');
INSERT INTO identidad VALUES (10, 'Asociación por oficio o colegio profesional');
INSERT INTO identidad VALUES (11, 'Liga / red / foro / multisectorial');
INSERT INTO identidad VALUES (12, 'Centro de jubilados');
INSERT INTO identidad VALUES (13, 'Club social o deportivo');
INSERT INTO identidad VALUES (14, 'Sociedad de fomento');
INSERT INTO identidad VALUES (15, 'Peña o Centros tradicionalistas');
INSERT INTO identidad VALUES (16, 'Sindicato');
INSERT INTO identidad VALUES (17, 'Grupo de autoayuda');
INSERT INTO identidad VALUES (18, 'Agrupación por actividad económica');
INSERT INTO identidad VALUES (19, 'Entidad de Servicio');
INSERT INTO identidad VALUES (20, 'Servicios para la Salud');
INSERT INTO identidad VALUES (21, 'Comisión de Ayuda Social');
INSERT INTO identidad VALUES (22, 'Iglesia/centro actividades religiosas');
INSERT INTO identidad VALUES (23, 'Centro de Integración laboral del discapacitado');
INSERT INTO identidad VALUES (24, 'Institución filantrópica educativa y asistencial');
INSERT INTO identidad VALUES (25, 'Sociedad Filantrópica');
INSERT INTO identidad VALUES (26, 'Fundación con fin artístico-cultural');
INSERT INTO identidad VALUES (27, 'Entidad turística y conservacionista');
INSERT INTO identidad VALUES (28, 'Fundación cultural y educativa');
INSERT INTO identidad VALUES (29, 'Grupo de Asistencia material y espiritual al enfermo internado');
INSERT INTO identidad VALUES (30, 'Centro de Actividades Religiosas');
INSERT INTO identidad VALUES (31, 'Centro de día');
INSERT INTO identidad VALUES (32, 'Grupo protector de animales perdidos');
INSERT INTO identidad VALUES (33, 'Agrupación horizontal por la defensa y reivindicación de los derechos identidad');
INSERT INTO identidad VALUES (34, 'Mutual');
INSERT INTO identidad VALUES (35, 'Organización de prestación de servicios');
INSERT INTO identidad VALUES (36, 'Club social y de asistencia a la comunidad');
INSERT INTO identidad VALUES (37, 'Asociación de apoyo y gestión asociada');
INSERT INTO identidad VALUES (38, 'Sociedad de Caridad');
INSERT INTO identidad VALUES (39, 'Asociación por actividad deportiva');
INSERT INTO identidad VALUES (40, 'Centro de Investigación y Transferencia Educativa');
INSERT INTO identidad VALUES (41, 'Guardería y Jardín');
INSERT INTO identidad VALUES (42, 'Fundación por la sanidad animal');
INSERT INTO identidad VALUES (43, 'Banco de Alimentos');
INSERT INTO identidad VALUES (44, 'Comunidad que desarrolla act. en favor del progreso humano');
INSERT INTO identidad VALUES (45, 'Asociación que impulsa e involucra la acción de otras instituciones');
INSERT INTO identidad VALUES (46, 'Ropero');
INSERT INTO identidad VALUES (47, 'Entidad Protectora');
INSERT INTO identidad VALUES (48, 'Asociación por deporte');
INSERT INTO identidad VALUES (49, 'Federación');
INSERT INTO identidad VALUES (50, 'Grupo de Prevención y Asistencia en problemáticas del campo de la salud');
INSERT INTO identidad VALUES (51, 'Cámara');
INSERT INTO identidad VALUES (52, 'Asociación de apoyo a programas de Minoridad');
INSERT INTO identidad VALUES (53, 'Hogar');
INSERT INTO identidad VALUES (54, 'Pequeño Hogar');
INSERT INTO identidad VALUES (55, 'Brindar servicios y beneficios al policía que quiera afiliarse');
INSERT INTO identidad VALUES (56, 'Fundación de apoyo a programas sociales');
INSERT INTO identidad VALUES (57, 'Asociaciómn de ayuda para proyectos sociales solidarios');
INSERT INTO identidad VALUES (58, 'Museo');
INSERT INTO identidad VALUES (59, 'Taller Protegido');
INSERT INTO identidad VALUES (60, 'Organismo de la Iglesia para la atención pastoral del universitario');
INSERT INTO identidad VALUES (61, 'Murga');
INSERT INTO identidad VALUES (62, 'Complejo Habitacional y centro de dia para la tercera edad');
INSERT INTO identidad VALUES (63, NULL);
INSERT INTO identidad VALUES (64, 'cooperativa y centro cultural y educativo');
INSERT INTO identidad VALUES (65, 'Asociación sin fines de lucro con objetivo pedagógico y social');
INSERT INTO identidad VALUES (66, 'Comedor o Cocina Comunitaria');
INSERT INTO identidad VALUES (67, 'La Granja');
INSERT INTO identidad VALUES (68, 'Centro de contención y capacitación de niños y jóvenes');
INSERT INTO identidad VALUES (69, 'Sociedad de Mujeres que trabaja por el bienestar del Hospital y el enfermo');


--
-- Data for Name: identidad_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO identidad_x_organizacion VALUES (9, 59);
INSERT INTO identidad_x_organizacion VALUES (10, 18);
INSERT INTO identidad_x_organizacion VALUES (15, 16);
INSERT INTO identidad_x_organizacion VALUES (22, 13);
INSERT INTO identidad_x_organizacion VALUES (47, 13);
INSERT INTO identidad_x_organizacion VALUES (65, 13);
INSERT INTO identidad_x_organizacion VALUES (101, 13);
INSERT INTO identidad_x_organizacion VALUES (113, 12);
INSERT INTO identidad_x_organizacion VALUES (120, 14);
INSERT INTO identidad_x_organizacion VALUES (126, 13);
INSERT INTO identidad_x_organizacion VALUES (130, 15);
INSERT INTO identidad_x_organizacion VALUES (133, 14);
INSERT INTO identidad_x_organizacion VALUES (135, 42);
INSERT INTO identidad_x_organizacion VALUES (139, 15);
INSERT INTO identidad_x_organizacion VALUES (149, 15);
INSERT INTO identidad_x_organizacion VALUES (218, 13);
INSERT INTO identidad_x_organizacion VALUES (221, 4);
INSERT INTO identidad_x_organizacion VALUES (228, 22);
INSERT INTO identidad_x_organizacion VALUES (235, 13);
INSERT INTO identidad_x_organizacion VALUES (238, 12);
INSERT INTO identidad_x_organizacion VALUES (242, 22);
INSERT INTO identidad_x_organizacion VALUES (243, 22);
INSERT INTO identidad_x_organizacion VALUES (246, 18);
INSERT INTO identidad_x_organizacion VALUES (250, 22);
INSERT INTO identidad_x_organizacion VALUES (254, 4);
INSERT INTO identidad_x_organizacion VALUES (258, 58);
INSERT INTO identidad_x_organizacion VALUES (259, 60);
INSERT INTO identidad_x_organizacion VALUES (260, 61);
INSERT INTO identidad_x_organizacion VALUES (261, 5);
INSERT INTO identidad_x_organizacion VALUES (129, 5);
INSERT INTO identidad_x_organizacion VALUES (202, 62);
INSERT INTO identidad_x_organizacion VALUES (208, 39);
INSERT INTO identidad_x_organizacion VALUES (4, 19);
INSERT INTO identidad_x_organizacion VALUES (128, 15);
INSERT INTO identidad_x_organizacion VALUES (46, 15);
INSERT INTO identidad_x_organizacion VALUES (67, 64);
INSERT INTO identidad_x_organizacion VALUES (219, 4);
INSERT INTO identidad_x_organizacion VALUES (127, 65);
INSERT INTO identidad_x_organizacion VALUES (13, 16);
INSERT INTO identidad_x_organizacion VALUES (231, 11);
INSERT INTO identidad_x_organizacion VALUES (262, 5);
INSERT INTO identidad_x_organizacion VALUES (125, 66);
INSERT INTO identidad_x_organizacion VALUES (236, 14);
INSERT INTO identidad_x_organizacion VALUES (189, 12);
INSERT INTO identidad_x_organizacion VALUES (159, 10);
INSERT INTO identidad_x_organizacion VALUES (263, 67);
INSERT INTO identidad_x_organizacion VALUES (177, 68);
INSERT INTO identidad_x_organizacion VALUES (7, 20);
INSERT INTO identidad_x_organizacion VALUES (247, 4);
INSERT INTO identidad_x_organizacion VALUES (241, 22);
INSERT INTO identidad_x_organizacion VALUES (264, 37);
INSERT INTO identidad_x_organizacion VALUES (106, 12);
INSERT INTO identidad_x_organizacion VALUES (146, 10);
INSERT INTO identidad_x_organizacion VALUES (8, 69);
INSERT INTO identidad_x_organizacion VALUES (1, 13);
INSERT INTO identidad_x_organizacion VALUES (265, 17);
INSERT INTO identidad_x_organizacion VALUES (148, 14);
INSERT INTO identidad_x_organizacion VALUES (268, 10);
INSERT INTO identidad_x_organizacion VALUES (160, 11);
INSERT INTO identidad_x_organizacion VALUES (269, 14);
INSERT INTO identidad_x_organizacion VALUES (270, 14);
INSERT INTO identidad_x_organizacion VALUES (34, 19);

--
-- Data for Name: modalidad_de_capacitacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modalidad_de_capacitacion VALUES (1, 'Charla internas');
INSERT INTO modalidad_de_capacitacion VALUES (2, 'Charlas externas');
INSERT INTO modalidad_de_capacitacion VALUES (3, 'Cursos de capacitación');
INSERT INTO modalidad_de_capacitacion VALUES (4, 'Acceso a carreras terciarias');
INSERT INTO modalidad_de_capacitacion VALUES (5, 'Compra y socialización de material de capacitación');
INSERT INTO modalidad_de_capacitacion VALUES (6, 'Retiro espiritual');
INSERT INTO modalidad_de_capacitacion VALUES (7, 'Asistencia a Encuentros de Mujeres');
INSERT INTO modalidad_de_capacitacion VALUES (8, 'Cruz Roja Central');
INSERT INTO modalidad_de_capacitacion VALUES (9, 'Pasantías');
INSERT INTO modalidad_de_capacitacion VALUES (10, 'Cértamenes');
INSERT INTO modalidad_de_capacitacion VALUES (11, 'Intercambios');
INSERT INTO modalidad_de_capacitacion VALUES (12, 'Talleres para adultos y niños');
INSERT INTO modalidad_de_capacitacion VALUES (13, 'Reflexiones con Sacerdote');
INSERT INTO modalidad_de_capacitacion VALUES (14, 'Instituto bíblico');
INSERT INTO modalidad_de_capacitacion VALUES (15, 'Convivencias');
INSERT INTO modalidad_de_capacitacion VALUES (16, 'Reuniones de trabajo personal');
INSERT INTO modalidad_de_capacitacion VALUES (17, 'Talleres');
INSERT INTO modalidad_de_capacitacion VALUES (18, 'Asambleas');
INSERT INTO modalidad_de_capacitacion VALUES (19, 'Seminarios');
INSERT INTO modalidad_de_capacitacion VALUES (20, 'Congresos');
INSERT INTO modalidad_de_capacitacion VALUES (21, 'Charlas con uso de videos');
INSERT INTO modalidad_de_capacitacion VALUES (22, 'Espacios de reflexión interna');
INSERT INTO modalidad_de_capacitacion VALUES (23, 'Espacios de reflexión compartidos con otras orgs.');
INSERT INTO modalidad_de_capacitacion VALUES (24, 'Charlas especializadas');
INSERT INTO modalidad_de_capacitacion VALUES (25, 'Acceso de carreras terciarias/universitarias');
INSERT INTO modalidad_de_capacitacion VALUES (26, 'Charlas especializadas');
INSERT INTO modalidad_de_capacitacion VALUES (27, 'Ensayos');
INSERT INTO modalidad_de_capacitacion VALUES (28, 'Perfeccionamiento docente');
INSERT INTO modalidad_de_capacitacion VALUES (29, 'Indefinida');
INSERT INTO modalidad_de_capacitacion VALUES (30, 'Maestría');


--
-- Data for Name: modalidad_capac_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modalidad_capac_x_organizacion VALUES (3, 9, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 10, 6, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 65, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 126, 2, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 218, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 228, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 242, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 243, 8, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 250, 7, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 259, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 261, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 228, 7, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 250, 7, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 254, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 259, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 261, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (6, 242, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (12, 64, 4, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 9, 4, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 228, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 242, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 243, 4, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 250, 7, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 259, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 261, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 228, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 242, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 243, 4, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 259, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 261, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 47, 1, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 64, 8, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 218, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 242, 1, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 243, 8, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 250, 7, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 259, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 261, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (26, 9, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (26, 254, 2, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (27, 260, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 129, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 129, NULL, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 221, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 221, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 221, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 208, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 4, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 4, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 67, 4, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (26, 67, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 67, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 219, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 219, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 127, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 127, NULL, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (28, 127, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 231, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 231, 1, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 231, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 262, 3, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 262, 1, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (26, 262, 2, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 262, 2, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (25, 262, 7, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 262, 1, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 159, 3, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 263, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 177, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 177, 2, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 177, 1, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 166, 3, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 166, 3, true, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 33, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 33, 8, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 247, 4, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 241, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 241, 3, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 241, 3, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 241, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 264, 2, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 109, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 106, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 106, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 146, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 146, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (5, 146, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (30, 146, 7, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 1, 5, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (23, 1, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 1, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 1, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (3, 268, 1, true, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 160, 8, false, true);
INSERT INTO modalidad_capac_x_organizacion VALUES (22, 34, 5, false, false);
INSERT INTO modalidad_capac_x_organizacion VALUES (24, 34, 1, false, false);


--
-- Data for Name: modo_accionar; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modo_accionar VALUES (1, 'Asesoramiento / asistencia técnica / capacitación');
INSERT INTO modo_accionar VALUES (2, 'Asistencia Directa (entrega de recursos)');
INSERT INTO modo_accionar VALUES (3, 'Asistencia Financiera (becas, subsidios, créditos)');
INSERT INTO modo_accionar VALUES (4, 'Investigación no aplicada');
INSERT INTO modo_accionar VALUES (5, 'Prevención y Promoción');
INSERT INTO modo_accionar VALUES (6, 'Defensa y reivindicación de derechos');
INSERT INTO modo_accionar VALUES (7, 'Servicios sociales (salud, deportes, recreación, educación, cultura)');
INSERT INTO modo_accionar VALUES (8, 'Denuncia');
INSERT INTO modo_accionar VALUES (9, 'Reclamos (estado, patrones, organismos públicos)');
INSERT INTO modo_accionar VALUES (10, 'Turismo');
INSERT INTO modo_accionar VALUES (11, 'Gestión por ayuda solidaria  del Gobierno Gallego');
INSERT INTO modo_accionar VALUES (12, 'Eventos');
INSERT INTO modo_accionar VALUES (13, 'Otro');
INSERT INTO modo_accionar VALUES (14, 'Asistencia religiosa');
INSERT INTO modo_accionar VALUES (15, 'Promoción de fe');
INSERT INTO modo_accionar VALUES (16, 'Vida comunitaria interna');
INSERT INTO modo_accionar VALUES (17, 'Administración');
INSERT INTO modo_accionar VALUES (18, 'Contención');
INSERT INTO modo_accionar VALUES (19, 'Venta de ropa, muebles, etc.');
INSERT INTO modo_accionar VALUES (20, 'Competencia');
INSERT INTO modo_accionar VALUES (21, 'Difusión-Información');
INSERT INTO modo_accionar VALUES (22, 'Vinculación con el mundo');
INSERT INTO modo_accionar VALUES (23, 'Organización y Desarrollo del Oficio');
INSERT INTO modo_accionar VALUES (24, 'Gestión de Empleo');
INSERT INTO modo_accionar VALUES (25, 'Servicios Religiosos');
INSERT INTO modo_accionar VALUES (26, 'Préstamo espacio físico');
INSERT INTO modo_accionar VALUES (27, 'Festival');
INSERT INTO modo_accionar VALUES (28, 'Trabajo');
INSERT INTO modo_accionar VALUES (29, 'Construcción de Información pública');
INSERT INTO modo_accionar VALUES (30, 'Reuniones de autoapoyo');
INSERT INTO modo_accionar VALUES (31, 'Gestión');
INSERT INTO modo_accionar VALUES (32, 'Capacitación en la palabra de Dios');
INSERT INTO modo_accionar VALUES (33, 'Gestiones propias');
INSERT INTO modo_accionar VALUES (34, 'Préstamo del SUM para actividades comunitarias');
INSERT INTO modo_accionar VALUES (35, 'Servicios Públicos');
INSERT INTO modo_accionar VALUES (36, 'Control de las tareas de Centros de Salud');
INSERT INTO modo_accionar VALUES (37, 'Practicar los mandamientos bíblicos');
INSERT INTO modo_accionar VALUES (38, 'Todo');
INSERT INTO modo_accionar VALUES (39, 'Estudio e Investigación');
INSERT INTO modo_accionar VALUES (40, 'Promoción');
INSERT INTO modo_accionar VALUES (41, 'Trabajo protegido y promoción al trabajo competitivo');
INSERT INTO modo_accionar VALUES (42, 'deporte');
INSERT INTO modo_accionar VALUES (43, 'servicio para socios');
INSERT INTO modo_accionar VALUES (44, 'servicio para usuarios');
INSERT INTO modo_accionar VALUES (45, 'Se colabora en lo que se puede');
INSERT INTO modo_accionar VALUES (46, 'construcción/refacción edilicia');
INSERT INTO modo_accionar VALUES (47, 'Turismo');
INSERT INTO modo_accionar VALUES (48, 'Control de Programas Sociales');
INSERT INTO modo_accionar VALUES (49, 'Contribución con Hospital');
INSERT INTO modo_accionar VALUES (50, 'Donación');
INSERT INTO modo_accionar VALUES (51, 'Recaudación de fondos');


--
-- Data for Name: modo_accionar_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO modo_accionar_x_organizacion VALUES (9, 41, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (10, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (15, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (15, 2, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (15, 3, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (15, 6, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (15, 7, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (22, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (47, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (64, 5, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (65, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (101, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (113, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (113, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (120, 45, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (126, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (130, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (133, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (135, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (135, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (139, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (149, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (149, 39, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (218, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (221, 1, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (221, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (221, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (228, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (228, 2, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (228, 39, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (235, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (238, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (242, 2, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (242, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (242, 14, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (243, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (243, 14, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (243, 15, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (246, 6, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (250, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (250, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (254, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (258, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (258, 7, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (258, 39, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (259, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (259, 14, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (259, 15, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (260, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (260, 6, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (260, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (261, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (129, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (129, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (202, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (202, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (202, 3, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (208, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (208, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (4, 3, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (4, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (128, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (46, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (67, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (67, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (219, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (127, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (13, 6, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (13, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (13, 8, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (13, 47, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (231, 6, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (231, 8, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (231, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (231, 7, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (262, 39, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (262, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (262, 3, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (125, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (125, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (236, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (236, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (189, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (189, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (159, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (159, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (263, 5, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (263, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (177, 5, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (177, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (177, 7, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (166, 3, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (166, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (166, 5, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (33, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (33, 39, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (33, 1, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (7, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (7, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (247, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (241, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (241, 7, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (241, 2, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (241, 5, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (264, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (264, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (264, 39, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (109, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (109, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (106, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (106, 1, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (106, 6, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (146, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (146, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (8, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (1, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (1, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (1, 2, 0);
INSERT INTO modo_accionar_x_organizacion VALUES (265, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (148, 2, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (148, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (148, 7, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (268, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (268, 5, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (268, 6, 3);
INSERT INTO modo_accionar_x_organizacion VALUES (160, 1, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (160, 2, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (269, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (270, 7, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (270, 6, 2);
INSERT INTO modo_accionar_x_organizacion VALUES (34, 31, 1);
INSERT INTO modo_accionar_x_organizacion VALUES (34, 7, 2);


--
-- Data for Name: momplanificacionyevaluacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO momplanificacionyevaluacion VALUES (1, 'Annual');
INSERT INTO momplanificacionyevaluacion VALUES (2, 'Semestral');
INSERT INTO momplanificacionyevaluacion VALUES (3, 'Trimestral');
INSERT INTO momplanificacionyevaluacion VALUES (4, 'Mensual');
INSERT INTO momplanificacionyevaluacion VALUES (5, 'Semanal');
INSERT INTO momplanificacionyevaluacion VALUES (6, 'Bimestral');
INSERT INTO momplanificacionyevaluacion VALUES (7, 'Esporádico');


--
-- Data for Name: momento_evaluacion_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO momento_evaluacion_x_organizacion VALUES (9, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (10, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (15, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (22, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (47, 3);
INSERT INTO momento_evaluacion_x_organizacion VALUES (64, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (65, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (101, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (113, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (120, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (126, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (130, 7);
INSERT INTO momento_evaluacion_x_organizacion VALUES (133, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (135, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (139, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (218, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (221, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (228, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (238, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (242, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (243, 3);
INSERT INTO momento_evaluacion_x_organizacion VALUES (243, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (243, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (246, 7);
INSERT INTO momento_evaluacion_x_organizacion VALUES (250, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (254, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (258, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (259, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (259, 2);
INSERT INTO momento_evaluacion_x_organizacion VALUES (261, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (129, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (202, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (208, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (4, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (128, 7);
INSERT INTO momento_evaluacion_x_organizacion VALUES (46, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (67, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (219, 3);
INSERT INTO momento_evaluacion_x_organizacion VALUES (127, 3);
INSERT INTO momento_evaluacion_x_organizacion VALUES (13, 7);
INSERT INTO momento_evaluacion_x_organizacion VALUES (231, 7);
INSERT INTO momento_evaluacion_x_organizacion VALUES (262, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (125, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (236, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (189, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (159, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (263, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (177, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (166, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (33, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (7, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (247, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (241, 2);
INSERT INTO momento_evaluacion_x_organizacion VALUES (264, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (109, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (106, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (106, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (8, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (1, 5);
INSERT INTO momento_evaluacion_x_organizacion VALUES (148, 1);
INSERT INTO momento_evaluacion_x_organizacion VALUES (148, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (160, 4);
INSERT INTO momento_evaluacion_x_organizacion VALUES (269, 1);


--
-- Data for Name: momento_planificacion_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO momento_planificacion_x_organizacion VALUES (9, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (10, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (15, 2);
INSERT INTO momento_planificacion_x_organizacion VALUES (15, 3);
INSERT INTO momento_planificacion_x_organizacion VALUES (15, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (22, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (47, 3);
INSERT INTO momento_planificacion_x_organizacion VALUES (64, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (65, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (101, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (113, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (120, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (126, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (126, 3);
INSERT INTO momento_planificacion_x_organizacion VALUES (130, 7);
INSERT INTO momento_planificacion_x_organizacion VALUES (133, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (135, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (139, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (149, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (149, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (218, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (221, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (228, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (242, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (242, 2);
INSERT INTO momento_planificacion_x_organizacion VALUES (243, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (246, 7);
INSERT INTO momento_planificacion_x_organizacion VALUES (250, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (254, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (258, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (259, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (261, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (129, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (202, 2);
INSERT INTO momento_planificacion_x_organizacion VALUES (208, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (4, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (128, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (46, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (67, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (67, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (219, 3);
INSERT INTO momento_planificacion_x_organizacion VALUES (127, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (231, 7);
INSERT INTO momento_planificacion_x_organizacion VALUES (262, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (125, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (189, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (159, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (263, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (177, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (166, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (33, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (7, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (247, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (241, 3);
INSERT INTO momento_planificacion_x_organizacion VALUES (264, 2);
INSERT INTO momento_planificacion_x_organizacion VALUES (109, 2);
INSERT INTO momento_planificacion_x_organizacion VALUES (106, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (106, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (146, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (8, 5);
INSERT INTO momento_planificacion_x_organizacion VALUES (1, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (148, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (148, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (160, 4);
INSERT INTO momento_planificacion_x_organizacion VALUES (269, 1);
INSERT INTO momento_planificacion_x_organizacion VALUES (34, 1);


--
-- Data for Name: opinionpoliticasocial; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO opinionpoliticasocial VALUES (1, 'Ineficaz');
INSERT INTO opinionpoliticasocial VALUES (2, 'Eficaz');
INSERT INTO opinionpoliticasocial VALUES (3, 'Clientelar');
INSERT INTO opinionpoliticasocial VALUES (4, 'Insuficiente');
INSERT INTO opinionpoliticasocial VALUES (5, 'Inexistente');
INSERT INTO opinionpoliticasocial VALUES (6, 'Otros');
INSERT INTO opinionpoliticasocial VALUES (7, 'Se trabaja como se puede');
INSERT INTO opinionpoliticasocial VALUES (8, 'Burocratizadas');
INSERT INTO opinionpoliticasocial VALUES (9, 'Asistencialista');
INSERT INTO opinionpoliticasocial VALUES (10, 'No participativa');
INSERT INTO opinionpoliticasocial VALUES (11, 'Fragmentada');
INSERT INTO opinionpoliticasocial VALUES (12, 'Buena');
INSERT INTO opinionpoliticasocial VALUES (13, 'Suficiente');
INSERT INTO opinionpoliticasocial VALUES (14, 'Poco Democráticas');
INSERT INTO opinionpoliticasocial VALUES (15, 'No planificada');
INSERT INTO opinionpoliticasocial VALUES (16, 'Mercantilizada');
INSERT INTO opinionpoliticasocial VALUES (17, 'Deshonesta');
INSERT INTO opinionpoliticasocial VALUES (18, 'Limitada');
INSERT INTO opinionpoliticasocial VALUES (19, 'Con desacuerdo');
INSERT INTO opinionpoliticasocial VALUES (20, 'Corrupta');
INSERT INTO opinionpoliticasocial VALUES (21, 'desconoce');
INSERT INTO opinionpoliticasocial VALUES (22, 'no opina');
INSERT INTO opinionpoliticasocial VALUES (23, 'Normal');


--
-- Data for Name: organismo; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organismo VALUES (1, 'Inspección General de Justicia');
INSERT INTO organismo VALUES (2, 'Registro de Entidades de Bien Público');
INSERT INTO organismo VALUES (3, 'Instituto Nacional de Acción Mutual');
INSERT INTO organismo VALUES (4, 'Instituto Nacional de Acción Cooperativa');
INSERT INTO organismo VALUES (5, 'CENOC');
INSERT INTO organismo VALUES (6, 'Dirección Provincial de Personería Jurídica');
INSERT INTO organismo VALUES (7, 'Ministerio de Trabajo');
INSERT INTO organismo VALUES (8, 'Municipalidad de Tandil');
INSERT INTO organismo VALUES (9, 'Registro de Personería Jurídica');
INSERT INTO organismo VALUES (10, 'Dirección Provincial de Bibliotecas');
INSERT INTO organismo VALUES (11, 'Dirección Municipal de Personería Jurídica');
INSERT INTO organismo VALUES (12, 'Sin especificar');
INSERT INTO organismo VALUES (13, 'Registro de Culto');
INSERT INTO organismo VALUES (14, 'Dirección Municipal de Entidades de Bien Público');
INSERT INTO organismo VALUES (15, 'AFIP');
INSERT INTO organismo VALUES (16, 'Ingresos Brutos');
INSERT INTO organismo VALUES (17, 'ONU Dpto. Información');
INSERT INTO organismo VALUES (18, 'CAESPO');
INSERT INTO organismo VALUES (19, 'Cansillería');
INSERT INTO organismo VALUES (20, 'Naciones Unidas');
INSERT INTO organismo VALUES (21, 'Fuerza Aérea');
INSERT INTO organismo VALUES (22, 'Aeródromo Provincial');
INSERT INTO organismo VALUES (23, 'IPPS');
INSERT INTO organismo VALUES (24, 'Inst. de Servicio (dentro de la Org. dela Iglesia)');
INSERT INTO organismo VALUES (25, 'Federación de Pesca y Lanz. (FEPYLBA)');
INSERT INTO organismo VALUES (26, 'FEDEFAN Comisión Memoria Bs. As.');
INSERT INTO organismo VALUES (27, 'Ley 10321');
INSERT INTO organismo VALUES (28, 'Dirección Provincial de Renta');
INSERT INTO organismo VALUES (29, 'CICOP');
INSERT INTO organismo VALUES (30, 'Escribanía');
INSERT INTO organismo VALUES (31, 'Instituciones civiles y cooperativas');
INSERT INTO organismo VALUES (32, 'Registro Nacional de Armas');
INSERT INTO organismo VALUES (33, 'Reg. Nac. de Entidades de Jubilados y Pensionados');
INSERT INTO organismo VALUES (34, 'Registro Nac. de Relaciones Exteriores y Culto');
INSERT INTO organismo VALUES (35, 'Asociación de Bibliotecas Populares');
INSERT INTO organismo VALUES (36, 'Dirección de Educación Municipal');
INSERT INTO organismo VALUES (37, 'Federación de Salud');
INSERT INTO organismo VALUES (38, 'Ministerio de Relaciones y Culto');
INSERT INTO organismo VALUES (39, 'Cultura del Municipio');
INSERT INTO organismo VALUES (40, 'Migraciones');
INSERT INTO organismo VALUES (41, 'Policía Federal');
INSERT INTO organismo VALUES (42, 'Deportes Federados');
INSERT INTO organismo VALUES (43, 'PAMI');
INSERT INTO organismo VALUES (44, 'Centro de Jubilados de la Nac. Argentina');
INSERT INTO organismo VALUES (45, 'Entidades Intermediarias');
INSERT INTO organismo VALUES (46, 'ANSES');
INSERT INTO organismo VALUES (47, 'C.G.T.');
INSERT INTO organismo VALUES (48, 'Prefectura Naval Argentina');
INSERT INTO organismo VALUES (49, NULL);
INSERT INTO organismo VALUES (50, 'Federación Bonaerense de Cano. c Cal.');
INSERT INTO organismo VALUES (51, 'Dirección Nacional de Personería Jurídica');
INSERT INTO organismo VALUES (52, 'Ministerio de Asuntos Agrarios de la Provincia');
INSERT INTO organismo VALUES (53, 'Federación Marplatense de Ciclismo');
INSERT INTO organismo VALUES (54, 'CONABIP');
INSERT INTO organismo VALUES (55, 'Consejo Escolar');
INSERT INTO organismo VALUES (56, 'asasa');
INSERT INTO organismo VALUES (57, 'Direccion Provincial de Cultura y Educación');
INSERT INTO organismo VALUES (58, 'Asociación Sindical del Personal Ferroviario');
INSERT INTO organismo VALUES (59, NULL);
INSERT INTO organismo VALUES (60, 'CEPOC');
INSERT INTO organismo VALUES (61, 'SENASA');
INSERT INTO organismo VALUES (62, 'Federación Argentina de Ajedrez');
INSERT INTO organismo VALUES (63, 'INAES');
INSERT INTO organismo VALUES (64, 'IPAC');
INSERT INTO organismo VALUES (65, 'Sociedad Protectora de Bibliotecas municipales');
INSERT INTO organismo VALUES (66, 'ministerio de desarrollo humano');
INSERT INTO organismo VALUES (67, 'Asociacion de defensa de consumidores y ususarios');
INSERT INTO organismo VALUES (68, 'Rentas (Provincia)');


--
-- Data for Name: situacion_juridica; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO situacion_juridica VALUES (9, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1634', '1982-12-14 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (10, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '4546', '1992-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (15, 'Si', NULL, NULL, NULL, 'Sindicato', NULL, '825', NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (22, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '18588', '2000-12-13 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (47, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1-16674', '1980-07-16 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (64, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '10992', '1991-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (65, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '6740', '1959-10-30 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (101, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1207', '1970-12-30 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (113, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '17250', '2000-11-03 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (120, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '24486', '2002-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (126, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '32723', '1970-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (130, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '22657', '2001-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (133, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '5268/64', '2003-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (135, 'Si', NULL, NULL, NULL, 'Fundación', NULL, '730', '1986-01-01 00:00:00', NULL, NULL, NULL);
INSERT INTO situacion_juridica VALUES (139, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (149, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '5262', '2004-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (218, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '7564', '1978-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (221, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1888', '1961-04-12 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (228, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '11680', NULL, NULL, 658, NULL);
INSERT INTO situacion_juridica VALUES (235, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '3270', '1963-03-29 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (238, 'Si', NULL, NULL, NULL, 'Sindicato', NULL, '38', '1946-11-08 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (246, 'Si', NULL, NULL, NULL, 'Sindicato', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (250, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 607, '1998-01-01 00:00:00');
INSERT INTO situacion_juridica VALUES (254, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '31987', '2007-04-13 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (258, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '311811', '2006-09-06 00:00:00', NULL, NULL, NULL);
INSERT INTO situacion_juridica VALUES (259, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '9454', '1989-12-20 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (260, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, 'P.J.31333 y cepoc nª1090', '2006-12-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (261, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, 'nº  de expediente 21.109.63.280 leg 01/100.314', '1999-11-08 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (129, 'Si', NULL, NULL, NULL, NULL, NULL, '16172', '1997-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (202, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (208, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '15107 legajo 78342', '1995-12-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (4, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (128, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '7890', '1987-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (46, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '690/63', '1963-11-21 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (67, NULL, NULL, NULL, NULL, 'Cooperativa', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (219, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '31337', '2006-09-20 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (127, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '6599', '1985-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (13, 'Si', NULL, NULL, NULL, 'Sindicato', NULL, '22', '1947-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (231, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, NULL, '1956-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (262, 'Si', NULL, NULL, NULL, 'Fundación', NULL, '12149', '1993-04-05 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (125, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '3989', '2003-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (236, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '5828', '1984-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (189, 'Si', NULL, NULL, NULL, NULL, NULL, '14046/97', '1994-11-30 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (159, 'Si', NULL, 'La del Colegio de Farmacéuticos de la Pcia. De Bs', NULL, 'Asociación civil', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (263, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '6754', '1988-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (177, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '10930', '1997-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (166, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '28311', '2004-06-15 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (33, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, 'c138', NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (7, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (247, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '30646', '2006-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (264, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '27719', '2004-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (109, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '3858', '1976-02-20 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (106, 'Si', NULL, NULL, NULL, NULL, NULL, '1221/83', '1983-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (146, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '16086', '1996-01-01 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (8, 'Si', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (1, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1196', '1941-09-19 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (148, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '1800', '2001-04-27 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (268, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (160, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '23626', '2001-12-28 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (269, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, '32247', '2007-08-10 00:00:00', NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (270, 'Si', NULL, NULL, NULL, 'Asociación civil', NULL, NULL, NULL, NULL, 0, NULL);
INSERT INTO situacion_juridica VALUES (34, 'No', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL);


--
-- Data for Name: organismo_en_el_que_esta_registrado; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organismo_en_el_que_esta_registrado VALUES (9, 2, '1982-08-18 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (9, 5, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (9, 6, '1982-12-14 00:00:00', '2005-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (9, 7, '1004-05-12 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (10, 6, '1992-01-01 00:00:00', '2005-01-01 00:00:00', 1992);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (15, 7, NULL, '2007-09-27 00:00:00', 2003);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (15, 51, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (22, 6, '2000-12-13 00:00:00', '2007-10-05 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (47, 6, '1980-07-16 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (64, 2, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (64, 6, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (64, 15, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (65, 2, '1960-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (65, 6, '1959-01-01 00:00:00', '2008-02-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (101, 6, '1970-12-30 00:00:00', '2007-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (101, 15, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (113, 2, '1995-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (113, 6, '2000-11-13 00:00:00', '2007-10-11 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (120, 6, '2002-08-16 00:00:00', '2006-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (126, 6, '1970-10-19 00:00:00', '2007-04-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (130, 2, '1998-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (130, 6, '2001-01-01 00:00:00', '2007-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (133, 2, '2003-01-01 00:00:00', '2004-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (133, 6, '2003-01-01 00:00:00', '2004-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (135, 6, '1986-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (135, 61, '2007-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (139, 2, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (149, 2, '2005-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (149, 6, '2004-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (218, 2, '1978-01-01 00:00:00', NULL, 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (218, 6, '1978-01-01 00:00:00', NULL, 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (221, 2, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (221, 6, '1961-04-12 00:00:00', '2007-01-01 00:00:00', 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (221, 35, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (228, 2, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (228, 34, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (235, 6, '1963-03-29 00:00:00', '2004-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (238, 58, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (250, 38, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (254, 6, '2006-10-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (254, 35, '2006-06-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (254, 54, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (254, 57, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (258, 2, '2006-07-03 00:00:00', '2007-07-13 00:00:00', NULL);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (258, 5, '2007-01-01 00:00:00', NULL, NULL);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (259, 6, '1989-12-27 00:00:00', '2007-07-01 00:00:00', 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (260, 6, '2006-12-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (260, 60, '2007-03-02 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (261, 6, '1999-11-08 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (129, 6, '1997-01-01 00:00:00', '2007-12-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (208, 6, '1995-12-01 00:00:00', '2007-01-01 00:00:00', 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (208, 62, '1995-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (128, 6, '1987-01-01 00:00:00', '2006-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (46, 2, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (46, 6, '1963-01-01 00:00:00', '2006-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (67, 2, '1995-08-07 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (67, 4, '1995-08-07 00:00:00', NULL, 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (67, 5, '1995-08-07 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (67, 63, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (67, 64, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (219, 54, '1970-01-01 00:00:00', '2007-12-30 00:00:00', NULL);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (219, 65, '1970-01-01 00:00:00', '2007-12-30 00:00:00', NULL);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (127, 6, '1986-01-01 00:00:00', NULL, NULL);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (127, 66, '1986-01-01 00:00:00', '2007-06-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (13, 1, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (13, 7, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (13, 51, '1947-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (231, 67, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (262, 5, '2007-03-02 00:00:00', '2006-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (262, 6, '1993-01-01 00:00:00', '2007-01-01 00:00:00', 2006);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (262, 15, '1993-01-01 00:00:00', NULL, 2008);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (262, 68, '1993-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (125, 2, '2001-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (125, 6, '2003-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (236, 2, '2000-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (236, 6, '1984-01-01 00:00:00', '2006-06-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (189, 2, '1993-07-07 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (189, 6, '1994-11-30 00:00:00', '2006-09-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (189, 43, '1993-01-01 00:00:00', '2006-09-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (189, 15, '1993-01-01 00:00:00', '2006-09-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (263, 2, '1988-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (263, 6, '1988-01-01 00:00:00', '2006-12-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (177, 2, '1999-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (177, 6, '1999-01-01 00:00:00', '2007-12-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (166, 6, '2004-09-23 00:00:00', '2007-06-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (33, 1, NULL, '2008-03-15 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (247, 2, '2006-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (247, 6, '2006-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (264, 2, '2001-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (264, 6, '2004-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (264, 15, '2006-01-01 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (109, 2, NULL, '2006-12-31 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (109, 6, NULL, NULL, 2007);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (106, 2, '1977-01-01 00:00:00', '2006-09-30 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (146, 6, '1996-10-10 00:00:00', '2007-01-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (1, 2, '1980-07-31 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (1, 6, '1941-09-19 00:00:00', '2007-01-11 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (148, 6, '2001-04-24 00:00:00', '2007-02-01 00:00:00', 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (160, 6, '2001-12-28 00:00:00', NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (269, 6, NULL, NULL, 0);
INSERT INTO organismo_en_el_que_esta_registrado VALUES (270, 6, NULL, NULL, 0);


--
-- Data for Name: organismosinternacionales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organismosinternacionales VALUES (1, 'Rotary Club Internacional');
INSERT INTO organismosinternacionales VALUES (2, 'asdasd');
INSERT INTO organismosinternacionales VALUES (3, 'Iglesia Danesa en el exterior');
INSERT INTO organismosinternacionales VALUES (4, 'Gobierno Vasco');


--
-- Data for Name: tipoorganizacionrelacionada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO tipoorganizacionrelacionada VALUES (1, 'Sociedad Civil en Censo');
INSERT INTO tipoorganizacionrelacionada VALUES (2, 'Estatal');
INSERT INTO tipoorganizacionrelacionada VALUES (3, 'Fundacion Nacional');
INSERT INTO tipoorganizacionrelacionada VALUES (4, 'Gremio / Sindicato');
INSERT INTO tipoorganizacionrelacionada VALUES (5, 'Otras');
INSERT INTO tipoorganizacionrelacionada VALUES (6, 'CIRCULO TRENTINO');
INSERT INTO tipoorganizacionrelacionada VALUES (7, 'Asociación de bibliotecas');
INSERT INTO tipoorganizacionrelacionada VALUES (8, 'Sala abierta de lectura');
INSERT INTO tipoorganizacionrelacionada VALUES (9, 'Secretaria de Desarrollo Social');
INSERT INTO tipoorganizacionrelacionada VALUES (10, 'Secretaria de Desarrollo Social');
INSERT INTO tipoorganizacionrelacionada VALUES (11, 'Secretaria de Desarrollo Social');
INSERT INTO tipoorganizacionrelacionada VALUES (12, 'obras sociales');
INSERT INTO tipoorganizacionrelacionada VALUES (13, 'sociedad civil externa a Tandil');


--
-- Data for Name: organizacionrelacionada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO organizacionrelacionada VALUES (13, 'Grupo de Mujeres sin Moldes', 17, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (15, 'FEHGRA', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (16, 'Instituto Mixto de Turismo (IMT)', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (17, 'Municipio', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (18, 'A.F.I.P.', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (19, 'Cámaras de Turismo', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (20, 'Rincón Solidario', 241, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (21, 'Facultad de Ciencias Económicas UNCPBA', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (22, 'Geriátricos', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (24, 'Agrupación Tradicionalista "José Hernandez"', 149, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (26, 'foETRA (Federación de Obreros y Empleados de Telecomunicaciones de la Rep Arg)', 66, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (28, 'Academia Folklórica Serranías', 50, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (29, 'grupo apicola', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (30, 'INTA', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (34, 'instituto superior de educación fisica', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (38, 'Unión de Rugby de Mar del Plata', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (42, 'U.N.C.P.B.A.', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (44, 'Milicia Mañana', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (46, 'Parroquia Santísimo Sacramento', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (47, 'Caritas Santisimo Sacramento', 64, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (50, 'Grupo apícola de cambio rural', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (51, 'Eduardo Hall y profesionales del C. de Salud Selvetti', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (52, 'Instituto Superior de Educación física', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (55, 'PAMI', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (56, 'Fraterna Ayuda del Carmen', 153, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (57, 'fraterna Ayuda del Carmen', 153, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (58, 'Centro de salud', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (59, 'Sociedad de Fomento Barrio General Belgrano', 236, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (60, 'Biblioteca Popular "Juan Antonio Salceda"', 219, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (61, 'Escuelas y jardines', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (63, 'FerroSud', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (64, 'Pastoral Universitaria Nacional CEPAU', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (65, 'Pastoral Universitaria de Mendoza', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (66, 'Pastoral juvenil Diosesana', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (67, 'PECIFA', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (68, 'CGT', NULL, 'Sociedad Civil', 4);
INSERT INTO organizacionrelacionada VALUES (70, 'CGT', NULL, 'Otra', 4);
INSERT INTO organizacionrelacionada VALUES (72, 'Asociación Criolla Argentina', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (75, 'Sindicato Unión Obrera Metalúrgica de la República Argentina', 32, 'Sociedad Civil', 4);
INSERT INTO organizacionrelacionada VALUES (77, 'María Auxiliadora', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (78, 'Cruz Roja', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (79, 'Agrupaciones Tradicionalistas', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (80, 'Sociedad Rural Argentina', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (81, 'Centros de Jubilados', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (82, 'Gimnasio "Mi Club"', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (83, 'Federación Argentina de Casin', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (85, 'Asamblea en defensa de las sierras', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (86, 'Memoria por la vida en Democracia', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (87, 'Desarrollo social municipal', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (88, 'Pajaritos de la Calle', NULL, NULL, NULL);
INSERT INTO organizacionrelacionada VALUES (89, 'Taller protegido', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (90, 'EEEnº 501, 503, 504', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (91, 'Fundación Pequeños Hogares', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (92, 'ATAD', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (93, 'Manos Abiertas', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (94, 'Bibliotecas', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (95, 'Centros Comunitarios', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (96, 'Asociación Amigos del Carnaval de mi Tandil', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (97, 'colectividad uruguaya', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (98, 'Ninguna', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (99, 'Club Náutico del Fuerte', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (100, 'Club Náutico de Chascomús', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (101, 'Asociación Universitaria Náutica de Mar del Plata', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (102, 'Ministerio de Salud de la Provincia', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (103, 'Dirección Nacional de Migraciones', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (104, 'Policia Federal', NULL, 'Estatal', 2);
INSERT INTO organizacionrelacionada VALUES (105, 'Pastoral Migratoria', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (106, 'Club Social y Deportivo Talleres', NULL, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (107, 'club Atlético Banco de la Provincia de Buenos Aires Delegación Zonal Tandil', NULL, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (108, 'Club Huracán', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (109, 'Club San Martín', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (110, 'Ligas de fútbol', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (111, 'Asociación de ajedrez', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (112, 'Fundación Horacio Zorraquím', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (115, 'clubes', NULL, 'Otra', NULL);
INSERT INTO organizacionrelacionada VALUES (116, 'Aeropuerto Asociación Civil', 226, 'Sociedad Civil Censada', 1);
INSERT INTO organizacionrelacionada VALUES (124, 'Agrupación Criollos del Tandil', 130, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (125, 'Asociación Lucha contra la Bulimia y la Anorexia', 57, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (126, NULL, NULL, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (127, NULL, NULL, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (128, NULL, NULL, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (129, 'Fundación Rotaria a nivel Internacional. Sede: EEUU', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (130, 'Escuela Técnica Nº 2 Felipe Senillosa', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (131, 'Fundación Rotary Internacional', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (132, 'Fundaciones', NULL, NULL, 3);
INSERT INTO organizacionrelacionada VALUES (133, 'Fundación', NULL, NULL, 3);
INSERT INTO organizacionrelacionada VALUES (134, 'Fundación', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (135, 'Estado provincial', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (136, 'Estado Nacional', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (137, 'Todas las peñas y organizaciones nativistas de la zona', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (138, 'Hospital Municipal Ramón Santa Marina', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (139, 'Salud Mental', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (140, 'Hospital Municipal Ramón Santa Marina', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (141, 'Banco de alimentos', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (142, 'Asociación de cine Tandil', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (143, 'UPCN Secr. de Cultura de la Nación', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (144, 'Conservatorio Isaias Orbe', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (145, 'CIRCULO TRENTINO', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (146, NULL, NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (147, NULL, NULL, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (148, 'Biblioteca Martin Fierro', NULL, NULL, NULL);
INSERT INTO organizacionrelacionada VALUES (149, 'Sala abierta de lectura', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (150, 'B', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (151, 'Ministerio de Trabajo de Nación', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (152, 'La Bancaria casa central', NULL, NULL, 4);
INSERT INTO organizacionrelacionada VALUES (153, 'Confederación general del Trabajo', NULL, NULL, 4);
INSERT INTO organizacionrelacionada VALUES (154, 'Hospital Austral', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (155, 'Fundacion Sales', NULL, NULL, 3);
INSERT INTO organizacionrelacionada VALUES (156, 'Asociacion de Farmacias Mutuales de la Argentina', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (157, 'Centros Medicos', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (158, 'Hospital Austral', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (159, 'Hospital Austral', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (160, 'UNLP', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (161, 'UFLO', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (162, 'Club River Plate (La Plata)', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (163, 'Paraje Titi', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (164, 'panaderías y fábricas de pastas', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (165, 'ejército', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (166, 'Escuela Nº32', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (167, 'Escuela Nº 32', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (168, 'Ejército', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (169, NULL, NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (170, 'Secretaria de Desarrollo Social', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (171, 'Asociación de Bibliotecas', NULL, NULL, 7);
INSERT INTO organizacionrelacionada VALUES (173, 'Obras sociales', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (174, 'Colegio de farmacéuticos', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (175, 'Facultad de Cs. Veterinarias. UNCPBA', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (176, NULL, NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (177, 'C.T.A.', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (178, 'Centro de Salud V. Aguirre', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (180, 'Asociació Civil Casa del Niño en la calle. Granja Los Pibes', 263, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (181, 'Escuelas', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (182, 'Centro de salud Palermo', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (183, 'CEF', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (184, 'CIE', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (185, 'Universidad barrial', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (186, 'Sociedades de Fomento', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (187, 'Ministerio de Desarrollo Social de la Nación', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (188, 'Organizaciones de la Sociedad Civil de todo el país que trabajan con microcréditos', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (189, 'Red Regional de Bancos Populares', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (190, 'Ministerio de Educación de la Provincia', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (191, 'Hospital de Niños Debilio Blanco Villegas', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (192, 'Asilo de Ancianos', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (193, 'Centro Comunitario San Cayetano', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (194, 'Instituto de fornación Docente Nº10 (ISER)', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (195, 'Facultad de Arte (UNICEN)', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (196, 'Rotary Club Tandil', 97, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (197, 'Colegio Santo Domingo de la Sierra', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (198, 'Facultad de Ciencias Humanas (UNICEN)', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (199, 'Instituto de formación Docente Nº 10 (ISER)', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (200, 'Asociación de Bibliotecas Populares', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (201, 'Fundación Leer', NULL, NULL, 3);
INSERT INTO organizacionrelacionada VALUES (202, 'CONABIP', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (203, 'CAMPA (Azul)', NULL, NULL, 13);
INSERT INTO organizacionrelacionada VALUES (204, 'Hospital Italiano', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (205, 'Hospital Italiano / Clínica Alemana de Chile', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (206, 'Casino', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (207, 'Comisión de Tejedoras Danesas', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (208, 'Rosadas Voluntarias del Hospital Ramón Santamarina', 60, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (209, 'Asociación Argentina de volantes', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (210, 'Asociación Argentina de Volantes', NULL, NULL, 5);
INSERT INTO organizacionrelacionada VALUES (211, 'Centro de Salud del barrio', NULL, NULL, 2);
INSERT INTO organizacionrelacionada VALUES (212, 'sociedad Argentina de la Cruz Roja. Filial Tandil', 33, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (213, 'Sociedad de Fomento Agrupación Lisandro de La Torre', 185, NULL, 1);
INSERT INTO organizacionrelacionada VALUES (214, 'asociaciones sobre accidentes de tránsito', NULL, NULL, 13);
INSERT INTO organizacionrelacionada VALUES (215, 'Asociaciones de accidentes de transito', NULL, NULL, 13);
INSERT INTO organizacionrelacionada VALUES (216, 'ADECUA', NULL, NULL, 13);
INSERT INTO organizacionrelacionada VALUES (217, NULL, NULL, NULL, 13);
INSERT INTO organizacionrelacionada VALUES (218, NULL, NULL, NULL, 2);


--
-- Data for Name: orgcasamatrizexterna; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO orgcasamatrizexterna VALUES (2, 'Federación Argentina de Trabajadores de Industrias Químicas y Petroquímicas', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (3, 'Sin Identificar', NULL);
INSERT INTO orgcasamatrizexterna VALUES (4, 'Ministerio de Defensa', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (5, 'Federación de Educadores Bonaerenses', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (6, 'Club Atlético Banco de la Provincia de Buenos Aires', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (7, 'Sindicato del Seguro de la República Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (8, 'Unión trabajadores Hoteleros y Gastronómicos de la República Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (9, 'AMIA - DAIA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (10, 'Obizpado de Azul', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (11, 'Secretariado Nacional UOM', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (12, 'Cruz Roja Internacional', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (13, 'Lions International', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (14, 'Asociación Judicial Bonaerense Departamental Azul', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (15, 'Asociación Médica Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (17, 'Consejo Profesional de Ciencias Económicas de la provincia de Buenos Aires
Consejo Profes', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (18, 'Federación Argentina de Aeromodelismo', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (19, 'Sindicato Luz y Fuerza', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (20, 'Colegio de Veterinarios de la Provincia de Buenos Aires', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (21, 'Círculo de Suboficiales de las Fuerzas Armadas', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (22, 'ALUBA Central', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (23, 'Caritas Diocesana', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (24, 'FOEESITRA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (25, 'Sindicato de Obreros de Maestranza', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (26, 'ALCO Central (Dr. Cormillot)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (27, 'FAPASA (Fed. Prod. Ases. De Seguros de Arg)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (28, 'AAPM de la RA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (29, 'GOT (Grupo Operativo del Sudeste de la Pcia.)', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (30, 'Consejo Nacional de la Agrimensura. Distrito II', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (31, 'SIVARA', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (32, 'Círculo de Suboficiales de la Fuerza Aérea Argentina. Asociación Mutual', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (33, 'Rotary Club Internacional', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (34, 'Federación Cinológica Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (35, 'Federación Paneril de la Provincia', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (36, 'Sindicato Gremial de los Profesionales de la Salud de la Pcia. Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (37, 'FATIDA (Federación Argentina de Trabajadores de la Imprenta, Diarios y Afines)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (38, 'UTA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (39, 'Federación de Basquetbol de la Pcia. de Bs. As.', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (40, 'Confederación Argentina de Hockey', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (41, 'Asociación Celíaca Argentina - Cede Central La Plata', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (42, 'Alianza Mundial Bautista', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (43, 'Dirección de Bibliotecas de la Pcia. de Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (44, 'Instituto Nacional Sanmartiniano', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (45, 'Asociación Evangélica Asambleas Bíblicas', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (46, 'Asociación Misión Iglesia Pentecostal Central Cipolletti (Río Negro)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (47, 'Misión Evangélica Los Hechos Capítulo II', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (48, 'AOMA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (49, 'Centro de Oficiales Retirados de la Policía de la Pcia. de Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (50, 'Asociación Regional de Anestesiología', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (51, 'Asociación Profesional Sindical', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (52, 'Federación Patín Provincia de Bs. As.', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (53, 'SUTIAGA Mar del Plata', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (54, 'Colegio de Farmacéuticos de la Provincia de Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (55, 'Fundación Apostar a la Vida', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (56, 'La Fratermnidad', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (57, 'Colegio de Escribanos de la Pcia. De Buenos Aires', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (58, 'Federación Atlética de la Provincia de Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (59, 'Unión Trabajadores de Entidades Deportivas y Civiles (UTEDYC)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (60, 'Iglesia Internacional Evangélica Cuadrangular', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (61, 'Colegio de Psicólogos de la Pcia. de Bs. As. (APBA)', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (62, 'Comunidad Cristiana de Buenos Aires', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (63, 'UATRE', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (64, 'Dirección General de Escuelas Especiales', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (65, 'Centros Integrales Humanistas', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (66, 'Movimiento Humanista', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (67, 'Sociedad Argentina de Reumatología (SAR)', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (68, 'Colegio', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (69, 'Federación Nacional de Papa', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (70, 'Federación Bonaerense de Peluqueros y Peinadores de la Pcia. de Bs. As.', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (71, 'Iglesia Evangélica Asamblea de Dios', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (72, 'Iglesia Adventista del 7mo Día', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (73, 'Sindicato de Choferes de Camiones', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (74, 'Iglesia de Dios en la Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (75, 'Sindicato de Obreros y Empleados de la Educación y la Minoridad (SOEME)', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (76, 'INCUCAI', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (77, 'Federación Nacional de Trabajadores de Obras Sanitarias', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (78, 'Cámara de Transporte Automotor de la Provincia de Buenos Aires', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (79, 'Instituto Nacional Belgraniano', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (80, 'Casa Central de Consumidores de la Rep. Arg.', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (81, 'Federación Argentina de Triatlón', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (82, 'Cede Central Círculo  Suboficiales y Agentes de la Policía Bonaerense', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (83, 'Federación Agraria Argentina', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (84, 'Aociación Iglesia Evangélica Misionera', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (85, NULL, 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (86, 'La Iglesia de Jesucristo de los Santos de los Ultimos Días', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (87, NULL, 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (88, NULL, 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (89, NULL, 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (90, NULL, 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (91, 'PECIFA', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (92, 'Escuela Cientifica Basilio', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (93, 'La Bancaria Casa Central
La Bancaria Casa Central', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (94, 'Liga de Amas de Casa, Consumidores y Usuarios de la Rep. Arg.', 'Nacional');
INSERT INTO orgcasamatrizexterna VALUES (95, 'Parroquia Santísimo Sacramento.', 'Regional');
INSERT INTO orgcasamatrizexterna VALUES (96, 'Club de Leones Gobierno Distrito o3', 'Internacional');
INSERT INTO orgcasamatrizexterna VALUES (97, 'ADEVAT', 'Provincial');
INSERT INTO orgcasamatrizexterna VALUES (98, 'Club de Leones Gob. Distrito o3', 'Regional');


--
-- Data for Name: perfiledad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO perfiledad VALUES (1, 'Niños');
INSERT INTO perfiledad VALUES (2, 'Adolescentes');
INSERT INTO perfiledad VALUES (3, 'Jóvenes');
INSERT INTO perfiledad VALUES (4, 'Adultos');
INSERT INTO perfiledad VALUES (5, 'Tercera edad');
INSERT INTO perfiledad VALUES (6, 'Múltiples edades');


--
-- Data for Name: perfiledad_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO perfiledad_x_organizacion VALUES (9, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (9, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (10, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (15, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (15, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (15, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (22, 3, 2);
INSERT INTO perfiledad_x_organizacion VALUES (22, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (47, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (47, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (47, 6, 3);
INSERT INTO perfiledad_x_organizacion VALUES (64, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (65, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (101, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (113, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (120, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (126, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (130, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (133, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (135, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (139, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (149, 3, 2);
INSERT INTO perfiledad_x_organizacion VALUES (149, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (218, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (218, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (218, 6, 3);
INSERT INTO perfiledad_x_organizacion VALUES (221, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (228, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (235, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (235, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (238, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (242, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (243, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (246, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (250, 6, 0);
INSERT INTO perfiledad_x_organizacion VALUES (254, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (258, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (258, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (258, 5, 3);
INSERT INTO perfiledad_x_organizacion VALUES (259, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (259, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (260, 2, 1);
INSERT INTO perfiledad_x_organizacion VALUES (260, 3, 2);
INSERT INTO perfiledad_x_organizacion VALUES (261, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (129, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (129, 2, 2);
INSERT INTO perfiledad_x_organizacion VALUES (202, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (208, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (4, 2, 1);
INSERT INTO perfiledad_x_organizacion VALUES (4, 3, 2);
INSERT INTO perfiledad_x_organizacion VALUES (4, 4, 3);
INSERT INTO perfiledad_x_organizacion VALUES (128, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (46, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (67, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (219, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (219, 2, 2);
INSERT INTO perfiledad_x_organizacion VALUES (127, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (13, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (231, 6, 0);
INSERT INTO perfiledad_x_organizacion VALUES (262, 3, 1);
INSERT INTO perfiledad_x_organizacion VALUES (262, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (125, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (236, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (189, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (263, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (263, 2, 2);
INSERT INTO perfiledad_x_organizacion VALUES (177, 2, 1);
INSERT INTO perfiledad_x_organizacion VALUES (177, 1, 2);
INSERT INTO perfiledad_x_organizacion VALUES (177, 3, 3);
INSERT INTO perfiledad_x_organizacion VALUES (166, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (33, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (7, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (7, 4, 2);
INSERT INTO perfiledad_x_organizacion VALUES (247, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (247, 6, 2);
INSERT INTO perfiledad_x_organizacion VALUES (241, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (264, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (109, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (106, 5, 1);
INSERT INTO perfiledad_x_organizacion VALUES (146, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (8, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (1, 4, 1);
INSERT INTO perfiledad_x_organizacion VALUES (1, 3, 2);
INSERT INTO perfiledad_x_organizacion VALUES (265, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (148, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (268, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (160, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (269, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (270, 6, 1);
INSERT INTO perfiledad_x_organizacion VALUES (34, 1, 1);
INSERT INTO perfiledad_x_organizacion VALUES (34, 5, 2);




--
-- Data for Name: problemassociedad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO problemassociedad VALUES (1, 'Falta de trabajo');
INSERT INTO problemassociedad VALUES (2, 'Pobreza');
INSERT INTO problemassociedad VALUES (3, 'Trabajo infantil');
INSERT INTO problemassociedad VALUES (4, 'Violencia familiar');
INSERT INTO problemassociedad VALUES (5, 'Drogadicción');
INSERT INTO problemassociedad VALUES (6, 'Alcoholismo');
INSERT INTO problemassociedad VALUES (7, 'Falta de servicios');
INSERT INTO problemassociedad VALUES (8, 'Infraestructura urbana');
INSERT INTO problemassociedad VALUES (9, 'Bajos salarios');
INSERT INTO problemassociedad VALUES (10, 'Malas condiciones de trabajo');
INSERT INTO problemassociedad VALUES (11, 'Discriminación');
INSERT INTO problemassociedad VALUES (12, 'Deficiencias educativas');
INSERT INTO problemassociedad VALUES (13, 'Ninguna');
INSERT INTO problemassociedad VALUES (14, 'Despreocupación de los padres para con los hijos');
INSERT INTO problemassociedad VALUES (15, 'Embarazo adolescente');
INSERT INTO problemassociedad VALUES (16, 'Falta de vivienda');
INSERT INTO problemassociedad VALUES (17, 'En relación a las becas');
INSERT INTO problemassociedad VALUES (18, 'género');
INSERT INTO problemassociedad VALUES (19, 'inseguridad');
INSERT INTO problemassociedad VALUES (20, NULL);
INSERT INTO problemassociedad VALUES (21, 'no hay espacios adecuados y gratuitos en s. mental');


--
-- Data for Name: visonrealidad; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO visonrealidad VALUES (9, 'Insuficientes.', 'deberíamos hablar de una desigualdad de oportunidades y un futuro común incierto...', 'El trabajo infantil es una aberración, una vergüenza social que existe aunque no lo queramos ver.!!');
INSERT INTO visonrealidad VALUES (10, 'Son muy favorables más que nada para el turismo. Se ha hermoseado Tandil. Se genero el IMT', 'La infancia acá en Tandil está protegida. Tandil es tranquilo, los chicos pueden moverse tranquilos. En la adolescencia es preocupante en Tandil el alcoholismo. Vivimos en una isla dentro de lo que es Argentina.', 'Trabajo infantil para nada');
INSERT INTO visonrealidad VALUES (15, 'como todo. Hay cosas que están bien, otras que se hicieron mal y otras que hay que mejorar.', '"Hay mucho problema con eso. Por ahí aca no es tanto. El chico que está en la calle, que no estudia (...) y con el adolescente hay un clima de rebeldia, puede ser por poca contención familiar. Toman independencia muy rapido, es lo que veo yo." (aludiendo a que pasan mucho tiempo sin conmpañia de mayores asumiendo responsabilidades o espacios)', 'no lo he visto a nivel local pero supongo que debe haber (...) Habría que ver la situación familiar, como se llega a eso. Si lo mandan, si está solo y lo hace porque lo copa, o no tiene otro modo. Pero creo que todo pasa por la familia y la situación familiar.');
INSERT INTO visonrealidad VALUES (22, 'Por el resultado de las elecciones supe que vienen trabajando bien.', 'La juventud tiene demasiada libertad y toman el camino que no deben tomar.', 'El club no deja entrar a menores');
INSERT INTO visonrealidad VALUES (47, 'Desconoce el tema-', 'Abandono de los padres hacia los hijos que por ahí ocasiona problemas en su desarrollo, falta de seguimiento a los niños. No se motiva a que desarrollen ectividad deportiva y social o que desarrollen alguna habilidad.', 'No ha visto niñso que trabajan. Si que colaboren en el trabajo de los padres y eso no me parece malo, de ahí se toma como una responsabilidad, es diferente eso.');
INSERT INTO visonrealidad VALUES (64, 'Creo que se hace, pero que en este tema importa acompañar a la família en un proceso de crecimiento y comprensión de la realidad de un chico.No se gana nada con sacar al chico. El mundo está en la família.', 'Se encuantran muy desprotegidos por la falta de rumbos serios, fundamentalmente de lo que significa ser una persona.', 'A veces hablando con las mamás te enterás, por ejemplo, que un chico de 14 años, que el papá está enfermo ,dice que va a aprender carpintería. No sé hasta qué punto es aprendizaje o trabajo. Pero a veces dudás. Si le decís que no, que tiene que estudiar, y tiene el papá enfermo y no quiere estudiar, no podemos podernos a decirles "no".');
INSERT INTO visonrealidad VALUES (65, 'Opinión 1: para mi es buenisimo. Tandil es una ciudad muy grande: en general muy bien (socio-fundador).
Opinión 2: se debería involucrar al empresariado con el gobierno municipal para realizar las mejoras y no sacar del bolsillo del contribuyente (presidente).', 'Hay de todo pero fundamentalmente la falta de atención de los padres es lo que lo genera. La culpa no es de los chicos, los grandes no toman las medidas correctas, para que eso no pase. El problema está en los mayores, la culpa es del otro, deslindar responsabilidades (hijo del socio fundador).', 'Depende de la necesidad de la familia. Yo empecé a trabajar a los 10 años por la propina, mi madre y mi padre ponían horario de llegada. Las palabras siempre eran de respeto y bajo esos valores que nos pusieron salimos hombres de bien. Estudios no nos pudieron darnpor ahí, pero fuimos hombres de bien (presidente).');
INSERT INTO visonrealidad VALUES (101, 'Estoy conforme', 'Los problemas de la adolescencia pasan exclusivamente por la educación de la casa, por los amigos, por la contención familiar, por la separación de los padres.', 'En mi ámbito no lo he observado. Me parece que una edad razonable para empezar a trabajar son los 18 años. Para mi la prioridad es el estudio');
INSERT INTO visonrealidad VALUES (113, 'Con nosotros no trata el municipio. Nos ignoran.', 'Que es un desastre, porque hay mucha droga, porque a los niños les falta el papá y la mamá y porque están trabajando', 'No me gusta. Los chicos tienen que vivir y estudiar, y después ,cuando son adolescentes, trabajar.
Nunca lo observó.');
INSERT INTO visonrealidad VALUES (120, 'Coo todo, este Gobierno tiene cosas acertadas y otras no. Por ejemplo, en salud, en el año 2002 había una crisis total y ahora hay de todo (odontólogos, psicólogos, Tabajadores sociales, médicos) . En servicios se han hecho cosas buenas, por lo menos acá en el barrio.', 'Es un desastre, hay una clara falta de educación, falta de todo. La culpa no es de los chicos, el problema ya viene de la casa, en sí del Estado, no hay ningún tipo de contención.', 'Hay una necesidad, pasa por la educación, la escuela no contiene como antes, el Gobierno no sabe resolver problemas, los crea muchas veces y la gente se acostumbró a recibir, los chicos a trabajar, y todo sigue así, no se resuelve nada.');
INSERT INTO visonrealidad VALUES (126, 'En el último período, positiva, ya que tienen preocupación por las instituciones. Una cosa es no recibir aportes, pero otra es recibir a gente del Club en el Municipio. Hay apoyo, la política local te da un buen apoyo de estar, hay presencia. Tandil ha crecido mucho y hoy en día la ciudad se está transformando en un caos al estacionar en el centro de la ciudad. Se está trabajando en eventos.', 'Hay una preocupación a futuro: los padres con sus actividades no les podemos dedicar tiempo a los hijos, el tiempo que se merecen y/o requieren, entoces los recluímos en guarderías o al cuidado de terceras personas en la casa. Luego, los que pueden recurren a los clubes para que los chicos puedan tener una actividad adicional a la casa. Esto hace que la crianza de los mismos no sea la adecuada, excepto aquellos casos que pueden concurrir a colegios privados donde, en algunos casos, con doble turno, pueden adquirir una educación diferente (no quiere decir que sea la mejor). Con las posibilidades que hoy existen a través de internet los chicos derrochan muchas horas, así les transcurre la vida, perdiendo su tiempo en cosas que no le van a sacar mucho provecho.', 'Sí, ha observado. Es la necesidad, es generado por las obligaciones (que sería cumplir con el estudio), no tienen una exigencia donde una persona que no tiene estudio después no tiene posibilidades de crecer, a no ser que tenga dotes diferentes (Maradona), o con otras cosas que no sean al deporte, como bondades personales, que pueda triunfar en la vida.. Por no tener exigencias, no se estudia, por eso hoy hay menores trabajando.');
INSERT INTO visonrealidad VALUES (130, 'Estoy muy conforme.', 'Me encantaría que a los chicos que les guste el caballo tengan una prioridad. Pero la juventud tendría que tener su posibilidad. Si yo pudiera tener una escuelita, pero tengo problemas con el vecino.', 'No he observado.');
INSERT INTO visonrealidad VALUES (133, 'Se está trabajando bien en el tema de salud, con la creación del hospital de niños, lo que significa un gran avance para Tandil y la región.
Lo que es preocupante es que tarda en resolverse el apoyo a las sierras, y la vigilancia de las canteras, que las siguen explotando hoy dia.', 'Se ve como principal problema el alcohol y la droga, sustancias que llevan a los jóvenes a hacer cosas d elas cuales no son concientes, debido a esto bajan su rendimiento escolar, se ponen violentos con las familias, con la gente y no encuantran un lugar donde reinsertarse y que se sientan identificados.', 'Tal situación aparece cuando se produce la desercion escolar, ven la necesidad de su familia y salen a trabajar para poder juntar plata, y dean el colegio.A su vez, al empezar a juntar plata no quieren retomar los estudios y no hay apoyo familiar para esto.
Habria que vigilar más de cerca el tema de la desercion escolar.');
INSERT INTO visonrealidad VALUES (135, 'No quiere opinar', 'No puedo emitir una opinión, estoy representando a la Fundación, no quiero emitir opinión', 'No quiere opinar');
INSERT INTO visonrealidad VALUES (139, 'Si trabajan para la adolescencia, que sea positivo para la sociedad. Esas cosas están bien, es positivo.', 'Diferente a nuestras generaciones, los adolescentes tienen todo a su alcance. El mal que padecemos es por tener todo y vamos perdiendo los valores del sentido de familia, de respeto, de unión, de amor, donde se pierden esos valores una sociedad se corrompe', 'esa experiencia yo la viví de muy chico, cuando vine a Argentina tenía 10 años, todo aquel que emigra lo hace por necesidad y yo no tenía otra. En muchos países está la explotación infantil y no queremos llegar a esa instancia en nuestro país, ojalá no llegue a eso...');
INSERT INTO visonrealidad VALUES (149, 'Floja, se puede hacer mucho más', 'Es regular, por más que el gobierno hace esfuerzos no hay buen resultado, el problema de la droga y la delincuencia lo vemos a diario.', 'no les hace ningún daño trabajar, ahora que sea como esclavo no.
A mi me han criado en el campo y mi padre nos hacia trabajar a todos y asi aprendimos todo a la par de los mensuales.
Para saber mandar hay que trabajar sino no funciona.');
INSERT INTO visonrealidad VALUES (218, 'Estamos en vías de afianzar la democracia, todavía faltan años...la situación del club lo demuestra. (Se refería a la intervensión del club)', 'Estoy preocupado, los chicos no disfrutan la niñez ni la adolescencia, van quemando etapas.', 'Si, se ve sobre todo en el fútbol, a veces los dirigentes sacan dinero de su propio bolsillo para que los chicos sigan estudiando.');
INSERT INTO visonrealidad VALUES (228, 'estoy de acuerdo con la política local en general. Pienso que Tandil es una ciudad privilegiada en relación a todo lo que se ve.', '"Falta educación. Está todo patas para arriba, equivocado. El único motivo de nuestra existencia es la evolución espiritual. De los niños y los adolescentes mejor ni hablar... nosotros tratamos de que salgan de esa situación de abandono y angustoa en que viven, de darles afecto sobre todo."', 'Pienso que no es aceptable, tendria que tener otras opciones, estar estudiando. Si lo he visto a nivel local... el gobienro no se ocupa.');
INSERT INTO visonrealidad VALUES (235, 'Muy bien , "siempre el que seca plato, algún plato rompe." el 90% bien', 'Falta, la gente no es como antes, los chicos no son educados como antes. Eso es problema del país, les hace falta el servicio militar. A los 12 años andan de novio.', 'Tienen que trabajar, pero está mal rentado, no hay trabajo digno');
INSERT INTO visonrealidad VALUES (238, 'Local, es buena. Para mi lo veo dentro de lo normal, dentro de la ciudad está bien. El intendente ha trabajado bien.', 'Lo vemos bien, escuchamos por ejemplo lo del choque de las motos, habia chicos de 13 años, ¿Cómo pueden los padres dejarlos?', 'No he observado, tengo a Ruben que anda con el problema de los chicos en la Terminal');
INSERT INTO visonrealidad VALUES (242, 'coincido en general. Como positivo el fomento de la industria turismo y descentralización del municipio (zonificación). Estoy de acuerdo pero despues como se implementa dependerá de la gente de cada lugar.', 'Les toca sufrir los efectos de las crisis familiares, en el sentido de la disgregación familiar. Falta del tiempo en familia por el ritmo actual. La crisis de la institución escolar (es a mi juicio la institución estatal que más está ayudando a la no disgregación social y que además está saturada, pero gracias que está y cumple su función). Grandes diferencias de oportunidades.', 'no tienen que trabajar. Los vemos cuidando coches, en situación de calle por épocas.
La opinión generalizada es que no encuentren la calle como confortable porque al dominar la calle, no los sacas más.');
INSERT INTO visonrealidad VALUES (243, 'coincido en general. Como positivo el fomento de la industria turismo y descentralización del municipio (zonificación). Estoy de acuerdo pero despues como se implementa dependerá de la gente de cada lugar.', 'Les toca sufrir los efectos de las crisis familiares, en el sentido de la disgregación familiar. Falta del tiempo en familia por el ritmo actual. La crisis de la institución escolar (es a mi juicio la institución estatal que más está ayudando a la no disgregación social y que además está saturada, pero gracias que está y cumple su función). Grandes diferencias de oportunidades.', 'no tienen que trabajar. Los vemos cuidando coches, en situación de calle por épocas.
La opinión generalizada es que no encuentren la calle como confortable porque al dominar la calle, no los sacas más.');
INSERT INTO visonrealidad VALUES (246, 'observo una excesiva burocracia en lo que respecta al futuro de muchos niños que por ahí podrían ser adoptados por familias que hace mucho tiempo que están anotadas en los juzgados.', 'se viven épocas difíciles para la infancia y adolescencia porque la sociedad de consumo en la cual estamos inmersos, porque si bien es cierto que el avance de la tecnología y la computación es algo positivo, si esto no se regula desde la infancia hace que tengamos chicos excesivamente rebotizados y muy alejados de la realidad.', 'no ha observado.
Una cosa son los niños que trabajan porque son explotados y otra cosa son los niños que colaboran en las tareas rurales sin quitarle tiempo y espacio al estudio. La realidad del campo es muy diferente a la de la ciudad, donde a veces se empieza paralelamente con la esucela primaria a transitar un camino educativo que es la universidad del trabajo.');
INSERT INTO visonrealidad VALUES (250, 'falta interiorizarse mucho más por los jóvenes y el trabajo, la porbreza, las necesidades en todo sentido, también las inmobiliarias.', 'Vivimos momentos peligrosos, donde los jóvenes son atacados por ciertos lados como instituciones, televisión, noche.
La juventud se enfrenta a muchas problemáticas.
Las cosas buenas son las menos ocurrentes.', 'es triste ver niños que trabajan o que son abusados de esa manera. Un horror.
No existe esta situación con los miembros.');
INSERT INTO visonrealidad VALUES (254, 'Yo pienso que se ha mejorado un motón. Nosotros aprovechamos lo que nos dan.', 'Acá vienen los chicos con las madres, eso es bueno para todos. De todas maneras hay que tener mucho cuidado, ya que el deterioro familiar deriva en el deterioro del chico. Desde ya que no podemos comparar la provincia con la Capital Federal', 'Que no tendrían que trabajar. De todas maneras en la Institución no se ve el trabajo infantil');
INSERT INTO visonrealidad VALUES (258, 'Con respecto al juego se le da importancia, creando espacios al aire libre, buenos para jugar.
En general no se ven grandes problemas, es una política bastante organizada.', 'Falta de comunicación. Los niños se encuntran solos. No hay referntes. La situación actual, en la que padre y madre necesitan trabajar, hace que los niños estén muy sólos', 'Han encontrado casos de chicos que trabajan. Chicos que ayudan a los padres.Los chicos deberían poder juagar.');
INSERT INTO visonrealidad VALUES (259, 'coincido en general. Como positivo el fomento de la industria turismo y descentralización del municipio (zonificación). Estoy de acuerdo pero despues como se implementa dependerá de la gente de cada lugar.', 'Les toca sufrir los efectos de las crisis familiares, en el sentido de la disgregación familiar. Falta del tiempo en familia por el ritmo actual. La crisis de la institución escolar (es a mi juicio la institución estatal que más está ayudando a la no disgregación social y que además está saturada, pero gracias que está y cumple su función). Grandes diferencias de oportunidades.', 'no tienen que trabajar. Los vemos cuidando coches, en situación de calle por épocas.
La opinión generalizada es que no encuentren la calle como confortable porque al dominar la calle, no los sacas más.');
INSERT INTO visonrealidad VALUES (260, 'María: Venimos de tantos años de estancamiento en el Gobierno anterior, que este parece bárbaro. Han captado a las clases medias y también a las bajas. Desarrollo Social ha trabajado mucho en los Centros Comunitarios, en los barrios, apoya a las Orgs. de la Sociaedad Civil. Por otro lado, el Intendente arregla la ciudad "maquilla", abrieron el Hipódromo, la Piedra Movediza. La gente está contenta. Por ahí uno no puede coincidir con sus prioridades, pero ellos cumplen con lo que se plantean.
Tenemos apoyo de la Secretaría de Cultura, trabajamos con Desarrollo Social.
Dardo: Lo bueno de este Gobierno es que enterró a Sanatelli bien hondo.
Dardo y Ma. Del Carmen: El arreglar las plazas es maquillaje pero la ciudad está linda. Esto mejora la calidad de vida. Falta ocuparse del tránsito, de las orillas, de las calles de tierra, etc.', 'María: Todavía queda infancia y adolescencia desprotegida y maltratada. Se están dando pasos a favor de la protección, como la nueva Ley. Falta tanto para mejorar la situación de tanta gente, y esto e suna decisión política. Y tiene que ver con la distribución de la riqueza.
Dardo: en las clases medias el papá trbaja cada vez más y deja solo al chico. No hay tiempo para el barrilete. La pc, el celular, los jueguitos de video, ocupan el tiempo del choco. El juego es fundamental.
Ma del Carmen: Hoy los chicos son de "agenda completa". Hacen computación, inglés, etc. No juegan. Esto tiene que ver con el consumismo, los medios de comunicación.
Dardo: El por qué de la murga esta en el juego, en el poder jugar.', 'María: Chicos con trabajo estable no tenemos. Chicos que dejan la escuela para trabajar no tenemos. Por ahí alguno que hace una cosita, que ayuda al papá. Malo es cuando el chico deja de ser chico para trabajar. Lo malo no es que ayude al papá a trabajar y  aprenda. Lo malo es que tenga que asumir responsabilidades de grande, que tenga que dejar de jugar, dejar la escuela. Lo que me da lástima son los chicos que salen a cirujear con los padres. Los veo muy expuestos. Les da vergüenza, se pueden lastimar.
Dardo: Yo trabajé desde chico en lo que me gustaba. Estaba aprendiendo y ayudaba a mi mamá.');
INSERT INTO visonrealidad VALUES (129, 'Desconozco. Los centros de Salud que se crearon se encuentran completos, con profesionales, pero los padres no los aprovechan.', 'Observo que los chicos están demasiados solos, no hay acompañamiento de la familia, no hay limites, demasiadas libertades. Se espera que la escuela brinde lo que la casa no da.', 'En la escuela no he visto. En el lugar que yo trabajo si. En una escuela pública es mas factible, me parece terrible. Los chicos faltan por tener que trabajar.');
INSERT INTO visonrealidad VALUES (221, 'No hacemos manisfetación política de acuerdo al estatuto', 'Que están saturados de información pero no de conocimientos específicos ni de cómo aplicarlos. Me parece importante rescatar que los chicos que están contenidos institucionalmente tienen menos posibilidades de delinquir.', 'No estoy de acuerdo con que los chicos trabajen pero si lamentablemente se observa.');
INSERT INTO visonrealidad VALUES (208, 'en lo que a mi me toca la gestión es aceptable. Independientemente de lo macro, a nosotros nos dieron respuesta. Nos valoraron independientemente de la coyuntura favorable.', 'Los chicos están muy librados al azar, tienen mayor dependencia del medio que de la familia. La familia no se preocupan por ellos.', 'en Tandil no he visto la situación. De todas maneras, no me parece que el trabajo infantil sea malo, siempre que contrapartida haya algo bueno y que no sea excesivo. La ocupación y el esfuerzo es valioso.');
INSERT INTO visonrealidad VALUES (261, 'En salud es un punto a favor (ha asistido al hospital y recibido buena atención).
Pésimo es el tema del tránsito, la gente hace lo que quiere.', 'Hay una gran falta de compromiso de padrres y docentes en la formación de los chicos, agravada por la coyuntura social, socio-cultural.', 'No está directamente vinculado a las escuelas. Le parece que no es el lugar dónde tienen que estar los chicos.');
INSERT INTO visonrealidad VALUES (202, 'No contesta porque estuvo trabajando dentro del municipio y tiene una visión interna y externa muy contradictoria y no quiere expresarla.', 'Por lo que conozco la nueva ley está vacía de contenido, se plantean las cosas pero no hay recursos humanos, equipos formados.
Descuidado el tema de adolescentes, no hay propuestas difundidas, es lo que se ve acá; sí los más chicos con centros de día.', 'Si he observado. Programa Callejeada ha tenido intervención, faltaría un trabajo más integral, es lógico que no dejen de trabajar no hay propuestas buenas.
La Movediza es el nuevo lugar dónde trabajan los niños.
Anivel estatal hay una falta de respuesta, no hay una propuesta integral para la comunidad en este sentido.');
INSERT INTO visonrealidad VALUES (128, 'A nivel turístico ha hecho.
En el Barrio Palermo no ha hecho nada. Las líneas de colectivos nos queda...una a diez cuadras', 'Los adolescentes no tienen límites. El problema empieza en la casa. Padres separados, mamás que trabajan. Se ha perdido mucho el tema de la familia. Los valores están en lo que a cada uno le enzeñaron de chico.', 'No. En su ámbito no. 
No ha visto y le parece terrible.');
INSERT INTO visonrealidad VALUES (46, 'Cada vez hay más delincuencia infantil, drogas y prostitución a mas corta edad. Como son menores salen y entran. Tiene que haber una contención para los chicos con problemas.', 'En nuestro caso ,acercar a los niños a nuestras raices nos cuesta mucho. Están con los celulares, los jueguitos y eso me preocupa.', 'Si, he observado. Mientras que trabajen y estudien no me parece mal. Primero el estudio- Si pueden hacer las dos cosas es importante para la formación, la responsabilidad.');
INSERT INTO visonrealidad VALUES (67, '"No hay política local para esto hay asistencialismo barato de situaciones de riesgo, inmediata y no hay continuidad. Solo la gente del Padre Raúl trabaja diferente"', '"terrible" Me asusta que no haya motivación para nada, no saben jugar, se aburren. No te ahablo de los chicos de la calle, no, hablo de todos, no hay ganas. Me asusta más que nunca.', 'En mi ámbito no. "Manipulado por un adulto, eso no es trabajo: los chicos en la calle, los estacionamiento, lo que veo continuamente"');
INSERT INTO visonrealidad VALUES (219, 'Como en todos los niveles, en via de afornmtar la democracia, todavía falta.', 'Estoy preocupado, los chicos no disfrutan ni la nilez ni la adolescencia, van quemando etapas.', 'En este ámbito no se ve pero sabemos que existe. Es una lastima que los chicos tengan que dejar de estudiar.');
INSERT INTO visonrealidad VALUES (13, 'Normal', 'Está muy complicado porque los chicos no pueden ir a la escuela, los padres no .los pueden cuidar. Están en la calle expuestos a todo, a las drogas. A su vez si cuando nacieron estuvieron mal aliementados, están perdidos.', 'No lo he visto pero es una locura, trabajan y los explotan.');
INSERT INTO visonrealidad VALUES (231, 'En Tandil todavia esta todo tranquilo, hay falencias pero en general las cosas estan bien', 'Lo que esta pasando es que en esta sociedad consumista se preoriza en tener respecto al ser y esto se refleja en los chicos. De a poco la familia se va a ir desintegrando la educacion y el pais.', 'Obviamente no estoy de acuerdo , aca se observa cuando los chicos cartonean');
INSERT INTO visonrealidad VALUES (262, 'Malas, o inexistentes. Basadas en las apariencias. Mala calidad de gestión.', 'Pos-modernismo: alta deserción escolar , bajo nivel de compromiso, bajo nivel de responsabilidad. Hay otro estrato con jóvenes comprometidos y muy valiosos.', 'No ha observado en su ámbito laboral, sí en la ciudad.
 Lamentable producto de la ausencia del Estado Municipal.');
INSERT INTO visonrealidad VALUES (125, 'Qe se preocupan pero muy poco, sino no tendríamos ese problema.', 'Que está  muy mal.', 'Si, los he observado y no estoy de acuerdo con que los chicos que trabajen.');
INSERT INTO visonrealidad VALUES (236, 'Acá no vienen nunca. En el barrio no nos syudaron nunca. No puedo opinar más porque acá no se acercó nadie nunca.', 'Que hay falta de contención familiar principalmente.', 'Acá no he observado. En este barrio no conosco ningun caso. Mi opinión es que los chicos tienen que estudiar, no trabajar.No veo bien que trabajen los chicos.');
INSERT INTO visonrealidad VALUES (4, 'Las acciones están bien pero falta profundizar más sobre la utilización de recursos naturales.', 'La infancia y la adolescencia en la actualidad necesita mayor atención de los organismos gubernamentales y no gubernamentales.
Ante las falencias de crianzas en las familias, las instituciones deben brindar apoyo.', 'En Tandil, si bien hay poccos casos de trabajo infantill');
INSERT INTO visonrealidad VALUES (127, 'Mejor que no opine. Nosotros decimos que los adolescentes están desanimados. Pero yo haria escuela para padres porque una niña de 13 años no puede tomar wisky y un padre no l e puede dar una moto a un chico para que se mate. Deberian tener mas control las autoridades en todo.', 'Hay muchos estímulos de afuera: internet es bueno cuando está medido y controlado pero cuando llega como un  caudal de cosas el chico ya no piensa, y cuanod el chico no piensa ese es el problema. Un chico tiene que pensar, investigar', 'No, porque aca tenemos chicos chiquitos.');
INSERT INTO visonrealidad VALUES (189, 'Se hace mucho para embellecer la ciudad, lo cual atrae el turismo. Pero no se hace nada para industrializar Tandil que es lo que da mano de obra.', 'Falta educación. Están en la calle o sin un referente. Esto puede pasar porque los padres tampoco están en las casa por trabajo. Algunos trabajan demasiado y no educan a sus hijos.
No hay referentes , modelos para los chicos.', 'Trabajo infantil es lamentable pero la casa del niño esta haciendo trabajo infantil. ¿Cómo es el caso?
Una vez se denuncio el trabajo infantil del frutillar cercano al barrio, lo hicimos nosotros.');
INSERT INTO visonrealidad VALUES (159, 'Depende de qué punto se lo mire. Desde la infraestructura urbana es muy bueno. Desde las actividades y objetivos del colegio no se han obtenido respuestas concretas, solo se ha hablado pero no hay respuestas.
En Tandil hay una aceptación generalizada del gobierno, por algo ganaron otra vez las elecciones, así que en general no debe estar mal.', 'Es preocupante la desatención de los chicos (por trabajo de los padres, descuido, etc) y eso se ve reflejado en que haya trabajo infantil, en que haya chicos en la calle desde muy chicos .', 'La situación es crítica y no está en el orden de prioridad para el estado, no se ve que hagan algo, no se ve lo que hacen respecto a este tema.
En Tandil no se ve tanto aunque hay. En otros lugares del país como Mar del Plata, es más crítica la situación');
INSERT INTO visonrealidad VALUES (263, 'Son las mismas medidas que se están llevando en el resto del país. El problema es que no se va a solucionar el problema de fondo que es la redistribución de la riqueza.', 'La infancia es la última linea de resistencia que nos queda, la están haciendo desaparecer con el hambre, la miseria. Lamentablemente los chicos que se dan cuentan que vienen por el país que tenemos, son los que resisten en la calle. Asi sean los chicos que están delinquiendo hay que darles una oportunidad, no se les puede cerrar las puertas, no los podemos matar. Hay que apostar fuerte a que los chicos el día de mañana puedan contar la historia del país.', '"Aca se ve permanentemente, se les enseña la cultura del trabajo que ya su situación anterior perdio. No creo que estar haciendo malabares o limpiando vidrios en los semáforos sea explotación infantil. De hecho si se le dice a un pibe en un semáforo que salga de ahí que tenemos un buen trabajo que ofrecerle no lo duad y se va. Ahora si vienen como vinieron aca, diciendo que juntar leña para la estufa en movediza es explotación infantil (como ya paso), yo les digo que si van a Chaco a la forestal y s eparan frente a ella diciendo que eso es explotación infantil y frenan eso, o bien a donde se hacen las publicidades de Pampers, yo los acompaño y lucho su lucha, peor no porque los chicos no puedan juntar unas monedas para la comida.  Hay que salir a juntar el mango para no cagarse de hambre. Hay que ayudar a esos chicos porque los padres y los abuelos ya no tienen posibilidades. Pero los pibes no son estúpidos, lo que pasa es que no se les da la posibilidad.
Yo de chico iba al campo, juntaba los huevos, barria las hojas, buscaba leña y nadie le decia a mi viejo que eso era explotación infantil. Dejame de joder"');
INSERT INTO visonrealidad VALUES (177, 'Si se refiere a política social y niñez, no son políticas que tiendan en un mediano plazo a establecer acciones y proyectos de promoción, sino que son acciones paliativas basadas en la construcción de importantes infraestructuras pero que estas no son pertenecientes a la comunidad, al barrio o a los supuestos destinatarios. La gente no forma parte de esos proyectos, por ejemplo Centro Comunitarios.', '"¿A qué infancia y adolescencia se refiere?Esta pregunta es para una sociedad homogenea y hoy no vivimos en una sociedad homogenea. Hay múlitples infancias ya doelscencias. 
Hay dos infancias y dos adoelscencias con dos proyectos de vida totalmente distintos. No es tan simple, no cabe en tres renglones. Existen dos infancias, por sintetizarla, en nuestro país. Una que accede y otra que no tiene proyecto de vida, tiene que salir a trabajar. Cada vez hay menos puentes de comunicación entre una infancia y l aotra.  Hay menos posibilidades de acceder. Esta situación es diferente a la de los años `50. Es indudable que una parte de la niñez y adolescencia vive mejor que en los ´50. Yo no creo que la niñez de 1950 vivía mejor que la de hoy. Hoy hay una parte de la niñez que vive bien pero otr no. Y entre una y otra hay una distancia enorme, no hay comunicación. Esto es diferente a los ´50 que había conexión.', 'he observado estas situaciones. El niño tiene que estar para educarse y jugar');
INSERT INTO visonrealidad VALUES (166, 'se considera que las acciones en materia de política local son limitadas.', 'la ausencia de una formación ciudadana genera sujetos indivicualistas sin una visión de futuro', 'Se ha observado en distintas zonas en las que se encuentra trabajando la organización.
Consideran necesario diferenciar las situaciones de explotación de las situaciones en las que estan acompañados por su grupo familiar y van acompañadas de espacios de formación. No es malo formentar la cultura del trabajo desde niños.');
INSERT INTO visonrealidad VALUES (33, 'Considera practicamente inexistente desde el ambito estatal las acciones implementadas, cubriéndose esta inacción por parte de organizaciones de la sociedad civil', 'La incertidumbre, fundamentalmente presente en la adolescencia, debido a la falta de tiempo y dedicación por parte de los adultos. 

Son utilizados como plataforma política.', 'Ha observado está situación a nivel local. Sostiene que es producto de la situación local en la que nos econtramos.');
INSERT INTO visonrealidad VALUES (7, 'A Tandil lo veo divino. Admiro al intendente que hay, es una bellísima persona.
Tandil ha progresado extraordinariamente. Se lo debemos al intendente.', 'Hay chicos educados pero falta educación, hay chicos muy maleducados y los culpables son los padres. Pero esto no es un problema de dinero. Los chicos empiezan a tomar y beber. Los matrimonios empiezan a fallar, no educan a los hijos, falta amor y respeto en el hogar. Y los chicos no son educados. Hay descaro, están todos tatuados, uno arriba del otro, no hay respeto al prójimo.', 'los chicos tienen que estudiar. Los que se tienen que encargar son sus padres. Es importante la capacitación en los chicos, para que después puedan trabajar.
También se necesita la yuda de los políticos, tendría que volver el servicio militar. Le hacía bien a los chicos, les daba valores como el respeto.');
INSERT INTO visonrealidad VALUES (241, 'Hemos chocado, ya que la Municipalidad superpuso acciones con nosotros, porque ubicaron un centro Comunitario (Zona 14) en la Zona que accionamos. Además ellos cuentan con muchos recursos y se genera una competencia absurda.', 'Que está todo desvirtuado, hay mucha falta de contención familiar ( a veces hay que sacar  a los chicos de sus hogares).
Hay mucha ansiedad por parte de las familias, creen que les tenemos que solucionar los problemas.', 'Que no debería existir, pero existen muchos casos de niños que tienen que pedir dinero.');
INSERT INTO visonrealidad VALUES (247, 'veo que Tandil está creciendo. Tiene sus falencias pero aquí han mejorado algunas cosas. Por ejemplo las cloacas aquí en el barrio. Pero  todavía no las conectaron.
Viene mucha gente de afuera. Si bien la noche es fea, a la gente de afuera le parece tranquila. El crecimiento se está notando también en que los jardines de infantes no alcanzan. Van a tener que construir más jardines y escuelas.', 'A los chicos le importan cada vez menos los libros. Están en otra. Nos ponemos a pensar ¿Cómo paramos esto? Esta desbordado todo. Hay que empezar por la casa, por la educación. No hay límites en las casas, antes no era así.', 'Han venido a la biblioteca chicos que no pueden ir a la escuela por tener que trabajar. Los días 7 (día de San Cayetano) vienen chicos a cuidar los autos. También los vemos en la feria de semana santa, trabajan allí y vimos que tienen un jefe. Tenían 7, 10 años, el "jefe" 12, 13 años. Esto no tendría que ser así. El intendente no tendría que dejar que sea así.
En todos los paseos turísticos se ve. Es terrible y no pasa sólo en Tandil.');
INSERT INTO visonrealidad VALUES (264, 'va avanzando, se están haciendo obras. Avanza a pedido. Si piden algo se hace. Avanza gracias a la provincia, al dinero que le piden a la provincia. Las cosas se hacen porque la gente pide.', 'Los chicos necesitan un poco de rigor para sus estudios. Habría que poner más atención a la niñez, esto por parte de las autoridades.', 'Si, se ve. En los chicos de la escuela 14 de la zona de Tunitas sobretodo, cuando los chicos vienen a la biblioteca. Les cuesta mucho estudiar. Hay que prestarle más atención a estos casos desde acción social.');
INSERT INTO visonrealidad VALUES (109, 'Es insuficiente.', 'Hay inseguridad, falta de educación, falta de contención familiar', 'No. Está mal. Que trabajen, deberían estar estudiando, formandose.');
INSERT INTO visonrealidad VALUES (106, 'El intendente se está ocupando de todo, la salud, recreación, turismo, del aspecto d ela ciudad.
Pero también hay gente sin trabajo, que necesitan el hospital. Ha caído mucho su atención.', 'Los padres no ponen límites. Hay familias disfuncionales. Hay falta de control y de educación en el hogar.
Problemas de drogadicción y alcoholismo.
Los padres trabajan y los niños se quedan con sus abuelos. 
No hay respeto ni contención.', 'Depende del trabajo que hagan. Si se realizan quehaceres el hogar está bien.
El niño tiene que tener también su recreación y educación.');
INSERT INTO visonrealidad VALUES (146, 'Veo mucho doble discurso en la política local, y el más claro es las canteras, por un lado están tratando de defenderlas, y por el otro te sacan "una Movediza" todos los días.', 'Los niños y adolescentes están mirando lo que hacen los adultos, y los adultos que se criaron con miedo a los padres, ahora viven con miedo a los hijos. Al adolescente en general lo veo sin rumbo, no tiene modelos a seguir genuinos, el modelo se lo da Tinelli', 'No, en este ámbito no. Si hacés una (.....)te das cuenta de la cantidad de chicos que trabajan en la construcción y que tendrían que estar en la escuela.');
INSERT INTO visonrealidad VALUES (8, 'N/C', 'Los padres se desligan para que otras organizaciones se ocupen (Escuela, Estado en general), cuando lo primero es la familia.', 'Negativo totalmente. No he visto viviendo en la calle, pidiendo sí, pero creo que de "vaguitos" que son, no como en Bs.As.');
INSERT INTO visonrealidad VALUES (1, 'Falla en la parte social. Es insuficiente, no se maneja bien. Tandil está muy lindo estéticamente pero hay muchas necesidades por abordar.', 'Para mí no hay un trabajo en el tema. A pesar de que en Argentina hay material para desarrollarlo no se hace como debiera, sobre todo en lo referente a contención y asistencia social, tanto para los niño y adolescentes con recursos como sin recursos.', 'Es una basura. Sí he visto trabajando. Nunca me imaginé que iba a ver chicos comiendo de los cestos de basura. Si bien son en parte responsables las familias, también se llega a eso porque no están bien guíados.');
INSERT INTO visonrealidad VALUES (265, 'no contesta.', 'Carencia absoluta de necesidades básicas, de alimentación, hogar digno, educación y motivación hacia el futuro.', 'no contesta.');
INSERT INTO visonrealidad VALUES (148, 'Están haciendo las cosas bien. Tienen movida, pero no continuidad Pagan todo con planes sociales y muchos se cansan y se van. Hacen muchos edificios como los CIC pero no saben equiparlos, les falta atención, pero no de planes sociales, sino de personas que sepan.
Les dan una mano, los ayudan. Ahora hay servicio ocial en el barrio. La gestión de Lunghi hizo muchas cosas. Ahora tienen más servicios. La colocación de la replica de la piedra movediza.', 'Los niños están bien. Los adolescentes tienen malas influencias de otros, se dan situaciones de robo.
Se ve mucho alcohol en los jóvenes, está todo muy complicado, los chicos acá noi dejan trabajar a los profesores, son todos de 14 o 15 años.', 'Depende la ocasión. Hay veces que los padres los mandan a trabajar porque los chicos no quieren estudias. Hay muchos que trabajan pero lo que falta es capacitación laboral. No saben, muchas veces, qué hacer con la plata que ganan y se lo gastan en los boliches.
El otro entervistado dice que no hay. Ayudan a toda la familia para conseguir dinero. Cuidan los autos en la movediza para ayudar a la familia. Esto no debería de existir. Falla en los valores familiares.');
INSERT INTO visonrealidad VALUES (268, 'Actúa para que lo vean, para el turismo.
Las construcciones en Tandil no están bien manejadas.
Está muy dividido entre ricos y pobres. Hay un grupo reducido que tiene mucho poder adquisitivo.', 'Los jóvenes no tienen conocimiento de nada. Ya tienen la edad para asumir responsabilidades. No tienen límites de los padres.', 'si se da un buen aprendizaje desde chico está bien. No la explotación.
Es importante que terminen el secundario, hacer un buen secundario.');
INSERT INTO visonrealidad VALUES (160, 'No hay políticas de Estado.', 'Cuál es su origen y qué educación eligieron. Están en riesgo.', 'No hay un trabajo sobre los Derechos del niño.
Hay vulnerabilidad.');
INSERT INTO visonrealidad VALUES (269, 'Hasta ahora se trabajó bien con la soiciedad de fomento.', 'Los chicos están sin protección. Los padres no tienen empleo', 'Si, hay casos de chicos de la calle. Nosotros hicimos un plan de becas para chicos que estaban en la calle. A dos chicos que vienen a fútbol se les dio una beca para que realicen el mantenimiento de las canchas de fútbol (contraprestación)');
INSERT INTO visonrealidad VALUES (270, 'superficial. No hay trabajo de fondo.', 'Están abandonados. Hay hipocrecía sobre la educación y la cultura. Es adrede, no es falta de recursos y materiales, ni humanos culturales. Hay una complicidad cultural.', 'Si, vimos casos. Está mal que trabajen. Salvo en algún caso en que ayude con algún trabajo, pero sin dejar los estudios.');
INSERT INTO visonrealidad VALUES (34, 'Y yo no puedo opinar mucho porque fui intendente antes. Ahora funcionan mejor porque tienen más recursos y más gente. (Se pudo mejorar) en la atención de todos esos problemas, porque le competen al municipio porque por ejemplo en el ámbito penal y todo eso no le corresponde, todo eso es responsabilidad de la Prov. De Bs. As.
No me interesa saber mucho porque no quiero opinarmucho de esta gestión porque puede ser una opinión dirigida, no? Pero se ha abierto. 
Nunca es suficiente lo que se hace', 'La droga', 'En el Club se comenta, pero no es una cosa o un programa que nosotros tengamos que verlo, eso está en el Municipio y en el Ministerio de Trabajo. Es más grave que anden en la calle, que que trabajen.
Chicos que trabajan no, que piden sí.');


--
-- Data for Name: problemasociedad_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO problemasociedad_x_organizacion VALUES (9, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (9, 9, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (10, 8, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (22, 13, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (64, 16, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (65, 13, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (101, 14, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (113, 4, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (113, 7, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (113, 9, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (120, 1, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (120, 7, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (120, 8, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (126, 9, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (130, 13, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (133, 1, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (133, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (133, 9, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (149, 13, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (218, 5, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (218, 9, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (218, 11, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (228, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (235, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (238, 13, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (242, 7, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (243, 7, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (246, 10, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (250, 1, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (250, 9, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (250, 12, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (254, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (254, 12, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (254, 15, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (258, 3, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (258, 8, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (258, 12, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (259, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (259, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (259, 8, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (259, 10, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (260, 8, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (260, 10, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (260, 11, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (260, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (221, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (221, 4, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (221, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 11, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 7, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (208, 4, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (261, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (261, 4, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (261, 2, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (202, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (202, 9, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (202, 10, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (202, 4, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (46, 17, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (67, 11, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (219, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (219, 11, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (219, 2, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (13, 8, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (231, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (231, 4, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (231, 11, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (231, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (262, 5, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (262, 6, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (262, 9, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (125, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (125, 5, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (125, 6, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (125, 9, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (236, 4, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (236, 5, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (236, 9, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (4, 7, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (127, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (127, 1, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (189, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (189, 10, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (189, 4, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (159, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (159, 5, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (159, 6, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (263, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (263, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (263, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (177, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (177, 12, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (177, 4, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (166, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (166, 10, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (166, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (33, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (33, 11, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (33, 18, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (7, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (241, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (241, 9, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (241, 4, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 3, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 5, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 9, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 10, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (247, 11, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (264, 9, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (264, 3, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (264, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (264, 11, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (109, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (109, 1, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (109, 8, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (106, 8, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (106, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (106, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (106, 19, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (146, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (146, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (146, 5, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (1, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (1, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (1, 10, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (265, 21, 0);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 5, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 10, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (148, 6, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (268, 7, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (268, 8, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (160, 1, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (160, 2, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (160, 12, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (269, 2, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (269, 5, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (269, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (270, 12, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (270, 8, 2);
INSERT INTO problemasociedad_x_organizacion VALUES (270, 7, 3);
INSERT INTO problemasociedad_x_organizacion VALUES (34, 5, 1);
INSERT INTO problemasociedad_x_organizacion VALUES (34, 2, 2);


--
-- Data for Name: proyectos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proyectos VALUES (1053, 258, 'Área de Investigación sobre historia de juegos y juguetes', 39, 5, '12', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1054, 258, 'Área educativa (cursos, debates, etc)', 39, 5, '0', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1055, 258, 'Organización de espectáculos infantiles', 7, 8, '0', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1056, 258, 'Recolección, clasificación y exposición de juguetes', 7, 6, '0', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1057, 258, 'Atención a grupos de chicos a través de juegos.', 7, 5, '19', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1059, 250, 'Programas Misionales', 7, 26, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1060, 250, 'Programa de genealogía (abierto a la comunidad.Reconstruccion de árboles genealógicos)', 7, 7, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1061, 250, 'Programa para las mujeres', 1, 16, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1062, 250, 'Programa para los hombres', 1, 16, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1063, 250, 'Progrmas con niños y jóvenes', 15, 5, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1064, 250, 'Programa  noche de hogar(ayuno de las flias. Para purificar el alma. Lo que no se consume se lleva a la iglesia para donaciones', 15, 11, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1065, 250, 'Programa para la sociedad (bienestar). Colaboran con otras orgs o personas que no son miembros.', 7, 44, '0', '1950-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1070, 10, 'Cursos de inglés para el personal del establecimiento. Es específico para la actividad', 1, 56, '26', '2007-09-06 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1071, 10, 'Cursos de capacitación en relaciones públicas', 1, 56, '31', '2007-11-20 00:00:00', '2007-11-23 00:00:00', 'Duró 3 días el curso', 'FINALIZADO');
INSERT INTO proyectos VALUES (1072, 10, 'Foro de Hotelería y Gastronomía a nivel nacional', 40, 67, '65', '2008-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1073, 10, 'Asesoramiento laboral permanente', 1, 23, '67', '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1074, 10, 'Impresión y distribución de planos y folletería turística entre los socios', 21, 67, '67', '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1075, 10, 'Instituto Mixto de Turismo: en 2007 se trabajo en el IMT en ordenanzas de tabaco, tasa de turismo, colectivos a larga distancia. Se presentan notas, se interviene en los proyectos de ordenanza. Se participa', 1, 67, '15', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1076, 10, 'Cuarto Coloquio Tributario Hotelero Gastronómico. Mar del Plata', 40, 67, NULL, '2007-10-31 00:00:00', '2007-11-01 00:00:00', 'Es una jornada. Es la primera en la que participan', 'FINALIZADO');
INSERT INTO proyectos VALUES (1079, 10, 'Participación en FITF (Feria Internacional de Turismo', 40, 67, '0', '1992-10-31 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1080, 10, 'Participación en HOTELGA (Feria de Turismo de la Provincia de Buenos Aires). Se promociona Tandil', 40, 67, '0', '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1081, 10, 'Curso de capacitación para camareras y mozos', 1, 56, NULL, '2007-01-01 00:00:00', '2007-01-04 00:00:00', 'Duran 3 días.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1082, 10, 'Curso para mucamas', 1, 56, NULL, '2007-01-01 00:00:00', '2007-01-04 00:00:00', 'Duran 3 días.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1083, 10, 'Seminario de Dirección de empresas familiares', 1, 56, NULL, '2007-01-01 00:00:00', '2007-01-04 00:00:00', 'Duran 3 días.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1084, 101, 'Rugby', 7, 8, '290', '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1085, 101, 'Hockey', 7, 8, '206', '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1086, 101, 'Colonia de vacaciones en verano', 7, 8, '88', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1087, 242, 'Culto', 14, 11, '400', '1990-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1088, 242, 'Catequesis', 14, 11, '150', '1990-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1089, 242, 'Servicios desde las Cáritas (apoyo escolar, talleres, preparación de recursos para entrega directa)', 7, 24, '20', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1090, 242, 'Misión Barrial', 14, 11, '120', '1990-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1091, 242, 'Visita a ancianos y enfermos por parte de ministros de la capilla', 14, 11, '50', '1990-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1092, 242, 'Liturgia bautismal', 14, 11, '3', '1991-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1094, 242, 'Campaña Maratón Solidaria', 7, 43, '0', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1095, 130, 'Guardia al Gral San Martín desde 1981', 12, 6, '8', '1981-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1096, 130, 'Encuentro/asado, primer viernes de cada mes', 12, 8, '40', '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1097, 130, 'Prueba de rienda y carrera de sortija en la Fiesta del Hombre de Campo', 12, 6, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1098, 130, 'Viajar a desfiles en otras ciudades', 12, 18, '15', '1985-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1099, 130, 'Visitas a las escuelas en el Día de la Tradición', 7, 6, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1100, 130, 'Fiestas a beneficio para las escuelas', 27, 43, NULL, '1985-01-01 00:00:00', '1998-01-01 00:00:00', 'Muchas trabas. Hoy no se puede hacer', 'FINALIZADO');
INSERT INTO proyectos VALUES (1101, 130, 'Cantina en la Fiesta del Hombre de Campo', 12, 43, NULL, '1992-01-01 00:00:00', '2006-01-01 00:00:00', 'Por los seguros, por ADICAPIF.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1102, 9, 'Apicultura', 28, 2, '2 supervisores, 10 operarios', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1103, 9, 'Huerta y Jardinería', 28, 2, '1 supervisor, 15 operarios', '1983-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1104, 9, 'Elaboracion de dulces y conservas', 28, 2, '1 supervisor, 5 operarios', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1105, 9, 'Fábrica de velas', 28, 2, '1 supervisor, 5 operarios', '1991-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1106, 9, 'Cria de pollos y ponedoras', 28, 2, '1 supervisor, 4 ponedoras', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1107, 9, 'Proyecto de Creación de casita del taller para chicos que quedan solos', 7, 3, '1 acompañañte 4 personas con discapacidad', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1108, 9, 'Estacionamiento de la Terminal (en comodato)', 28, 2, '6 operarios, 1 supervisor', '1995-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1109, 9, 'Kiosco del taller En 9 de julio y rodriguez (en comodato)', 28, 2, '10 operarios, 1 supervisor', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1110, 243, 'Celebración de los sacramentos', 14, 11, '0', '1954-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1111, 243, 'Catequesis de iniciación cristiana', 14, 11, '650', '1954-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1112, 243, 'Apoyo escolar', 7, 5, '0', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1113, 243, 'Liturgia bautismal', 14, 11, '0', '1954-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1114, 259, 'grupo estable de jóvenes: se reunen una vez por semana para organizar diversas actividades', 14, 11, '50', '1989-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1115, 259, 'catequesis de iniciación', 14, 11, '0', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1116, 259, '5 residencias universitarias', 7, 3, '100', '1989-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1117, 259, 'Retiros', 15, 11, '60', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1118, 259, 'Misión Juvenil', 15, 11, '250', '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1119, 259, 'Cursos y talleres', 1, 5, '0', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1120, 259, 'Página web', 21, 11, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1121, 259, 'Comedor universitario', 2, 4, NULL, '1990-01-01 00:00:00', '1991-01-01 00:00:00', 'Cuestiones de sostenimiento en el tiempo', 'FINALIZADO');
INSERT INTO proyectos VALUES (1122, 113, 'Entrega de bolsones alimentarios (una vez al mes)', 2, 4, '80', '1994-04-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1123, 113, 'Podologa (Lunes y Viernes)', 7, 1, '30 (mensualmente)', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1124, 113, 'Taller de teatro', 7, 6, '10', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1125, 113, 'Entrega de semillas (seguimiento de las huertas)', 7, 2, '30 huertas', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1126, 113, 'Yoga', 7, 8, NULL, '2005-02-01 00:00:00', '2005-12-20 00:00:00', 'Pami no envió más jubilados', 'FINALIZADO');
INSERT INTO proyectos VALUES (1127, 113, 'Talleres sobre maltrato a la vejez', 6, 15, NULL, '3005-02-02 00:00:00', '2006-02-02 00:00:00', NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1129, 254, 'Curso de tejido', 7, 26, '20', '1984-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1130, 254, 'Apoyo escolar', 7, 5, '20', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1131, 254, 'Curso de costura y telar', 7, 2, '20', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1132, 254, 'Curso de computación', 7, 5, '10', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1133, 254, 'Obra de teatro para chcos y adultos', 7, 6, '60', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1134, 254, 'Presentación de libros', 21, 6, '60', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1135, 254, 'Carpeta con materiales y listado de gente que asiste', 13, 37, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1136, 254, 'Reconstrucción de la historia del barrio', 40, 6, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1137, 254, 'Valija viajera', 40, 5, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1138, 254, 'Taller literario para adultos', 7, 5, NULL, '2007-01-01 00:00:00', '2007-12-31 00:00:00', 'No tuvo aceptación.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1139, 64, 'Autoconstrucción', 29, 3, NULL, '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1140, 64, 'Banco de materiales. Bloquera', 7, 3, '8', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1141, 64, 'Casas de la Esperanza', 7, 3, '46', '1991-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1142, 64, 'Hogar de la Esperanza', 7, 3, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1143, 64, 'Hogar de madres en tránsito', 7, 3, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1144, 64, 'Bolsones de alimentos', 2, 4, '200 familias', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1145, 64, 'Roperito', 7, 17, '100 familias', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1146, 64, 'Comedor', 7, 4, NULL, '1989-01-01 00:00:00', '1990-01-01 00:00:00', 'se trabajó en la emergencia', 'FINALIZADO');
INSERT INTO proyectos VALUES (1147, 15, 'Trabajar en el convenio colectivo otorgado en 2005 pero solicitado mucho antes.', 6, 2, '15', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1148, 15, 'Asistencia a coberturas médicas (complementan con asistencia directa', 7, 1, '4', '1988-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1149, 15, 'asesoramiento permanente a personas que lo solicitan', 1, 2, '4', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1150, 15, 'actividades sociales con un fin vinculante', 7, 8, '10', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1152, 126, 'Rugby Infantil, Juvenil y Superior', 7, 8, '200', '1970-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1153, 126, 'Hokcey - Damas, Caballeros, "Mamis"', 7, 8, '200', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1154, 126, 'Tenis', 7, 8, '100', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1155, 126, 'Colonia de Verano', 7, 8, '180', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1156, 126, 'Cena de Aniversario', 12, 8, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1157, 126, 'CPA, capacitaciones para trabajar con los padres, dirigentes, preparadores físicos', 5, 56, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1158, 126, 'Actividad gastronómica en el salón principal', 12, 18, NULL, NULL, NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1159, 22, 'Participación en las competencias  de la Federación argentina de billares', 20, 8, 'los jugadores', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1160, 22, 'Participación en tornos de ajedrez, junto a Asoc. Tandilense de Ajedrez.', 20, 8, 'los jugadores.', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1161, 22, 'Seguir participando en torneos', 20, 8, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1162, 22, 'Participación en torneos de CASIN. Campeones argentinos.', 20, 8, NULL, NULL, NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1163, 228, 'Construcción de un centro de día para múltiples edades (en proyecto)', 7, 68, '0', '2007-07-12 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1164, 228, 'Dictado de cursos varios', 1, 11, '7', '1959-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1165, 228, 'Colectas varias. Asistencia al necesitado', 2, 68, '0', '1959-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1166, 228, 'A nivel Dirección (Capital Federal) la realización del festejo conmemorativo de los 90 años donde asistimos miembros de diversas escuelas a nivel mundial', 7, 11, NULL, '2007-10-30 00:00:00', '2007-10-30 00:00:00', 'se trato de un evento aniversario de la fundación de la Escuela', 'FINALIZADO');
INSERT INTO proyectos VALUES (1167, 149, 'Concurrencia a fiestas criollas de otras localidades organizadoras', 7, 6, '500', '1985-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1168, 149, 'Asesoramiento y publicaciones sobre temas históricos y tradicionales', 39, 6, '0', '1985-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1169, 149, 'Festejo del Día de la Tradición. Fiesta del Hombre de Campo', 7, 8, '500', '1985-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1170, 149, 'Viajes a caballo a distintas zonas: Sierra de la Tinta, Laguna de la Perfidia', 7, 6, NULL, '1986-01-01 00:00:00', '1987-01-01 00:00:00', NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1171, 238, 'Alquiler de local', 13, 31, '0', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1172, 238, 'Asesoramiento', 1, 23, '70', '1990-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1173, 238, 'Festejo de Aniversario y Fin de año', 7, 8, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1174, 246, 'Relevamiento de las mujeres agrarias del Partido de Tandil y se pienda finalizar a fines de 2008 cerrando con un congreso de mujeres', 39, 2, NULL, '2007-06-23 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1175, 246, 'Fedaradas argentinas: organización que integra Federación Agraria Argentina', 6, 2, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1176, 246, 'Formamos parte a través de la Comisión de Lucha contra Plagas Agrícolas de una idea de concientización de un proyecto de reciclado de bidones provenientes de la fumigación y convertirlos en materia prima para postes y alambrados', 5, 12, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1177, 47, 'escuela de tenis y entrenamiento', 7, 8, '70', '2007-10-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1178, 47, 'escuela náutica (proyecto)', 7, 8, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1179, 47, 'escuela náutica', 7, 8, NULL, '1980-01-01 00:00:00', '1983-01-01 00:00:00', 'costo de materiales, evolución del deporte. No se podía hacer en ese lugar físico', 'FINALIZADO');
INSERT INTO proyectos VALUES (1180, 260, 'Actividades en defensa de nuestras sierras', 9, 12, 'indefinido', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1181, 260, 'Actividades recreativas (oaseos a las sierras, caminatas, bicicleteadas)se realizan casi todos los sábados', 40, 1, '15 o 20 chicos y 2 responsables', '1997-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1182, 260, 'Actividades culturales (feria del libro, festivales de doma)', 40, 6, '12 o 20 chicos y 2 responsables', '1997-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1183, 260, 'Activs. Productivas (preparar la llegada del carnaval: trajes, canciones, intrumentos, etc.)', 23, 6, '50 personas', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1184, 260, 'Acts. Sociales( festejo de cumpleaños d elos miembros. Una vez al mes)', 12, 8, '30 o 40 personas', '1997-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1185, 260, 'Participación en actividades de repudio a la dictadura del ´76', 8, 19, 'indefinido', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1186, 260, 'Asado anual entre integrantes y colaboradores', 27, 8, '100 personas', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1187, 260, 'Actividades artísticas (entre 30 y 40 actuaciones por año)', 40, 6, '50 personas en carnaval. Entre 15 y 50 en otras', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1188, 260, 'Organización del carnaval. Forman parte de Asoc. Amigos del Carnaval de mi Tandil.', 40, 6, 'indefinido', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1189, 65, 'Escuela de pesca', 7, 5, '18', '1978-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1190, 65, 'Excursiones', 7, 8, '25', '1965-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1191, 65, 'Cenas quincenales', 12, 8, '25', '1959-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1192, 65, 'Bufett', 44, 70, 'variable', '1959-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1193, 65, 'Cancha de bochas', 42, 8, NULL, NULL, NULL, 'Es difícil mantener a los jugadores, "no se aquerencian en el club".', 'FINALIZADO');
INSERT INTO proyectos VALUES (1194, 135, 'Patrulla Rural. Se creo en convenio con la policia de la provincia para dar seguridad en el ambiente rural. El Estado pone personal, móviles y FUNTALA apoya economicamente con los insumos. Se diagraman en conjunto políticas de seguridad en el partido. En la historia de las patrullas rurales GOPAR es pionero en el país.', 5, 40, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1195, 135, 'Con zoonosis rurales de Azul s eha implementado un plan de control y erradicación de hidatidosis donde el ministerio de salud de la provincia brinda un profesional y las pastillas. FUNTALA brinda el soporte técnico en los campos.', 7, 1, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1196, 139, 'Fiesta del Inmigrante. 4 de septiembre', 7, 8, '0', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1197, 139, 'Entrega de diplomas a inmigrantes de todas las nacionalidades con mas de 50 años de residencia en el pais', 7, 6, '0', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1198, 139, 'Trajeron el banco de datos con 8 cpmputadoras. Entregaron 2000 certificados (para averiguar por sus ancestros)', 7, 6, '2000', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1200, 235, 'Futbol barrial', 7, 8, '40', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1201, 235, 'Cenas familiares', 7, 8, '50', '1953-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1202, 235, 'Participación en la Liga de Futbol y en el Campeonato Agrario', 7, 8, NULL, NULL, NULL, 'Por falta de dinero', 'FINALIZADO');
INSERT INTO proyectos VALUES (1203, 221, 'apoyo escolar', 7, 5, '25', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1204, 221, 'talleres de telar, pintura, tejido y porcelana fría', 7, 6, '30', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1205, 221, 'Jornada de lectura', 7, 5, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1207, 133, 'lograr que la sala de primeros auxilios sea de nivel municipal', 7, 1, 'comision directiva', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1208, 133, 'Biblioteca', 7, 5, NULL, '1960-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1209, 133, 'Baby fútbol', 42, 8, '60 chicos', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1210, 133, 'Gimnasia para adultos', 42, 8, '30 personas', '1996-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1211, 133, 'Karate', 42, 8, '15 chicos', '2008-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1212, 133, 'Folklore', 40, 8, '20 personas', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1213, 133, 'Escuela de ajedrez', 7, 8, NULL, '2003-01-01 00:00:00', '2004-01-01 00:00:00', 'no explicitó', 'FINALIZADO');
INSERT INTO proyectos VALUES (1214, 261, 'Talleres de capacitación de 2 o 3 años para instalar bibliotecas aulicas', 1, 5, '20 por taller', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1215, 261, 'Donaciones a escuelas', 2, 18, 'indefinido', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1217, 120, 'Proyecto de terminación del SUM', 46, 7, 'La Comisión y la comunidad', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1218, 120, 'Baile arabe', 7, 6, '30 chicos', '2008-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1219, 120, 'Construcción del espacio fisico', 46, 7, NULL, '1998-01-01 00:00:00', NULL, 'se finalizó la obra', 'FINALIZADO');
INSERT INTO proyectos VALUES (1220, 120, 'Ensanche de la Av. Actis. Creación de una plaza e iluminación', 46, 7, NULL, NULL, NULL, 'Se consiguió lo pedido', 'FINALIZADO');
INSERT INTO proyectos VALUES (1222, 129, 'CEAD- Centro de educación ambiental para docentes', 1, 12, 'nacional e internacional', '1997-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1223, 129, 'Maternal, sala de dos años', 7, 5, '18', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1224, 129, 'Jardin', 7, 5, '25', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1225, 129, 'Primaria  Basica', 7, 5, '26', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1226, 129, 'Secuandaria Basica', 7, 5, '26', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1227, 129, 'Polimodal', 7, 5, '20', '2008-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1228, 129, 'Muestras Abiertas a la comunidad', 21, 5, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1229, 202, 'Capacitación en producción de panificados para comercialización y autoconsumo. Abierto a la comunidad', 1, 56, '25', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1230, 202, 'Articulación con la escuela 32 en diferentes actividades', 12, 44, '55', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1231, 202, 'Actividades de prevencion con CAPS de Selvetti y Palermo', 5, 1, '50', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1232, 202, 'Proyecto recreativo', 5, 8, '50', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1233, 202, 'Taller de pintura en madera y tela abierto a la comunidad', 1, 6, '30', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1234, 202, 'Clases de yoga y gimnasia', 7, 1, '20', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1235, 202, 'Proyecto Gepetto con Casa de Contención', 5, 26, NULL, '2002-01-01 00:00:00', '2005-01-01 00:00:00', 'a pedido de los abuelos', 'FINALIZADO');
INSERT INTO proyectos VALUES (1236, 208, 'Torneos anuales', 7, 8, '80', '1995-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1237, 208, 'Programa de enseñanza y clases en centros comunitarios', 1, 5, '2000', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1238, 208, 'Entrevistas que tienen como objetivo seleccionar áreas para enseñar ajedrez', 1, 8, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1239, 4, 'Intercambio de estudiantes con otros paises (envio y recibo). Nivel internacional', 7, 5, NULL, '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1240, 4, 'Becas a estudiantes secundarios', 3, 5, NULL, '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1241, 4, 'Ayuda a instituciones sociales', 7, 1, NULL, '1996-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1242, 4, 'Banco ortopédico', 7, 1, NULL, '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1243, 4, 'Patrocinamiento del Rotaract', 1, 32, NULL, '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1244, 128, 'Danza y zapateo', 7, 6, '60', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1245, 128, 'Teatro', 7, 6, NULL, '2008-04-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1246, 128, 'Vaqillona con cuero. Aniversario', 27, 8, '200', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1247, 128, 'Peñas foljlóricas', 12, 8, '180', '1986-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1248, 128, 'Enseñanza de instrumentos', 7, 6, NULL, '1989-01-01 00:00:00', '1990-01-01 00:00:00', 'se fue la profesora', 'FINALIZADO');
INSERT INTO proyectos VALUES (1249, 128, 'Enseñanza de cestería', 7, 6, NULL, '1989-01-01 00:00:00', '1990-01-01 00:00:00', 'se fue la profesora', 'FINALIZADO');
INSERT INTO proyectos VALUES (1250, 46, 'Peñas (reuniones familiares) 4 al año', 7, 8, '400', '1957-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1251, 46, 'Encuentros de la segunda juventud (para tercera edad) anual', 7, 8, '400 (regional)', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1252, 46, 'Festival o encuentro folklórico de la sierra (anual)', 7, 8, '1.500', '1982-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1253, 46, 'Alquiler de la sede para espectaculos musicales y teatrales.', 26, 43, NULL, '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1254, 46, 'Escuela de folklore (5 años de duración)', 7, 6, '150', '1957-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1255, 46, 'Balets (infantil, juvenil, mayor y adultos)', 7, 6, '100', '1957-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1256, 46, 'cocina y servicio para cenas show', 12, 70, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1257, 67, 'Talleres (gimnasia, teatro, yoga, arabe, tango, tejido, inglés, francés, protocolo y ceremonial, turismo.', 7, 5, NULL, '2007-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1258, 67, 'Gimnasia para la tercera edad, taller literario, títeres, teatro para niños adultos y mayores', 7, 5, NULL, '2007-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1259, 67, 'Música, coro, itlaiano, computación, maunalidades, pintura', 7, 5, NULL, '2007-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1260, 67, 'Obras de títeres sobre derechos del niño. Principios cooperaivistas', 7, 5, '1500 en total', '2007-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1261, 67, 'Proyecto tandil cortos, en las esculas', 7, 6, '700 alumnos mas los docentes.', '2207-09-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1262, 67, 'Guitarras del Mundo', 12, 6, '28', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1263, 67, 'Teatro de genero con manzaneras de distintos barrios "resistiré" obra de teatro.', 7, 6, NULL, '2006-01-01 00:00:00', '2006-12-31 00:00:00', NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1264, 67, 'Charla sobre género para  explicar la igualdad de oportunidades de trato entre hombres y mujeres "eso es genero"', 7, 6, NULL, NULL, NULL, 'porque hay un tiempo predeterminado para hacerlo', 'FINALIZADO');
INSERT INTO proyectos VALUES (1265, 67, 'Curso de capacitación: "como hacer un proyecto"; y otro sobre política y dirigentes sociales', 7, 5, NULL, '2001-01-01 00:00:00', NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1266, 219, 'Taller de idioma italiano', 7, 5, '15', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1267, 219, 'Teatro', 7, 6, '20', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1268, 219, 'Escuela Primaria para adultos', 7, 5, '20', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1269, 219, 'Computación', 1, 56, NULL, NULL, NULL, 'porque terminaba', 'FINALIZADO');
INSERT INTO proyectos VALUES (1270, 219, 'Tejido', 1, 56, NULL, NULL, NULL, 'dejaron de asistir los señoras', 'FINALIZADO');
INSERT INTO proyectos VALUES (1271, 127, 'Proyecto de desratización', 7, 1, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1272, 127, 'Costura', 1, 56, '22', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1273, 127, 'minifabrica de panificados/pasteleria', 1, 4, '3', '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1274, 127, 'charlas con profesionales', 1, 1, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1275, 127, 'Pequeños exploradores, animales, plantas y cuerpo humano', 7, 5, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1276, 127, 'Biblioteca', 7, 5, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1277, 127, 'Proyecto de reciclado de basura', 5, 12, NULL, '2001-01-01 00:00:00', NULL, 'se agotaron. No se jugaron los que se tenian que jugar', 'FINALIZADO');
INSERT INTO proyectos VALUES (1278, 13, 'Reunirse en paritarias se discute salarios y condiciones de trabajo', 6, 2, NULL, '1947-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1279, 13, 'Reunirse en paritarias se discute salarios y condiciones de trabajo', 8, 2, NULL, '1947-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1280, 13, 'Gestionar turismo para empleados bancarios', 10, 2, NULL, '1947-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1281, 231, 'Educar al consumidor', 6, 5, NULL, '1988-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1282, 231, 'Atender las contingencias', 7, 1, NULL, '1988-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1283, 231, 'Asistencia a congresos', 1, 5, NULL, '1988-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1284, 231, 'Charlas especializadas', 1, 5, NULL, NULL, NULL, 'Porque ya a prendieron', 'FINALIZADO');
INSERT INTO proyectos VALUES (1285, 262, 'Capacitación nivel terciario', 7, 56, '700', '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1286, 262, 'Trabajo sociao-comunitario', 7, 44, '300', '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1287, 125, 'Entrega de alimentos', 7, 4, '47personas', '2007-01-22 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1288, 125, 'Taller de informática', 7, 5, '26 personas', '2007-06-11 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1289, 125, 'Panadería (madres aprenden y hacen para las fiestas)', 13, 56, '7 familias', '2007-11-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1290, 125, 'Apoyo escolar', 7, 5, '7 chicos', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1291, 125, 'Taller de Guitarra', 7, 6, '11 personas', '2007-06-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1292, 125, 'Preparación de ajuares', 7, 68, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1293, 125, 'Atención de emergencias', 7, 68, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1294, 125, 'Taller de plástica y dibujo', 7, 6, '17 personas', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1295, 125, 'entrega de comida  ya preparada a las familias', 7, 4, NULL, NULL, NULL, 'porque nos cansamos. Las madres no ayudaban.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1296, 236, 'Taller de tango', 7, 6, '10', '2007-08-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1297, 236, 'Taller de telar', 7, 6, '6', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1298, 236, 'Tejido crochet', 7, 6, '15', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1299, 236, 'Tejido a mano', 7, 6, '6', '2007-06-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1300, 236, 'yoga', 7, 8, '5', '2007-11-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1301, 236, 'Gimnasia aeróbica', 7, 8, '15', '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1302, 236, 'Gimnasia para adultos', 7, 8, '10', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1303, 236, 'Pintura artística', 7, 6, '6', '2007-11-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1304, 236, 'Biblioteca', 7, 6, NULL, '1978-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1305, 236, 'Talleres infantiles (dibujo, pintura y modelado)', 7, 8, '36 chicos', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1306, 236, 'computación', 7, 5, NULL, '2006-01-01 00:00:00', '2006-12-31 00:00:00', 'el año pasado vinieron de la Universidad a hacer pasantías y este año no vinieron.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1307, 189, 'Apoyo escolar', 7, 5, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1308, 189, 'Computación', 7, 56, '20', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1309, 189, 'Gimnasia', 7, 1, '10', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1310, 189, 'Teatro', 7, 6, '10', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1311, 189, 'Danzas Arabes', 7, 6, '40', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1312, 189, 'Pro Huerta', 1, 4, '80', '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1313, 189, 'Enfermeria', 7, 1, NULL, '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1314, 189, 'Servicio de fotocopias', 7, 70, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1315, 189, 'Yoga', 7, 1, '10', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1316, 189, 'Biblioteca', 7, 53, NULL, '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1317, 189, 'Miniturismo', 7, 8, '15 por año', '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1318, 189, 'Vacunación de Pami contra la gripe', 7, 1, NULL, '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1319, 189, 'Curso sobre violencia a la mujer golpeada', 1, 15, NULL, '2005-01-01 00:00:00', NULL, 'El CAPS no lo continuo', 'FINALIZADO');
INSERT INTO proyectos VALUES (1320, 189, 'Proyecto sobre prevención de violencia a las mujeres', 1, 15, NULL, '2005-01-01 00:00:00', NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1321, 189, 'Curso de memoria', 7, 1, NULL, NULL, NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1322, 189, 'Proyecto de la Universidad sobre la contaminación del agua', 29, 12, NULL, '2005-01-01 00:00:00', NULL, 'finalización de la investigación', 'FINALIZADO');
INSERT INTO proyectos VALUES (1323, 189, 'Clases de cocina', 1, 4, NULL, NULL, NULL, 'problemas de salud de la persona a cargo', 'FINALIZADO');
INSERT INTO proyectos VALUES (1324, 189, 'Trabajo para que se encauce el arroyo Actis', 9, 12, NULL, NULL, NULL, 'se logro el objetivo', 'FINALIZADO');
INSERT INTO proyectos VALUES (1325, 159, 'Regulación de la matrícula profesional', 6, 1, '60 farmacéuticos', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1326, 159, 'Campañas de prevención con consejos hacia la población (ej. Peligro de comprar medicamentos en comercios)', 1, 5, 'A toda la población', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1327, 159, 'Regulación y administración de los convenios entre obras sociales y farmacias', 17, 1, '60 farmacéuticos', '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1328, 263, 'Granja educativa', 1, 5, NULL, '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1329, 263, 'Taller de artesanias', 1, 6, NULL, '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1330, 263, 'Fábrica de dulces', 1, 2, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1331, 263, 'Taller de teatro', 7, 6, NULL, '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1332, 263, 'Huerta', 1, 4, NULL, '1988-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1333, 263, 'Apoyo escolar', 7, 5, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1334, 263, 'Taller de vida en la naturaleza', 7, 12, NULL, '2005-01-01 00:00:00', NULL, 'el profesor era voluntario y se le superpuso con otros horarios', 'FINALIZADO');
INSERT INTO proyectos VALUES (1335, 177, 'Centro de referencia para adoelscentes La Tribu', 7, 18, ' 40 -  55', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1336, 177, 'Pequeño Hogar Los Peques', 18, 65, '8', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1337, 177, 'Escuela Superior de psicología social', 7, 5, '50', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1338, 177, 'Formación de líderes comunitarios', 1, 56, '17', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1339, 177, 'Capacitación permanente en panificación', 1, 32, '15', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1340, 177, 'Campamentos educativos', 7, 8, '60-70', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1341, 177, 'camapamentos educativos anuales con 6 ó 7 escuales', 7, 8, NULL, '1999-01-01 00:00:00', '2003-12-30 00:00:00', 'por falta de recursos económicos', 'FINALIZADO');
INSERT INTO proyectos VALUES (1342, 166, 'Formación de grupos', 1, 2, NULL, '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1343, 166, 'capacitaciones', 1, 56, NULL, '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1344, 166, 'Suoervisión de los grupos conformados por barrio', 1, 2, '20', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1345, 166, 'Primer Encuentro Nacional de Microcrédito', 1, 56, NULL, '2003-11-01 00:00:00', '2003-11-01 00:00:00', NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1346, 33, 'Carrera "Auxiliar de enfermería"', 1, 5, '60', '1973-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1347, 33, 'Cursos de capacitación a la comunidad en general y a profesionales', 1, 5, '250', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1348, 33, 'Vacunación antigripal', 7, 1, '1500', '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1349, 33, 'asistencia brindada a través de la subcomisión de damas', 2, 1, NULL, '1942-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1350, 33, 'control social del Programa Remediar', 48, 1, NULL, '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1351, 33, 'Campaña antituberculosis', 7, 1, NULL, '1942-01-01 00:00:00', '1942-12-31 00:00:00', 'Porque así estaba estipulado, entanto se trataba de una campaña de prevención', 'FINALIZADO');
INSERT INTO proyectos VALUES (1352, 33, 'Inundaciones en Salta', 2, 9, NULL, NULL, NULL, 'Se brindó la asistencia necesaria hasta que la situación lo requirió', 'FINALIZADO');
INSERT INTO proyectos VALUES (1353, 7, 'Entrega de marcapasos a los socios que lo necesitan', 2, 1, NULL, '1980-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1354, 7, 'Prestar servicios de enfermería de Clínica Chacabuco a los socios', 7, 1, '1000', '1980-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1355, 7, 'Banco ortopédico: préstamo de sillas de ruda, camas, a los socios', 2, 1, NULL, '1980-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1356, 7, 'Armar 2 salas de lactantes para donar al Hospital de Niños', 49, 1, NULL, '2008-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1357, 7, 'Chocolate en el Asilo de Ancianos Todos los 25 de Mayo y 9 de Julio', 7, 8, NULL, '1980-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1358, 7, 'Donación de un ecocardiógrafo', 50, 1, NULL, '2005-01-01 00:00:00', '2005-01-02 00:00:00', 'Son donaciones específicas pero siempre estamos colaborando', 'FINALIZADO');
INSERT INTO proyectos VALUES (1359, 7, 'Donación de aparato de cardiología', 50, 1, NULL, '2004-01-01 00:00:00', '2004-01-02 00:00:00', 'Son donaciones específicas pero siempre estamos colaborando', 'FINALIZADO');
INSERT INTO proyectos VALUES (1360, 247, 'Talleres de lectura aquí en la biblioteca y en las escuelas.', 7, 5, '30', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1361, 247, 'Taller de encuadernación', 1, 5, '5', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1362, 247, 'apoyo escolar', 7, 5, '10', '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1363, 247, 'préstamo de libros y cds.', 7, 6, '70', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1364, 247, 'Talleres de Yoga, Telar', 7, 6, NULL, '2005-01-01 00:00:00', '2005-12-31 00:00:00', 'Por limitaciones de espacio físico. No tenemos espacio propio y el lugar que tenemos es muy chico.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1365, 241, 'Apoyo escolar', 7, 5, '30', '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1366, 241, 'Atención psicopedagógica', 7, 5, '10', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1367, 241, 'Atención terapéutica', 7, 1, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1368, 241, 'Recreación y deporte', 7, 8, '25', '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1369, 241, 'Teatro', 7, 6, '15', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1370, 241, 'Gimnasia para adultos', 7, 8, '10', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1371, 241, 'Taller de pastas', 1, 2, '4', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1372, 241, 'Ropería', 2, 17, '4', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1373, 241, 'Taller de costura', 1, 17, '2', '2002-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1374, 241, 'Charlas de trámites de documentación y previsión', 1, 32, '10', '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1375, 241, 'Colonia de vacaciones', 7, 8, '25', '2005-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1376, 241, 'Entrega de alimentos', 2, 4, '18', '2000-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1377, 241, 'Merendero', 2, 4, NULL, '2001-01-01 00:00:00', '2003-12-31 00:00:00', 'Fue en la crisis del 2001. Porque por suerte ya no era necesario.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1378, 264, 'Asesoramiento para matenimiento de la biblioteca', 1, 56, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1379, 264, 'Asesoramiento al personal que esta al frente', 1, 56, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1380, 264, 'inspección a las bibliotecas para controlar su buen funcionamiento y asesorar', 1, 56, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1381, 264, 'Participación en la maratón de lectura (fundación leer)', 7, 5, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1382, 264, 'Valija viajera: va por las escuelas una valija con libros', 7, 55, NULL, '2004-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1383, 264, 'Participación de jornadas de capacitación de CONABIP', 1, 56, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1384, 264, 'Gestión de subsidios y recursos para las bibliotecas populares', 31, 71, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1385, 109, 'Actividades de orientación y movilidad (con profesores e educación física)', 7, 10, NULL, '1976-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1386, 109, 'Clases de baile', 7, 18, NULL, '1976-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1388, 109, 'Taller Protegido (Cestería, tejido, cerámica)', 7, 56, NULL, '1976-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1389, 109, 'Coro', 7, 6, NULL, NULL, NULL, 'por falta de recursos financieros', 'FINALIZADO');
INSERT INTO proyectos VALUES (1390, 109, 'folklore', 7, 6, NULL, NULL, NULL, 'por falta de recursos financieros', 'FINALIZADO');
INSERT INTO proyectos VALUES (1391, 109, 'Teatro', 7, 6, NULL, NULL, NULL, 'por falta de recursos financieros', 'FINALIZADO');
INSERT INTO proyectos VALUES (1392, 106, 'Bailes', 7, 6, NULL, '1987-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1393, 106, 'Yoga. Les dan un porcentaje de lo que recaudan con el cobro de clases. A los jubilados les cobran menos.', 7, 8, NULL, '1992-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1394, 106, 'Tai-chi-chuan', 7, 8, NULL, '1995-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1395, 106, 'Folklore', 7, 6, NULL, '1983-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1396, 106, 'computación', 7, 56, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1397, 106, 'alquiles del espacio físico a Médicos del Manantial (homeópatas)', 13, 1, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1398, 146, 'Talleres de prevención antitabaco en escuelas públicas y privadas', 5, 1, NULL, '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1399, 146, 'Curso de prefeccionamiento para enfermería de quirófano', 1, 1, '20', '2007-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1400, 146, 'Capacitación profesional', 1, 1, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1401, 8, 'Ayuda al hospital (lo que soliciten: ropa blanca, aparatología en general)', 2, 1, '21', '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1402, 8, 'Administración de fondos donados por la comunidad para el arreglo de la sala de cardiología', 17, 1, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1403, 8, 'Organización de Eventos (Te, Desfiles, Zarzuelas)', 51, 1, NULL, '1967-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1404, 8, 'Administración de propiedad donada por D. Deguer', 17, 37, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1405, 8, 'Cobro de cuotas de socios', 17, 71, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1406, 8, 'Maternidad - Donación a ajuares en el día de la madre', 2, 17, NULL, '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1407, 8, 'Donación de ropa tejida - Materniad y pediatría', 2, 17, '10', '1999-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1408, 8, 'Recaudación de fondos en espectáculos, eventos', 51, 71, '21', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1409, 8, 'Rifas (con el Nro. Telefónico)', 51, 71, NULL, NULL, '1999-01-01 00:00:00', 'Desacuerdos varios, incluso con el Municipio', 'FINALIZADO');
INSERT INTO proyectos VALUES (1410, 1, 'Organización de competencias automovilísticas', 20, 8, '2615', '1939-05-13 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1411, 1, 'Proyecto de construcción del autódromo', 46, 8, '30', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1412, 1, 'Proyecto Escuela de educación y enseñanza vial', 44, 5, '30', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1413, 1, 'Mejoramiento en infraestructura para socios (pileta, salón, dependencias)', 46, 8, '20', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1414, 1, 'Alquiler de las dependencias para recaudar fondos', 51, 71, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1415, 1, 'Pavimentación del semipermanente. De la rotonda del Dique hasta la rtura 74', 29, 49, NULL, NULL, NULL, NULL, 'FINALIZADO');
INSERT INTO proyectos VALUES (1416, 148, 'Gimnasia', 42, 8, NULL, '2007-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1417, 148, 'Tae-bo', 42, 8, NULL, '2007-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1418, 148, 'Taller de pintura', 7, 6, NULL, '2007-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1419, 148, 'Danzas árabes', 7, 6, NULL, '2007-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1420, 148, 'folklore', 7, 6, '30 personas a partir de los 12 años', '2007-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1421, 148, 'taller de teatro', 7, 6, '12 chicos', '2007-04-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1422, 148, 'taller de rítmos', 7, 6, '15 chicos', '2008-03-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1423, 148, 'fútbol', 42, 8, NULL, '2008-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1424, 148, 'Merendero', 2, 4, '30 chicos', '2008-02-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1425, 148, 'taller de dibujo', 7, 6, NULL, '2007-01-01 00:00:00', '2007-12-31 00:00:00', 'este año no comenzó (era del municipio)', 'FINALIZADO');
INSERT INTO proyectos VALUES (1426, 148, 'Taller de salsa', 7, 6, NULL, '2007-02-01 00:00:00', '2007-12-31 00:00:00', 'la gene dejó de asistir. El profesosr no gustaba.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1427, 148, 'Repostería', 7, 56, NULL, '1997-01-01 00:00:00', '1997-12-31 00:00:00', 'la Comisión anterior era muy autritaria.', 'FINALIZADO');
INSERT INTO proyectos VALUES (1428, 268, 'Publicaciones de prevención de accidentes de transito.', 21, 18, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1429, 268, 'Educación vial a niños.', 5, 5, NULL, '2006-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1431, 160, 'Feria de personas que exponen sus trabajos', 40, 18, NULL, '2001-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1432, 160, 'Trabajos con cultura- arte.', 12, 6, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1433, 160, 'Trabajo en red con otras organizaciones', 13, 31, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1434, 160, 'Proyecto de Aduana', 13, 31, NULL, '2003-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1435, 160, 'Convenio con la Universidad para capacitar en alimentación', 1, 4, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1436, 160, 'Relevamiento de organizaciones de la sociedad civil de Tandil.', 46, 49, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1437, 269, 'Danzas árabes.', 7, 6, 'niñas del barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1438, 269, 'Fútbol para niños', 42, 8, 'niños del barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1439, 269, 'Clases de gimnasia', 42, 8, 'mujeres del barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1440, 269, 'clases de tango', 7, 6, 'vecinos', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1441, 269, 'Merendero', 7, 4, 'niños del barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1442, 269, 'Clases de carpintería', 7, 56, 'vecinos', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1443, 269, 'Apoyo escolar', 7, 5, 'niños del barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1444, 269, 'Banquito solidario', 1, 2, 'vecinos', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1445, 270, 'Se están gestionando la satisfaccion de necesidades. Ed de gas.', 6, 71, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1446, 270, 'Gestion de Semáforo, refugios de colectivos, arboleda', 6, 71, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1447, 270, 'Participan en mesa de gestion del CIC', 23, 26, 'todo el barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1448, 270, 'Organización de maratón "vuelta a la Movediza". Gratuito', 42, 8, 'todo el barrio', NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1449, 270, 'Puesto de artesanías', 23, 2, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1450, 270, 'Proyecto historia del barrio. Cuaderno que circula y todos aportan datos.', 39, 6, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1451, 270, 'Participación en reuniones del proyecto de viviendas de movediza, y del INTA', 23, 19, NULL, NULL, NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1452, 270, 'danzas árabes', 7, 6, NULL, NULL, NULL, '(no describe)', 'FINALIZADO');
INSERT INTO proyectos VALUES (1453, 34, 'Programa "Primero a la vista" (programa internacional, se trabaja para combatir cataratas y ceguera, recaudar fondos', 7, 1, '150-200', '1998-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1454, 34, 'Obras de recaudación de fondos (realizan desfiles de moda, té en el casino, gestiones, cena', 31, 7, NULL, '1958-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1455, 34, 'Pezquisamiento de la vista en los chicos de la escuela (preescolar-escuela primaria), sobre todo en jardines de barrios carenciados', 7, 1, NULL, '1993-01-01 00:00:00', NULL, NULL, 'ACTIVO');
INSERT INTO proyectos VALUES (1456, 34, 'Colaboraron con el Hogar San José en obras de infraestructura del mismo', 31, 7, NULL, '1958-01-01 00:00:00', '1999-12-31 00:00:00', 'es dificil conseguir fondos para financiamiento y consideran que la obra ya está concluida', 'FINALIZADO');


--
-- Data for Name: proyecto_x_organizacionrelacionada; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1070, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1071, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1072, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1073, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1076, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1081, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1082, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (15, 1083, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (16, 1075, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1075, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1194, 135);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1217, 120);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1218, 120);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (18, 1076, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (19, 1079, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (19, 1080, 10);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (20, 1089, 242);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1089, 242);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (22, 1091, 242);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (24, 1101, 130);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (29, 1102, 9);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1103, 9);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1104, 9);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1125, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1176, 246);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1112, 243);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1119, 259);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1121, 259);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1130, 254);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1132, 254);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1174, 246);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (46, 1117, 259);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (47, 1121, 259);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1122, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1123, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1124, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1126, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1127, 113);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (61, 1137, 254);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (61, 1205, 221);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (63, 1140, 64);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (67, 1147, 15);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (79, 1167, 149);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (79, 1170, 149);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (82, 1177, 47);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (85, 1180, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (86, 1185, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1186, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1188, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (88, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (90, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (92, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (93, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (95, 1187, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (96, 1188, 260);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (102, 1195, 135);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (103, 1197, 139);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (104, 1197, 139);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (106, 1200, 235);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (111, 1213, 133);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (112, 1214, 261);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1222, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1223, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1224, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1225, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1226, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1227, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1228, 129);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1229, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (61, 1230, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (58, 1231, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1232, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (125, 1233, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1234, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1235, 202);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1238, 208);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (129, 1239, 4);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (130, 1242, 4);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1252, 46);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (135, 1252, 46);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (136, 1252, 46);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (143, 1261, 67);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (144, 1261, 67);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (142, 1261, 67);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (145, 1266, 219);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1274, 127);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (149, 1275, 127);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (148, 1275, 127);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (151, 1278, 13);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (151, 1279, 13);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (152, 1280, 13);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1285, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (160, 1285, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (161, 1285, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (162, 1285, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (88, 1286, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (77, 1286, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (163, 1286, 262);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (141, 1287, 125);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (164, 1287, 125);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1288, 125);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1288, 125);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1291, 125);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1296, 236);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1305, 236);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1306, 236);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1307, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1308, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1309, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1310, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1311, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1312, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (170, 1312, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1313, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1314, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1315, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (171, 1316, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1317, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1318, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (58, 1319, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1320, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1321, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1322, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1323, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1324, 189);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (173, 1327, 159);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (175, 1328, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1329, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1330, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1331, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1332, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1333, 263);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (91, 1335, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (178, 1335, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (180, 1335, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (181, 1335, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (91, 1336, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (182, 1336, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (183, 1336, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (52, 1337, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (184, 1337, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (91, 1338, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (185, 1338, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (98, 1339, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (181, 1340, 177);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1343, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (16, 1343, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (95, 1344, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (186, 1344, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (187, 1345, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1345, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (188, 1345, 166);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (102, 1346, 33);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (190, 1346, 33);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (55, 1348, 33);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (102, 1350, 33);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (191, 1356, 7);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (192, 1357, 7);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (138, 1358, 7);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (138, 1359, 7);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (61, 1360, 247);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (193, 1364, 247);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (34, 1365, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (21, 1365, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (194, 1366, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (34, 1368, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (195, 1369, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (34, 1370, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (196, 1371, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (197, 1374, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (141, 1376, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (47, 1376, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (46, 1377, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (52, 1377, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (198, 1377, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (141, 1377, 241);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1378, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1379, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1380, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1381, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (181, 1381, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (201, 1381, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (181, 1382, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1383, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (202, 1383, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (94, 1384, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (202, 1384, 264);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (90, 1385, 109);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (181, 1398, 146);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (205, 1400, 146);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (17, 1402, 8);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (206, 1403, 8);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (140, 1404, 8);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (207, 1407, 8);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1416, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1421, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1422, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1423, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1424, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1425, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (87, 1426, 148);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1435, 160);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (42, 1436, 160);
INSERT INTO proyecto_x_organizacionrelacionada VALUES (30, 1451, 270);


--
-- Data for Name: quienes_efectuan_demandas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO quienes_efectuan_demandas VALUES (1, 'Destinatarios o familiares de los mismos');
INSERT INTO quienes_efectuan_demandas VALUES (2, 'Vecinos de la organización');
INSERT INTO quienes_efectuan_demandas VALUES (3, ' Agentes institucionales');
INSERT INTO quienes_efectuan_demandas VALUES (4, 'Otros');
INSERT INTO quienes_efectuan_demandas VALUES (5, 'Socios');
INSERT INTO quienes_efectuan_demandas VALUES (6, 'Empresas');
INSERT INTO quienes_efectuan_demandas VALUES (7, 'Comunidad en General');
INSERT INTO quienes_efectuan_demandas VALUES (8, 'Afiliados');
INSERT INTO quienes_efectuan_demandas VALUES (9, 'Voluntarios de la misma institución');
INSERT INTO quienes_efectuan_demandas VALUES (10, 'Alumnos de diferentes escuelas');
INSERT INTO quienes_efectuan_demandas VALUES (11, 'Personas que elaboran proyectos');
INSERT INTO quienes_efectuan_demandas VALUES (12, 'Personas carenciadas');
INSERT INTO quienes_efectuan_demandas VALUES (13, 'Personas ajenas a la organización');
INSERT INTO quienes_efectuan_demandas VALUES (14, 'Instituciones educativas');
INSERT INTO quienes_efectuan_demandas VALUES (16, 'Personas necesitadas vinculadas a la organización');
INSERT INTO quienes_efectuan_demandas VALUES (17, 'Adultos mayores');
INSERT INTO quienes_efectuan_demandas VALUES (18, 'Madres');
INSERT INTO quienes_efectuan_demandas VALUES (19, 'mariculados');
INSERT INTO quienes_efectuan_demandas VALUES (20, 'Médicos / Pacientes');


--
-- Data for Name: quienesefecdem_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO quienesefecdem_x_organizacion VALUES (9, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (10, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (15, 8);
INSERT INTO quienesefecdem_x_organizacion VALUES (47, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (64, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (64, 11);
INSERT INTO quienesefecdem_x_organizacion VALUES (65, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (101, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (101, 14);
INSERT INTO quienesefecdem_x_organizacion VALUES (113, 17);
INSERT INTO quienesefecdem_x_organizacion VALUES (133, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (139, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (149, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (218, 16);
INSERT INTO quienesefecdem_x_organizacion VALUES (228, 7);
INSERT INTO quienesefecdem_x_organizacion VALUES (228, 12);
INSERT INTO quienesefecdem_x_organizacion VALUES (235, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (238, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (242, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (242, 7);
INSERT INTO quienesefecdem_x_organizacion VALUES (242, 12);
INSERT INTO quienesefecdem_x_organizacion VALUES (243, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (246, 8);
INSERT INTO quienesefecdem_x_organizacion VALUES (250, 16);
INSERT INTO quienesefecdem_x_organizacion VALUES (254, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (258, 14);
INSERT INTO quienesefecdem_x_organizacion VALUES (259, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (260, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (260, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (260, 6);
INSERT INTO quienesefecdem_x_organizacion VALUES (260, 7);
INSERT INTO quienesefecdem_x_organizacion VALUES (261, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (129, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (129, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (202, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (221, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (208, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (4, 7);
INSERT INTO quienesefecdem_x_organizacion VALUES (128, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (46, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (67, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (219, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (127, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (13, 8);
INSERT INTO quienesefecdem_x_organizacion VALUES (231, 7);
INSERT INTO quienesefecdem_x_organizacion VALUES (262, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (125, 18);
INSERT INTO quienesefecdem_x_organizacion VALUES (236, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (189, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (159, 19);
INSERT INTO quienesefecdem_x_organizacion VALUES (263, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (263, 14);
INSERT INTO quienesefecdem_x_organizacion VALUES (263, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (177, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (166, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (33, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (33, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (33, 14);
INSERT INTO quienesefecdem_x_organizacion VALUES (7, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (247, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (241, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (264, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (109, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (106, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (106, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (146, 20);
INSERT INTO quienesefecdem_x_organizacion VALUES (8, 3);
INSERT INTO quienesefecdem_x_organizacion VALUES (1, 5);
INSERT INTO quienesefecdem_x_organizacion VALUES (1, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (148, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (268, 1);
INSERT INTO quienesefecdem_x_organizacion VALUES (269, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (270, 2);
INSERT INTO quienesefecdem_x_organizacion VALUES (34, 3);


--
-- Data for Name: recursosfinancieros; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancieros VALUES (9, 'SI', 60, 40, 0);
INSERT INTO recursosfinancieros VALUES (10, 'SI', 20, 0, 80);
INSERT INTO recursosfinancieros VALUES (15, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (22, 'SI', 90, 10, 0);
INSERT INTO recursosfinancieros VALUES (47, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (64, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (65, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (101, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (113, 'SI', 1, 0, 99);
INSERT INTO recursosfinancieros VALUES (120, 'SI', 90, 10, 0);
INSERT INTO recursosfinancieros VALUES (126, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (130, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (133, 'SI', 90, 10, 0);
INSERT INTO recursosfinancieros VALUES (135, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (139, 'NO', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (149, 'NO', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (218, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (228, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (235, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (238, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (242, 'SI', 20, 0, 80);
INSERT INTO recursosfinancieros VALUES (243, 'SI', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (246, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (250, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (254, 'SI', 40, 60, 0);
INSERT INTO recursosfinancieros VALUES (258, 'SI', 42, 58, 0);
INSERT INTO recursosfinancieros VALUES (259, 'SI', 60, 0, 40);
INSERT INTO recursosfinancieros VALUES (260, 'SI', 99, 0, 1);
INSERT INTO recursosfinancieros VALUES (261, 'SI', 0, 0, 100);
INSERT INTO recursosfinancieros VALUES (129, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (221, 'SI', 11, 89, 0);
INSERT INTO recursosfinancieros VALUES (208, 'SI', 39, 41, 20);
INSERT INTO recursosfinancieros VALUES (4, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (202, NULL, 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (128, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (46, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (67, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (219, 'SI', 70, 30, 0);
INSERT INTO recursosfinancieros VALUES (127, 'SI', 20, 80, 0);
INSERT INTO recursosfinancieros VALUES (13, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (231, 'NO', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (262, 'SI', 90, 10, 0);
INSERT INTO recursosfinancieros VALUES (125, 'SI', 80, 10, 10);
INSERT INTO recursosfinancieros VALUES (236, 'SI', 10, 90, 0);
INSERT INTO recursosfinancieros VALUES (189, 'SI', 20, 80, 0);
INSERT INTO recursosfinancieros VALUES (159, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (263, 'SI', 46, 54, 0);
INSERT INTO recursosfinancieros VALUES (177, 'SI', 20, 70, 10);
INSERT INTO recursosfinancieros VALUES (166, 'SI', 0, 100, 0);
INSERT INTO recursosfinancieros VALUES (33, 'SI', 50, 40, 10);
INSERT INTO recursosfinancieros VALUES (7, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (247, 'SI', 20, 80, 0);
INSERT INTO recursosfinancieros VALUES (264, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (109, 'SI', 20, 80, 0);
INSERT INTO recursosfinancieros VALUES (106, 'SI', 40, 40, 20);
INSERT INTO recursosfinancieros VALUES (146, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (8, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (1, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (265, 'NO', 0, 0, 100);
INSERT INTO recursosfinancieros VALUES (148, 'SI', 80, 20, 0);
INSERT INTO recursosfinancieros VALUES (268, 'NO', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (160, 'SI', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (269, 'SI', 100, 0, 0);
INSERT INTO recursosfinancieros VALUES (270, 'NO', 0, 0, 0);
INSERT INTO recursosfinancieros VALUES (34, 'SI', 100, 0, 0);


--
-- Data for Name: recursosfinancieroscausanorecext; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancieroscausanorecext VALUES (1, 'Desconocimiento');
INSERT INTO recursosfinancieroscausanorecext VALUES (2, 'Inaccessibilidad');
INSERT INTO recursosfinancieroscausanorecext VALUES (3, 'Sin Necesidad');
INSERT INTO recursosfinancieroscausanorecext VALUES (4, 'Decisión de no Vicularse');
INSERT INTO recursosfinancieroscausanorecext VALUES (5, 'Exigencias no Cumplidas');
INSERT INTO recursosfinancieroscausanorecext VALUES (6, 'Organizar en sí');
INSERT INTO recursosfinancieroscausanorecext VALUES (7, 'Negación de Subsidios');
INSERT INTO recursosfinancieroscausanorecext VALUES (8, 'No les ofrecieron');
INSERT INTO recursosfinancieroscausanorecext VALUES (9, 'No contesta');
INSERT INTO recursosfinancieroscausanorecext VALUES (10, 'La ley lo prohibe');
INSERT INTO recursosfinancieroscausanorecext VALUES (11, 'Por no tener Personería Jurídica');
INSERT INTO recursosfinancieroscausanorecext VALUES (12, 'No hay posibilidad');
INSERT INTO recursosfinancieroscausanorecext VALUES (13, 'Negación de Recursos');
INSERT INTO recursosfinancieroscausanorecext VALUES (14, 'por naturaleza de la organización');
INSERT INTO recursosfinancieroscausanorecext VALUES (15, 'Condiciona el pedirlos');
INSERT INTO recursosfinancieroscausanorecext VALUES (16, 'No existen para estas organizaciones');
INSERT INTO recursosfinancieroscausanorecext VALUES (17, 'Indiferencia y despreocupación del municipio');
INSERT INTO recursosfinancieroscausanorecext VALUES (18, 'El estatuto lo prohibe');
INSERT INTO recursosfinancieroscausanorecext VALUES (19, 'Falta de tiempo');
INSERT INTO recursosfinancieroscausanorecext VALUES (20, 'Ninguna');
INSERT INTO recursosfinancieroscausanorecext VALUES (21, 'No se le otorgan');
INSERT INTO recursosfinancieroscausanorecext VALUES (22, 'Apoyarse en la fe');
INSERT INTO recursosfinancieroscausanorecext VALUES (23, 'Estaban en inactividad');
INSERT INTO recursosfinancieroscausanorecext VALUES (24, 'Insensibilidad de las autoridades');
INSERT INTO recursosfinancieroscausanorecext VALUES (25, 'Puntualmente para actividades específicas');
INSERT INTO recursosfinancieroscausanorecext VALUES (26, 'Las autoridades no se preocupan');
INSERT INTO recursosfinancieroscausanorecext VALUES (27, 'No interesa la temática a quienes otorgan subsidios');
INSERT INTO recursosfinancieroscausanorecext VALUES (28, 'Nunca solicitaron');
INSERT INTO recursosfinancieroscausanorecext VALUES (29, 'Sin respuesta positiva');
INSERT INTO recursosfinancieroscausanorecext VALUES (30, 'Se priorizan otras areas (alimentacion)');
INSERT INTO recursosfinancieroscausanorecext VALUES (31, 'No hay interés político');
INSERT INTO recursosfinancieroscausanorecext VALUES (32, 'no se pide, no surge espontaneamente');
INSERT INTO recursosfinancieroscausanorecext VALUES (33, NULL);
INSERT INTO recursosfinancieroscausanorecext VALUES (34, 'No lo ha intentado por falta de tiempo');
INSERT INTO recursosfinancieroscausanorecext VALUES (35, 'se estan reorganizando');


--
-- Data for Name: recursofinancieronorecextcausas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursofinancieronorecextcausas VALUES (9, 9);
INSERT INTO recursofinancieronorecextcausas VALUES (15, 1);
INSERT INTO recursofinancieronorecextcausas VALUES (15, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (22, 32);
INSERT INTO recursofinancieronorecextcausas VALUES (47, 2);
INSERT INTO recursofinancieronorecextcausas VALUES (64, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (65, 34);
INSERT INTO recursofinancieronorecextcausas VALUES (101, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (113, 9);
INSERT INTO recursofinancieronorecextcausas VALUES (126, 2);
INSERT INTO recursofinancieronorecextcausas VALUES (130, 9);
INSERT INTO recursofinancieronorecextcausas VALUES (135, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (139, 11);
INSERT INTO recursofinancieronorecextcausas VALUES (149, 2);
INSERT INTO recursofinancieronorecextcausas VALUES (228, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (235, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (238, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (246, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (250, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (254, 9);
INSERT INTO recursofinancieronorecextcausas VALUES (258, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (258, 31);
INSERT INTO recursofinancieronorecextcausas VALUES (129, 13);
INSERT INTO recursofinancieronorecextcausas VALUES (4, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (128, 21);
INSERT INTO recursofinancieronorecextcausas VALUES (46, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (231, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (159, 14);
INSERT INTO recursofinancieronorecextcausas VALUES (7, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (146, 1);
INSERT INTO recursofinancieronorecextcausas VALUES (8, 4);
INSERT INTO recursofinancieronorecextcausas VALUES (1, 2);
INSERT INTO recursofinancieronorecextcausas VALUES (265, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (268, 3);
INSERT INTO recursofinancieronorecextcausas VALUES (269, 5);
INSERT INTO recursofinancieronorecextcausas VALUES (270, 35);


--
-- Data for Name: recursosfinacierosestadotipos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinacierosestadotipos VALUES (1, 'Becas del Estado Nacional');
INSERT INTO recursosfinacierosestadotipos VALUES (2, 'Subsidios del Estado Nacional');
INSERT INTO recursosfinacierosestadotipos VALUES (3, 'Becas del Estado Provincial');
INSERT INTO recursosfinacierosestadotipos VALUES (4, 'Subsidios del Estado Provincial');
INSERT INTO recursosfinacierosestadotipos VALUES (5, 'Becas del Estado Municipal');
INSERT INTO recursosfinacierosestadotipos VALUES (6, 'Subsidios del Estado Municipal');


--
-- Data for Name: recursosfinacierospresup; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinacierospresup VALUES (10, 2007, 9000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 36000.00);
INSERT INTO recursosfinacierospresup VALUES (15, 0, 42000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (47, 0, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (64, 0, 24000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (65, 0, 30000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (101, 2007, 360000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (113, 0, 100.00, 0.00, 2500.00, NULL, 0.00, 100.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (130, 2007, 12000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (133, 0, 3500.00, 0.00, 0.00, 360.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (135, 0, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (235, 0, 6000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (242, 0, 0.00, 0.00, 0.00, 0.00, 12000.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (250, 2008, 3000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (254, 0, 250.00, NULL, 1141.80, 830.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (258, 2007, 1800.00, 0.00, 0.00, 2500.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (259, 2007, 6000.00, 0.00, 0.00, 0.00, 0.00, 4800.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (129, 0, 90000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (221, 2007, 2160.00, 0.00, 13200.00, 3600.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (208, 2007, 1920.00, 0.00, NULL, 2000.00, 0.00, 1000.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (128, 0, 7200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (46, 0, 7200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (127, 0, 0.00, 0.00, 25.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (13, 0, 16000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (262, 0, 1500000.00, 150000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (125, 0, 19200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (236, 2007, 1200.00, NULL, 13704.00, 7800.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (263, 2007, 70000.00, 0.00, 60000.00, 24000.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (247, 0, 840.00, 0.00, 0.00, 4800.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (264, 2008, 1200.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (109, 0, 0.00, 0.00, 30000.00, 36000.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (106, 0, 9600.00, 0.00, 0.00, 0.00, 0.00, 2880.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (146, 2007, 240000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (8, 2006, 72000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (1, 2006, 189000.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (148, 0, 800.00, 0.00, 0.00, 200.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (160, 0, 0.00, NULL, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (269, 2007, 1680.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);
INSERT INTO recursosfinacierospresup VALUES (34, 2007, 9800.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00, 0.00);


--
-- Data for Name: recursosfinancierosautogformas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosautogformas VALUES (1, 'Arancel de Servicios');
INSERT INTO recursosfinancierosautogformas VALUES (2, 'Cuotas Socios');
INSERT INTO recursosfinancierosautogformas VALUES (3, 'Ingresos por Rifas');
INSERT INTO recursosfinancierosautogformas VALUES (4, 'Alquiler de Salón');
INSERT INTO recursosfinancierosautogformas VALUES (5, 'Bingos/Loterías');
INSERT INTO recursosfinancierosautogformas VALUES (6, 'Intereses Bancarios');
INSERT INTO recursosfinancierosautogformas VALUES (7, 'Cuota Gremial');
INSERT INTO recursosfinancierosautogformas VALUES (8, 'Donaciones');
INSERT INTO recursosfinancierosautogformas VALUES (9, 'Cuota padres');
INSERT INTO recursosfinancierosautogformas VALUES (10, 'Organización de eventos (deportivos, sociales, etc)');
INSERT INTO recursosfinancierosautogformas VALUES (11, 'Feria Americana');
INSERT INTO recursosfinancierosautogformas VALUES (12, 'Concesiones');
INSERT INTO recursosfinancierosautogformas VALUES (14, 'Venta de Publicación');
INSERT INTO recursosfinancierosautogformas VALUES (15, 'Aporte Obra Social');
INSERT INTO recursosfinancierosautogformas VALUES (16, 'Costo Matrícula');
INSERT INTO recursosfinancierosautogformas VALUES (17, 'Aporte Previsional');
INSERT INTO recursosfinancierosautogformas VALUES (18, 'Ofrenda Dominical');
INSERT INTO recursosfinancierosautogformas VALUES (19, 'Aportes Patronales');
INSERT INTO recursosfinancierosautogformas VALUES (20, 'Venta de Libros');
INSERT INTO recursosfinancierosautogformas VALUES (21, 'Cobro de canon por explotación de cantina del club');
INSERT INTO recursosfinancierosautogformas VALUES (22, 'Fiestas - Internet');
INSERT INTO recursosfinancierosautogformas VALUES (23, 'Actividades benéficas');
INSERT INTO recursosfinancierosautogformas VALUES (24, 'Comisiones');
INSERT INTO recursosfinancierosautogformas VALUES (25, 'Desfiles');
INSERT INTO recursosfinancierosautogformas VALUES (26, 'Cursos');
INSERT INTO recursosfinancierosautogformas VALUES (27, 'Serv. Médico');
INSERT INTO recursosfinancierosautogformas VALUES (28, 'Cuota Voluntaria');
INSERT INTO recursosfinancierosautogformas VALUES (29, 'Siembra de Trigo');
INSERT INTO recursosfinancierosautogformas VALUES (30, 'Porcentaje de derecho administrativo');
INSERT INTO recursosfinancierosautogformas VALUES (31, 'Autogestión de los Proyectos');
INSERT INTO recursosfinancierosautogformas VALUES (32, 'Alquiler de casas y campos');
INSERT INTO recursosfinancierosautogformas VALUES (33, 'Inscripciones (anual)');
INSERT INTO recursosfinancierosautogformas VALUES (34, 'Comisión de corsos');
INSERT INTO recursosfinancierosautogformas VALUES (35, 'Bailes');
INSERT INTO recursosfinancierosautogformas VALUES (36, 'Comidas');
INSERT INTO recursosfinancierosautogformas VALUES (37, 'Cantina');
INSERT INTO recursosfinancierosautogformas VALUES (38, 'Alquiler predio para colonia de vacaciones');
INSERT INTO recursosfinancierosautogformas VALUES (39, 'Baratillos');
INSERT INTO recursosfinancierosautogformas VALUES (40, 'Torneos');
INSERT INTO recursosfinancierosautogformas VALUES (41, 'Colecta Voluntaria');
INSERT INTO recursosfinancierosautogformas VALUES (42, 'Chocolateadas');
INSERT INTO recursosfinancierosautogformas VALUES (43, 'Créditos / Intereses de Créditos');
INSERT INTO recursosfinancierosautogformas VALUES (44, 'Eventos');
INSERT INTO recursosfinancierosautogformas VALUES (45, 'Venta de Alimentos');
INSERT INTO recursosfinancierosautogformas VALUES (46, 'Alquiler Cancha de Fútbol');
INSERT INTO recursosfinancierosautogformas VALUES (47, 'Sin especificar');
INSERT INTO recursosfinancierosautogformas VALUES (48, 'Colaboración fieles');
INSERT INTO recursosfinancierosautogformas VALUES (49, 'Publicidad');
INSERT INTO recursosfinancierosautogformas VALUES (50, 'Inscripción de torneos');
INSERT INTO recursosfinancierosautogformas VALUES (51, 'Filantropía');
INSERT INTO recursosfinancierosautogformas VALUES (52, 'Cobro por el uso de la compu');
INSERT INTO recursosfinancierosautogformas VALUES (53, 'Funcionamiento de un Bar');
INSERT INTO recursosfinancierosautogformas VALUES (54, 'Festivales');


--
-- Data for Name: recursosfinancierosautogfines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosautogfines VALUES (9, 1);
INSERT INTO recursosfinancierosautogfines VALUES (9, 2);
INSERT INTO recursosfinancierosautogfines VALUES (9, 31);
INSERT INTO recursosfinancierosautogfines VALUES (10, 2);
INSERT INTO recursosfinancierosautogfines VALUES (15, 7);
INSERT INTO recursosfinancierosautogfines VALUES (22, 1);
INSERT INTO recursosfinancierosautogfines VALUES (22, 2);
INSERT INTO recursosfinancierosautogfines VALUES (22, 21);
INSERT INTO recursosfinancierosautogfines VALUES (47, 2);
INSERT INTO recursosfinancierosautogfines VALUES (64, 2);
INSERT INTO recursosfinancierosautogfines VALUES (64, 23);
INSERT INTO recursosfinancierosautogfines VALUES (65, 2);
INSERT INTO recursosfinancierosautogfines VALUES (65, 26);
INSERT INTO recursosfinancierosautogfines VALUES (101, 2);
INSERT INTO recursosfinancierosautogfines VALUES (101, 49);
INSERT INTO recursosfinancierosautogfines VALUES (113, 2);
INSERT INTO recursosfinancierosautogfines VALUES (120, 2);
INSERT INTO recursosfinancierosautogfines VALUES (120, 4);
INSERT INTO recursosfinancierosautogfines VALUES (120, 5);
INSERT INTO recursosfinancierosautogfines VALUES (120, 36);
INSERT INTO recursosfinancierosautogfines VALUES (126, 2);
INSERT INTO recursosfinancierosautogfines VALUES (126, 4);
INSERT INTO recursosfinancierosautogfines VALUES (126, 44);
INSERT INTO recursosfinancierosautogfines VALUES (126, 46);
INSERT INTO recursosfinancierosautogfines VALUES (126, 49);
INSERT INTO recursosfinancierosautogfines VALUES (130, 2);
INSERT INTO recursosfinancierosautogfines VALUES (130, 4);
INSERT INTO recursosfinancierosautogfines VALUES (130, 10);
INSERT INTO recursosfinancierosautogfines VALUES (133, 1);
INSERT INTO recursosfinancierosautogfines VALUES (133, 2);
INSERT INTO recursosfinancierosautogfines VALUES (133, 4);
INSERT INTO recursosfinancierosautogfines VALUES (135, 1);
INSERT INTO recursosfinancierosautogfines VALUES (218, 2);
INSERT INTO recursosfinancierosautogfines VALUES (218, 3);
INSERT INTO recursosfinancierosautogfines VALUES (218, 5);
INSERT INTO recursosfinancierosautogfines VALUES (218, 49);
INSERT INTO recursosfinancierosautogfines VALUES (228, 2);
INSERT INTO recursosfinancierosautogfines VALUES (228, 8);
INSERT INTO recursosfinancierosautogfines VALUES (235, 37);
INSERT INTO recursosfinancierosautogfines VALUES (235, 44);
INSERT INTO recursosfinancierosautogfines VALUES (238, 4);
INSERT INTO recursosfinancierosautogfines VALUES (242, 8);
INSERT INTO recursosfinancierosautogfines VALUES (242, 41);
INSERT INTO recursosfinancierosautogfines VALUES (243, 11);
INSERT INTO recursosfinancierosautogfines VALUES (243, 41);
INSERT INTO recursosfinancierosautogfines VALUES (246, 15);
INSERT INTO recursosfinancierosautogfines VALUES (250, 48);
INSERT INTO recursosfinancierosautogfines VALUES (254, 1);
INSERT INTO recursosfinancierosautogfines VALUES (254, 2);
INSERT INTO recursosfinancierosautogfines VALUES (258, 2);
INSERT INTO recursosfinancierosautogfines VALUES (258, 3);
INSERT INTO recursosfinancierosautogfines VALUES (258, 54);
INSERT INTO recursosfinancierosautogfines VALUES (259, 2);
INSERT INTO recursosfinancierosautogfines VALUES (259, 8);
INSERT INTO recursosfinancierosautogfines VALUES (259, 44);
INSERT INTO recursosfinancierosautogfines VALUES (260, 1);
INSERT INTO recursosfinancierosautogfines VALUES (260, 8);
INSERT INTO recursosfinancierosautogfines VALUES (129, 2);
INSERT INTO recursosfinancierosautogfines VALUES (129, 39);
INSERT INTO recursosfinancierosautogfines VALUES (129, 36);
INSERT INTO recursosfinancierosautogfines VALUES (221, 2);
INSERT INTO recursosfinancierosautogfines VALUES (208, 50);
INSERT INTO recursosfinancierosautogfines VALUES (4, 2);
INSERT INTO recursosfinancierosautogfines VALUES (4, 36);
INSERT INTO recursosfinancierosautogfines VALUES (128, 1);
INSERT INTO recursosfinancierosautogfines VALUES (128, 3);
INSERT INTO recursosfinancierosautogfines VALUES (128, 5);
INSERT INTO recursosfinancierosautogfines VALUES (46, 2);
INSERT INTO recursosfinancierosautogfines VALUES (46, 4);
INSERT INTO recursosfinancierosautogfines VALUES (46, 26);
INSERT INTO recursosfinancierosautogfines VALUES (46, 54);
INSERT INTO recursosfinancierosautogfines VALUES (67, 1);
INSERT INTO recursosfinancierosautogfines VALUES (67, 2);
INSERT INTO recursosfinancierosautogfines VALUES (67, 4);
INSERT INTO recursosfinancierosautogfines VALUES (67, 44);
INSERT INTO recursosfinancierosautogfines VALUES (219, 2);
INSERT INTO recursosfinancierosautogfines VALUES (127, 54);
INSERT INTO recursosfinancierosautogfines VALUES (13, 7);
INSERT INTO recursosfinancierosautogfines VALUES (262, 1);
INSERT INTO recursosfinancierosautogfines VALUES (125, 8);
INSERT INTO recursosfinancierosautogfines VALUES (236, 2);
INSERT INTO recursosfinancierosautogfines VALUES (236, 4);
INSERT INTO recursosfinancierosautogfines VALUES (189, 4);
INSERT INTO recursosfinancierosautogfines VALUES (189, 2);
INSERT INTO recursosfinancierosautogfines VALUES (189, 23);
INSERT INTO recursosfinancierosautogfines VALUES (189, 5);
INSERT INTO recursosfinancierosautogfines VALUES (159, 2);
INSERT INTO recursosfinancierosautogfines VALUES (263, 2);
INSERT INTO recursosfinancierosautogfines VALUES (263, 45);
INSERT INTO recursosfinancierosautogfines VALUES (263, 1);
INSERT INTO recursosfinancierosautogfines VALUES (177, 1);
INSERT INTO recursosfinancierosautogfines VALUES (33, 1);
INSERT INTO recursosfinancierosautogfines VALUES (33, 2);
INSERT INTO recursosfinancierosautogfines VALUES (33, 44);
INSERT INTO recursosfinancierosautogfines VALUES (7, 2);
INSERT INTO recursosfinancierosautogfines VALUES (7, 4);
INSERT INTO recursosfinancierosautogfines VALUES (7, 1);
INSERT INTO recursosfinancierosautogfines VALUES (247, 2);
INSERT INTO recursosfinancierosautogfines VALUES (264, 2);
INSERT INTO recursosfinancierosautogfines VALUES (109, 2);
INSERT INTO recursosfinancierosautogfines VALUES (109, 31);
INSERT INTO recursosfinancierosautogfines VALUES (106, 1);
INSERT INTO recursosfinancierosautogfines VALUES (106, 2);
INSERT INTO recursosfinancierosautogfines VALUES (106, 4);
INSERT INTO recursosfinancierosautogfines VALUES (146, 2);
INSERT INTO recursosfinancierosautogfines VALUES (146, 30);
INSERT INTO recursosfinancierosautogfines VALUES (8, 2);
INSERT INTO recursosfinancierosautogfines VALUES (8, 23);
INSERT INTO recursosfinancierosautogfines VALUES (8, 32);
INSERT INTO recursosfinancierosautogfines VALUES (1, 2);
INSERT INTO recursosfinancierosautogfines VALUES (1, 4);
INSERT INTO recursosfinancierosautogfines VALUES (1, 10);
INSERT INTO recursosfinancierosautogfines VALUES (265, 8);
INSERT INTO recursosfinancierosautogfines VALUES (148, 5);
INSERT INTO recursosfinancierosautogfines VALUES (148, 4);
INSERT INTO recursosfinancierosautogfines VALUES (148, 2);
INSERT INTO recursosfinancierosautogfines VALUES (269, 5);
INSERT INTO recursosfinancierosautogfines VALUES (269, 2);
INSERT INTO recursosfinancierosautogfines VALUES (34, 10);
INSERT INTO recursosfinancierosautogfines VALUES (34, 2);


--
-- Data for Name: recursosfinancierosfines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosfines VALUES (1, 'Equipamiento', 1);
INSERT INTO recursosfinancierosfines VALUES (2, 'Construcciones', 2);
INSERT INTO recursosfinancierosfines VALUES (3, 'Compra de Inmuebles', 3);
INSERT INTO recursosfinancierosfines VALUES (4, 'Honorarios de Personal', 4);
INSERT INTO recursosfinancierosfines VALUES (5, 'Compra de Insumos', 5);
INSERT INTO recursosfinancierosfines VALUES (6, 'Políticas de Capacitación', 6);
INSERT INTO recursosfinancierosfines VALUES (7, 'Otros', 7);
INSERT INTO recursosfinancierosfines VALUES (8, 'Sin especificar', 8);
INSERT INTO recursosfinancierosfines VALUES (9, 'Alquiler de Propiedades', 9);
INSERT INTO recursosfinancierosfines VALUES (10, 'Gastos de funcionamiento', 10);
INSERT INTO recursosfinancierosfines VALUES (11, 'Pago de cuentas', 11);
INSERT INTO recursosfinancierosfines VALUES (12, 'Promoción de la instrucción y participación en los campeonatos', 12);
INSERT INTO recursosfinancierosfines VALUES (13, 'Planes Jefas y Jefes', 13);
INSERT INTO recursosfinancierosfines VALUES (14, 'Movilidad / Transporte / Viáticos', 14);
INSERT INTO recursosfinancierosfines VALUES (15, 'Publicación', 15);
INSERT INTO recursosfinancierosfines VALUES (16, 'Becas para niños que asisten al jardín', 16);
INSERT INTO recursosfinancierosfines VALUES (17, 'Viaje de pesca', 17);
INSERT INTO recursosfinancierosfines VALUES (18, 'Difusión', 18);
INSERT INTO recursosfinancierosfines VALUES (19, 'Exposiciones', 19);
INSERT INTO recursosfinancierosfines VALUES (20, 'Gastos de Representación', 20);
INSERT INTO recursosfinancierosfines VALUES (21, 'Gastos de Sepelios', 21);
INSERT INTO recursosfinancierosfines VALUES (22, 'Actividad Deportiva', 22);
INSERT INTO recursosfinancierosfines VALUES (23, 'Financiación para realizar actividades', 23);
INSERT INTO recursosfinancierosfines VALUES (24, 'Mantenimiento del lugar', 24);
INSERT INTO recursosfinancierosfines VALUES (25, 'Cobertura médica asistencial', 25);
INSERT INTO recursosfinancierosfines VALUES (26, 'Pasajes', 26);
INSERT INTO recursosfinancierosfines VALUES (27, 'Financiación para proyectos productivos', 27);
INSERT INTO recursosfinancierosfines VALUES (28, 'Prestación de Servicios', 28);
INSERT INTO recursosfinancierosfines VALUES (29, 'Compra de Predio', 29);
INSERT INTO recursosfinancierosfines VALUES (30, 'Mantenimiento gral. de la Organización', 30);
INSERT INTO recursosfinancierosfines VALUES (32, 'Pasajes', 32);
INSERT INTO recursosfinancierosfines VALUES (33, 'Inscripción en torneos', 33);
INSERT INTO recursosfinancierosfines VALUES (34, 'Pago de sevicios', 34);
INSERT INTO recursosfinancierosfines VALUES (38, 'Capacitación', 0);
INSERT INTO recursosfinancierosfines VALUES (39, 'Inscripción a Congresos', 0);
INSERT INTO recursosfinancierosfines VALUES (40, 'para otras organizaciones', 0);


--
-- Data for Name: recursosfinancierosestadofines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosestadofines VALUES (9, 2, 23, 63);
INSERT INTO recursosfinancierosestadofines VALUES (9, 3, 4, 114);
INSERT INTO recursosfinancierosestadofines VALUES (22, 6, 27, 114);
INSERT INTO recursosfinancierosestadofines VALUES (65, 6, 27, 111);
INSERT INTO recursosfinancierosestadofines VALUES (113, 6, 29, 8);
INSERT INTO recursosfinancierosestadofines VALUES (120, 6, 2, 13);
INSERT INTO recursosfinancierosestadofines VALUES (130, 6, 2, 118);
INSERT INTO recursosfinancierosestadofines VALUES (218, 1, 24, 15);
INSERT INTO recursosfinancierosestadofines VALUES (218, 4, 30, 176);
INSERT INTO recursosfinancierosestadofines VALUES (218, 6, 22, 95);
INSERT INTO recursosfinancierosestadofines VALUES (258, 6, 8, 114);
INSERT INTO recursosfinancierosestadofines VALUES (260, 6, 23, 114);
INSERT INTO recursosfinancierosestadofines VALUES (221, 6, 10, 13);
INSERT INTO recursosfinancierosestadofines VALUES (221, 4, 4, 75);
INSERT INTO recursosfinancierosestadofines VALUES (221, 4, 5, 75);
INSERT INTO recursosfinancierosestadofines VALUES (221, 6, 24, 13);
INSERT INTO recursosfinancierosestadofines VALUES (208, 6, 22, 111);
INSERT INTO recursosfinancierosestadofines VALUES (126, 6, 22, 111);
INSERT INTO recursosfinancierosestadofines VALUES (46, 4, 19, 107);
INSERT INTO recursosfinancierosestadofines VALUES (46, 2, 19, 103);
INSERT INTO recursosfinancierosestadofines VALUES (219, 5, 4, 42);
INSERT INTO recursosfinancierosestadofines VALUES (127, 3, 16, 10);
INSERT INTO recursosfinancierosestadofines VALUES (125, 6, 9, 114);
INSERT INTO recursosfinancierosestadofines VALUES (236, 4, 4, 93);
INSERT INTO recursosfinancierosestadofines VALUES (236, 6, 10, 114);
INSERT INTO recursosfinancierosestadofines VALUES (189, 2, 4, 100);
INSERT INTO recursosfinancierosestadofines VALUES (189, 4, 4, 93);
INSERT INTO recursosfinancierosestadofines VALUES (189, 4, 5, 93);
INSERT INTO recursosfinancierosestadofines VALUES (189, 6, 10, 105);
INSERT INTO recursosfinancierosestadofines VALUES (263, 3, 16, 176);
INSERT INTO recursosfinancierosestadofines VALUES (263, 3, 4, 176);
INSERT INTO recursosfinancierosestadofines VALUES (263, 6, 14, 3);
INSERT INTO recursosfinancierosestadofines VALUES (177, 3, 10, 176);
INSERT INTO recursosfinancierosestadofines VALUES (177, 6, 10, 3);
INSERT INTO recursosfinancierosestadofines VALUES (166, 2, 10, 15);
INSERT INTO recursosfinancierosestadofines VALUES (166, 2, 27, 15);
INSERT INTO recursosfinancierosestadofines VALUES (33, 4, 4, 128);
INSERT INTO recursosfinancierosestadofines VALUES (33, 3, 10, 25);
INSERT INTO recursosfinancierosestadofines VALUES (247, 6, 10, 103);
INSERT INTO recursosfinancierosestadofines VALUES (264, 2, 5, 165);
INSERT INTO recursosfinancierosestadofines VALUES (264, 3, 10, 206);
INSERT INTO recursosfinancierosestadofines VALUES (264, 6, 10, 103);
INSERT INTO recursosfinancierosestadofines VALUES (109, 4, 23, 61);
INSERT INTO recursosfinancierosestadofines VALUES (109, 5, 23, 114);
INSERT INTO recursosfinancierosestadofines VALUES (106, 2, 8, 100);
INSERT INTO recursosfinancierosestadofines VALUES (106, 6, 10, 161);
INSERT INTO recursosfinancierosestadofines VALUES (8, 4, 1, 68);
INSERT INTO recursosfinancierosestadofines VALUES (160, 2, 27, 10);
INSERT INTO recursosfinancierosestadofines VALUES (34, 6, 40, 13);


--
-- Data for Name: recursosfinancierosorgintfines; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- Data for Name: recursosfinancierosotrosfines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosotrosfines VALUES (10, 9, 10);
INSERT INTO recursosfinancierosotrosfines VALUES (22, 11, 1);
INSERT INTO recursosfinancierosotrosfines VALUES (242, 10, 8);
INSERT INTO recursosfinancierosotrosfines VALUES (263, 3, 1);
INSERT INTO recursosfinancierosotrosfines VALUES (263, 3, 5);


--
-- Data for Name: recursosfinancierosprivadofines; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosfinancierosprivadofines VALUES (120, 8, 2);
INSERT INTO recursosfinancierosprivadofines VALUES (120, 8, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (133, 8, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (242, 8, 1);
INSERT INTO recursosfinancierosprivadofines VALUES (242, 8, 2);
INSERT INTO recursosfinancierosprivadofines VALUES (242, 8, 4);
INSERT INTO recursosfinancierosprivadofines VALUES (259, 8, 0);
INSERT INTO recursosfinancierosprivadofines VALUES (261, 12, 6);
INSERT INTO recursosfinancierosprivadofines VALUES (261, 13, 6);
INSERT INTO recursosfinancierosprivadofines VALUES (125, 13, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (177, 13, 4);
INSERT INTO recursosfinancierosprivadofines VALUES (33, 17, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (33, 18, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (33, 19, 5);
INSERT INTO recursosfinancierosprivadofines VALUES (146, 20, 38);
INSERT INTO recursosfinancierosprivadofines VALUES (146, 20, 39);


--
-- Data for Name: recursoshumanos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursoshumanos VALUES (9, 150.00, 1500.00, 0.00, 0, 0, 3, 3, 0, 0, 0, 2, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (10, 350.00, 1500.00, 925.00, 18, 2, 0, 2, 0, 1, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (15, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'mediante invitación verbal y escrita. Se los convoca fundamenalmente a trabajr en el convenio colectivo. Por el contacto continuo en el espacio de trabajo es que no se implementan otras opciones.');
INSERT INTO recursoshumanos VALUES (22, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, NULL, 'sda');
INSERT INTO recursoshumanos VALUES (47, 400.00, 400.00, 0.00, 0, 0, 0, 0, 0, 1, 0, 0, 'SI', 'Incentiva a que se incorporen a la comisión directiva.');
INSERT INTO recursoshumanos VALUES (64, 150.00, 800.00, 0.00, 0, 0, 4, 0, 0, 0, 0, 0, NULL, 'wd');
INSERT INTO recursoshumanos VALUES (65, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'Oralmente, en la cena o en una excursión. ("Carteles acá y en Marisol").');
INSERT INTO recursoshumanos VALUES (101, 150.00, 1500.00, 0.00, 0, 0, 0, 7, 1, 1, 0, 0, 'A VECES', 'A través de charlas cuando se acercan al club. No hay una estrategia clara. Son los padres los que se acercan a ayudar.');
INSERT INTO recursoshumanos VALUES (113, 220.00, 240.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 2, 'A VECES', 'En asamblea se pide colaboración, pero nadie quiere porque no es pago');
INSERT INTO recursoshumanos VALUES (120, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'Se llama a asambleas barriales para que conozcan lo que hacemos y lo que hicimos y para que se sumen pero nadie quiere trabajar gratis.');
INSERT INTO recursoshumanos VALUES (126, 0.00, 0.00, 0.00, 0, 0, 25, 0, 0, 0, 0, 0, 'SI', 'Ven gente para que los apoyen, con discapacidad, por ejemplo, quieren armar deporte para discapacitados');
INSERT INTO recursoshumanos VALUES (130, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (133, 150.00, 550.00, 0.00, 0, 0, 0, 2, 0, 0, 0, 0, 'NO', 'dvs');
INSERT INTO recursoshumanos VALUES (135, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (139, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'A través de los medios.');
INSERT INTO recursoshumanos VALUES (149, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'Con una selección rigurosa. A veces nos dicen "oligarcas", pero la persona que quiere ingresar tiene que tener respeto, ser puntual, honestidad, conocimiento de las cosas criollas, compañerismo. Si una persona no acepta esto y no es así, no entra');
INSERT INTO recursoshumanos VALUES (218, 150.00, 800.00, 0.00, 0, 0, 2, 0, 1, 0, 0, 1, 'A VECES', NULL);
INSERT INTO recursoshumanos VALUES (228, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (235, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (238, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (242, 150.00, 550.00, 0.00, 0, 0, 0, 0, 1, 0, 0, 0, 'SI', 'Boca a boca por invitación');
INSERT INTO recursoshumanos VALUES (243, 550.00, 550.00, 0.00, 0, 0, 0, 2, 2, 0, 0, 0, 'SI', 'Invitación personal');
INSERT INTO recursoshumanos VALUES (246, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'concientizar al productor en la necesidad de agruparse para su autodefensa');
INSERT INTO recursoshumanos VALUES (250, 800.00, 0.00, 0.00, 13, 0, 0, 0, 3, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (254, 1500.00, 150.00, 0.00, 0, 0, 2, 1, 0, 0, 0, 0, NULL, 'hjk');
INSERT INTO recursoshumanos VALUES (258, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'Contacto personal, en eventos gacetillas informando que se hace y "troquelado2 para ofrecerse para trabajar.');
INSERT INTO recursoshumanos VALUES (259, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'A VECES', 'Convocatorias abiertas y personalizadas a adultos y jóvenes para tareas puntuales.');
INSERT INTO recursoshumanos VALUES (260, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'A VECES', 'A veces se llama a los padres con la movilidad. No nos gusta pedir. Si alguien puede se ofrece. No hicimos ni una rifa en lo que va de la murga.');
INSERT INTO recursoshumanos VALUES (261, 350.00, 1500.00, 0.00, 0, 0, 7, 0, 2, 0, 0, 0, 'SI', 'A partir de invitaciones o hay  páginas específicas donde dejar datos de la ONG y la gente llama por teléfono.');
INSERT INTO recursoshumanos VALUES (129, 800.00, 1500.00, 0.00, 0, 0, 1, 0, 5, 0, 0, 0, 'SI', 'Invitarlos a colaborar teniendo en cuenta que etsan sus hijos. Falta gente que se involucre');
INSERT INTO recursoshumanos VALUES (221, 350.00, 550.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 1, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (208, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (4, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'Siempre se busca a nueva gente que aporte e integre al club. Eso si, debe ser de diferente categoría profesioanal, no puede haber dos de la misma profesión. Cuando se ubica a alguien que quiere sumarse, se lleva la propuesta a reunión de comisión, se analiza y deside el ingreso.');
INSERT INTO recursoshumanos VALUES (202, 0.00, 0.00, 0.00, 0, 0, 2, 1, 0, 0, 0, 0, 'SI', 'Boca a boca e invitando primero a que conozcan y que después vean qué pueden aportar, y se busca gente del mismo barrio. Por medio de la Parroquia, por conocidos.');
INSERT INTO recursoshumanos VALUES (128, 350.00, 550.00, 0.00, 0, 0, 1, 0, 0, 0, 0, 0, 'SI', 'Se invita a conocidos, amigos y familiares.');
INSERT INTO recursoshumanos VALUES (46, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 6, 0, 'SI', 'Padres que colaboran en distintas escuelas, vendiendo entradas, haciendo empanadas, atención de cantina, apoyo en mano de obra para escenografía, montaje, desmontaje. Padres con vehiculos (camiones, camionetas)');
INSERT INTO recursoshumanos VALUES (67, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', '"Haciendonos amigos de la gente e intentar que sean parte de esto (...) se ha hecho como una peña de amigos"');
INSERT INTO recursoshumanos VALUES (219, 150.00, 350.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 1, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (127, 150.00, NULL, 0.00, 0, 0, 0, 0, 22, 0, 0, 5, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (13, 900.00, 900.00, 0.00, 0, 0, 0, 0, 1, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (231, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (262, 150.00, 3100.00, 0.00, 0, 0, 0, 0, 88, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (125, 150.00, 150.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 7, 'SI', 'Boca a boca le decimos a la gente.');
INSERT INTO recursoshumanos VALUES (236, 150.00, 1500.00, 0.00, 0, 0, 0, 1, 1, 0, 0, 8, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (189, 159.00, 1500.00, 0.00, 0, 0, 0, 1, 1, 0, 0, 0, 'SI', 'En las reuniones se dice, pero la gente es muy pasiva. En la biblioteca hay más éxito con la colaboración.');
INSERT INTO recursoshumanos VALUES (159, 0.00, 0.00, 0.00, 0, 0, 0, 2, 3, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (263, 150.00, 1500.00, 0.00, 0, 0, 0, 1, 2, 0, 0, 5, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (177, 351.00, 1500.00, 0.00, 0, 0, 0, 2, 13, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (166, 350.00, 550.00, 0.00, 0, 0, 0, 0, 0, 0, 11, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (33, 150.00, 1500.00, 0.00, 0, 0, 0, 0, 3, 0, 0, 6, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (7, 0.00, 0.00, 0.00, 0, 0, 0, 1, 0, 0, 0, 0, 'SI', 'Tenemos colaboradores en los eventos.');
INSERT INTO recursoshumanos VALUES (247, 150.00, 350.00, 0.00, 0, 0, 0, 0, 2, 0, 0, 0, 'SI', 'Hablamos con los socios pero es difícil.');
INSERT INTO recursoshumanos VALUES (241, 150.00, 350.00, 0.00, 0, 0, 2, 0, 0, 0, 0, 2, 'SI', 'Se acercan, se ofrecen y nosotros somos abiertos y los aceptamos (Por ejemplo el voluntariado de verano).');
INSERT INTO recursoshumanos VALUES (264, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'A VECES', 'Nos tenemos que regir por el estatuto por lo que la comisión se forma en la asamblea. Antes de la asamblea se invita a las comisiones de las bibliotecas a participar para conformar la comisión de la asociación.');
INSERT INTO recursoshumanos VALUES (109, 151.00, 1500.00, 0.00, 0, 0, 0, 0, 2, 0, 0, 1, 'SI', 'Incorporan personas para que vayan a leer a las personas que concurren a la organización.');
INSERT INTO recursoshumanos VALUES (106, 150.00, 350.00, 0.00, 0, 0, 0, 0, 1, 0, 0, 2, 'SI', 'Con invitaciones, pero la gente no quiere comprometerse.');
INSERT INTO recursoshumanos VALUES (146, 0.00, 0.00, 0.00, 0, 0, 0, 12, 3, 0, 0, 0, 'A VECES', 'Pasantes universitarios, pero después los tenés que tomar como empleados.');
INSERT INTO recursoshumanos VALUES (8, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (1, 550.00, 1500.00, 0.00, 0, 0, 0, 0, 3, 0, 0, 0, 'SI', 'Invitando a participar, boca a boca, y luego se evalúa la incorporación de la gente (que requiere aprobación de la comisión directiva)');
INSERT INTO recursoshumanos VALUES (265, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (148, 150.00, 350.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 3, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (268, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (160, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'en la medida que la gente los conoce se acerca.');
INSERT INTO recursoshumanos VALUES (269, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', '-');
INSERT INTO recursoshumanos VALUES (270, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'NO', NULL);
INSERT INTO recursoshumanos VALUES (34, 0.00, 0.00, 0.00, 0, 0, 0, 0, 0, 0, 0, 0, 'SI', 'En las plenarias generalmente hay un invitado, que un miembro de la comisión propone para que se incorpore al club, que habla sobre un tema de actualidad; si le gusta el grupo humano y si le gusta a la comisión  y hay consenso se lo invita. Concretamente va el presidente con el que lo acompaña (que va a ser su padrino), se hace una ceremonia, se toma juramento en una de estas reuniones y pasa a formar parte del club.');


--
-- Data for Name: recursoshumanosorigenrenta; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursoshumanosorigenrenta VALUES (0, 'Pasantía');
INSERT INTO recursoshumanosorigenrenta VALUES (1, 'a. Por la propia Organización');
INSERT INTO recursoshumanosorigenrenta VALUES (2, 'b1. Estado Nacional - Planes de Empleo Temporario');
INSERT INTO recursoshumanosorigenrenta VALUES (3, 'b2. Estado Nacional - Capacitadores o Técnicos');
INSERT INTO recursoshumanosorigenrenta VALUES (4, 'c1. Estado Provincial - Programas de Empleo Temporarios');
INSERT INTO recursoshumanosorigenrenta VALUES (5, 'd1. Estado Municipal - Programa de Empleo Transitorio');
INSERT INTO recursoshumanosorigenrenta VALUES (6, 'd2. Estado Municipal - Empleados Municipales que prestan servicios en la org.');
INSERT INTO recursoshumanosorigenrenta VALUES (7, 'e. Otros - Personal rentado por el sector privado o por otras ONG''s');
INSERT INTO recursoshumanosorigenrenta VALUES (8, 'Ninguna');
INSERT INTO recursoshumanosorigenrenta VALUES (9, 'Personal rentado por otra repartición estatal');


--
-- Data for Name: recursoshumanosdetalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursoshumanosdetalle VALUES (9, 1236, 0, 'Directivos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, 'más de $1500', 2, 40, NULL, 'F', 54);
INSERT INTO recursoshumanosdetalle VALUES (9, 1237, 0, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 1, 'más de $1500', 2, 30, NULL, 'M', 46);
INSERT INTO recursoshumanosdetalle VALUES (9, 1238, 0, 'Profesionales/Técnicos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, '$800 a $1500', 4, 12, NULL, 'F', 31);
INSERT INTO recursoshumanosdetalle VALUES (9, 1239, 0, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 4, 40, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (9, 1240, 0, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 4, 40, NULL, 'F', 43);
INSERT INTO recursoshumanosdetalle VALUES (9, 1241, 0, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 4, 40, NULL, 'F', 35);
INSERT INTO recursoshumanosdetalle VALUES (9, 1242, 0, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 2, 25, NULL, 'F', 33);
INSERT INTO recursoshumanosdetalle VALUES (9, 1243, 0, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 3, NULL, 'F', 32);
INSERT INTO recursoshumanosdetalle VALUES (9, 1244, 0, 'Personal de apoyo/maestranza', 'Terciario/Universitario en Curso', NULL, 'Sí', 2, 'hasta $150', 6, 15, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (9, 1245, 0, 'Personal de apoyo/maestranza', 'Terciario/Universitario en Curso', NULL, 'Sí', 2, 'hasta $150', 6, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (9, 1246, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 2, 'hasta $150', 6, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (9, 1247, 0, NULL, NULL, NULL, 'Sí', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO recursoshumanosdetalle VALUES (9, 1248, 0, NULL, NULL, NULL, 'Sí', NULL, NULL, 0, 0, NULL, NULL, NULL);
INSERT INTO recursoshumanosdetalle VALUES (9, 1249, NULL, 'Administrativos', NULL, NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 21);
INSERT INTO recursoshumanosdetalle VALUES (9, 1250, NULL, 'Profesionales/Técnicos', NULL, NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 23);
INSERT INTO recursoshumanosdetalle VALUES (10, 1195, 1, 'Directivos', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 4, 20, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (10, 1196, 1, 'Administrativos', 'Terciario/Universitario en Curso', NULL, 'Sí', 0, '$350 a $550', 5, 16, NULL, 'F', 21);
INSERT INTO recursoshumanosdetalle VALUES (10, 1197, 1, 'Administrativos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, '$550 a $800', 4, 20, NULL, 'F', 51);
INSERT INTO recursoshumanosdetalle VALUES (10, 1198, 8, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (10, 1199, 4, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (10, 1200, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (15, 1333, 1, 'Directivos', 'Secundario', NULL, 'Beneficio en Especie', 0, NULL, 0, 30, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (15, 1334, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (15, 1335, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'M', 51);
INSERT INTO recursoshumanosdetalle VALUES (15, 1336, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'M', 57);
INSERT INTO recursoshumanosdetalle VALUES (15, 1337, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (15, 1338, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 64);
INSERT INTO recursoshumanosdetalle VALUES (15, 1339, 1, 'Directivos', 'Secundario', NULL, 'Beneficio en Especie', 0, NULL, 0, 15, NULL, 'F', 38);
INSERT INTO recursoshumanosdetalle VALUES (15, 1340, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 38);
INSERT INTO recursoshumanosdetalle VALUES (15, 1341, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 65);
INSERT INTO recursoshumanosdetalle VALUES (22, 1443, 0, NULL, NULL, NULL, 'Sí', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1444, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1445, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1446, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1447, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1448, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1449, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1450, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1451, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1452, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1453, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1454, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1455, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1456, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1457, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1458, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (22, 1459, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (47, 1470, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$350 a $550', 5, 16, NULL, 'M', 21);
INSERT INTO recursoshumanosdetalle VALUES (47, 1471, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (47, 1472, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (47, 1473, 1, 'Profesionales/Técnicos', 'Secundario', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 65);
INSERT INTO recursoshumanosdetalle VALUES (47, 1474, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (47, 1475, 14, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (64, 1314, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$550 a $800', 1, 20, NULL, 'F', 39);
INSERT INTO recursoshumanosdetalle VALUES (64, 1315, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$550 a $800', 1, 20, NULL, 'F', 24);
INSERT INTO recursoshumanosdetalle VALUES (64, 1316, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, 'hasta $150', 1, 10, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (64, 1317, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, 'hasta $150', 1, 10, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (64, 1318, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 20, NULL, 'F', 82);
INSERT INTO recursoshumanosdetalle VALUES (64, 1319, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 5, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (65, 1468, 16, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (101, 1202, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, 'más de $1500', 2, 30, NULL, 'F', 44);
INSERT INTO recursoshumanosdetalle VALUES (101, 1203, 1, 'Administrativos', 'Terciario/Universitario en Curso', NULL, 'Sí', 0, '$350 a $550', 5, 24, NULL, 'M', 25);
INSERT INTO recursoshumanosdetalle VALUES (101, 1204, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, 'hasta $150', 4, 2, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (101, 1205, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 4, 6, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (101, 1206, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 4, 5, NULL, 'M', 38);
INSERT INTO recursoshumanosdetalle VALUES (101, 1207, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 4, 5, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (101, 1208, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 6, NULL, 'M', 44);
INSERT INTO recursoshumanosdetalle VALUES (101, 1209, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 6, NULL, 'M', 36);
INSERT INTO recursoshumanosdetalle VALUES (101, 1210, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 6, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (101, 1212, 4, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (101, 1213, 12, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (101, 1214, 20, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (113, 1281, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 9, '$150 a $350', 7, 2, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (113, 1282, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 9, '$150 a $350', 7, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (113, 1283, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'F', 73);
INSERT INTO recursoshumanosdetalle VALUES (113, 1284, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 69);
INSERT INTO recursoshumanosdetalle VALUES (113, 1285, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'F', 69);
INSERT INTO recursoshumanosdetalle VALUES (113, 1286, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 87);
INSERT INTO recursoshumanosdetalle VALUES (113, 1287, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 83);
INSERT INTO recursoshumanosdetalle VALUES (113, 1288, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 83);
INSERT INTO recursoshumanosdetalle VALUES (113, 1289, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 58);
INSERT INTO recursoshumanosdetalle VALUES (113, 1290, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 84);
INSERT INTO recursoshumanosdetalle VALUES (113, 1291, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 77);
INSERT INTO recursoshumanosdetalle VALUES (113, 1292, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 71);
INSERT INTO recursoshumanosdetalle VALUES (113, 1293, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 71);
INSERT INTO recursoshumanosdetalle VALUES (113, 1294, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'F', 74);
INSERT INTO recursoshumanosdetalle VALUES (113, 1295, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 77);
INSERT INTO recursoshumanosdetalle VALUES (113, 1296, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 71);
INSERT INTO recursoshumanosdetalle VALUES (113, 1297, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 74);
INSERT INTO recursoshumanosdetalle VALUES (120, 1527, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 52);
INSERT INTO recursoshumanosdetalle VALUES (120, 1528, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (120, 1529, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 56);
INSERT INTO recursoshumanosdetalle VALUES (120, 1530, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 65);
INSERT INTO recursoshumanosdetalle VALUES (120, 1531, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 53);
INSERT INTO recursoshumanosdetalle VALUES (120, 1532, 2, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', NULL);
INSERT INTO recursoshumanosdetalle VALUES (120, 1533, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 48);
INSERT INTO recursoshumanosdetalle VALUES (120, 1534, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (120, 1535, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (120, 1536, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 69);
INSERT INTO recursoshumanosdetalle VALUES (120, 1537, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 54);
INSERT INTO recursoshumanosdetalle VALUES (120, 1538, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (126, 1343, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1344, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1345, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1346, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1347, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1348, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1349, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1350, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1351, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1352, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1353, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1354, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1355, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1356, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1357, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1358, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1359, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1360, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1361, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1362, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1363, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1364, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1365, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1366, 0, 'Administrativos', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1367, 0, 'Administrativos', NULL, NULL, 'Sí', 1, NULL, 1, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1368, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1369, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1370, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1371, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1372, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1373, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1374, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1375, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1376, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1377, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1378, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1379, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1380, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1381, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1382, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1383, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1384, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1385, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1386, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1387, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1388, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1389, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1390, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1391, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1392, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1393, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1394, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1395, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1396, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1397, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1398, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1399, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1400, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1401, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1402, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1403, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1404, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1405, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1406, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1407, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1408, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1409, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1410, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1411, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1412, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1413, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1414, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1415, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1416, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (126, 1417, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (130, 1277, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 68);
INSERT INTO recursoshumanosdetalle VALUES (130, 1278, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 46);
INSERT INTO recursoshumanosdetalle VALUES (130, 1279, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (133, 1514, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 4, 30, NULL, 'F', 33);
INSERT INTO recursoshumanosdetalle VALUES (133, 1515, 0, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$150 a $350', 4, 0, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (133, 1516, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 47);
INSERT INTO recursoshumanosdetalle VALUES (133, 1517, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 56);
INSERT INTO recursoshumanosdetalle VALUES (135, 1476, 60, 'Profesionales/Técnicos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (135, 1477, 2, 'Administrativos', NULL, NULL, 'Sí', 1, NULL, 0, 40, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (135, 1478, 10, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (139, 1490, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 65);
INSERT INTO recursoshumanosdetalle VALUES (139, 1491, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (139, 1492, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (139, 1493, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 36);
INSERT INTO recursoshumanosdetalle VALUES (139, 1494, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (139, 1495, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 38);
INSERT INTO recursoshumanosdetalle VALUES (139, 1496, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 32);
INSERT INTO recursoshumanosdetalle VALUES (139, 1497, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 65);
INSERT INTO recursoshumanosdetalle VALUES (139, 1498, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (139, 1499, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (139, 1500, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (149, 1423, 12, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 4, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (149, 1424, 15, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (149, 1425, 15, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (218, 1506, 2, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$550 a $800', 2, 30, NULL, 'F', 64);
INSERT INTO recursoshumanosdetalle VALUES (218, 1507, 3, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, 'hasta $150', 6, 2, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (218, 1508, 8, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 1, 20, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (218, 1509, 7, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 1, 20, NULL, 'M', 30);
INSERT INTO recursoshumanosdetalle VALUES (218, 1510, 23, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'M', 2254);
INSERT INTO recursoshumanosdetalle VALUES (218, 1511, NULL, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (218, 1512, NULL, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (218, 1513, NULL, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (228, 1418, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 70);
INSERT INTO recursoshumanosdetalle VALUES (228, 1419, 2, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (228, 1420, 2, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (228, 1421, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (235, 1504, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 56);
INSERT INTO recursoshumanosdetalle VALUES (235, 1505, 17, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 5, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (238, 1426, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 74);
INSERT INTO recursoshumanosdetalle VALUES (238, 1427, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 72);
INSERT INTO recursoshumanosdetalle VALUES (238, 1428, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 73);
INSERT INTO recursoshumanosdetalle VALUES (238, 1429, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 75);
INSERT INTO recursoshumanosdetalle VALUES (238, 1430, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 71);
INSERT INTO recursoshumanosdetalle VALUES (238, 1431, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 73);
INSERT INTO recursoshumanosdetalle VALUES (238, 1432, 2, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 75);
INSERT INTO recursoshumanosdetalle VALUES (242, 1217, 1, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$550 a $800', 2, 15, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (242, 1218, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', NULL, 'hasta $150', 0, NULL, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (242, 1219, 0, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', NULL, 'hasta $150', 0, 0, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (242, 1221, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 41);
INSERT INTO recursoshumanosdetalle VALUES (242, 1222, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 70);
INSERT INTO recursoshumanosdetalle VALUES (242, 1223, 5, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1224, 3, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 20);
INSERT INTO recursoshumanosdetalle VALUES (242, 1225, 3, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 20);
INSERT INTO recursoshumanosdetalle VALUES (242, 1226, 5, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1227, 8, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1228, 2, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1229, 4, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1230, 6, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (242, 1231, 6, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (242, 1232, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (242, 1233, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 2, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1251, 1, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$350 a $550', 2, 15, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (243, 1252, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, NULL, 4, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1253, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, NULL, 4, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1254, 2, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 7, NULL, 2, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1255, 2, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1256, 3, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1257, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 81);
INSERT INTO recursoshumanosdetalle VALUES (243, 1258, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 55);
INSERT INTO recursoshumanosdetalle VALUES (243, 1259, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 24);
INSERT INTO recursoshumanosdetalle VALUES (243, 1260, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 34);
INSERT INTO recursoshumanosdetalle VALUES (243, 1261, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (243, 1262, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 49);
INSERT INTO recursoshumanosdetalle VALUES (243, 1263, 1, 'Colaborador', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 44);
INSERT INTO recursoshumanosdetalle VALUES (243, 1264, 1, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 16);
INSERT INTO recursoshumanosdetalle VALUES (243, 1265, 4, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (243, 1266, 14, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1267, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (243, 1268, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 72);
INSERT INTO recursoshumanosdetalle VALUES (243, 1269, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 80);
INSERT INTO recursoshumanosdetalle VALUES (243, 1270, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 85);
INSERT INTO recursoshumanosdetalle VALUES (243, 1271, 15, 'Profesionales/Técnicos', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1272, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 75);
INSERT INTO recursoshumanosdetalle VALUES (243, 1273, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 77);
INSERT INTO recursoshumanosdetalle VALUES (243, 1274, 1, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 80);
INSERT INTO recursoshumanosdetalle VALUES (243, 1275, 29, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (243, 1276, 5, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (246, 1438, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 51);
INSERT INTO recursoshumanosdetalle VALUES (246, 1439, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 51);
INSERT INTO recursoshumanosdetalle VALUES (246, 1440, 1, 'Administrativos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 58);
INSERT INTO recursoshumanosdetalle VALUES (246, 1441, 1, 'Administrativos', 'Primaria', NULL, 'No', 0, NULL, 0, 6, NULL, 'M', 47);
INSERT INTO recursoshumanosdetalle VALUES (254, 1298, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 4, 'más de $1500', 2, 30, NULL, 'F', 49);
INSERT INTO recursoshumanosdetalle VALUES (254, 1299, 0, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, 'hasta $150', 4, 3, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (254, 1300, 0, 'Personal de apoyo/maestranza', 'Terciario/Universitario en Curso', NULL, 'Sí', 4, '$150 a $350', 6, 15, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (254, 1301, NULL, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (254, 1302, NULL, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (254, 1303, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 37);
INSERT INTO recursoshumanosdetalle VALUES (254, 1304, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 25);
INSERT INTO recursoshumanosdetalle VALUES (254, 1305, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (254, 1306, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 26);
INSERT INTO recursoshumanosdetalle VALUES (254, 1307, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 55);
INSERT INTO recursoshumanosdetalle VALUES (254, 1308, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 29);
INSERT INTO recursoshumanosdetalle VALUES (254, 1309, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (254, 1310, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 42);
INSERT INTO recursoshumanosdetalle VALUES (254, 1311, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (254, 1312, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 33);
INSERT INTO recursoshumanosdetalle VALUES (254, 1313, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (258, 1182, 2, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 22);
INSERT INTO recursoshumanosdetalle VALUES (258, 1183, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 72);
INSERT INTO recursoshumanosdetalle VALUES (258, 1184, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (258, 1185, 1, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (258, 1186, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 52);
INSERT INTO recursoshumanosdetalle VALUES (258, 1187, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (258, 1188, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (258, 1189, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 65);
INSERT INTO recursoshumanosdetalle VALUES (258, 1190, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (259, 1320, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 7, NULL, 'M', 41);
INSERT INTO recursoshumanosdetalle VALUES (259, 1321, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 47);
INSERT INTO recursoshumanosdetalle VALUES (259, 1322, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 26);
INSERT INTO recursoshumanosdetalle VALUES (259, 1323, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (259, 1324, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (259, 1325, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 23);
INSERT INTO recursoshumanosdetalle VALUES (259, 1326, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 21);
INSERT INTO recursoshumanosdetalle VALUES (259, 1327, 3, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 25);
INSERT INTO recursoshumanosdetalle VALUES (259, 1328, 2, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 23);
INSERT INTO recursoshumanosdetalle VALUES (259, 1329, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (259, 1330, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (259, 1331, 15, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (259, 1332, 15, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (260, 1462, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 40, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (260, 1463, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 40, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (260, 1464, 1, 'Profesionales/Técnicos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (260, 1465, 40, 'Otros', NULL, NULL, 'No', 0, NULL, 0, 20, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (261, 1518, 1, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 9, '$800 a $1500', 2, 4, NULL, 'F', 44);
INSERT INTO recursoshumanosdetalle VALUES (261, 1519, 1, 'Administrativos', 'Secundario', NULL, 'Sí', 9, NULL, 1, 3, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (261, 1520, 6, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, '$350 a $550', 1, 4, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (261, 1521, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 9, '$350 a $550', 2, 20, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (261, 1522, 2, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (261, 1523, 2, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (261, 1524, 2, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (129, 1539, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 2, 20, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (129, 1540, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$800 a $1500', 2, 25, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (129, 1541, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$800 a $1500', 2, 25, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (129, 1542, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$800 a $1500', 2, 0, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (129, 1543, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$800 a $1500', 2, 0, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (129, 1544, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 2, 10, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (129, 1545, 0, NULL, NULL, NULL, 'Sí', NULL, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (129, 1546, 0, NULL, NULL, NULL, 'Sí', NULL, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (129, 1547, 0, NULL, NULL, NULL, 'Sí', NULL, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (129, 1548, NULL, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, NULL, NULL);
INSERT INTO recursoshumanosdetalle VALUES (129, 1549, 0, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (221, 1555, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 4, '$350 a $550', 6, 20, NULL, 'F', 24);
INSERT INTO recursoshumanosdetalle VALUES (221, 1556, 8, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 10, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (208, 1557, 28, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 12, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (4, 1558, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 56);
INSERT INTO recursoshumanosdetalle VALUES (4, 1559, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 1, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (4, 1560, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 7, NULL, 'M', 80);
INSERT INTO recursoshumanosdetalle VALUES (4, 1561, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 7, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (4, 1562, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 7, NULL, 'M', 70);
INSERT INTO recursoshumanosdetalle VALUES (4, 1563, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 7, NULL, 'M', 56);
INSERT INTO recursoshumanosdetalle VALUES (4, 1564, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 7, NULL, 'M', 80);
INSERT INTO recursoshumanosdetalle VALUES (202, 1565, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$550 a $800', 4, 15, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (202, 1566, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (202, 1567, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, NULL, 1, 0, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (202, 1568, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 54);
INSERT INTO recursoshumanosdetalle VALUES (202, 1569, 1, 'Profesionales/Técnicos', 'Secundario', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 35);
INSERT INTO recursoshumanosdetalle VALUES (202, 1570, 1, 'Profesionales/Técnicos', 'Secundario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 23);
INSERT INTO recursoshumanosdetalle VALUES (202, 1571, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (202, 1572, 4, 'Otros', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (202, 1573, 1, 'Otros', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1575, 3, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, '$350 a $550', 1, 8, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (128, 1576, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1577, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1578, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1579, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1580, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1581, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1582, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1583, 1, NULL, 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1584, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1585, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (128, 1586, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1587, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (46, 1588, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'M', 35);
INSERT INTO recursoshumanosdetalle VALUES (46, 1589, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'M', 25);
INSERT INTO recursoshumanosdetalle VALUES (46, 1590, 0, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'M', 25);
INSERT INTO recursoshumanosdetalle VALUES (46, 1591, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'F', 41);
INSERT INTO recursoshumanosdetalle VALUES (46, 1592, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 3, 8, NULL, 'F', 67);
INSERT INTO recursoshumanosdetalle VALUES (46, 1595, NULL, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1596, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1597, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1598, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1599, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1600, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1601, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1602, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1603, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1604, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1605, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1606, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1607, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1608, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1609, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1610, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1611, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1612, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (46, 1613, 1, NULL, NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (67, 1614, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 0, 2, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (67, 1615, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 0, 2, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (67, 1616, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 0, 2, NULL, 'M', 22);
INSERT INTO recursoshumanosdetalle VALUES (67, 1617, 0, 'Profesionales/Técnicos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, NULL, 0, 2, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (67, 1618, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 36);
INSERT INTO recursoshumanosdetalle VALUES (67, 1619, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 15, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (67, 1620, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 37);
INSERT INTO recursoshumanosdetalle VALUES (67, 1621, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 8, NULL, 'M', 74);
INSERT INTO recursoshumanosdetalle VALUES (67, 1622, 5, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 24);
INSERT INTO recursoshumanosdetalle VALUES (219, 1623, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 5, '$150 a $350', 3, 15, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (219, 1625, 15, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 7, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1627, 1, 'Otros', NULL, NULL, 'Sí', 4, 'hasta $150', 6, 24, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1628, 1, 'Otros', NULL, NULL, 'Sí', 4, 'hasta $150', 6, 24, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1629, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 4, 'hasta $150', 6, 24, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1630, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 4, 'hasta $150', 6, 24, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1631, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 4, 'hasta $150', 6, 24, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (127, 1632, 22, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, '$800 a $1500', 2, 20, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (13, 1633, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 7, '$800 a $1500', 2, 15, NULL, 'F', 49);
INSERT INTO recursoshumanosdetalle VALUES (13, 1638, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 50, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (13, 1639, 1, 'Administrativos', 'Secundario', NULL, 'No', 0, NULL, 0, 15, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (231, 1641, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (231, 1642, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (231, 1643, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 30, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (231, 1644, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 30, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (231, 1645, 1, 'Otros', NULL, NULL, 'No', 0, NULL, 0, 20, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (262, 1646, 77, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (262, 1647, 11, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1648, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (125, 1649, 0, 'Colaborador', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'F', 48);
INSERT INTO recursoshumanosdetalle VALUES (125, 1650, 0, 'Colaborador', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1651, 0, 'Colaborador', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1652, 0, 'Colaborador', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1653, 0, 'Colaborador', 'Secundario', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1654, 0, 'Colaborador', 'Primaria', NULL, 'Sí', 4, 'hasta $150', 6, 20, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (125, 1655, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'M', 32);
INSERT INTO recursoshumanosdetalle VALUES (125, 1656, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (125, 1657, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 38);
INSERT INTO recursoshumanosdetalle VALUES (125, 1658, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, 'F', 34);
INSERT INTO recursoshumanosdetalle VALUES (236, 1660, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 30, NULL, 'F', 38);
INSERT INTO recursoshumanosdetalle VALUES (236, 1661, 1, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 5, '$150 a $350', 6, 2, NULL, 'M', 44);
INSERT INTO recursoshumanosdetalle VALUES (236, 1662, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 5, '$800 a $1500', 2, 12, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (236, 1663, 2, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 7, NULL, 7, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (236, 1664, 5, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 7, NULL, 7, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (236, 1665, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 69);
INSERT INTO recursoshumanosdetalle VALUES (236, 1666, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (236, 1667, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 65);
INSERT INTO recursoshumanosdetalle VALUES (236, 1668, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 74);
INSERT INTO recursoshumanosdetalle VALUES (236, 1669, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 61);
INSERT INTO recursoshumanosdetalle VALUES (236, 1670, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 58);
INSERT INTO recursoshumanosdetalle VALUES (236, 1671, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 57);
INSERT INTO recursoshumanosdetalle VALUES (236, 1672, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 69);
INSERT INTO recursoshumanosdetalle VALUES (236, 1673, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 69);
INSERT INTO recursoshumanosdetalle VALUES (236, 1674, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 84);
INSERT INTO recursoshumanosdetalle VALUES (236, 1675, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 83);
INSERT INTO recursoshumanosdetalle VALUES (236, 1676, 1, 'Colaborador', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 77);
INSERT INTO recursoshumanosdetalle VALUES (236, 1677, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 43);
INSERT INTO recursoshumanosdetalle VALUES (236, 1678, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 70);
INSERT INTO recursoshumanosdetalle VALUES (236, 1679, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 57);
INSERT INTO recursoshumanosdetalle VALUES (236, 1680, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 73);
INSERT INTO recursoshumanosdetalle VALUES (236, 1681, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 77);
INSERT INTO recursoshumanosdetalle VALUES (236, 1682, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 56);
INSERT INTO recursoshumanosdetalle VALUES (236, 1683, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 74);
INSERT INTO recursoshumanosdetalle VALUES (236, 1686, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 77);
INSERT INTO recursoshumanosdetalle VALUES (189, 1687, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 4, 30, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1688, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, NULL, 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1689, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 9, '$150 a $350', 0, 2, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (189, 1690, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 9, NULL, 0, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1691, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, '$150 a $350', 0, 10, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1692, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, '$150 a $350', 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1693, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 9, '$800 a $1500', 2, 30, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1694, 1, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1695, 1, 'Colaborador', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1696, 1, 'Colaborador', 'Primaria', NULL, 'Beneficio en Especie', 0, NULL, 0, 18, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1697, 1, 'Colaborador', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1698, 20, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1699, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (189, 1700, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (159, 1701, 0, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 4, 40, NULL, 'M', 34);
INSERT INTO recursoshumanosdetalle VALUES (159, 1702, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 20, NULL, 'F', 52);
INSERT INTO recursoshumanosdetalle VALUES (159, 1703, 0, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 4, 20, NULL, 'F', 31);
INSERT INTO recursoshumanosdetalle VALUES (159, 1704, 0, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 40, NULL, 'M', 29);
INSERT INTO recursoshumanosdetalle VALUES (159, 1705, 0, 'Administrativos', 'Secundario', NULL, 'Sí', 1, NULL, 2, 40, NULL, 'F', 25);
INSERT INTO recursoshumanosdetalle VALUES (159, 1706, 9, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (159, 1707, 3, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (263, 1708, 1, 'Otros', NULL, NULL, 'Sí', 1, '$800 a $1500', 4, 48, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (263, 1709, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 4, '$150 a $350', 6, 15, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (263, 1710, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 4, '$150 a $350', 6, 15, NULL, 'F', 19);
INSERT INTO recursoshumanosdetalle VALUES (263, 1711, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 4, '$150 a $350', 6, 15, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (263, 1712, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 4, '$150 a $350', 6, 15, NULL, 'F', 60);
INSERT INTO recursoshumanosdetalle VALUES (263, 1713, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 4, '$350 a $550', 6, 18, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (263, 1714, 1, 'Directivos', 'Secundario', NULL, 'Sí', 6, '$550 a $800', 2, 70, NULL, 'F', 48);
INSERT INTO recursoshumanosdetalle VALUES (263, 1715, 1, 'Directivos', 'Secundario', NULL, 'Sí', 6, '$800 a $1500', 2, 0, NULL, 'M', 52);
INSERT INTO recursoshumanosdetalle VALUES (263, 1716, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (263, 1717, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (263, 1718, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (177, 1720, 1, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 1, '$550 a $800', 2, 8, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (177, 1721, 1, 'Profesionales/Técnicos', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 2, 30, NULL, 'M', 30);
INSERT INTO recursoshumanosdetalle VALUES (177, 1722, 1, 'Profesionales/Técnicos', 'Terciario/Universitario en Curso', NULL, 'Sí', 1, '$550 a $800', 2, 12, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (177, 1723, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$550 a $800', 2, 12, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (177, 1724, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 2, 8, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (177, 1725, 2, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 2, 8, NULL, 'F', 43);
INSERT INTO recursoshumanosdetalle VALUES (177, 1726, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$350 a $550', 2, 8, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (177, 1727, 1, 'Otros', 'Primaria', NULL, 'Sí', 1, 'más de $1500', 2, 0, NULL, 'F', 54);
INSERT INTO recursoshumanosdetalle VALUES (177, 1728, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 2, 50, NULL, 'F', 42);
INSERT INTO recursoshumanosdetalle VALUES (177, 1729, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, 'M', 47);
INSERT INTO recursoshumanosdetalle VALUES (177, 1730, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (177, 1731, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, 'F', 47);
INSERT INTO recursoshumanosdetalle VALUES (177, 1732, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 2, 0, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (177, 1733, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 7, NULL, 4, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (177, 1734, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 7, NULL, 4, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (166, 1736, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 9, '$350 a $550', 3, 20, NULL, 'M', 25);
INSERT INTO recursoshumanosdetalle VALUES (166, 1737, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'M', 28);
INSERT INTO recursoshumanosdetalle VALUES (166, 1738, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'M', 27);
INSERT INTO recursoshumanosdetalle VALUES (166, 1739, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 46);
INSERT INTO recursoshumanosdetalle VALUES (166, 1740, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 29);
INSERT INTO recursoshumanosdetalle VALUES (166, 1741, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 29);
INSERT INTO recursoshumanosdetalle VALUES (166, 1742, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 26);
INSERT INTO recursoshumanosdetalle VALUES (166, 1743, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 26);
INSERT INTO recursoshumanosdetalle VALUES (166, 1744, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (166, 1745, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 29);
INSERT INTO recursoshumanosdetalle VALUES (166, 1746, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 7, '$350 a $550', 3, 20, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (166, 1747, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 48);
INSERT INTO recursoshumanosdetalle VALUES (166, 1748, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 20, NULL, 'M', 47);
INSERT INTO recursoshumanosdetalle VALUES (166, 1749, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (33, 1750, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 0, 30, NULL, 'F', 39);
INSERT INTO recursoshumanosdetalle VALUES (33, 1751, 1, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 4, 'más de $1500', 0, 15, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (33, 1752, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 4, 'más de $1500', 0, 15, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (33, 1753, 1, 'Profesionales/Técnicos', 'Primaria', NULL, 'Sí', 4, '$150 a $350', 0, 6, NULL, 'F', 74);
INSERT INTO recursoshumanosdetalle VALUES (33, 1754, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 4, '$150 a $350', 0, 3, NULL, 'M', 39);
INSERT INTO recursoshumanosdetalle VALUES (33, 1755, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 4, '$800 a $1500', 0, 17, NULL, 'F', 39);
INSERT INTO recursoshumanosdetalle VALUES (33, 1756, 1, 'Profesionales/Técnicos', 'Terciario/Universitario en Curso', NULL, 'Sí', 4, '$150 a $350', 0, 3, NULL, 'M', 38);
INSERT INTO recursoshumanosdetalle VALUES (33, 1757, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, '$150 a $350', 0, 6, NULL, 'F', 43);
INSERT INTO recursoshumanosdetalle VALUES (33, 1758, 1, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'Sí', 1, NULL, 0, 0, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (7, 1759, 0, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, NULL, 4, 0, NULL, 'M', 55);
INSERT INTO recursoshumanosdetalle VALUES (7, 1760, 9, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1761, 3, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1762, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1763, 2, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1764, 3, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1765, 2, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (7, 1766, 5, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (247, 1767, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$150 a $350', 2, 20, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (247, 1768, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, 'hasta $150', 2, 6, NULL, 'F', 33);
INSERT INTO recursoshumanosdetalle VALUES (247, 1769, 5, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (247, 1770, 5, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (247, 1771, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (241, 1772, 1, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$150 a $350', 1, 30, NULL, 'F', 25);
INSERT INTO recursoshumanosdetalle VALUES (241, 1773, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 4, '$150 a $350', 1, 30, NULL, 'F', 30);
INSERT INTO recursoshumanosdetalle VALUES (241, 1774, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 4, '$150 a $350', 6, 20, NULL, 'F', 35);
INSERT INTO recursoshumanosdetalle VALUES (241, 1775, 1, 'Directivos', 'Terciario/Universitario', NULL, 'Sí', 0, NULL, 0, 0, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (241, 1776, 5, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 3, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (241, 1777, 5, 'Personal de apoyo/maestranza', 'Secundario', NULL, 'No', 0, NULL, 0, 6, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (264, 1778, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'F', 70);
INSERT INTO recursoshumanosdetalle VALUES (264, 1779, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 76);
INSERT INTO recursoshumanosdetalle VALUES (264, 1780, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 9, NULL, 'M', 45);
INSERT INTO recursoshumanosdetalle VALUES (264, 1781, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 43);
INSERT INTO recursoshumanosdetalle VALUES (264, 1782, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 1, NULL, 'F', 52);
INSERT INTO recursoshumanosdetalle VALUES (264, 1783, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 48);
INSERT INTO recursoshumanosdetalle VALUES (264, 1784, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 61);
INSERT INTO recursoshumanosdetalle VALUES (264, 1785, 12, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (109, 1786, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, '$800 a $1500', 2, 30, NULL, 'F', 28);
INSERT INTO recursoshumanosdetalle VALUES (109, 1787, 1, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 1, '$150 a $350', 2, 9, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (109, 1788, 1, 'Personal de apoyo/maestranza', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 0, 9, NULL, 'F', 27);
INSERT INTO recursoshumanosdetalle VALUES (109, 1789, 2, 'Colaborador', NULL, NULL, 'No', 0, NULL, 0, 9, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (106, 1790, 1, 'Administrativos', NULL, NULL, 'Sí', 1, '$150 a $350', 2, 50, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (106, 1791, 1, 'Personal de apoyo/maestranza', NULL, NULL, 'Sí', 8, '$150 a $350', 6, 50, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (106, 1792, 1, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 8, NULL, 0, 50, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (106, 1793, 1, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 8, '$150 a $350', 6, 50, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (106, 1794, 21, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 25, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (146, 1795, 12, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'Sí', 7, 'más de $1500', 4, 40, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (146, 1796, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, 'más de $1500', 2, 40, NULL, 'F', 26);
INSERT INTO recursoshumanosdetalle VALUES (146, 1797, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, 'más de $1500', 2, 40, NULL, 'F', 40);
INSERT INTO recursoshumanosdetalle VALUES (146, 1798, 1, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, 'más de $1500', 2, 40, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (8, 1799, 0, 'Administrativos', 'Terciario/Universitario', NULL, 'Sí', 1, NULL, 4, 0, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (8, 1800, 21, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (1, 1801, 1, 'Administrativos', 'Secundario', NULL, 'Sí', 1, '$800 a $1500', 2, 40, NULL, 'F', 59);
INSERT INTO recursoshumanosdetalle VALUES (1, 1802, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$550 a $800', 2, 48, NULL, 'M', 66);
INSERT INTO recursoshumanosdetalle VALUES (1, 1803, 1, 'Personal de apoyo/maestranza', 'Primaria', NULL, 'Sí', 1, '$550 a $800', 2, 48, NULL, 'M', 57);
INSERT INTO recursoshumanosdetalle VALUES (1, 1804, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 53);
INSERT INTO recursoshumanosdetalle VALUES (1, 1805, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 61);
INSERT INTO recursoshumanosdetalle VALUES (1, 1806, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 53);
INSERT INTO recursoshumanosdetalle VALUES (1, 1807, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 60);
INSERT INTO recursoshumanosdetalle VALUES (1, 1808, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 12, NULL, 'M', 40);
INSERT INTO recursoshumanosdetalle VALUES (1, 1809, 13, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (265, 1810, 1, 'Otros', 'Secundario', NULL, 'No', 0, NULL, 0, 4, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (148, 1811, 3, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 5, '$150 a $350', 6, 2, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (148, 1812, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 57);
INSERT INTO recursoshumanosdetalle VALUES (148, 1813, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 45);
INSERT INTO recursoshumanosdetalle VALUES (148, 1814, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 47);
INSERT INTO recursoshumanosdetalle VALUES (148, 1815, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 20, NULL, 'M', 37);
INSERT INTO recursoshumanosdetalle VALUES (148, 1816, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 20, NULL, 'F', 36);
INSERT INTO recursoshumanosdetalle VALUES (148, 1817, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 2, NULL, 'F', 35);
INSERT INTO recursoshumanosdetalle VALUES (148, 1818, 1, 'Directivos', 'Primaria', NULL, 'No', 0, NULL, 0, 2, NULL, 'M', 33);
INSERT INTO recursoshumanosdetalle VALUES (160, 1820, 0, 'Administrativos', NULL, NULL, 'Sí', 0, NULL, NULL, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (160, 1821, 0, 'Profesionales/Técnicos', NULL, NULL, 'Sí', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (160, 1822, 1, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (269, 1824, 9, 'Directivos', NULL, NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (270, 1826, 1, 'Directivos', 'Secundario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (270, 1827, 4, 'Profesionales/Técnicos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, NULL, 0);
INSERT INTO recursoshumanosdetalle VALUES (34, 1828, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 50);
INSERT INTO recursoshumanosdetalle VALUES (34, 1829, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 10, NULL, 'M', 64);
INSERT INTO recursoshumanosdetalle VALUES (34, 1830, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 5, NULL, 'F', 50);
INSERT INTO recursoshumanosdetalle VALUES (34, 1831, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 5, NULL, 'M', 30);
INSERT INTO recursoshumanosdetalle VALUES (34, 1832, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'F', 0);
INSERT INTO recursoshumanosdetalle VALUES (34, 1833, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (34, 1834, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);
INSERT INTO recursoshumanosdetalle VALUES (34, 1835, 1, 'Directivos', 'Terciario/Universitario', NULL, 'No', 0, NULL, 0, 0, NULL, 'M', 0);


--
-- Data for Name: recursosmateriales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosmateriales VALUES (9, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (10, 2, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (15, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (22, 7, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (47, 2, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (64, 6, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (65, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (101, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (113, 6, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (120, 4, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (126, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (130, 2, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (133, 1, true, 7000, 0, 110);
INSERT INTO recursosmateriales VALUES (135, 6, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (149, 3, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (218, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (228, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (235, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (238, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (243, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (246, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (254, 1, true, 15300, 900, 400);
INSERT INTO recursosmateriales VALUES (258, 6, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (259, 6, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (260, 3, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (261, 7, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (129, 7, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (221, 1, false, 10000, 200, 30);
INSERT INTO recursosmateriales VALUES (208, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (4, 9, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (202, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (128, 4, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (46, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (67, 5, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (219, 6, false, 15700, 0, 100);
INSERT INTO recursosmateriales VALUES (127, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (13, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (231, 3, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (262, 2, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (125, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (236, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (189, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (159, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (263, 2, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (177, 6, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (166, 3, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (33, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (7, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (247, 6, false, 9000, 50, 60);
INSERT INTO recursosmateriales VALUES (241, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (109, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (106, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (146, 7, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (8, 3, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (1, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (265, 7, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (148, 1, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (268, 1, true, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (160, 6, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (269, 4, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (270, 7, false, 0, 0, 0);
INSERT INTO recursosmateriales VALUES (34, 9, false, 0, 0, 0);


--
-- Data for Name: recursosmaterialesequipamiento; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO recursosmaterialesequipamiento VALUES (9, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 4);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (9, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (10, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 8);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (15, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (22, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (22, 14);
INSERT INTO recursosmaterialesequipamiento VALUES (22, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (22, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (22, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (47, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (64, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (65, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 7);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 19);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (101, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (113, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (113, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (113, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (113, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (113, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (120, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (120, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (120, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (120, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (120, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (126, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (130, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (133, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (135, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (149, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (218, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (228, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (228, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (228, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (228, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (228, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (235, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (238, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 15);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (243, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (246, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (246, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (246, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (246, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (246, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 11);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (254, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (258, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (258, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (258, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (258, 31);
INSERT INTO recursosmaterialesequipamiento VALUES (259, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (259, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (259, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (259, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (260, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (261, 51);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 49);
INSERT INTO recursosmaterialesequipamiento VALUES (129, 48);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (221, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (208, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (208, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (202, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (128, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (128, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (128, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (128, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (128, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (46, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (67, 48);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (219, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (127, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (13, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 48);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 49);
INSERT INTO recursosmaterialesequipamiento VALUES (262, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (125, 30);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (236, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (189, 53);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 18);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 28);
INSERT INTO recursosmaterialesequipamiento VALUES (159, 48);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 4);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (263, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (177, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (177, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (177, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (166, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (33, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (7, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (247, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (247, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (247, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (247, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (247, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (241, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (109, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (106, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 46);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 3);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 42);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 40);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 47);
INSERT INTO recursosmaterialesequipamiento VALUES (146, 48);
INSERT INTO recursosmaterialesequipamiento VALUES (8, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (8, 54);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 38);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 2);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 5);
INSERT INTO recursosmaterialesequipamiento VALUES (1, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (265, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (265, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 50);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 39);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 41);
INSERT INTO recursosmaterialesequipamiento VALUES (148, 43);
INSERT INTO recursosmaterialesequipamiento VALUES (268, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (160, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (160, 36);
INSERT INTO recursosmaterialesequipamiento VALUES (160, 1);
INSERT INTO recursosmaterialesequipamiento VALUES (269, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (269, 37);
INSERT INTO recursosmaterialesequipamiento VALUES (269, 44);
INSERT INTO recursosmaterialesequipamiento VALUES (270, 35);
INSERT INTO recursosmaterialesequipamiento VALUES (34, 55);


--
-- Data for Name: resumen_objetivos_fundacionales_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (15, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (15, 'Reclamo o Reivindicación');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (258, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (258, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (259, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (260, 'Reclamo o Reivindicación');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (67, 'Reclamo o Reivindicación');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (67, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (263, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (263, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (264, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (265, 'Autoayuda o Contención');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (265, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (268, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (268, 'Reclamo o Reivindicación');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (270, 'Reclamo o Reivindicación');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (270, 'Asistencia o Servicio');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (3, 'Promoción y Desarrollo');
INSERT INTO resumen_objetivos_fundacionales_x_organizacion VALUES (3, 'Asistencia o Servicio');


--
-- Data for Name: resumenobjorganizacioninterna_x_organizacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (9, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (9, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (10, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (10, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (15, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (15, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (22, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (47, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (64, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (65, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (101, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (101, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (113, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (120, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (126, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (126, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (130, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (133, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (133, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (135, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (139, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (149, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (218, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (218, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (221, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (221, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (228, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (235, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (238, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (242, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (242, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (243, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (243, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (246, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (250, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (254, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (254, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (258, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (258, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (259, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (259, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (260, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (260, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (261, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (261, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (129, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (202, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (202, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (208, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (4, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (4, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (128, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (46, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (67, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (219, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (219, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (127, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (13, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (231, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (231, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (262, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (125, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (236, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (189, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (189, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (159, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (159, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (263, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (263, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (177, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (177, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (166, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (33, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (7, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (247, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (247, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (241, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (241, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (264, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (264, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (109, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (109, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (106, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (106, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (146, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (146, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (8, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (8, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (1, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (265, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (265, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (148, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (148, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (148, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (268, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (268, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (160, 'Promoción y Desarrollo');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (160, 'Autoayuda o Contención');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (270, 'Reclamo o Reivindicación');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (270, 'Asistencia o Servicio');
INSERT INTO resumenobjorganizacioninterna_x_organizacion VALUES (34, 'Asistencia o Servicio');


--
-- Data for Name: vinculacion; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinculacion VALUES (6, 'SI', NULL, false, NULL, false, NULL, NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (9, 'SI', NULL, true, NULL, false, 'SI', 'plan trabajar', 'nos permiten cubrir necesidades laborales complementando el trabajo de los operarios y, a veces, el de los supervisores.', 'Red de Talleres Protegidos (PRONILAT). Desde 1995. Hace 2 años dejo de funcionar; Grupo Latinoamericano de Rehabilitación Laboral. Desde hace 10 años.');
INSERT INTO vinculacion VALUES (10, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'IMT: desde sus inicios hace 2 años. FEHGRA: desde 1992, con su inicio');
INSERT INTO vinculacion VALUES (15, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (22, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Asociación de Ajedrez; Federación de Casin');
INSERT INTO vinculacion VALUES (47, 'NO', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (64, 'A VECES', NULL, false, NULL, false, 'SI', 'huioProgramas propios y participan junto con el proyecto de panadería laboral.', 'En el de panadería es muy buena.', NULL);
INSERT INTO vinculacion VALUES (65, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (101, 'NO', NULL, true, NULL, false, 'NO', NULL, NULL, 'Unión de Rugby de Mar del Plata, desde hace 6 años');
INSERT INTO vinculacion VALUES (113, 'NO', NULL, false, NULL, false, 'SI', 'Pro-Bienestar (Estado Nacional)', 'Es muy buena porque sino no vienen los jubilados', NULL);
INSERT INTO vinculacion VALUES (120, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, '1 vez en foro de seguridad. Tambien en la federación de centros de salud');
INSERT INTO vinculacion VALUES (126, 'A VECES', NULL, true, NULL, false, 'NO', NULL, NULL, 'Participación con delegaciones del club a todo lo que la Municipalidad los invita: Fiesta del Deporte, desfiles, etc.');
INSERT INTO vinculacion VALUES (130, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (133, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foro de seguridad. Tandil. Año 2007.');
INSERT INTO vinculacion VALUES (135, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foro por la seguridad');
INSERT INTO vinculacion VALUES (139, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foro Social');
INSERT INTO vinculacion VALUES (149, 'A VECES', NULL, true, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (218, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'En lo que tiene que ver con el deporte. Vamos desde siempre a todo lo que nos invitan.');
INSERT INTO vinculacion VALUES (228, 'NO', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (235, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (238, 'A VECES', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (243, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Red Buena Fe: se realiza desde Santísimo Sacramento. Foro Tandil Siglo XXI. Se puede decir que Santísimo representa a la institución católica en estos espacios.');
INSERT INTO vinculacion VALUES (246, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foro Social desde su inicio');
INSERT INTO vinculacion VALUES (250, 'NO', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (254, 'NO', NULL, true, NULL, false, 'NO', NULL, NULL, 'Perfeccionamientos de la CONABIP  y en la feria del libro');
INSERT INTO vinculacion VALUES (258, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (259, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (260, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Asamblea en defensa d elas sierras. Desde 1986 (antes se participó en otros movimientos que perseguían el mismo fin); Asociación Amigos del Carnaval de mi tandil, desde 2004; Grupo memoria por la Vida en Democracia, desde 1983.');
INSERT INTO vinculacion VALUES (261, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (129, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (221, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'A veces pero solo cuando nos invitan');
INSERT INTO vinculacion VALUES (208, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (4, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (202, 'A VECES', NULL, true, NULL, false, 'SI', 'Proyecto Banco Popular de la Buene Fé (Ministerio de Desarrollo Social) se les presta el lugar y se hacen actividades.', 'Es positiva. El banco está dividido en zonas y a nosotros nos permitió conocer más a la gente del barrio y tener otro tipo de vínculo y a la vez abrir el complejo a la comunidad para que se sienta parte.', 'Caritas diocesana y reuniones con las instituciones de la parroquia.');
INSERT INTO vinculacion VALUES (128, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Interpeña (UNI)');
INSERT INTO vinculacion VALUES (46, 'SI', NULL, true, NULL, false, 'NO', 'w', 'wq', 'Encuentros y festivales competitivos a nivel nacional y regional.');
INSERT INTO vinculacion VALUES (67, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Desde siempre en el Consejo Consultor de las Mujeres,  del Foro social.');
INSERT INTO vinculacion VALUES (219, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (127, 'SI', NULL, false, NULL, false, 'SI', 'Planes sociales de empleo', NULL, NULL);
INSERT INTO vinculacion VALUES (13, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Se juntan con los otros gremios cuando se arman despelotes grandes. Por ej. Los carteros');
INSERT INTO vinculacion VALUES (231, 'NO', NULL, false, NULL, false, NULL, NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (262, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'PROMOVER (Banco de la Buena Fe); Red Federal de Educación; Cámara de Turismo.');
INSERT INTO vinculacion VALUES (125, 'SI', NULL, true, NULL, false, 'SI', 'Planes de empleo (Barrios Bonaerenses)', 'Buena.', 'Foro de seguridad; Foro por la "no videncia"');
INSERT INTO vinculacion VALUES (236, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (189, 'SI', NULL, true, NULL, false, 'SI', 'Programa Pro Bienestar de Pami. Plan Jefes y Jefas.', 'Buena, pero el Pro Bienestar tiene cada vez menos beneficiarios por el mejoramiento de la jubilación. Se tiene que ir terminando. Tiene que pasar el monto a la jubilación para que compren lo que quieran, pero va a comprar menos porque nosotros compramos a mayoristas.', 'Federación Centro Sur Bonaerense de Jubilados y Pensionados desde 1996. Asociación de Bibliotecas Populares desde 1999. Confederación de jubilados, pensionados y retirados del país. Consejo Federal del Pami desde el 2002.');
INSERT INTO vinculacion VALUES (159, 'SI', NULL, true, NULL, false, NULL, NULL, NULL, 'De la Confederación Farmacéutica Argentina desde el origen del colegio');
INSERT INTO vinculacion VALUES (263, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Movimiento chicos del pueblo.Desde hace mucho tiempo');
INSERT INTO vinculacion VALUES (177, 'SI', NULL, false, NULL, false, 'SI', 'programas de minoridad', 'Nuestra participación es acotada y limitada debido a diferencias ideológicas y de proyectos respecto a la política oficial de niñez.', NULL);
INSERT INTO vinculacion VALUES (166, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (33, 'SI', NULL, true, NULL, false, 'SI', 'Programa Nacional Remediar. Programa de Vacunación de PAMI.', 'Se considera en ambos casos altamente positivo, entanto se da respuesta a través de los recursos a la población, además de enriquecer la práctica de los alumnos de la escuela de enfermería.', 'En algún momento participó el presidente de la Asociación en el Foro Social Local.');
INSERT INTO vinculacion VALUES (7, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (241, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Tratamos de involucrarnos en lo que nos llaman. Desde 2001');
INSERT INTO vinculacion VALUES (247, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'n la Asociación de Bibliotecas Populares desde que se fundó, eño 2000');
INSERT INTO vinculacion VALUES (264, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Asociación de Bibliotecas de Rosario y Córdoba.Federación de Bibliotecas Populares, desde 2004');
INSERT INTO vinculacion VALUES (109, 'SI', NULL, true, NULL, false, 'SI', 'Plan alimentario (no recuerda el nombre)', '---------', 'Foro sobre discapacidad. Participan desde el comienzo de A.PRO. NO.VID');
INSERT INTO vinculacion VALUES (106, 'SI', NULL, true, NULL, false, 'SI', 'Bolsones de aimentos de PAMI.casitas de la esperanza. Se cobra una pequeña expensa)', 'Buena.', 'este año no. Pero se ha trabajado en red con Cáritas y Casitas de la Esperanza. Pero no se mantiene el trabajo en red.');
INSERT INTO vinculacion VALUES (146, 'A VECES', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (8, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (1, 'A VECES', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (265, 'NO', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (148, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (268, 'NO', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foros a través de Internet, sobre educación vial. De estos foros sacan mucha información "Es más lo que sacamos del foro que lo que aportamos"');
INSERT INTO vinculacion VALUES (160, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'cáitas, desde que comenzaron, en el 2001.');
INSERT INTO vinculacion VALUES (269, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Foro de Seguridad.');
INSERT INTO vinculacion VALUES (270, 'SI', NULL, false, NULL, false, 'NO', NULL, NULL, NULL);
INSERT INTO vinculacion VALUES (34, 'SI', NULL, true, NULL, false, 'NO', NULL, NULL, 'Convención de Leones. Cuando el Municipio los invita a participar en algo, ellos van representando al Club de Leones');


--
-- Data for Name: vinculacionmotivos; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinculacionmotivos VALUES (1, 'Derivación de Casos');
INSERT INTO vinculacionmotivos VALUES (2, 'Trabajo y Seguimiento conjunto');
INSERT INTO vinculacionmotivos VALUES (3, 'Convenio');
INSERT INTO vinculacionmotivos VALUES (4, 'Intercambio de Servicios y Recursos');
INSERT INTO vinculacionmotivos VALUES (5, 'Capacitación/Asesoramiento');
INSERT INTO vinculacionmotivos VALUES (6, 'Financiamiento');
INSERT INTO vinculacionmotivos VALUES (7, 'Asistencia Técnica');
INSERT INTO vinculacionmotivos VALUES (8, 'Supervisión');
INSERT INTO vinculacionmotivos VALUES (9, 'Reclamo o Reivindicación');
INSERT INTO vinculacionmotivos VALUES (10, 'Demanda');
INSERT INTO vinculacionmotivos VALUES (11, 'Recepción de Beneficiarios Planes de Empleo');
INSERT INTO vinculacionmotivos VALUES (12, 'Participación en Eventos');
INSERT INTO vinculacionmotivos VALUES (13, 'Elección de deportistas destacados');
INSERT INTO vinculacionmotivos VALUES (14, 'Otros');
INSERT INTO vinculacionmotivos VALUES (15, 'Gestiones');
INSERT INTO vinculacionmotivos VALUES (16, 'Cuestiones legales');
INSERT INTO vinculacionmotivos VALUES (17, 'Espacio cedido');
INSERT INTO vinculacionmotivos VALUES (18, 'Difusión');
INSERT INTO vinculacionmotivos VALUES (19, 'Intercambio de información');
INSERT INTO vinculacionmotivos VALUES (20, 'Protocolar');
INSERT INTO vinculacionmotivos VALUES (21, 'Para compra de Sede');
INSERT INTO vinculacionmotivos VALUES (22, 'Integra mesa interprovincial');
INSERT INTO vinculacionmotivos VALUES (23, 'Integra Meas Nacional');
INSERT INTO vinculacionmotivos VALUES (24, 'Equipamientos');
INSERT INTO vinculacionmotivos VALUES (25, 'Asistencia Directa');
INSERT INTO vinculacionmotivos VALUES (26, 'Registro Legal');
INSERT INTO vinculacionmotivos VALUES (27, 'Actividades Deportivas');
INSERT INTO vinculacionmotivos VALUES (28, 'Realización de actividades conjuntas');
INSERT INTO vinculacionmotivos VALUES (29, 'Aperturas y Cierres. Reuniones para tomar decisiones');
INSERT INTO vinculacionmotivos VALUES (30, 'Trabajo Voluntario');
INSERT INTO vinculacionmotivos VALUES (31, 'Actividades conjuntas');
INSERT INTO vinculacionmotivos VALUES (32, 'Charlas sobre raíces, costumbres, cultura');
INSERT INTO vinculacionmotivos VALUES (33, 'Mantenimiento del césped y calles');
INSERT INTO vinculacionmotivos VALUES (34, 'Campeonatos de fútbol');
INSERT INTO vinculacionmotivos VALUES (35, 'Trabajo Preventivo');
INSERT INTO vinculacionmotivos VALUES (36, 'Entrega de Alimentos');
INSERT INTO vinculacionmotivos VALUES (37, 'Beneficio Mutuo');
INSERT INTO vinculacionmotivos VALUES (38, 'Préstamo de predio');
INSERT INTO vinculacionmotivos VALUES (39, 'Pedido de permisos');
INSERT INTO vinculacionmotivos VALUES (40, 'entrega de recursos');
INSERT INTO vinculacionmotivos VALUES (41, 'Federados');
INSERT INTO vinculacionmotivos VALUES (42, 'logística');
INSERT INTO vinculacionmotivos VALUES (43, 'donaciones');
INSERT INTO vinculacionmotivos VALUES (44, 'Préstamo de maquinarias / servicio');


--
-- Data for Name: vinculacionestadodetalle; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinculacionestadodetalle VALUES (9, 11, 6, 'presentacion de proyectos');
INSERT INTO vinculacionestadodetalle VALUES (9, 15, 8, 'tiene el registro de los talleres protegidos');
INSERT INTO vinculacionestadodetalle VALUES (9, 22, 6, 'se presentan los proyectos para que los subsidien');
INSERT INTO vinculacionestadodetalle VALUES (9, 114, 2, 'gestiones (certificados de discapacidad, pases de transporte, etc)');
INSERT INTO vinculacionestadodetalle VALUES (9, 114, 6, 'subsidios para cargas sociales de los empleados');
INSERT INTO vinculacionestadodetalle VALUES (9, 132, 1, 'las esc. Especiales derivan chicos al taller para su incorporación laboral.');
INSERT INTO vinculacionestadodetalle VALUES (9, 176, 6, 'convenio por becas (avala y pasa a nación)');
INSERT INTO vinculacionestadodetalle VALUES (10, 7, 2, 'Por conformar el IMT con el objeto de trabajar en la comisión de ordenanzas y en todo lo relacionado al turismo');
INSERT INTO vinculacionestadodetalle VALUES (10, 8, 2, 'Por conformar el IMT con el objeto de trabajar en la comisión de ordenanzas y en todo lo relacionado al turismo');
INSERT INTO vinculacionestadodetalle VALUES (10, 9, 2, 'Por conformar el IMT con el objeto de trabajar en la comisión de ordenanzas y en todo lo relacionado al turismo');
INSERT INTO vinculacionestadodetalle VALUES (15, 10, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (15, 11, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (15, 25, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (15, 130, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (15, 183, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (15, 184, 9, 'por la variada actividad laboral, cada uno depende de distintos ministerios y debe gestionar con ellos antes las diversas demandas, lo hace la sede nacional');
INSERT INTO vinculacionestadodetalle VALUES (22, 111, 6, 'Entrega de subsidio');
INSERT INTO vinculacionestadodetalle VALUES (64, 3, 1, 'Proyecto de panadería. Planes trabajar');
INSERT INTO vinculacionestadodetalle VALUES (64, 3, 2, 'Proyecto de panadería. Planes trabajar');
INSERT INTO vinculacionestadodetalle VALUES (64, 15, 40, 'Aporte de recursos');
INSERT INTO vinculacionestadodetalle VALUES (64, 185, 36, 'Mandan materiales y alimentos');
INSERT INTO vinculacionestadodetalle VALUES (65, 111, 6, 'Solicitud de un subsidio');
INSERT INTO vinculacionestadodetalle VALUES (120, 190, 4, 'Se presta las instalaciones para que se atienda al barrio');
INSERT INTO vinculacionestadodetalle VALUES (126, 21, 38, 'Uncas cede espacio deportivo');
INSERT INTO vinculacionestadodetalle VALUES (126, 111, 38, 'Uncas cede el campo de deportes');
INSERT INTO vinculacionestadodetalle VALUES (126, 137, 6, 'Reconstruir la cancha de tenis y camping');
INSERT INTO vinculacionestadodetalle VALUES (130, 8, 6, 'Pedido de financiamiento');
INSERT INTO vinculacionestadodetalle VALUES (130, 91, 6, 'Trabajo en conjunto');
INSERT INTO vinculacionestadodetalle VALUES (133, 114, 6, 'por subsidios para biblioteca');
INSERT INTO vinculacionestadodetalle VALUES (133, 127, 6, 'enfermera para la salita');
INSERT INTO vinculacionestadodetalle VALUES (135, 41, 2, 'laborales');
INSERT INTO vinculacionestadodetalle VALUES (139, 13, 4, 'Préstamo de la Cámara Empresaria. Solicitud de recursos para las personas que vinieron a entregar certificados');
INSERT INTO vinculacionestadodetalle VALUES (139, 184, 2, 'Entrega de diplomas a inmigrantes con más de 50 años de residencia y entrega de certificados de arribo a América');
INSERT INTO vinculacionestadodetalle VALUES (139, 188, 2, 'Entrega de diplomas a inmigrantes con más de 50 años de residencia y entrega de certificados de arribo a América');
INSERT INTO vinculacionestadodetalle VALUES (149, 8, 6, 'Solicitud de subsidio para la Fiesta del Hombre de Campo');
INSERT INTO vinculacionestadodetalle VALUES (218, 21, 31, 'Deportivos, sociales y culturales');
INSERT INTO vinculacionestadodetalle VALUES (218, 111, 2, 'Competencias deportivas');
INSERT INTO vinculacionestadodetalle VALUES (235, 189, 38, 'seden el espacio para recreación');
INSERT INTO vinculacionestadodetalle VALUES (238, 8, 12, 'cuando hay inauguraciones nos invitan');
INSERT INTO vinculacionestadodetalle VALUES (243, 9, 39, 'Pedidos de permisos varios para eventos');
INSERT INTO vinculacionestadodetalle VALUES (243, 182, 39, 'Pedidos de permisos para eventos');
INSERT INTO vinculacionestadodetalle VALUES (246, 13, 9, 'Reclamos');
INSERT INTO vinculacionestadodetalle VALUES (246, 40, 2, 'Representatividad');
INSERT INTO vinculacionestadodetalle VALUES (246, 41, 2, 'Representatividad');
INSERT INTO vinculacionestadodetalle VALUES (246, 186, 2, 'Formamos parte representativa');
INSERT INTO vinculacionestadodetalle VALUES (258, 21, 4, 'Pasantías');
INSERT INTO vinculacionestadodetalle VALUES (258, 114, 4, 'solicitud de subsidioso recursos');
INSERT INTO vinculacionestadodetalle VALUES (258, 114, 6, 'solicitud de subsidios o recursos');
INSERT INTO vinculacionestadodetalle VALUES (259, 21, 3, 'Reciben alummnos de Cs. Económicas para prácticas solidarias. Convenios por  tutorías de estudio, Banco del Tiempo');
INSERT INTO vinculacionestadodetalle VALUES (259, 21, 4, ' Banco del Tiempo');
INSERT INTO vinculacionestadodetalle VALUES (259, 21, 5, 'Tutorias de Estudio');
INSERT INTO vinculacionestadodetalle VALUES (259, 26, 17, 'Uso del lugar');
INSERT INTO vinculacionestadodetalle VALUES (260, 3, 4, 'por alimentos, bonos de colectivos, subsidios');
INSERT INTO vinculacionestadodetalle VALUES (260, 3, 6, 'alimento, bonos, subsidios');
INSERT INTO vinculacionestadodetalle VALUES (260, 21, 3, 'convenio de colaboración mutua');
INSERT INTO vinculacionestadodetalle VALUES (260, 23, 2, 'para organización del carnaval');
INSERT INTO vinculacionestadodetalle VALUES (260, 23, 4, 'org. Del carnaval');
INSERT INTO vinculacionestadodetalle VALUES (260, 26, 4, 'actuaciones, talleristas o asesoramiento');
INSERT INTO vinculacionestadodetalle VALUES (260, 187, 5, 'actuaciones, talleristas o asesoramiento');
INSERT INTO vinculacionestadodetalle VALUES (261, 19, 18, 'difundir las jornadas');
INSERT INTO vinculacionestadodetalle VALUES (261, 132, 18, 'capacitaciones');
INSERT INTO vinculacionestadodetalle VALUES (129, 21, 5, 'Pasantias no rentadas');
INSERT INTO vinculacionestadodetalle VALUES (129, 21, 2, 'Proyecto sobre la naturaleza');
INSERT INTO vinculacionestadodetalle VALUES (221, 103, 6, 'subsidio');
INSERT INTO vinculacionestadodetalle VALUES (221, 75, 6, 'subsidio');
INSERT INTO vinculacionestadodetalle VALUES (221, 26, 31, 'actividades conjuntas');
INSERT INTO vinculacionestadodetalle VALUES (208, 111, 6, 'Subsidios');
INSERT INTO vinculacionestadodetalle VALUES (4, 54, 1, 'les derivan gente para hacer uso del banco de ortopedia');
INSERT INTO vinculacionestadodetalle VALUES (4, 191, 1, 'Les derivan gente para hacer uso del banco de ortopedia');
INSERT INTO vinculacionestadodetalle VALUES (4, 3, 1, 'es derivan gente para hacer uso del banco de ortopedia');
INSERT INTO vinculacionestadodetalle VALUES (65, 192, 41, 'Federados');
INSERT INTO vinculacionestadodetalle VALUES (202, 95, 5, 'Proyecto de panadería y donaciones');
INSERT INTO vinculacionestadodetalle VALUES (202, 127, 7, 'Proyectos preventivos, entrega de medicamentos');
INSERT INTO vinculacionestadodetalle VALUES (202, 110, 31, 'Recreación');
INSERT INTO vinculacionestadodetalle VALUES (202, 21, 3, 'Pasantías, taller internivel');
INSERT INTO vinculacionestadodetalle VALUES (202, 15, 6, 'Becas, gastos operativos y créditos para la gente');
INSERT INTO vinculacionestadodetalle VALUES (128, 21, 22, 'INTERPEÑAS');
INSERT INTO vinculacionestadodetalle VALUES (46, 103, 42, 'logística. A veces');
INSERT INTO vinculacionestadodetalle VALUES (46, 103, 4, '(provincial) promoción y desarrollo a través de artistas');
INSERT INTO vinculacionestadodetalle VALUES (46, 103, 6, '(Nacional. Fondo nalcional de las artes)Gestionar subsidios para festivales.');
INSERT INTO vinculacionestadodetalle VALUES (67, 103, 31, 'Movidas culturales.');
INSERT INTO vinculacionestadodetalle VALUES (67, 103, 5, 'consultas sobre ordenanzas');
INSERT INTO vinculacionestadodetalle VALUES (67, 107, 5, 'capacitación. Ejecución de proyectos. Empleo desarrollo humano.');
INSERT INTO vinculacionestadodetalle VALUES (67, 15, 5, '(cultura) consultas por proyectos');
INSERT INTO vinculacionestadodetalle VALUES (219, 118, 6, 'financiación de sueldos');
INSERT INTO vinculacionestadodetalle VALUES (219, 118, 4, 'Difusión');
INSERT INTO vinculacionestadodetalle VALUES (127, 114, 1, 'Derivación de casos');
INSERT INTO vinculacionestadodetalle VALUES (127, 55, 5, 'Charlas');
INSERT INTO vinculacionestadodetalle VALUES (127, 55, 1, 'Derivación de casos');
INSERT INTO vinculacionestadodetalle VALUES (127, 176, 6, 'Financiación');
INSERT INTO vinculacionestadodetalle VALUES (127, 21, 7, NULL);
INSERT INTO vinculacionestadodetalle VALUES (13, 22, 8, 'Inspecciones');
INSERT INTO vinculacionestadodetalle VALUES (13, 22, 9, ' petitorios, huelgas');
INSERT INTO vinculacionestadodetalle VALUES (13, 11, 8, 'Inspecciones');
INSERT INTO vinculacionestadodetalle VALUES (13, 11, 9, 'paritarias y huelgas');
INSERT INTO vinculacionestadodetalle VALUES (262, 114, 2, 'proyectos socio-comunitarios');
INSERT INTO vinculacionestadodetalle VALUES (262, 111, 2, 'proyectos socio-comunitarios');
INSERT INTO vinculacionestadodetalle VALUES (262, 107, 7, 'Academicos y adminitrativos');
INSERT INTO vinculacionestadodetalle VALUES (262, 21, 2, 'articulación');
INSERT INTO vinculacionestadodetalle VALUES (125, 114, 6, 'Colaboran en el pago de alquiles del SUM, zapatillas, mercadería, juguetes.');
INSERT INTO vinculacionestadodetalle VALUES (125, 91, 14, 'Atender  a las personas en emergencia, traslado');
INSERT INTO vinculacionestadodetalle VALUES (125, 21, 5, 'capacitación, asesoramiento');
INSERT INTO vinculacionestadodetalle VALUES (125, 21, 4, 'intercambio de servicios y recursos');
INSERT INTO vinculacionestadodetalle VALUES (236, 114, 4, 'le alquilan en comodato el salón.');
INSERT INTO vinculacionestadodetalle VALUES (236, 114, 6, 'Le paga a los profesores de tango y dibujo');
INSERT INTO vinculacionestadodetalle VALUES (236, 127, 4, 'La soc. de fomento le presta el lugar y euqipamiento para que funcionee el centro de salud.');
INSERT INTO vinculacionestadodetalle VALUES (236, 193, 2, 'Hacen en conjunto eventos, comopor ejemplo, el día del niño.');
INSERT INTO vinculacionestadodetalle VALUES (236, 93, 6, 'Reciben un subsidio para pagar a la bibliotecatia y cmprar libros.');
INSERT INTO vinculacionestadodetalle VALUES (236, 194, 31, 'cada 15 días proyectan películas junto con estas instituciones. Organizan eventos en conjunto.');
INSERT INTO vinculacionestadodetalle VALUES (236, 195, 31, 'cada 15 días proyectan películas junto con estas instituciones. Organizan eventos en conjunto.');
INSERT INTO vinculacionestadodetalle VALUES (236, 196, 31, 'cada 15 días proyectan películas junto con estas instituciones. Organizan eventos en conjunto.');
INSERT INTO vinculacionestadodetalle VALUES (236, 197, 31, 'cada 15 días proyectan películas junto con estas instituciones. Organizan eventos en conjunto.');
INSERT INTO vinculacionestadodetalle VALUES (236, 165, 4, 'Reciben libros para la biblioteca.');
INSERT INTO vinculacionestadodetalle VALUES (189, 136, 4, 'Profesor de gimnasia recurso de la UNICEN, pago la misma');
INSERT INTO vinculacionestadodetalle VALUES (189, 21, 4, 'Otroga PC y fotocopiadora, y mantenimiento d elas mismas');
INSERT INTO vinculacionestadodetalle VALUES (189, 28, 4, 'Curso de informática');
INSERT INTO vinculacionestadodetalle VALUES (189, 198, 4, 'Curso de Informática');
INSERT INTO vinculacionestadodetalle VALUES (189, 40, 4, 'Pro Huerta');
INSERT INTO vinculacionestadodetalle VALUES (189, 100, 4, 'Programa Pro bienestar');
INSERT INTO vinculacionestadodetalle VALUES (189, 105, 6, 'Subsidio mensual para biblioteca');
INSERT INTO vinculacionestadodetalle VALUES (189, 114, 4, 'Parte de la producción de la huerta se entrega en Desarrollo Social');
INSERT INTO vinculacionestadodetalle VALUES (189, 93, 6, 'Subsidio');
INSERT INTO vinculacionestadodetalle VALUES (159, 127, 9, 'Se busca tratar de llevar a cabo los objetivos del colegio');
INSERT INTO vinculacionestadodetalle VALUES (159, 127, 5, 'proyectarnos a la sociedad a través de estas áreas');
INSERT INTO vinculacionestadodetalle VALUES (159, 199, 9, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (159, 199, 5, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (159, 9, 5, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (159, 9, 9, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (159, 4, 5, 'proyectarnos a la sociedad a través de estas áreas');
INSERT INTO vinculacionestadodetalle VALUES (159, 4, 9, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (159, 128, 5, 'proyectarnos a la sociedad a través de estas ár');
INSERT INTO vinculacionestadodetalle VALUES (159, 128, 9, 'Se busca tratar de llevar a cabo los obj. De la organización');
INSERT INTO vinculacionestadodetalle VALUES (263, 200, 1, 'Por chicos de La Granja');
INSERT INTO vinculacionestadodetalle VALUES (263, 3, 6, 'Subsidio para pago de combustible');
INSERT INTO vinculacionestadodetalle VALUES (263, 21, 3, 'por convenios con Cs. Económicas y Veterinarias');
INSERT INTO vinculacionestadodetalle VALUES (263, 10, 1, 'Por chicos de La Granja');
INSERT INTO vinculacionestadodetalle VALUES (263, 10, 2, 'Por chicos de La Granja');
INSERT INTO vinculacionestadodetalle VALUES (263, 132, 1, 'por chicos de La Granaja');
INSERT INTO vinculacionestadodetalle VALUES (263, 132, 2, 'por chicos de La Granja');
INSERT INTO vinculacionestadodetalle VALUES (263, 176, 6, 'Becas');
INSERT INTO vinculacionestadodetalle VALUES (177, 3, 6, 'Subsidios esporádicos');
INSERT INTO vinculacionestadodetalle VALUES (177, 202, 6, 'becas');
INSERT INTO vinculacionestadodetalle VALUES (177, 201, 14, 'Discusión de proyectos, intercambio de ideas');
INSERT INTO vinculacionestadodetalle VALUES (166, 103, 4, 'realización de eventos ocasionales');
INSERT INTO vinculacionestadodetalle VALUES (166, 176, 3, 'Financiamieto (becas/créditos)');
INSERT INTO vinculacionestadodetalle VALUES (166, 176, 6, 'Financiamiento');
INSERT INTO vinculacionestadodetalle VALUES (166, 15, 3, 'Financiamiento');
INSERT INTO vinculacionestadodetalle VALUES (166, 15, 6, 'financiamiento');
INSERT INTO vinculacionestadodetalle VALUES (166, 40, 5, 'Capacitación/material de trabajo');
INSERT INTO vinculacionestadodetalle VALUES (166, 21, 5, 'pasantías curriculares/capacitación');
INSERT INTO vinculacionestadodetalle VALUES (166, 21, 3, 'pasantías curriculares');
INSERT INTO vinculacionestadodetalle VALUES (33, 3, 4, 'Recursos para la asistencia');
INSERT INTO vinculacionestadodetalle VALUES (33, 4, 3, 'pasantías de alumnos de Escuela de enfermería');
INSERT INTO vinculacionestadodetalle VALUES (33, 203, 4, 'La Cruz Roja cede las instalaciones para la atención y charlas informativas');
INSERT INTO vinculacionestadodetalle VALUES (33, 204, 8, 'Supervisión del Programa Remediar');
INSERT INTO vinculacionestadodetalle VALUES (33, 100, 2, 'Vacunación a la tercera edad');
INSERT INTO vinculacionestadodetalle VALUES (7, 4, 43, 'le hacemos donaciones');
INSERT INTO vinculacionestadodetalle VALUES (7, 205, 43, 'le hacemos donaciones');
INSERT INTO vinculacionestadodetalle VALUES (241, 3, 1, 'Por gestión de recursos y derivación de casos');
INSERT INTO vinculacionestadodetalle VALUES (241, 3, 4, 'Gestion de recursos y derivación de casos');
INSERT INTO vinculacionestadodetalle VALUES (247, 193, 4, 'Préstamo de salón para talleres, eventos');
INSERT INTO vinculacionestadodetalle VALUES (247, 23, 6, 'Subsidios');
INSERT INTO vinculacionestadodetalle VALUES (247, 26, 2, 'Talleres de lectura que hacemos con ellos');
INSERT INTO vinculacionestadodetalle VALUES (247, 187, 2, 'Talleres de lectura que hacemos con ellos');
INSERT INTO vinculacionestadodetalle VALUES (247, 165, 5, 'Capacitación');
INSERT INTO vinculacionestadodetalle VALUES (264, 206, 6, 'subsidios para pagar sueldos');
INSERT INTO vinculacionestadodetalle VALUES (264, 103, 2, 'organizamos eventos');
INSERT INTO vinculacionestadodetalle VALUES (264, 95, 6, 'subsidios para pagar sueldos');
INSERT INTO vinculacionestadodetalle VALUES (264, 165, 6, 'supervisión- subsidio');
INSERT INTO vinculacionestadodetalle VALUES (264, 165, 5, 'capacitación');
INSERT INTO vinculacionestadodetalle VALUES (264, 21, 4, 'convenio con programa barriadas por apoyo escoalr en las bibliotecas');
INSERT INTO vinculacionestadodetalle VALUES (264, 198, 4, 'computadoras para las bibliotecas');
INSERT INTO vinculacionestadodetalle VALUES (109, 60, 14, 'por festejos y recreación');
INSERT INTO vinculacionestadodetalle VALUES (106, 161, 6, 'financiamiento pedicura.');
INSERT INTO vinculacionestadodetalle VALUES (106, 103, 28, 'educación para tercera edad');
INSERT INTO vinculacionestadodetalle VALUES (106, 111, 28, 'actividades para tercera edad');
INSERT INTO vinculacionestadodetalle VALUES (106, 100, 6, 'alimentos');
INSERT INTO vinculacionestadodetalle VALUES (106, 161, 20, 'invitación a desfilesa a quienes participan en  folklore');
INSERT INTO vinculacionestadodetalle VALUES (146, 127, 9, 'Actualización del quirófano del hospital');
INSERT INTO vinculacionestadodetalle VALUES (8, 4, 25, 'Apoyo al hospital');
INSERT INTO vinculacionestadodetalle VALUES (8, 4, 24, NULL);
INSERT INTO vinculacionestadodetalle VALUES (1, 31, 44, 'Préstamo de maquinarias');
INSERT INTO vinculacionestadodetalle VALUES (1, 80, 27, 'Control de entradas en las competencias');
INSERT INTO vinculacionestadodetalle VALUES (1, 171, 16, 'Autorización de competencias');
INSERT INTO vinculacionestadodetalle VALUES (1, 99, 16, 'Autorización de competencias');
INSERT INTO vinculacionestadodetalle VALUES (1, 207, 16, 'Autorización de competencias');
INSERT INTO vinculacionestadodetalle VALUES (148, 114, 3, 'el centro comunitario fuenciona en las instalaciones de la soc. de fomento.');
INSERT INTO vinculacionestadodetalle VALUES (148, 21, 14, 'un grupo de alumnos de trababjo social quieren armar un centro de referencia.');
INSERT INTO vinculacionestadodetalle VALUES (160, 11, 5, 'para publicación.. Consultas DGI. Monotributo.');
INSERT INTO vinculacionestadodetalle VALUES (269, 114, 3, 'funciona un Centro comunitario en la sede.');
INSERT INTO vinculacionestadodetalle VALUES (270, 114, 9, 'gestiones');
INSERT INTO vinculacionestadodetalle VALUES (34, 8, 1, 'Gestiones de subsidios o recursos');
INSERT INTO vinculacionestadodetalle VALUES (34, 114, 1, 'Gestiones de subsidios o recursos');
INSERT INTO vinculacionestadodetalle VALUES (34, 4, 1, 'Atención médica');
INSERT INTO vinculacionestadodetalle VALUES (34, 187, 4, 'Pesquizamiento de vista de los alumnos');
INSERT INTO vinculacionestadodetalle VALUES (34, 132, 4, 'Pesquizamiento de vista de los alumnos');


--
-- Data for Name: vinculacionorgsociales; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinculacionorgsociales VALUES (9, 75, 1, true, NULL);
INSERT INTO vinculacionorgsociales VALUES (9, 186, 1, true, NULL);
INSERT INTO vinculacionorgsociales VALUES (9, 186, 31, true, NULL);
INSERT INTO vinculacionorgsociales VALUES (10, 59, 2, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (10, 76, 2, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (22, 208, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (64, 64, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (64, 64, 28, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (64, 109, 1, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (65, 47, 27, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (65, 140, 27, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (101, 12, 27, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (101, 126, 27, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (113, 63, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (113, 117, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (113, 119, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (113, 153, 17, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (113, 158, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (113, 189, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (113, 229, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (113, 236, 4, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (113, 238, 28, true, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (120, 189, 4, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (126, 101, 27, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (149, 85, 38, true, 'SI, NO FORMALES');
INSERT INTO vinculacionorgsociales VALUES (149, 130, 31, true, 'SI, NO FORMALES');
INSERT INTO vinculacionorgsociales VALUES (235, 5, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (235, 220, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (246, 59, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (246, 76, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (246, 85, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (258, 67, 17, false, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (259, 64, 15, true, 'SI, NO FORMALES');
INSERT INTO vinculacionorgsociales VALUES (221, 102, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (4, 97, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (4, 87, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (4, 132, 14, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (202, 189, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (202, 153, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (202, 57, 31, false, NULL);
INSERT INTO vinculacionorgsociales VALUES (202, 89, 31, false, NULL);
INSERT INTO vinculacionorgsociales VALUES (128, 116, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (128, 46, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (128, 50, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (128, 130, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (128, 114, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (128, 149, 4, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 50, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 121, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 130, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 114, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 149, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 116, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (46, 64, 28, false, NULL);
INSERT INTO vinculacionorgsociales VALUES (46, 64, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (67, 48, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (67, 258, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (67, 57, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (67, 161, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (262, 255, 31, false, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (125, 168, 14, false, NULL);
INSERT INTO vinculacionorgsociales VALUES (236, 113, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (127, 99, 4, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (263, 252, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (177, 252, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (177, 263, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (177, 242, 38, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (166, 255, 5, false, 'SI, NO FORMALES');
INSERT INTO vinculacionorgsociales VALUES (33, 109, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (33, 97, 4, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (7, 102, 28, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (7, 64, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (7, 8, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (7, 97, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (7, 33, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (241, 168, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (241, 168, 5, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (241, 97, 4, false, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (247, 257, 17, false, 'SI, FORMALES');
INSERT INTO vinculacionorgsociales VALUES (8, 60, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (148, 64, 31, false, 'NO');
INSERT INTO vinculacionorgsociales VALUES (148, 185, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (270, 148, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (34, 97, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (34, 4, 31, true, 'NO');
INSERT INTO vinculacionorgsociales VALUES (34, 87, 31, true, 'NO');


--
-- Data for Name: vinculacionotrasorg; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO vinculacionotrasorg VALUES (9, 50, 2, false, NULL);
INSERT INTO vinculacionotrasorg VALUES (9, 51, 28, false, NULL);
INSERT INTO vinculacionotrasorg VALUES (9, 52, 27, false, NULL);
INSERT INTO vinculacionotrasorg VALUES (15, 70, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (22, 83, 31, true, NULL);
INSERT INTO vinculacionotrasorg VALUES (47, 99, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (47, 100, 27, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (47, 101, 27, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (64, 77, 40, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (64, 78, 4, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (101, 38, 27, true, 'SI, NO FORMALES');
INSERT INTO vinculacionotrasorg VALUES (113, 58, 2, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (130, 72, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (139, 105, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (149, 80, 12, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (218, 110, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (235, 108, 4, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (235, 109, 4, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (238, 81, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (243, 44, 31, true, 'SI, NO FORMALES');
INSERT INTO vinculacionotrasorg VALUES (254, 61, 31, false, 'SI, NO FORMALES');
INSERT INTO vinculacionotrasorg VALUES (259, 64, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (259, 65, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (259, 66, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (260, 85, 31, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (260, 86, 9, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (260, 89, 2, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (260, 96, 28, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (260, 97, 31, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (261, 61, 5, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (129, 92, 2, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (129, 52, 27, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (221, 94, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (202, 77, 31, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (202, 61, 31, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (219, 61, 4, false, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (13, 70, 9, true, 'NO');
INSERT INTO vinculacionotrasorg VALUES (231, 18, 25, false, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (262, 42, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (125, 61, 4, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (166, 20, 5, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (33, 77, 5, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (241, 52, 27, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (241, 42, 5, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (264, 94, 31, true, 'SI, FORMALES');
INSERT INTO vinculacionotrasorg VALUES (109, 52, 31, false, NULL);
INSERT INTO vinculacionotrasorg VALUES (109, 77, 31, false, NULL);
INSERT INTO vinculacionotrasorg VALUES (148, 61, 31, false, 'NO');
INSERT INTO vinculacionotrasorg VALUES (148, 58, 31, false, 'NO');


--
-- Data for Name: visionproblemascausas; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO visionproblemascausas VALUES (2, 'Inseguridad', 'Educativas y falta de compromiso', 258);
INSERT INTO visionproblemascausas VALUES (3, 'Educación', 'Educativas y falta de compromiso', 258);
INSERT INTO visionproblemascausas VALUES (4, 'Salud', 'Educativas y falta de compromiso', 258);
INSERT INTO visionproblemascausas VALUES (6, 'Necesidades económicas', 'El país tiene problemas económicos', 250);
INSERT INTO visionproblemascausas VALUES (7, 'Asistencia psicológica y psiquiátrica', 'Falta de alimentación, ropa, servicios médicos', 250);
INSERT INTO visionproblemascausas VALUES (9, 'Promoción de Tandil a nivel nacional', 'Falta de plata. No hay presupuesto municipal para el turismo', 10);
INSERT INTO visionproblemascausas VALUES (10, 'Estado de los paseos de la ciudad', 'Falta de plata. No hay presupuesto municipal para el turismo', 10);
INSERT INTO visionproblemascausas VALUES (11, 'Actividades paea el turista en espacios cerrados', 'Falta de inversión privada', 10);
INSERT INTO visionproblemascausas VALUES (14, 'Falta de contención familiar y comunitaria', 'Varias', 243);
INSERT INTO visionproblemascausas VALUES (16, 'Los problemas que hay en la ciudad en general', NULL, 242);
INSERT INTO visionproblemascausas VALUES (17, 'Falta de capacitacionn y hábitos laboralesd los futuros operarios', 'Falta de una organizaicón que se dedique a la capacitacions laboral. Tambien el deseo o conciencia que habilite al pibe a la incorporación al trabajo.Familia como obstáculo, a veces.', 9);
INSERT INTO visionproblemascausas VALUES (18, NULL, NULL, 9);
INSERT INTO visionproblemascausas VALUES (20, 'Inseguridad', 'falta de seguridad. Somos punto fácil los viejos', 113);
INSERT INTO visionproblemascausas VALUES (21, 'Sueldos Bajos', 'El gobierno no aumenta', 113);
INSERT INTO visionproblemascausas VALUES (22, 'Salud', 'Problemas propios de la edad y malas respuestas al problema', 113);
INSERT INTO visionproblemascausas VALUES (23, 'Maltrato', 'no se sabe. El maltratado mismo lo oculta. Genete que no sabe vivir con personas mayores. No tienen paciencia.', 113);
INSERT INTO visionproblemascausas VALUES (25, 'Falta de trabajo', 'no explicita', 254);
INSERT INTO visionproblemascausas VALUES (26, 'Falta de participación', 'Desinterés', 254);
INSERT INTO visionproblemascausas VALUES (28, 'Dificultades y falta de acceso a la vivienda', 'Económica, de ingresos', 259);
INSERT INTO visionproblemascausas VALUES (29, 'Adaptación al cambio, contención', 'Desarraigo propio del estudiar en otra ciudad', 259);
INSERT INTO visionproblemascausas VALUES (30, 'Falata de habilidades para el estudio', 'Mala base de enseñanza', 259);
INSERT INTO visionproblemascausas VALUES (31, 'Falta de una educación integral (política, cultural, etc.) en la Universidad. Desarrollan "áreas", no es englobante de la realidad', 'La misma trasmisión de la cultura', 259);
INSERT INTO visionproblemascausas VALUES (32, 'Problema económico general que les impide acceder a hacer una carrera en el tiempo previsible, la igual salida laboral.', 'el contexto actual económico y social', 259);
INSERT INTO visionproblemascausas VALUES (34, 'No alcanza el dinero para la agrupación de a caballo', 'Representamos a una ciudad pero nadie nos ayuda', 130);
INSERT INTO visionproblemascausas VALUES (35, 'Madres jóvenes solas', 'Falta de contneción familiar', 64);
INSERT INTO visionproblemascausas VALUES (36, 'Falta de vivienda en la clase media de trabajo', NULL, 64);
INSERT INTO visionproblemascausas VALUES (37, 'Falta de capacitación en la bolsa de trabajo', 'Escolaridad incompletas, vivir de changas, expectativas a futuro', 64);
INSERT INTO visionproblemascausas VALUES (38, 'Edilicio. Necesitan reacondicionar el edificio', 'Aumenta la cantidad de usuarios', 126);
INSERT INTO visionproblemascausas VALUES (39, 'Reparación total del vestuario', 'Aumenta la cantidad de usuarios', 126);
INSERT INTO visionproblemascausas VALUES (40, 'Proyectar un gimnasio con dormis', 'Aumenta la cantidad de usuarios', 126);
INSERT INTO visionproblemascausas VALUES (42, 'Problemas de educación en generla', '"Porque al ser humano le cuesta desprenderse y compartir. Da lo que le sobra. Hay mucha ambición. Porque el gobierno no se ocupa de vubrir necesidades, de todos modos no nos metemos en política."', 228);
INSERT INTO visionproblemascausas VALUES (43, 'Falta de solidaridad', '"Porque al ser humano le cuesta desprenderse y compartir. Da lo que le sobra. Hay mucha ambición. Porque el gobierno no se ocupa de vubrir necesidades, de todos modos no nos metemos en política."', 228);
INSERT INTO visionproblemascausas VALUES (44, 'Falta de predispocisión a hacer el bien', '"Porque al ser humano le cuesta desprenderse y compartir. Da lo que le sobra. Hay mucha ambición. Porque el gobierno no se ocupa de vubrir necesidades, de todos modos no nos metemos en política."', 228);
INSERT INTO visionproblemascausas VALUES (46, 'Conseguir una sede', 'Implicaria muchos gastos', 149);
INSERT INTO visionproblemascausas VALUES (47, 'Dinero', 'No nos ayuda nadie, ponemos el dinero de nosotros.', 149);
INSERT INTO visionproblemascausas VALUES (49, 'No alquilan más el salón para cumpleaños de 15', 'Desórdenes', 238);
INSERT INTO visionproblemascausas VALUES (52, 'Ausencia de políticas agropecuarias orientadas al afianzamiento de las economías regionales y al desarrollo del pequeño y mediano productor y el desarrollo de los pequeños pueblos del interior', 'el estado nacional mira siempre al interior con afán recaudador, por ende no le intereza si el anhelo es producir 100 millones de toneladas con 10 pool de siembra o multinacionales, o producidas por los autéticos y genuinos productores', 246);
INSERT INTO visionproblemascausas VALUES (54, 'Dificultad en la resolución pacífica de conflictos. Enseguida quieren pegar, no pueden reflexionar.', 'Falta de ejemplos en la sociedad. Generalmente vienen de sectores sociales donde se comportan de manera violenta.', 260);
INSERT INTO visionproblemascausas VALUES (55, 'Desinterés por la educación. No pueden aprovechar la escuela pública. Subestiman el conocimiento', 'No pueden mirar hacia delante', 260);
INSERT INTO visionproblemascausas VALUES (56, 'Desigualdad de oportunidades', 'Desigualdades económicas, culturales y siociales.', 260);
INSERT INTO visionproblemascausas VALUES (57, 'Discriminación. Al de gorrita, pantalón caído, por el color de la cara', 'Soc. enferma de racismo.Es una causa ansestral Astá muy arraigado, dese la conquista española, la conquista del desierto. Se acentua por los medios de comunicación que muestran "modelos europeos", no de nativos de nuestra tierra', 260);
INSERT INTO visionproblemascausas VALUES (59, 'Falta de colaboradores', 'Falta de tiempo', 65);
INSERT INTO visionproblemascausas VALUES (60, 'Financiamiento de actividades', 'Baja cantidad de socios, pocos ingresos', 47);
INSERT INTO visionproblemascausas VALUES (61, 'Incorporación de instructores náuticos', 'No se consiguen', 47);
INSERT INTO visionproblemascausas VALUES (62, 'falta de sede', 'por no tener personería jurídica', 139);
INSERT INTO visionproblemascausas VALUES (63, 'falta de recursos. "hacemos todo sin tener nada"', 'por no tener personería jurídica', 139);
INSERT INTO visionproblemascausas VALUES (64, 'Mantenimiento y ampliación', 'por falta de recursos', 235);
INSERT INTO visionproblemascausas VALUES (65, 'Problemas económicos', 'No podemos amentar la cuota social', 218);
INSERT INTO visionproblemascausas VALUES (66, 'armar la sala de salud', 'no hay financiamiento', 133);
INSERT INTO visionproblemascausas VALUES (67, 'conseguir subsidio provincial para la bibliotecaria', 'no hay financiamiento', 133);
INSERT INTO visionproblemascausas VALUES (68, 'conseguir talleres gratuitos porque la comision no puede pagar', NULL, 133);
INSERT INTO visionproblemascausas VALUES (69, 'Minoridad', 'falta de contención', 120);
INSERT INTO visionproblemascausas VALUES (70, 'Falata de servicios', 'falta de acceso a los mismos', 120);
INSERT INTO visionproblemascausas VALUES (71, 'Económicos', 'Aumento de la cuota', 129);
INSERT INTO visionproblemascausas VALUES (72, 'No contar con edificio propio', NULL, 129);
INSERT INTO visionproblemascausas VALUES (73, 'Ampliación de la sala de lectura', 'la falta de recursos financieros', 221);
INSERT INTO visionproblemascausas VALUES (74, 'Compra de material', 'la falta de recursos financieros', 221);
INSERT INTO visionproblemascausas VALUES (75, 'Carencia de mobiliario', 'la falta de recursos financieros', 221);
INSERT INTO visionproblemascausas VALUES (76, 'Falta de recursos disponibles', 'Desinterés', 208);
INSERT INTO visionproblemascausas VALUES (77, 'El tiempo que demandan las actividades', 'la gente no hace cosas por el bien común', 208);
INSERT INTO visionproblemascausas VALUES (78, 'Decadencia del sistema educativo', 'Falta de valores', 261);
INSERT INTO visionproblemascausas VALUES (79, 'Violencia en las escuelas', 'Falta de compromiso en los docentes', 261);
INSERT INTO visionproblemascausas VALUES (80, 'Laborales', 'Falta de trabajo', 202);
INSERT INTO visionproblemascausas VALUES (81, 'Discapacidad', 'No hay propuestas donde se contengan a la madre y al hijo con discapacidad', 202);
INSERT INTO visionproblemascausas VALUES (82, 'Económicos', 'no hay apoyo.', 128);
INSERT INTO visionproblemascausas VALUES (83, 'Falta de acercamiento de la juventud hacia nuestras raíces.', 'con el tema de la informática...es luchar contra el cyber.', 46);
INSERT INTO visionproblemascausas VALUES (84, 'Falta de trabajo', NULL, 67);
INSERT INTO visionproblemascausas VALUES (85, 'Deficiencia educativa', NULL, 67);
INSERT INTO visionproblemascausas VALUES (86, 'Discriminación', 'por condición', 67);
INSERT INTO visionproblemascausas VALUES (87, 'problemas económicos', 'situación estrutural', 219);
INSERT INTO visionproblemascausas VALUES (88, 'La cantidad de gente por debajo de la línea de pobreza', 'Desocupación', 13);
INSERT INTO visionproblemascausas VALUES (89, 'Escolaridad', 'Es más importante tener que saber', 13);
INSERT INTO visionproblemascausas VALUES (90, 'Inseguridad', 'La policía, la educación y la falta de trabajo', 13);
INSERT INTO visionproblemascausas VALUES (91, 'Salud', 'Malos gobiernos', 231);
INSERT INTO visionproblemascausas VALUES (92, 'Educacion', 'Malos gobiernos', 231);
INSERT INTO visionproblemascausas VALUES (93, 'Seguridad', 'Malos gobiernos', 231);
INSERT INTO visionproblemascausas VALUES (94, 'Problemas economicos', 'Malos gobiernos', 231);
INSERT INTO visionproblemascausas VALUES (95, 'Falta de formación', ' Políticas económicas', 262);
INSERT INTO visionproblemascausas VALUES (96, 'Problemas de seguridad', 'Justicia social', 262);
INSERT INTO visionproblemascausas VALUES (97, 'Problemas del Pos-modernismo', 'Vaciamiento cultural', 262);
INSERT INTO visionproblemascausas VALUES (98, 'Los medios de comunicación', 'Factores de poder.', 262);
INSERT INTO visionproblemascausas VALUES (99, 'Económicos', '"siempre tengo algún teléfono para que me alcancen dinero"', 125);
INSERT INTO visionproblemascausas VALUES (100, '"galpón de los sueños" (SUM) alquiler', 'económicos', 125);
INSERT INTO visionproblemascausas VALUES (101, 'Inseguridad', 'Falta de contención en la casa.Los padres trabajan o no están y quedan solos. En el barrio hay un grupo de chicos difíciles. No tienen contención en la casa.', 236);
INSERT INTO visionproblemascausas VALUES (102, 'Discapacidad', 'Falta de políticas de atención a personas con capacidades diferentes.', 4);
INSERT INTO visionproblemascausas VALUES (104, 'No toma de conciencia de los padres para ponerles limites a sus hijos', 'los padres tienen miedo de ponerles límites a sus hijos, les parece que sus hijos los quieren menos', 127);
INSERT INTO visionproblemascausas VALUES (105, 'La falta de denuncia de los jubilados cuando se les insinua un pago por la prestación médica de cualquier nivel', 'temor a que le medico o efector se entere que hay un paciente que lo ha denunciado', 189);
INSERT INTO visionproblemascausas VALUES (106, 'Los haberes jubilatorios deben ser del 82% movil y nadie lo paga', 'el jubilaod es considerado un gasto para el estado, pero hay que reconocer que este gobierno ha dado movilidad', 189);
INSERT INTO visionproblemascausas VALUES (107, 'Venta de medicamentos fuera de las farmacias', 'Falta de controles del cumplimiento de las leyes', 159);
INSERT INTO visionproblemascausas VALUES (108, 'Que esté desvirtuada la figura de la farmacia sindical', 'Falta de controles del cumplimiento de las leyes', 159);
INSERT INTO visionproblemascausas VALUES (109, 'Incumplimiento por parte de las obras sociales de los pagos a las farmacias', 'Alteración en el equilibrio comercial entre las obras sociales y el colegio. Hacen abuso de una postura dominante, ellos son los que pagan y lo hacen cuando quieren. A su vez algunas tienen problemas financieros', 159);
INSERT INTO visionproblemascausas VALUES (110, 'Económico', 'mala distribución de la riqueza', 263);
INSERT INTO visionproblemascausas VALUES (111, 'Exclusión y la brecha existente entre los que más y los que menos tienen', 'modelo político económico que se implementa', 177);
INSERT INTO visionproblemascausas VALUES (112, 'Trabajo y calidad de trabajo', 'la exclusión y la brecha existente entre los que mas y menos tienen. Este problema es la causa de los otros y tiene que ver con el modleo político económico que se implementa actualmente', 177);
INSERT INTO visionproblemascausas VALUES (113, 'Vivienda salud y educación', NULL, 177);
INSERT INTO visionproblemascausas VALUES (114, 'dificultades en la inserción laboral', 'tipo de demandas para cubrir los puestos', 166);
INSERT INTO visionproblemascausas VALUES (115, 'desintegración familiar', 'proceos económicos y sociales de hace años', 166);
INSERT INTO visionproblemascausas VALUES (116, 'violencia', 'exceso laboral por necesidad, descuido de la familia', 33);
INSERT INTO visionproblemascausas VALUES (117, 'accidentes', 'vinculado a la "situación actual de locura"', 33);
INSERT INTO visionproblemascausas VALUES (118, 'Función actual de la educación ("escuelas comedores")', 'relacionado a la situación social/económica que requiere ser atendida.', 33);
INSERT INTO visionproblemascausas VALUES (119, 'Falta de educación de la gente. El no acercarse. El no ayudar', 'nace de la formación del hogar. De que hay mucho egoismo. De que cada uno piensa en uno mismo, no en ver que le pasa al otro, no se ayuda. No se piensa en que se puede hacer para ser mejor y ayudar a otro.', 7);
INSERT INTO visionproblemascausas VALUES (120, 'Familiares', 'Historias difíciles', 241);
INSERT INTO visionproblemascausas VALUES (121, 'Problemas educativos', 'Historias difíciles', 241);
INSERT INTO visionproblemascausas VALUES (122, 'Problemas de contención.', 'Historias difíciles', 241);
INSERT INTO visionproblemascausas VALUES (123, 'Problemas de alimentación', 'Historias difíciles', 241);
INSERT INTO visionproblemascausas VALUES (124, 'Problemas de trabajo', 'Historias difíciles', 241);
INSERT INTO visionproblemascausas VALUES (125, 'Falta de espacio físico propio', 'NO lo tenemos por cuestiones económicas', 247);
INSERT INTO visionproblemascausas VALUES (126, 'Falta de recursos económicos', 'Grandes requisitos para acceder a subsidios. A su vez, al no tener espacio propio y estar en un lugar tan chiquito, no podemos organizar eventos como bingos para recaudar fondos', 247);
INSERT INTO visionproblemascausas VALUES (127, 'mantener todas las bibliotecas funcionando', 'falta de recursos económicos. Las dificulatades para conseguir subsidios del Estado. Ponen muchas trabas, muchos requisitos y a las bibliotecas pequeñas les cuesta más cumplirlos', 264);
INSERT INTO visionproblemascausas VALUES (128, 'poder conseguirles sueldos un poquito más elevados para los empleados de las bibliotecas', 'falta de recursos económicos y dificultad para acceder a los subsidios', 264);
INSERT INTO visionproblemascausas VALUES (129, 'Accesibilidad', 'Leyes que no se cumplen', 109);
INSERT INTO visionproblemascausas VALUES (130, 'Insersión laboral', 'Falta de recursos', 109);
INSERT INTO visionproblemascausas VALUES (131, 'Vivienda.', NULL, 109);
INSERT INTO visionproblemascausas VALUES (132, 'PAMI: falta de profesionales médicos. No pueden elegir el médico.', 'son inoperantes.', 106);
INSERT INTO visionproblemascausas VALUES (133, 'Delincuencia', 'Droga, alcohol', 146);
INSERT INTO visionproblemascausas VALUES (134, 'Accidentología', 'No hay prevención, hay un vacío del Estado, y las organización sociales las podrían cumplir pero no en forma aislada', 146);
INSERT INTO visionproblemascausas VALUES (135, 'Seguridad', 'Por la actualidad, despreocupación de los padres', 1);
INSERT INTO visionproblemascausas VALUES (136, 'Picadas en las calles', 'No hay control', 1);
INSERT INTO visionproblemascausas VALUES (137, 'falta de lugar especifico dnde se trate la salud mental (hospital) lugar de internación, equipos competentes en esta área, de forma gratuita', 'negligencia', 265);
INSERT INTO visionproblemascausas VALUES (138, 'problemática adolescente (droga, salud)', 'educación familiar, marginación laboral y educativa, falta de trabajo', 148);
INSERT INTO visionproblemascausas VALUES (139, 'Riesgo.', 'Vehículos ordinarios que no estan en condición de recibir impactos.', 268);
INSERT INTO visionproblemascausas VALUES (140, 'accidentes', 'Rutas y caminos en mal estado.Falta de educación vial y de exigencia para cumplir normas.', 268);
INSERT INTO visionproblemascausas VALUES (141, NULL, NULL, 268);
INSERT INTO visionproblemascausas VALUES (142, 'Chicos y ancianos en riesgo.', 'abandono', 160);
INSERT INTO visionproblemascausas VALUES (143, 'poblacion de chicos que dejan la escuela.', NULL, 160);
INSERT INTO visionproblemascausas VALUES (144, 'Chicos sin contención', NULL, 269);
INSERT INTO visionproblemascausas VALUES (145, 'Falta de control sobre la nutrición y educacion de los chicos', NULL, 269);
INSERT INTO visionproblemascausas VALUES (146, 'Droga', NULL, 269);
INSERT INTO visionproblemascausas VALUES (147, 'alcohol', NULL, 269);
INSERT INTO visionproblemascausas VALUES (148, 'no hay actividades para adolescentes', NULL, 270);
INSERT INTO visionproblemascausas VALUES (149, 'Drogadicción', NULL, 34);
INSERT INTO visionproblemascausas VALUES (150, 'Pobreza', NULL, 34);


--
-- Data for Name: visionrealidadopinionpoliticasocial; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO visionrealidadopinionpoliticasocial VALUES (9, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (10, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (15, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (22, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (47, 21);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (64, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (65, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (65, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (101, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (113, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (120, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (126, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (130, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (133, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (135, 22);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (139, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (149, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (218, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (228, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (235, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (238, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (242, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (243, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (246, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (250, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (254, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (258, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (259, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (260, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (129, 21);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (221, 22);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (208, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (261, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (202, 22);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (128, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (46, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (67, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (67, 9);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (219, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (13, 6);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (231, 3);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (231, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (262, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (125, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (236, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (127, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (189, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (159, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (263, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (177, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (4, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (166, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (33, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (7, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (241, 3);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (247, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (264, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (109, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (106, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (146, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (8, 22);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (1, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (265, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (148, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (268, 1);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (268, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (160, 5);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (269, 2);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (270, 4);
INSERT INTO visionrealidadopinionpoliticasocial VALUES (34, 4);


--
-- PostgreSQL database dump complete
--

