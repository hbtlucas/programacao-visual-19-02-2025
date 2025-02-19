CREATE TABLE public.areas (
	codigoarea numeric(3) NOT NULL,
	descricaoarea varchar(20) NULL,
	CONSTRAINT areas_pkey PRIMARY KEY (codigoarea)
);

CREATE TABLE public.autores (
	codigoautor numeric(3) NOT NULL,
	nomeautor varchar(40) NULL,
	nascimento date NULL,
	regiaonascimento varchar(30) NULL,
	CONSTRAINT autores_pkey PRIMARY KEY (codigoautor)
);


CREATE TABLE public.bibliotecas (
	codigobiblioteca numeric(3) NOT NULL,
	descricaobiblioteca varchar(40) NULL,
	CONSTRAINT bibliotecas_pkey PRIMARY KEY (codigobiblioteca)
);


CREATE TABLE public.editoras (
	codigoeditora numeric(3) NOT NULL,
	descricaoeditora varchar(30) NULL,
	CONSTRAINT editoras_pkey PRIMARY KEY (codigoeditora)
);


CREATE TABLE public.tiposmidias (
	codigomidia numeric(3) NOT NULL,
	descricaomidia varchar(20) NULL,
	CONSTRAINT tiposmidias_pkey PRIMARY KEY (codigomidia)
);


CREATE TABLE public.acervos (
	codigoacervo numeric(8) NOT NULL,
	titulo varchar(50) NULL,
	anopublicacao numeric(4) NULL,
	codigoarea numeric(3) NULL,
	codigobiblioteca numeric(3) NULL,
	codigomidia numeric(3) NULL,
	codigoeditora numeric(3) NULL,
	paginas numeric(3) NULL,
	CONSTRAINT acervos_pkey PRIMARY KEY (codigoacervo),
	CONSTRAINT fk2 FOREIGN KEY (codigoarea) REFERENCES public.areas(codigoarea),
	CONSTRAINT fk3 FOREIGN KEY (codigobiblioteca) REFERENCES public.bibliotecas(codigobiblioteca),
	CONSTRAINT fk4 FOREIGN KEY (codigomidia) REFERENCES public.tiposmidias(codigomidia),
	CONSTRAINT fk5 FOREIGN KEY (codigoeditora) REFERENCES public.editoras(codigoeditora)
);


CREATE TABLE public.acervosautores (
	codigoacervo numeric(8) NOT NULL,
	codigoautor numeric(3) NOT NULL,
	CONSTRAINT acervosautores_pkey PRIMARY KEY (codigoautor, codigoacervo),
	CONSTRAINT fk7 FOREIGN KEY (codigoautor) REFERENCES public.autores(codigoautor),
	CONSTRAINT fk8 FOREIGN KEY (codigoacervo) REFERENCES public.acervos(codigoacervo)
);


INSERT INTO public.tiposmidias (codigomidia,descricaomidia) VALUES
	 (1,'Impressa'),
	 (2,'Digital');

INSERT INTO public.editoras (codigoeditora,descricaoeditora) VALUES
	 (1,'AP Cultural'),
	 (2,'Campus'),
	 (3,'Artenova'),
	 (4,'Axcel Books'),
	 (5,'Elsevier'),
	 (6,'Atica');

INSERT INTO public.bibliotecas (codigobiblioteca,descricaobiblioteca) VALUES
	 (1,'Central'),
	 (2,'Campus 1'),
	 (3,'Campus 2'),
	 (4,'Campus 3');

INSERT INTO public.areas (codigoarea,descricaoarea) VALUES
	 (1,'Exatas'),
	 (2,'Humanas'),
	 (3,'Biologicas'),
	 (4,'Agrarias');

INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (1,'Código Tributário Nacional',1995,1,1,1,3,177),
	 (2,'História da Revolção Chinesa',1995,1,3,1,1,142),
	 (3,'PROGRAMA DE TRANSIÇÃO',1975,2,3,1,3,123),
	 (4,'Linhagens do Estado Absolutista',1981,2,1,1,1,155),
	 (5,'Legislação do Sistema de Controle Interno do Pod',2005,2,3,1,4,199),
	 (6,'Política Cultural',2010,2,3,1,3,40),
	 (7,'Movimento estudantil e a consciência social na Am',2005,3,1,1,5,98),
	 (8,'Introdução às Ciências Socias',1992,1,3,1,4,150),
	 (9,'Fascismo e ditadura Militar',2013,1,3,1,2,76),
	 (10,'Crescimento econômico moderno',1982,2,2,1,4,119);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (11,'Drogas nas Escolas',1998,1,1,1,2,81),
	 (12,'Introdução à metafísica',1980,2,3,1,3,133),
	 (13,'Compêndio dos elementos de economia pura',1980,3,2,1,4,90),
	 (14,'HistÃ³ria da revoluÃ§Ã£o Chinesa',1982,3,3,1,3,195),
	 (15,'Revista Brasileira de Filosofia',1978,3,2,1,4,73),
	 (16,'Emprego e Renda na Economia Informal da América L',1986,2,3,1,4,104),
	 (17,'Hip hop a periferia grita',1993,1,3,1,4,69),
	 (18,'Vozes do deserto',1977,2,2,1,4,112),
	 (19,'Melhore seu Vocabulário_ Dicionário Exemplificad',2003,1,1,1,1,149),
	 (20,'História e Crise',2012,2,1,1,3,61);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (21,'Mudanças sociais no Brasil',1987,1,2,1,1,136),
	 (22,'Síntese de História da Cultura Brasileira',2008,1,2,1,3,119),
	 (23,'Revista Filosofia Política n 04',1981,3,1,1,4,199),
	 (24,'Nau capitânia_ Pedro Álvares Cabral como e com q',1996,2,2,1,4,110),
	 (25,'Sistema de legislação ambiental',1980,3,1,1,3,114),
	 (26,'Linguagem e Desenvolvimento Intelectual na Crianç',2004,1,3,1,2,127),
	 (27,'Acção sindical frente as multinacionais',1979,2,2,1,1,49),
	 (28,'História e Revolução',1985,2,3,1,4,181),
	 (29,'TV a Cabo_ Origem Tecnologia e Evolução no Brasi',2012,2,2,1,5,112),
	 (30,'Ciclo de Palestras da Reforma Agrária',1986,3,2,1,2,80);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (31,'Escritos Militares',2007,1,3,1,1,193),
	 (32,'Viva a Liberdade',1994,1,3,1,2,101),
	 (33,'Políticas de Emprego',1980,3,2,1,2,67),
	 (34,'Estudo Sobre a Evolução da Educação Superior n',2002,3,1,1,4,147),
	 (35,'Paradigmas do Capitalismo Agrário em Questão',1980,1,3,1,3,49),
	 (36,'AS IDÉIAS DE REICH',1976,1,2,1,5,166),
	 (37,'Ação Parlamentar',2002,2,3,1,4,159),
	 (38,'História da Burguesia Brasileira',2006,2,1,1,1,136),
	 (39,'Para um Direito Sem Dogmas',2008,2,1,1,5,108),
	 (40,'Educação popular na formação de lideranças',2010,1,1,1,3,119);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (41,'Sartre e a Revolta de Nosso Tempo',2003,1,1,1,3,153),
	 (42,'Globalização em Questão',1976,3,1,1,4,147),
	 (43,'Exploração capitalista',1993,3,2,1,2,166),
	 (44,'Reforma Constitucional e Terceirização',2003,3,1,1,2,193),
	 (45,'Estatuto da criança e do adolescente',1975,1,2,1,3,119),
	 (46,'COMO FALAM AS ESQUERDAS',2013,1,2,1,5,192),
	 (47,'Política municipal',1991,3,3,1,4,193),
	 (48,'Que tipo de república?',2000,3,2,1,2,59),
	 (49,'Codigo penal contituiçao federal',2008,3,2,1,5,89),
	 (50,'Capitalismo e liberdade',1986,3,3,1,1,120);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (51,'Universidade e poder',1991,2,2,1,1,81),
	 (52,'Lista de Produtos Com ou Sem Transgênicos',2010,1,2,1,3,179),
	 (53,'Privatização Penitenciária e Trabalho do Preso',1977,2,3,1,2,139),
	 (54,'Dizem que sobrevivi em algum lugar além dos mares',1985,1,1,1,2,168),
	 (55,'Teoria da Organização nos Clássicos e uma Incur',1976,3,1,1,1,190),
	 (56,'Educação de jovens e adultos',1988,2,1,1,5,71),
	 (57,'Da Economia Ecológica ao Ecologismo Popular',2010,2,2,1,3,48),
	 (58,'Teoria sobre literatura e arte',2007,1,2,1,5,63),
	 (59,'Pra frente Brasil',2013,3,1,1,2,58),
	 (60,'Sistema nacional de economia política & A defesa ',1984,2,2,1,3,129);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (61,'Crescimento Econômico da Região Sul do Rio Grand',2008,1,1,1,3,191),
	 (62,'Reflexões para o futuro',2009,2,3,1,2,130),
	 (63,'Gênero e Associativismo na Agricultura Familiar',1999,1,2,1,5,83),
	 (64,'Fome Zero Uma Multidão pela Vida',2005,3,1,1,5,147),
	 (65,'Debaixo para cima_ A utopia no Brasil',1976,3,1,1,3,158),
	 (66,'Pedro Pomar_ Uma vida em vermelho',1977,3,3,1,1,177),
	 (67,'Pancho Villa_ O Revolucionário Mexicano',2010,2,2,1,4,169),
	 (68,'Índios Brasileiros',1977,3,3,1,3,128),
	 (69,'HistÃ³ria PolÃ­tica da RepÃºblica',1987,1,1,1,3,163),
	 (70,'Constituinte e democracia no Brasil hoje',2003,3,2,1,2,181);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (71,'Memoria del fuego (III)_ El siglo del viento',1981,2,3,1,1,118),
	 (72,'Mina de Morro Velho a extração do homem',1976,1,2,1,5,150),
	 (73,'curso de sociologia e política',1996,3,3,1,5,97),
	 (74,'Sociologia da Burocracia',1980,1,2,1,3,199),
	 (75,'Fidel e a Religião',2004,3,1,1,1,122),
	 (76,'Teorias de Comunicação de Massa',2006,3,2,1,4,185),
	 (77,'De Mariazinha a Maria',1981,3,1,1,1,118),
	 (78,'Reflexões sobre o socialismo',2000,1,2,1,4,143),
	 (79,'Larmee Populaire de Liberation de Chine',1988,3,1,1,3,47),
	 (80,'Quadro Económico',1980,3,1,1,3,152);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (81,'Sete ensaios de interpretação da realidade perua',1985,2,3,1,1,92),
	 (82,'Reforma ou Revolução?',2011,3,2,1,4,176),
	 (83,'UMA VICTORIA QUE FUE DE TODOS',1975,2,3,1,2,90),
	 (84,'Las Lecciones de la Experiencia de Mondragón para',1999,2,2,1,4,64),
	 (85,'Introdução à Critica do Direito do Trabalho',1986,1,3,1,3,75),
	 (86,'Fundamentos do marxismo leninismo',1985,2,1,1,2,172),
	 (87,'Bem pra lá do fim do mundo',1984,1,2,1,2,78),
	 (88,'Teoria da dinâmica econômica & Produção de mer',1996,2,3,1,4,154),
	 (89,'Imperialismo e dependencia',1995,3,3,1,5,147),
	 (90,'Cultura e Revolução Cultural',2013,1,2,1,2,181);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (91,'Rumo Ã  estaÃ§Ã£o FinlÃ¢ndia',1976,1,1,1,3,173),
	 (92,'Projetos de desenvolvimento',2012,2,3,1,4,70),
	 (93,'Cartas do Cárcere',2007,3,1,1,1,155),
	 (94,'Moçambique a caminho do socialismo',1995,1,1,1,3,92),
	 (95,'Ambiente Construido',2014,1,1,1,5,56),
	 (96,'Conciliação e radicalização plotica no brasil',2004,2,2,1,3,193),
	 (97,'Dicionário Económico e Social',2014,3,1,1,1,166),
	 (98,'Análise do Homem',2014,3,2,1,1,55),
	 (99,'codigo de processo civil',1982,3,1,1,1,75),
	 (100,'Liberdades reais e Liberdades fictícias',2007,1,1,1,3,112);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (101,'Cidadania Menor_ Algumas Indicações Quantitativa',2011,1,1,1,5,64),
	 (102,'MEMORIA DO PRESENTE',1982,1,2,1,3,158),
	 (103,'Bolívia com a Pólvora na Boca',1988,3,1,1,5,82),
	 (104,'LIBERALISMO E DEMOCRACIA',2005,3,2,1,5,165),
	 (105,'Grandes obras políticas de Maquiavel a nossos dia',2007,2,3,1,2,193),
	 (106,'Vivendo e Aprendendo_ experiências do idac em Edu',2006,2,3,1,5,45),
	 (107,'Economia Política do Trabalho',2005,2,1,1,2,184),
	 (108,'Por que democracia?',1999,1,3,1,2,178),
	 (109,'Manifesto Comunista',1979,1,1,1,5,171),
	 (110,'CPI Sobre ensino público no RS',1995,1,1,1,3,138);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (111,'Agricultura e Pobreza',2010,1,2,1,1,157),
	 (112,'Intercultura e Movimentos Sociais',1984,1,3,1,2,140),
	 (113,'O PT E A ATUALIDADE DO LENINISMO',2001,1,2,1,1,41),
	 (114,'CONTRA REVOLUCAO E REVOLTA',1976,1,3,1,2,171),
	 (115,'De Angra a Aramar_ Os militares a caminho da bomba',1988,1,2,1,5,156),
	 (116,'Ensaios Sobre a Liberdade',1986,1,2,1,1,139),
	 (117,'Marx em quadrinhos',1975,2,2,1,1,161),
	 (118,'Psicanalise de sintomas sociais',2013,3,3,1,1,86),
	 (119,'Política & Sociedade',1983,3,2,1,2,125),
	 (120,'Colapso da modernidade brasileira e uma proposta a',1999,3,1,1,5,121);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (121,'Violencia e repressão',1985,1,3,1,1,169),
	 (122,'Reorganizar a Sociedade',1990,3,2,1,5,73),
	 (123,'Prendas e Antiprendas',2011,2,2,1,1,40),
	 (124,'Liguagem e Poder',1997,3,3,1,1,129),
	 (125,'Textos em Representações Sociais',1979,3,3,1,4,40),
	 (126,'Sociologia Política',1986,3,2,1,5,68),
	 (127,'Cartilha da Reforma Agrária',2008,3,3,1,3,124),
	 (128,'Elementos de Economia Política',1994,3,2,1,2,181),
	 (129,'História das Tendências no Brasil',1981,2,2,1,2,161),
	 (130,'Neurose e Classes Sociais',1975,2,2,1,5,116);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (131,'Lula sem censura',1993,2,2,1,5,82),
	 (132,'Literatura artesanal',1992,1,2,1,3,172),
	 (133,'A ECONOMIA MUNDIAL',2013,1,2,1,3,165),
	 (134,'Uma aventura responsável',2011,1,1,1,3,157),
	 (135,'Ciclo de palestras da reforma agrária',1975,1,1,1,3,107),
	 (136,'DEMOCRACIA SOCIALISTA E DITADURA DO PROLETARIADO',2003,2,2,1,3,190),
	 (137,'Constituição da República Federativa do Brasil',1986,2,3,1,5,165),
	 (138,'Problemas da paz e do socialismo n° 4 ano V',2001,3,1,1,2,163),
	 (139,'Na fronteira do futuro',2011,2,2,1,2,124),
	 (140,'Três Fontes do Marxismo',2004,2,3,1,1,129);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (141,'Estudos do CEPE (UNISC)',2011,1,1,1,3,182),
	 (142,'CatÃ¡logo e Resumos Teses e DissertaÃ§Ãµes Pesquis',2000,3,2,1,3,174),
	 (143,'La fenomenologia como método de la filosofia',2002,3,1,1,1,171),
	 (144,'Monopólios e Miséria',1979,3,1,1,3,61),
	 (145,'Tendências do federalismo no Brasil',2003,1,3,1,1,197),
	 (146,'Legislação sobre os direitos da mulher na URSS',2001,1,2,1,2,131),
	 (147,'Como Vejo o Mundo',1979,2,1,1,2,66),
	 (148,'Movimento estudantil e ditadura militar',1975,3,2,1,1,130),
	 (149,'Psicologia Social',1980,2,2,1,5,49),
	 (150,'Psicologia abstração e realidade',1988,1,2,1,1,96);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (151,'Cândido ou o Otimismo',2011,2,2,1,2,52),
	 (152,'Teoria Marxista das Crises Econômicas e as Transf',1988,2,2,1,3,45),
	 (153,'Para uma psiquiatria da libertação',1991,3,1,1,1,128),
	 (154,'Erundina a mulher que veio com a chuva',1998,3,3,1,3,102),
	 (155,'Como trabalhar com o povo',2001,1,3,1,2,70),
	 (156,'Furacão sobre Cuba',2011,3,1,1,3,121),
	 (157,'Introdução à economia política',1975,3,3,1,2,74),
	 (158,'Primeira Página da Colonização em Santa Catarin',2003,1,1,1,1,184),
	 (159,'Política da Constituinte',2000,1,1,1,2,149),
	 (160,'Incidente em Antares',2007,3,1,1,5,178);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (161,'Guia de Acervos de Porto Alegre',2007,3,2,1,1,115),
	 (162,'Psicologia de masas del fascismo',1985,3,2,1,3,158),
	 (163,'História dos tempos atuais',2009,3,2,1,3,82),
	 (164,'A ESTRELA NECESSÁRIA',2014,3,2,1,5,152),
	 (165,'Ditaduras militares na América Latina',2014,2,3,1,2,123),
	 (166,'Memórias das Trevas_ Uma devassa na vida de Anton',1981,1,3,1,3,82),
	 (167,'História del Partido Comunista de la Union Sovié',2008,1,1,1,2,185),
	 (168,'Seleção de Textos',2009,2,1,1,1,62),
	 (169,'Literatura e vida nacional',1986,2,3,1,2,128),
	 (170,'Diário do Exilio',1988,2,2,1,1,106);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (171,'OS CAMPONESES E A PPLÍTICA NO BRASIL',1980,2,1,1,4,192),
	 (172,'Vargas_ Uma biografia política',1983,1,2,1,1,113),
	 (173,'DeclÃ­nio e Queda ImpÃ©rio Romano',1975,3,1,1,2,105),
	 (174,'The Ecologist A crise do clima',1983,3,3,1,4,152),
	 (175,'Sciencia Politica',1975,1,3,1,4,108),
	 (176,'Onde está meu filho? História de uma desaparecid',2011,1,1,1,4,131),
	 (177,'Como fazer teologia da libertação',1998,1,1,1,1,105),
	 (178,'Henfil nas eleições',2010,3,3,1,1,128),
	 (179,'Sobre o Fascismo',1978,1,3,1,4,91),
	 (180,'Sistema cooperativista dos assentados',1976,2,3,1,5,119);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (181,'Nossas exigências na constituinte',1984,2,2,1,3,159),
	 (182,'Razão e Violência',2004,2,3,1,2,94),
	 (183,'Contribuição à crítica da economia Política',1986,1,2,1,1,95),
	 (184,'Sete ensayos de interpretacion de la realidad peru',1986,3,3,1,3,156),
	 (185,'Compêndio de esconomia política',1984,1,2,1,1,149),
	 (186,'Princípios Fundamentais de Filosofia',1982,3,1,1,2,142),
	 (187,'Obras escolhidas Vol 6',1995,1,2,1,2,55),
	 (188,'Caldeirão das bruxas  e outros escritos Político',1976,1,1,1,5,193),
	 (189,'UM TAL MATHIAS CAPADOR',2003,2,1,1,5,44),
	 (190,'Aos trabalhadores',1992,1,2,1,4,113);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (191,'Modos de produção e realidade brasileira',1990,2,1,1,3,46),
	 (192,'Sociología del Profesorado',1992,1,3,1,3,55),
	 (193,'ContribuiÃ§Ã£o Para uma HistÃ³ria da America Latin',1985,3,2,1,1,81),
	 (194,'TERROR E ESPERANÇA NA PALESTINA',1976,2,3,1,1,130),
	 (195,'Textos escogidos Vol III',2007,1,3,1,1,50),
	 (196,'Capitalismo dependente e classes sociais na Améri',2014,3,3,1,4,82),
	 (197,'Questões políticas',1981,2,3,1,3,102),
	 (198,'Militarismo e Indústria',2012,2,2,1,2,115),
	 (199,'Capitalismo e classe operária no Brasil',2013,3,2,1,5,129),
	 (200,'Como Renascem as democracias',1987,3,3,1,3,54);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (201,'Círculos populares de esporte e lazer',1978,2,1,1,5,175),
	 (202,'Obras Incompletas',1998,3,1,1,3,58),
	 (203,'Contravérsias e Dissonâncias',2012,3,2,1,2,148),
	 (204,'Princípios de Economia',2005,1,3,1,5,179),
	 (205,'Galeria F Lembranças do mar cinzento',2011,3,2,1,4,147),
	 (206,'A COR DO INVISÍVEL',1992,1,2,1,5,78),
	 (207,'Uma Introdução À História',1984,2,3,1,5,99),
	 (208,'Sociedade e Trabalho na História',1992,3,3,1,3,199),
	 (209,'Caio Prado Júnior',1982,3,1,1,4,187),
	 (210,'Antologia Filosófica',2010,3,1,1,5,59);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (211,'Trabalho & Autonomia',1991,3,3,1,5,168),
	 (212,'Tempo para a paz',2014,3,1,1,2,50),
	 (213,'Trabalhador Fazendo História',1986,2,3,1,3,83),
	 (214,'Textos escogidos',1997,2,1,1,1,166),
	 (215,'Escritos de Carlos Marighella',1976,3,3,1,5,117),
	 (216,'Enterraram meu coração na curva do rio',1985,1,2,1,3,146),
	 (217,'Acumulação do Capital',2009,2,2,1,5,106),
	 (218,'Educação Para Todos_ Caminho para Mudança',1985,3,1,1,1,153),
	 (219,'Tratado de economia política',1980,1,1,1,1,113),
	 (220,'Ditadura Econômica Versus Democracia',2007,3,3,1,4,125);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (221,'Democracia Intervencionismo & Partidos Políticos',1984,3,1,1,4,144),
	 (222,'Mercado Financeiro',1983,2,1,1,2,166),
	 (223,'Introdução à sociologia geral',1999,3,1,1,3,107),
	 (224,'Paulo Freire_ Implicações Antropológicas na Fil',1992,1,1,1,5,156),
	 (225,'Ideologia e aparelhos ideológicos do Estado',2011,1,2,1,4,51),
	 (226,'Navegos a herança',1979,3,1,1,4,97),
	 (227,'Mercosul integração ou dominação',2006,3,3,1,4,105),
	 (228,'Democracia e Política',1993,1,1,1,3,114),
	 (229,'Combate Sexual da Juventude',1979,1,3,1,3,107),
	 (230,'POR EL CAMINO CORRECTO',2002,3,3,1,3,132);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (231,'Escuta Zé ninguém!',2009,2,1,1,4,145),
	 (232,'Comunicação popular',1997,2,1,1,2,131),
	 (233,'Psicanálise & Serviço Social_ Uma Abordagem Klei',1980,3,2,1,4,174),
	 (234,'Teoria Sociológica',2002,1,3,1,2,79),
	 (235,'Mídia e Democracia',2010,3,3,1,5,182),
	 (236,'Questões do modo de vida',1984,3,2,1,2,180),
	 (237,'História dos movimentos sociais no campo',1978,3,1,1,3,58),
	 (238,'Capitalismo Desorganizado',1996,3,3,1,2,137),
	 (239,'OpÃ§Ãµes da revoluÃ§Ã£o na AmÃ©rica Latina',1988,1,2,1,3,74),
	 (240,'Função dos intelectuais numa sociedade de classe',1991,3,3,1,5,78);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (241,'Teses ao V encontro estadual de estudantes secunda',2007,1,1,1,2,97),
	 (242,'Planejar e redigir trabalhos científicos',1988,3,3,1,4,75),
	 (243,'Economia e ecologia',1977,2,1,1,5,70),
	 (244,'Aspectos políticos da teoria econômica',1978,1,2,1,2,41),
	 (245,'Cristãos na universidade e na politica',2013,3,2,1,2,164),
	 (246,'Transições do regime Autoritário',1986,3,1,1,4,118),
	 (247,'A QUESTÃO DO SOCIALISMO',1989,2,1,1,2,131),
	 (248,'Sociedade Civil e Democratização',1987,1,1,1,5,131),
	 (249,'Multinacionais_ Desenvolvimento ou exploração?',2001,2,1,1,1,128),
	 (250,'Ensaios de sociologia geral e aplicada',1995,3,1,1,4,175);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (251,'Constituição da República Federativa do Brasil ',1996,2,1,1,4,130),
	 (252,'Igrejas e conflitividade social na America Latina',1999,2,1,1,1,86),
	 (253,'Com Che Guevara pela América do Sul',2012,2,3,1,1,159),
	 (254,'Espirito e Physionomia do Bolchevismo',1984,2,3,1,3,132),
	 (255,'Concepção marxista da História',2005,1,1,1,4,92),
	 (256,'Curso de filosofia',2010,3,1,1,4,45),
	 (257,'Atlas do Mercado Brasileiro',1994,3,1,1,1,153),
	 (258,'NÃƒO_ NÃ£o Ã RecessÃ£o e ao Desemprego',2011,1,1,1,1,166),
	 (259,'Escola e Democracia',1991,1,3,1,1,130),
	 (260,'Paz a Ãºnica saÃ­da',1988,2,2,1,1,196);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (261,'Concepção dialética da história',2007,1,1,1,2,166),
	 (262,'Mulheres Encarceradas',1992,2,1,1,4,161),
	 (263,'Em julgamento a violência no campo',2006,2,3,1,2,76),
	 (264,'Nas profundas do inferno',2014,2,3,1,4,184),
	 (265,'Universidade sitiada',1994,3,3,1,2,48),
	 (266,'Manual de economia política',1995,2,3,1,3,161),
	 (267,'Últimos dias de Staline',1979,2,1,1,2,132),
	 (268,'MANIFESTO COMUNISTA',1976,1,3,1,2,93),
	 (269,'Cadernos do MLST (Movimento de Libertação dos Se',1999,1,2,1,4,117),
	 (270,'Manifesto Comunista em quadrinhos',2013,2,1,1,4,80);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (271,'Sobre os Sindicatos',2005,1,3,1,4,138),
	 (272,'Organização Social de Base; Reflexões sobre Sig',1979,3,2,1,4,84),
	 (273,'Showrnalismo_A notícia como espetáculo',1982,1,2,1,3,145),
	 (274,'Massacre de Ipatinga',2002,3,3,1,3,58),
	 (275,'Seminário Transgênicos risco à Saúde',1983,2,2,1,5,86),
	 (276,'socialismo teoria e prática',2004,1,1,1,2,56),
	 (277,'Terapia Penal e sociedade',2004,1,2,1,5,187),
	 (278,'História da indústria e do trabalho no Brasil',1990,2,3,1,4,134),
	 (279,'Torturas e torturadores',1995,2,3,1,2,194),
	 (280,'Alguma sombra de ipês_ poesia diversa',1980,2,3,1,5,182);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (281,'Condições da Liberdade_ A Sociedade Civil e Seus',1994,2,1,1,5,173),
	 (282,'Até Quarta Isabela',1979,3,2,1,3,194),
	 (283,'CanÃ§Ã£o do exÃ­lio aqui',2013,3,2,1,4,95),
	 (284,'Obras economicas & quadro economico dos fisiocrata',2000,2,2,1,1,188),
	 (285,'Problemas e perspectivas do socialismo',1976,1,3,1,5,156),
	 (286,'Introdução ao estudo de filosofia',2007,1,2,1,3,129),
	 (287,'Introdução à Teoria Econômica',2012,2,3,1,5,61),
	 (288,'Acumulação de Capital e Demanda Efetiva',2010,1,2,1,4,75),
	 (289,'Guerrilha! Passagens da Guerra Revolucionária',2001,2,1,1,3,155),
	 (290,'Circuito Fechado',2013,1,2,1,1,147);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (291,'PLANOS NACIONAL DE EDUCAÇÃO PROPOSTA DA SOCIEDAD',1981,2,2,1,1,70),
	 (292,'Repressão Sexual',2009,1,3,1,1,71),
	 (293,'Cuba Libre um sonho (im)possível?',2005,2,3,1,4,114),
	 (294,'Assim falou Julião',1979,2,1,1,3,101),
	 (295,'Cuba anatomia de uma revolução',1992,2,1,1,1,84),
	 (296,'Marcha ao coração do latifúndio',2002,1,3,1,3,122),
	 (297,'PRINCIPIOS BÁSICOS DO COMUNISMO',1984,1,1,1,3,130),
	 (298,'CONTRA O FASCISMO E A GUERRA',1978,2,3,1,3,177),
	 (299,'Rompendo a Cerca_ A história do MST',1995,3,3,1,2,62),
	 (300,'Na Volta da Esquina',1984,1,3,1,2,146);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (301,'La psicologia fenomenologica',1982,2,1,1,5,118),
	 (302,'Quatro Ensaios Marxistas',1990,1,2,1,1,42),
	 (303,'Dicionário das Teorias e Mecanismos Econômicos',1989,3,3,1,1,95),
	 (304,'Resistencias mundiales',2001,3,1,1,4,113),
	 (305,'ViolÃªncia polÃ­tica & CorrupÃ§Ã£o',2000,3,3,1,5,107),
	 (306,'Relatório verde(dois exemplares)',1980,1,2,1,2,112),
	 (307,'Pesquisa em economia',2004,2,2,1,1,75),
	 (308,'Ensaios sobre John Maynard Keynes',2014,1,2,1,1,167),
	 (309,'Programa de Transição para o Socialismo',1991,2,1,1,3,55),
	 (310,'Furacão Sobre Cuba',2009,1,1,1,4,84);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (311,'Conceito de disciplina em John Locke',2010,3,2,1,1,67),
	 (312,'Sociologia do Conhecimento',1993,2,2,1,5,161),
	 (313,'Sindicato e Estado',1998,3,3,1,2,94),
	 (314,'Rumos do Sindicalismo Rural',1989,1,3,1,4,181),
	 (315,'Discurso Sobre o Espírito Positivo',2012,2,3,1,5,49),
	 (316,'Cartas sem edndereço',2000,2,2,1,1,179),
	 (317,'Guia da inflação',2002,3,1,1,5,111),
	 (318,'Degredados Filhos da Seca',2005,2,2,1,2,199),
	 (319,'OBRAS DE CHE GUEVARA',1978,1,2,1,5,60),
	 (320,'Manual de Economia Básica',1993,2,1,1,2,153);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (321,'Formação da Sociedade Brasileira',1980,3,3,1,4,60),
	 (322,'Sociologia numa Era de Revolução Social',1988,2,2,1,1,102),
	 (323,'O INDIVÍDUO SOB O SOCIALISMO',1975,1,1,1,2,190),
	 (324,'Freud e o problema do poder',1985,3,3,1,5,40),
	 (325,'Introdução à economia ecológica',2006,3,2,1,1,144),
	 (326,'Introdução ao mercado de ações',1984,3,1,1,3,42),
	 (327,'O QUE É SOCIALSMO HOJE',1995,2,2,1,1,109),
	 (328,'Política Agrária',2009,1,3,1,1,75),
	 (329,'Geografia económica do mundo',2013,3,2,1,2,187),
	 (330,'Obras escolhidas Vol 4',1984,1,3,1,3,84);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (331,'Precursores intelectuales de la revolución mexica',2005,2,2,1,5,109),
	 (332,'Evolução social no Brasil',1985,1,2,1,5,116),
	 (333,'Educação e Desigualdade no Brasil',2013,1,2,1,4,193),
	 (334,'QUATRO ENSAIOS MARXISTAS',2007,1,1,1,3,189),
	 (335,'Diálogo com Erich Fromm',1995,3,1,1,2,106),
	 (336,'Transformações no mundo do trabalho',1990,1,3,1,5,50),
	 (337,'Realidade brasileira',1993,2,2,1,5,97),
	 (338,'Entradas e bandeiras',1994,3,3,1,4,165),
	 (339,'História da Riqueza do Homem',1992,1,2,1,5,113),
	 (340,'Del referéndum venezolano a los conflictos em Per',1984,1,3,1,5,98);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (341,'Meninas boazinhas vão para o céu as más vão a ',2001,1,2,1,5,57),
	 (342,'Introdução aos estudos sociais',2000,2,3,1,5,61),
	 (343,'Páginas de uma vida',1977,3,1,1,5,143),
	 (344,'Refazendo a fábrica Fordista',1979,1,2,1,5,198),
	 (345,'Tras el Búho de Minerva_ Mercado contra Democraci',2013,2,1,1,1,140),
	 (346,'Formação histórica e papel do stor estatal da e',1992,3,2,1,1,155),
	 (347,'Cooperativismo e Comunitarismo',1981,3,2,1,4,84),
	 (348,'Que é Marxismo Leninismo',2002,3,3,1,3,104),
	 (349,'Cien años de letras Argentinas',2014,1,3,1,5,52),
	 (350,'Teoria do desenvolvimento capitalista',1983,2,2,1,4,46);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (351,'ExecuÃ§Ã£o Penal CrÃ­tica_ TÃ³picos Preliminares',2004,2,2,1,1,184),
	 (352,'Teoria e política do desenvolvimento econômico',1993,2,3,1,5,76),
	 (353,'Teoria Econômica',2012,3,1,1,4,59),
	 (354,'Política e História em Gramsci',2010,1,3,1,4,125),
	 (355,'Álbum de campanha',2004,2,1,1,2,46),
	 (356,'Resposta a John Lewis; Elementos de autocrítica; ',2002,3,3,1,2,183),
	 (357,'Técnicas de Pesquisa',1987,2,1,1,2,67),
	 (358,'Frente Paralamentar de Ação pela Cidadania',2009,2,3,1,4,41),
	 (359,'Engenharia economica',1993,2,1,1,5,138),
	 (360,'Debate Sobre o Estruturalismo',1975,2,2,1,3,78);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (361,'Ética economia e liberalismo',2004,3,3,1,3,196),
	 (362,'Construindo Escola na Roça',1995,1,3,1,5,67),
	 (363,'DialÃ©tica da LibertaÃ§Ã£o',2012,3,2,1,2,94),
	 (364,'Formas de Organização da Cooperação Agrícola ',1994,2,1,1,4,126),
	 (365,'Sociedade de classes e subdesenvolvimento',1998,1,2,1,2,106),
	 (366,'Pensamentos Metafísicos',1996,3,3,1,3,183),
	 (367,'Filosofia e comportamento',1997,2,1,1,3,190),
	 (368,'Bolívar_ Pensamento Precursor do Antiimperialismo',2013,1,2,1,1,80),
	 (369,'Cartas a um camarada',1978,3,2,1,2,178),
	 (370,'Desenvolvimento Econômico',1987,2,3,1,3,87);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (371,'Josué de Castro_ Vida e Obra',2004,2,1,1,4,167),
	 (372,'Manifesto por uma civilizaÃ§Ã£o solidÃ¡ria',1978,2,2,1,5,190),
	 (373,'Teoria feminista e as filosofias do homem',1984,2,3,1,1,45),
	 (374,'TERRA ATÉ QUANDO',1977,3,2,1,5,160),
	 (375,'Fim do Futuro? Manifesto ecológico Brasileiro',2005,3,2,1,4,61),
	 (376,'Conselhos aos governantes',2007,2,1,1,1,62),
	 (377,'O QUE É MARXISMO',2002,3,1,1,3,156),
	 (378,'EcosRevista_ Revista da escola de comunicação so',1988,3,1,1,1,52),
	 (379,'Discutindo ideologia filosofia e ética',2007,2,1,1,4,123),
	 (380,'Sociologia Rural',2008,2,2,1,4,66);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (381,'Humanidade e lutas sociais_ era do imperialismo',1975,2,1,1,4,182),
	 (382,'Revista de Ciências Sociais Perspectivas',1982,2,2,1,2,188),
	 (383,'Para Além do Bem e do Mal',1985,2,3,1,2,135),
	 (384,'Pantaleão e as visitadoras',2009,1,3,1,2,132),
	 (385,'Sociedade e política',2003,2,1,1,5,197),
	 (386,'Cenas de política explícita',2000,3,2,1,1,153),
	 (387,'Estatuto da Cidade',1995,3,3,1,2,83),
	 (388,'História da Minha Vida',2014,3,3,1,3,198),
	 (389,'ESTATUTO DA CRIANÇA E DO ADOLESCENTE',2007,2,3,1,3,154),
	 (390,'Sociologia educacional',2008,3,3,1,5,154);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (391,'AnÃ¡lise crÃ­tica da teoria marxista',1986,3,3,1,5,43),
	 (392,'Dicionário básico de filosofia',2002,2,3,1,2,163),
	 (393,'Movimentos sociais',1994,3,1,1,2,103),
	 (394,'Igreja na atual tranformaÃ§Ã£o da AmÃ©rica Latina ',1988,1,1,1,1,132),
	 (395,'Por que o Brasil foi ao fundo',1982,1,3,1,1,106),
	 (396,'Lutas urbanas e controle sanitário',1976,3,1,1,4,163),
	 (397,'Textos escogidos Vol I',1995,1,3,1,3,169),
	 (398,'Federalismo e guerra fiscal',1997,3,2,1,4,165),
	 (399,'Trabalhadores no Brasil_  Imigração e Industrili',1992,2,3,1,4,58),
	 (400,'Anatomia do Poder',2008,2,3,1,3,185);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (401,'Galvez Imperador do Acre',2007,1,1,1,5,157),
	 (402,'PRINCIPIOS FUNDAMENTAIS DE FILOSOFIA',1991,2,3,1,4,174),
	 (403,'Violência política',2003,3,1,1,2,193),
	 (404,'Sindicalismo classista',1981,2,1,1,2,151),
	 (405,'Socialismo uma utopia cristã',1991,1,3,1,2,197),
	 (406,'Reflexões sobre a revolução na Europa',2002,3,3,1,2,132),
	 (407,'Caminho socialista da Iugoslávia',1981,1,3,1,5,149),
	 (408,'Sérgio Buarque de Holanda e o Brasil',1977,3,2,1,4,137),
	 (409,'Tratado Político',1989,1,1,1,4,140),
	 (410,'Fundamentos da análise econômica',2005,2,1,1,3,104);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (411,'Sublime Obsessão',1985,2,3,1,5,109),
	 (412,'Interdisciplineariedade; Um Dicionário em Constru',2000,3,3,1,5,155),
	 (413,'Pequenas Notícias_ Um Patético Retrato da Nature',1996,3,1,1,5,179),
	 (414,'Palestras sobre a democracia soviética',2010,2,1,1,3,45),
	 (415,'Lições de economia política',2008,1,3,1,5,192),
	 (416,'Contra VersÃµes _ CivilizaÃ§Ã£o ou BarbÃ¡rie na vi',1986,2,2,1,2,59),
	 (417,'Sem Escola Sem Terra',2007,2,1,1,1,67),
	 (418,'Programa Nacional de Educação Ambiental',2005,1,2,1,1,150),
	 (419,'Acerca de la gran Revolución Socialista de Octubr',1999,2,2,1,4,50),
	 (420,'El golpe fascista contra Venezuela',2003,2,1,1,3,108);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (421,'PORTA PARA O INFINITO',1995,3,2,1,3,181),
	 (422,'Breve história do cinema',2007,2,3,1,5,189),
	 (423,'Rompendo com Moscou',1988,3,2,1,3,56),
	 (424,'PT pela ruptura popular',2000,3,3,1,5,187),
	 (425,'Educação a distância_alternativa para a constru',2000,2,1,1,1,114),
	 (426,'Filosofia ideologia e ciência social',1998,2,2,1,5,51),
	 (427,'Educação e Cultura',2009,2,1,1,2,68),
	 (428,'Como se faz análise de conjuntura',1984,1,1,1,3,156),
	 (429,'Introdução à politica scientifica',2005,1,2,1,2,165),
	 (430,'Brasil Nunca Mais',2005,2,3,1,5,47);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (431,'Nossas Exigências na Constituinte',1997,3,1,1,2,181),
	 (432,'Sob o Signo de Saturno',1986,1,2,1,1,182),
	 (433,'Educação e Campesinato_ Uma Educação para o Ho',1999,2,1,1,5,128),
	 (434,'Manual de Execução Penal_ Benefícios na Exe da ',2011,2,1,1,2,77),
	 (435,'História e natureza das ligas camponesas',1999,2,1,1,5,107),
	 (436,'Massacre na Santa Elmira',1994,3,1,1,3,118),
	 (437,'Costumes em comum_ estudos sobre a cultura popular',1991,2,3,1,4,111),
	 (438,'MULHER – OBJETO DE CAMA E MESA',1996,2,2,1,1,78),
	 (439,'Educação e Movimento Operário',2007,2,3,1,1,88),
	 (440,'Resumo de direitos Humanos e da cidadania',1989,1,2,1,5,164);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (441,'Projetos Feministas',1990,2,2,1,4,158),
	 (442,'Pedaços de Morte no Coração',2007,3,1,1,5,136),
	 (443,'Introdução à Análise Econômica',2002,3,2,1,4,142),
	 (444,'Ensaio sobre o desenvolvimento da concepção moni',1988,3,3,1,5,44),
	 (445,'Liberdade para os brasileiros_ Anistia ontem e hoj',1992,3,1,1,3,111),
	 (446,'Teoria del materialismo histórico',2004,3,1,1,3,82),
	 (447,'Quatro séculos de latifúndio',2009,1,2,1,2,145),
	 (448,'Cadernos de pesquisa série biologia',1991,1,3,1,1,126),
	 (449,'Diário da salvação do mundo',1986,2,2,1,1,166),
	 (450,'Introdução à sociologia',2001,1,2,1,1,61);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (451,'Capital e trabalho no campo',1979,1,3,1,5,123),
	 (452,'Catecismo Parlamentarista',1978,3,1,1,5,107),
	 (453,'Cadernos de educaçõa n°6',2000,1,3,1,3,79),
	 (454,'Bocas del tiempo',2012,2,3,1,1,112),
	 (455,'Introdução à metodologia da ciência',1991,3,3,1,1,60),
	 (456,'Obras escolhidas',1978,3,1,1,2,48),
	 (457,'Eleições Sindicais',2002,1,3,1,4,125),
	 (458,'Ciência política',1996,2,1,1,5,90),
	 (459,'Partido Proletário de Novo Tipo',1987,3,2,1,3,92),
	 (460,'Uma escola social',1976,3,3,1,3,49);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (461,'Memórias da escravidão',1995,2,3,1,5,161),
	 (462,'REVOLUÇÃO DEMOCRÁTICA OU APARTHEID SOCIAL',1989,1,2,1,2,108),
	 (463,'Maturidade e estagnação no capitalismo americano',1980,3,3,1,3,154),
	 (464,'Política cultural',2007,3,3,1,1,153),
	 (465,'Breve história del Partido Comunista de China',2005,3,3,1,2,109),
	 (466,'Campanha pelo direito ao Trabalho',1999,2,2,1,1,162),
	 (467,'dependência e desenvolvimento na América Latina',2007,2,1,1,1,154),
	 (468,'Terra de habitação X terra de espoliação',2007,2,2,1,3,138),
	 (469,'Principio para a ação',2003,1,1,1,1,78),
	 (470,'Rio Grande do Sul_ Germe de uma nação',2009,1,1,1,4,99);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (471,'Estado Poder Ideologia',1984,3,1,1,5,77),
	 (472,'Reconsideracion de La Teoria del Desarrollo',2006,1,3,1,5,159),
	 (473,'Seleccion de escritos militares',2012,1,1,1,2,75),
	 (474,'Seminário Internacional Sobre Biodiversidade e Tr',1979,1,1,1,5,189),
	 (475,'Facismo no poder III',1984,2,3,1,5,198),
	 (476,'Psicologia e alienação',1999,1,3,1,3,168),
	 (477,'Movimento estudantil no Brasil',1990,2,1,1,1,65),
	 (478,'Revista Civilização Brasileira 7',2005,1,1,1,3,140),
	 (479,'Expropiação e Violência',1979,1,2,1,3,90),
	 (480,'Casa Grande e Senzala',1998,3,3,1,5,169);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (481,'Meu depoimento sobre o Esquadrão da Morte',2013,3,2,1,3,142),
	 (482,'A TRILATERAL NOVA FASE DO CAPITALISMO MUNDIAL',1991,1,1,1,3,120),
	 (483,'Projeto Jari e os Capitais Estrangeiros na Amazôn',1998,2,1,1,2,141),
	 (484,'Carta acerca da tolerância',1995,3,3,1,1,85),
	 (485,'União Soviética Hoje',1987,2,3,1,1,188),
	 (486,'Guerrilhas e Guerrilheiros no Drama da América La',1977,2,3,1,5,66),
	 (487,'Reflexões sobre afilosofia da libertação',1982,3,1,1,4,178),
	 (488,'Cidades que sofreram os efeitos da política neoli',2012,2,3,1,1,128),
	 (489,'IMPERIALISMO E DEPENDENCIA',2007,3,3,1,3,154),
	 (490,'Confesso que vivi',2004,2,2,1,3,111);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (491,'Horizontes Urbanos',1979,2,3,1,3,132),
	 (492,'Destruidores de sonhos e vidas',1988,3,3,1,5,126),
	 (493,'Introdução ao fascismo',2011,2,2,1,3,165),
	 (494,'América Latina dois pontos',2005,3,3,1,1,129),
	 (495,'Dez poemas agonizantes',1989,3,3,1,4,194),
	 (496,'Manual de Economia',1978,1,1,1,4,185),
	 (497,'Mauá_ Empresário do Império',1996,3,2,1,2,178),
	 (498,'Entrevista de ajuda',2007,2,3,1,3,54),
	 (499,'Democratas eleitoreiros e o Sono do Leviatã',2003,1,3,1,5,149),
	 (500,'Ecologia e Socialismo',1995,3,1,1,3,119);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (501,'Multinacionais e trabalhadores no Brasil',1976,3,2,1,1,134),
	 (502,'Metodologias qualitativas na sociologia',1993,2,2,1,2,121),
	 (503,'Ideologia e mentalidade',1980,3,1,1,1,86),
	 (504,'Lenin coração e mente',1997,1,2,1,2,122),
	 (505,'POR ONDE PASSA A CENTRALIZAÇÃO DA POLITICCA EDUC',1985,3,3,1,4,166),
	 (506,'História do Socialismo e das lutas sociais',2007,3,3,1,3,119),
	 (507,'História de la crisis mundial',2005,2,3,1,1,40),
	 (508,'POLITICA & Sociedade',2006,3,3,1,3,120),
	 (509,'Temas de nuestra América',2005,1,3,1,4,160),
	 (510,'Contemporaneidade e política',1985,1,1,1,2,65);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (511,'Qué hacer? (Que fazer)',1996,2,3,1,4,157),
	 (512,'MISTICA E POLÍTICA',1984,2,1,1,3,164),
	 (513,'Teoria e Educação no Labirinto do Capital',1991,2,3,1,2,103),
	 (514,'Economía Política Humanista',2005,3,1,1,1,67),
	 (515,'Aportes para la critica de hegel',2011,2,2,1,1,74),
	 (516,'História Ilustrada da Segunda Guerra Mundial',2000,1,3,1,4,178),
	 (517,'No Labirinto do Minotauro',1980,3,3,1,4,45),
	 (518,'Pobreza e Exploração do Trabalho na América Lat',1993,1,2,1,1,81),
	 (519,'Pensamento vivo de Karl Marx',1980,1,1,1,1,174),
	 (520,'Reportagem de uma morte anunciada_ A tragédia dos',2011,2,2,1,1,40);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (521,'Ideologias e Ciências Sociais_ Elementos para uma',2012,1,3,1,5,70),
	 (522,'Acerca de la educación',1999,3,2,1,2,144),
	 (523,'EL PARTIDO EM EL SISTEMA POLÍTICO DE LA SOCIEDAD ',1975,1,2,1,1,130),
	 (524,'Timur e sua Equipa',1996,2,2,1,1,54),
	 (525,'Marx Vida & Obra',2002,2,1,1,4,169),
	 (526,'Sobre a Emancipação da Mulher',1976,2,3,1,3,120),
	 (527,'Sociologia geral',2004,2,2,1,1,171),
	 (528,'História DA CIDADANIA',2011,1,3,1,2,129),
	 (529,'Cadernos Ciência cultura e política',2012,1,1,1,1,146),
	 (530,'Século XXI barbárie ou solidariedade? Alternativ',1976,3,1,1,1,194);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (531,'Concorrência panorama no Brasil e no mundo',1991,1,1,1,3,68),
	 (532,'Vale a pena sonhar',1977,3,1,1,5,116),
	 (533,'MAIS DEMOCRACIA MAIS SOCIALISMO',1988,2,3,1,3,182),
	 (534,'Direito e Ascensão no Capitalismo',1982,3,3,1,3,160),
	 (535,'Classes Sociais no Capitalismo de Hoje',1977,1,1,1,3,179),
	 (536,'Reflexões sobre o racismo',2003,1,1,1,3,192),
	 (537,'Banco de dados da Zona Sul',2011,1,3,1,4,178),
	 (538,'Nueva Constituión de la URSS',1982,3,3,1,4,99),
	 (539,'Farda fardão camisola de dormir',1976,3,1,1,2,160),
	 (540,'Bibliotecas virtuales para las ciencias sociales',1981,3,2,1,2,177);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (541,'Creio na justiça e na esperança',2001,1,1,1,3,78),
	 (542,'MOTIVAÃ‡Ã•ES IDEOLÃ“GICAS DA SENTENÃ‡A',1985,2,3,1,1,195),
	 (543,'Ensino de História e Educação',1976,3,1,1,1,95),
	 (544,'Fé cristã e ideologia',2004,1,2,1,4,179),
	 (545,'AMPLIAR LA DEMOCRACIA',1988,2,1,1,1,194),
	 (546,'Política e Espaço Regional',2003,2,2,1,3,107),
	 (547,'Pequena HistÃ³ria da CivilizaÃ§Ã£o Ocidental',1984,2,2,1,1,197),
	 (548,'Economia política do meio ambiente',1981,2,2,1,5,189),
	 (549,'Vinte mil léguas submarinas',1985,1,2,1,5,122),
	 (550,'Materialismo Histórico e materialismo dialético',1983,1,2,1,3,168);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (551,'Fundamentos empíricos da explicação sociológic',2011,2,1,1,3,172),
	 (552,'Carcaça de negro',1985,3,1,1,5,158),
	 (553,'Do latifúndio à empresa',2009,3,3,1,4,114),
	 (554,'Documentos secretos da política de Reagan para a ',1999,3,2,1,4,48),
	 (555,'ProtecÃ§Ã£o da saÃºde e aprevidÃªncia Social na UR',2009,1,3,1,2,66),
	 (556,'Operação 7 Anões_ Um Brasileiro Descobre a Rota',1998,3,3,1,4,82),
	 (557,'Lecciones de Paulo Freire cruzando franteras_exper',1986,2,3,1,5,163),
	 (558,'Como criar uma rede de troca',1991,1,2,1,1,84),
	 (559,'Devolvam nossa previdência',1983,1,3,1,2,157),
	 (560,'HISTÓRIA DA GREVE DE 89',1987,3,1,1,2,89);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (561,'ELEMENTOS DE ECONOMIA POLÍTICA ATUAL',1979,2,3,1,5,120),
	 (562,'Sobre a libertação nacional e social',1994,3,1,1,4,161),
	 (563,'HistÃ³ria moderna e contemporÃ¢nea',2009,1,3,1,1,59),
	 (564,'Metaformas da desordem',1995,3,2,1,4,126),
	 (565,'Carta aos comunistas',2007,1,3,1,2,69),
	 (566,'SEXUALIDADE DA MULHER BRASILEIRA – CORPO E CLASS',1979,1,2,1,3,157),
	 (567,'TÃ³picos de Antropologia FÃ­sica',2010,2,2,1,3,193),
	 (568,'Teoria e educação no labirinto do capital',2002,3,2,1,5,116),
	 (569,'Práticas das Entrevistas Familiares',1982,2,1,1,2,40),
	 (570,'Origens da Desigualdade entre os Povos da América',1990,2,1,1,1,75);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (571,'Volta Redonda_ Entre o aço e as armas',2010,3,1,1,4,117),
	 (572,'Menor e a sociedade brasileira',1989,2,1,1,2,190),
	 (573,'Revolução Cubana',1980,1,2,1,2,51),
	 (574,'Opinião publica e revolução',1981,1,2,1,1,57),
	 (575,'PRESIDENCIALISMO PARLAMENTARISMO',1993,2,1,1,4,177),
	 (576,'Estado e Classes sociais na agricultura brasileira',1976,1,3,1,1,157),
	 (577,'Páginas Cubanas_ Autobiografia de um poeta na rev',1987,3,3,1,1,181),
	 (578,'No melhor dos tempos e nas tempestades',2006,1,1,1,1,175),
	 (579,'MOVIMENTOS SOCIAIS NA TRANSIÇÃO DEMOCRÁTICA',1983,2,1,1,5,174),
	 (580,'Cristianismo hoje',1977,2,2,1,3,188);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (581,'Nas Pegadas da Utopia',2008,1,1,1,1,86),
	 (582,'Il Salário e linteresse Nell Equilibrio Economico',2010,2,1,1,5,115),
	 (583,'Psiquiatria e poder',2001,2,1,1,1,191),
	 (584,'Giocondo Dias uma vida na clandestinidade',2010,3,2,1,3,197),
	 (585,'Pricípios de economia política e tributação',1990,1,3,1,5,175),
	 (586,'Páginas Escogidas',1994,1,2,1,3,94),
	 (587,'História da Ação Popular da JUC ao PCdoB',2007,3,2,1,3,192),
	 (588,'SeminÃ¡rio As Ãguas e o Desenvolvimento',1985,1,2,1,3,125),
	 (589,'Quatro prisões debaixo de armas',1979,2,3,1,3,191),
	 (590,'Estabelecer o poder popular para servir as massas',2005,1,2,1,5,58);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (591,'Análise do Emprego e a Renda Nacional',1989,1,2,1,3,148),
	 (592,'Gabriela cravo e canela',1995,1,2,1,4,119),
	 (593,'CANUDOS UMA UTOPIA NO SERTÃO',1981,1,2,1,2,81),
	 (594,'Ciência Política',2005,3,2,1,5,59),
	 (595,'Revolução e guerra civil na Espanha',2009,1,1,1,3,86),
	 (596,'Pimpinela escarlate',1985,2,1,1,5,142),
	 (597,'Estudos sobre comportamento político',1994,3,2,1,2,80),
	 (598,'Como Fizemos a Revolução',2007,2,2,1,2,154),
	 (599,'Sindicalismo bancário em São Paulo',2013,2,2,1,3,81),
	 (600,'Explorados e exploradores',2010,1,1,1,3,107);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (601,'Inclusão na Metade Sul e Previdência para os Pob',1985,1,1,1,3,198),
	 (602,'MACACO PRESO PARA INTERROGATÓRIO',2002,3,1,1,1,72),
	 (603,'Para entender o plano nacional de reforma agrária',1986,3,1,1,1,192),
	 (604,'MEMÓRIAS HISTÓRICAS DOS SOCIALISTAS GAÚCHOS',2004,3,2,1,2,165),
	 (605,'Do FÃ³rum Social Mundial ao FÃ³rum Brasileiro de E',1995,2,2,1,5,102),
	 (606,'Nas pegadas da utopia',2009,1,2,1,1,40),
	 (607,'JESUS O FILHO DO HOMEM',1975,3,2,1,2,111),
	 (608,'Historia da heroina Olga Benario',1994,1,2,1,2,186),
	 (609,'Habitação controle e espoliação',1996,3,1,1,3,171),
	 (610,'Criticas dos fundamentos da psicologia I',2005,3,3,1,5,155);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (611,'Imperialismo fase superior do capitalismo',1982,3,3,1,5,115),
	 (612,'QUE É SOCIALISMO?',1975,3,2,1,1,139),
	 (613,'Reflexões sobre alfabetização',1990,1,3,1,1,81),
	 (614,'Revista Ciências Humanas',2011,2,2,1,4,84),
	 (615,'Las Lecciones de la Experiencia de Mondragón para',1984,2,2,1,2,122),
	 (616,'EVOLUCAO SOCIO ECONOMICA DO BRASIL',1983,2,2,1,2,125),
	 (617,'Como acabar com a pobreza no Brasil',2007,1,2,1,2,45),
	 (618,'Capitalismo e Luta Política no Brasil na virada d',2009,1,3,1,2,150),
	 (619,'Concepções e formação do estado brasileiro',2005,2,3,1,2,189),
	 (620,'Eus e outros nós',2013,3,2,1,1,54);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (621,'Da divisão do trabalho Social',1976,3,2,1,5,49),
	 (622,'URSS mal amada bem amada',2001,1,3,1,4,133),
	 (623,'História E CONSCIÊNCIA DE CLASSE',1978,1,3,1,2,177),
	 (624,'Ellos lucharon por la patria',1995,1,2,1,4,150),
	 (625,'Puebla para o povo',1998,1,3,1,1,168),
	 (626,'Políticas do trabalho e de garantia de renda no c',2005,1,3,1,4,146),
	 (627,'Teologia & Economia_ Repensando a Teologia da Libe',2001,3,1,1,3,60),
	 (628,'Discurso do Método',2014,3,2,1,2,86),
	 (629,'Metodologia do Trabalho Intelectual',1979,2,3,1,4,143),
	 (630,'São Paulo terra e povo',1998,3,2,1,3,189);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (631,'Conflitos no Campo Brasil',1981,1,1,1,2,45),
	 (632,'Justiça e Democracia',1985,2,1,1,1,147),
	 (633,'Relat[Ã³rio Anual da Qualidade Ambinetal do MunicÃ',1996,2,2,1,5,94),
	 (634,'Eros e cicilização',1979,2,2,1,2,69),
	 (635,'Ser dirigente partidário',1979,2,1,1,1,57),
	 (636,'Chronica e minuciosa do imperio do Brasil',1981,3,3,1,1,171),
	 (637,'Tieta do Agreste',1977,3,2,1,4,113),
	 (638,'Previdência e neoliberalismo',2005,1,1,1,3,93),
	 (639,'Economia dos cluster industriais e desenvolvimento',2007,2,2,1,5,125),
	 (640,'Riscos dos transgênicos',1982,3,1,1,2,64);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (641,'Entendendoa vida social',1979,3,2,1,1,188),
	 (642,'Anatomia da Constituição',2000,2,2,1,2,111),
	 (643,'Acerca de la juventude',1984,3,3,1,2,185),
	 (644,'Uma idéia de universidade',2014,2,1,1,4,188),
	 (645,'Obras econômicas & Escritos sobre economia & Quad',1980,1,3,1,3,177),
	 (646,'O Caldeirão das Bruxas e Outros Escritos Polític',1984,1,3,1,2,143),
	 (647,'Testemunha Ocular',1983,2,3,1,5,172),
	 (648,'Estratégia operária e neocapitalismo',2008,3,3,1,1,87),
	 (649,'Como se Faz Análise de Conjuntura',1982,3,3,1,5,81),
	 (650,'Virada do século na America Latina',2003,3,3,1,4,111);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (651,'Por uma ordem social solidária',1991,3,1,1,5,145),
	 (652,'Ideologia do Desenvolvimento de Comunidade no Bras',1975,3,2,1,5,136),
	 (653,'Ainda estamos vivos',1995,1,1,1,4,50),
	 (654,'Introdução à economia uma abordagem estruturali',2013,1,2,1,1,142),
	 (655,'Lutas Sociais da América Latina',2008,1,3,1,1,66),
	 (656,'Redenção e utopia_ O judaísmo libertário na Eu',2003,1,3,1,2,49),
	 (657,'ConcepÃ§Ã£o DialÃ©tica da EducaÃ§Ã£o',1979,1,1,1,4,98),
	 (658,'Movimento estudantil e consciência social na Amé',1987,2,2,1,4,199),
	 (659,'Beethoven e a harmonia das relações humanas',1984,1,2,1,2,146),
	 (660,'O Iluminismo e os Reis Filoósofos',1976,3,1,1,3,60);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (661,'Código Estadual do Meio Ambiente',2000,3,3,1,2,193),
	 (662,'Adeus ao Trabalho?Ensaios Sobre as Metamorfoses e ',1977,2,1,1,4,51),
	 (663,'Decisões para uma década',1991,3,1,1,4,55),
	 (664,'Textos escogidos Vol II',2009,3,3,1,1,67),
	 (665,'Sobre el modo de producción dominante em el Virre',1984,1,2,1,2,196),
	 (666,'Psicologia social comunitária',1992,1,3,1,4,64),
	 (667,'ESTATUTO DO IDOSO',1998,1,1,1,5,188),
	 (668,'MERCOSUL em Números',2004,1,2,1,3,185),
	 (669,'Memoria del fuego (I)_ Los nacimientos',2012,2,2,1,2,166),
	 (670,'Textos Básicos Brasil Socialista',2002,1,3,1,3,99);
INSERT INTO public.acervos (codigoacervo,titulo,anopublicacao,codigoarea,codigobiblioteca,codigomidia,codigoeditora,paginas) VALUES
	 (671,'As aventuras do guerrilheiro Che Guevara',2008,2,2,1,5,70),
	 (672,'Oligopólio e progresso técnico',2011,1,2,1,1,191),
	 (673,'Para uma teoria Marxista do Nacionalismo',2000,1,1,1,5,81),
	 (674,'PolÃ­tica social da revoluÃ§Ã£o de outubro',1977,1,3,1,2,125),
	 (675,'Capitalismo e classes operarias no Brasil',1977,1,1,1,5,104),
	 (676,'Introdução ao Projeto de Pesquisa Cientifica',1996,2,3,1,5,79),
	 (677,'ADMIRÁVEL MUNDO NOVO',2000,2,3,1,3,197),
	 (678,'COMO PARTIDO LENINISTA LUTAVA PELO PODER DOS TRABA',1980,1,1,1,3,112);

INSERT INTO public.autores (codigoautor,nomeautor,nascimento,regiaonascimento) VALUES
	 (1,'Machado de Assis','1930-03-10','Sudeste'),
	 (2,'Cecilia Meireles','1950-05-20','Centro-Oeste'),
	 (3,'Cruz e Souza','1940-08-17','Sul'),
	 (4,'Jose Saramago','1935-09-15','Nordeste'),
	 (5,'Gabriel Garcia Marquez','1945-11-07','Nordeste'),
	 (6,'Luis de Camoes','1955-12-25','Norte');


INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (228,5),
	 (637,2),
	 (548,3),
	 (103,2),
	 (148,4),
	 (517,3),
	 (347,4),
	 (527,2),
	 (363,2),
	 (607,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (519,2),
	 (390,3),
	 (526,5),
	 (582,2),
	 (600,2),
	 (498,3),
	 (652,2),
	 (33,1),
	 (255,5),
	 (18,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (387,5),
	 (539,1),
	 (435,5),
	 (621,1),
	 (648,3),
	 (535,3),
	 (122,5),
	 (588,2),
	 (95,3),
	 (652,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (362,1),
	 (184,4),
	 (428,2),
	 (149,5),
	 (376,4),
	 (273,1),
	 (574,5),
	 (183,1),
	 (634,4),
	 (529,2);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (654,2),
	 (86,2),
	 (249,5),
	 (554,4),
	 (28,4),
	 (161,5),
	 (442,4),
	 (209,4),
	 (587,4),
	 (94,1);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (665,1),
	 (246,3),
	 (651,5),
	 (275,2),
	 (677,2),
	 (442,1),
	 (670,5),
	 (396,5),
	 (608,2),
	 (551,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (250,2),
	 (305,2),
	 (310,4),
	 (501,5),
	 (93,5),
	 (584,5),
	 (481,2),
	 (35,1),
	 (465,3),
	 (208,1);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (609,4),
	 (131,2),
	 (599,3),
	 (671,5),
	 (602,2),
	 (119,1),
	 (605,1),
	 (529,4),
	 (60,4),
	 (430,5);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (636,4),
	 (191,3),
	 (320,2),
	 (304,1),
	 (646,3),
	 (267,4),
	 (556,2),
	 (589,1),
	 (618,4),
	 (101,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (316,4),
	 (562,2),
	 (283,1),
	 (169,2),
	 (647,1),
	 (502,5),
	 (87,3),
	 (425,3),
	 (338,3),
	 (63,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (196,5),
	 (582,1),
	 (307,3),
	 (491,3),
	 (463,5),
	 (635,3),
	 (265,3),
	 (523,1),
	 (555,3),
	 (587,2);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (313,4),
	 (473,2),
	 (93,4),
	 (383,5),
	 (129,4),
	 (331,2),
	 (575,2),
	 (137,3),
	 (370,4),
	 (234,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (533,3),
	 (36,2),
	 (471,4),
	 (452,3),
	 (87,1),
	 (360,3),
	 (335,4),
	 (611,2),
	 (412,4),
	 (615,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (585,2),
	 (228,2),
	 (674,5),
	 (83,2),
	 (456,4),
	 (620,2),
	 (49,1),
	 (107,4),
	 (38,1),
	 (626,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (534,4),
	 (374,4),
	 (31,1),
	 (126,1),
	 (106,4),
	 (119,4),
	 (524,5),
	 (53,5),
	 (608,1),
	 (203,5);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (181,1),
	 (625,5),
	 (73,5),
	 (650,2),
	 (438,4),
	 (631,3),
	 (84,4),
	 (269,1),
	 (378,4),
	 (52,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (352,3),
	 (3,5),
	 (376,5),
	 (229,5),
	 (134,5),
	 (89,1),
	 (636,1),
	 (440,5),
	 (674,1),
	 (545,5);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (325,4),
	 (36,1),
	 (537,1),
	 (576,5),
	 (139,3),
	 (501,4),
	 (277,1),
	 (578,3),
	 (305,3),
	 (258,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (548,1),
	 (165,2),
	 (290,5),
	 (196,3),
	 (230,3),
	 (288,1),
	 (487,1),
	 (202,5),
	 (647,4),
	 (361,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (20,1),
	 (212,4),
	 (208,2),
	 (644,2),
	 (86,1),
	 (264,3),
	 (346,3),
	 (65,4),
	 (331,3),
	 (503,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (248,2),
	 (125,1),
	 (40,5),
	 (633,1),
	 (566,2),
	 (469,3),
	 (295,1),
	 (254,2),
	 (299,3),
	 (412,2);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (368,2),
	 (613,5),
	 (311,1),
	 (326,4),
	 (18,2),
	 (656,2),
	 (394,1),
	 (601,1),
	 (480,1),
	 (56,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (262,2),
	 (50,2),
	 (98,1),
	 (601,2),
	 (487,2),
	 (99,5),
	 (156,5),
	 (158,3),
	 (631,1),
	 (481,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (634,3),
	 (150,2),
	 (387,2),
	 (158,5),
	 (655,4),
	 (112,4),
	 (140,2),
	 (316,2),
	 (359,2),
	 (407,1);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (394,2),
	 (280,5),
	 (157,1),
	 (392,4),
	 (238,2),
	 (559,2),
	 (24,1),
	 (18,3),
	 (175,3),
	 (294,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (656,5),
	 (123,2),
	 (116,4),
	 (371,1),
	 (84,3),
	 (149,1),
	 (589,2),
	 (352,5),
	 (528,1),
	 (235,4);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (363,5),
	 (123,1),
	 (502,1),
	 (212,1),
	 (74,4),
	 (585,3),
	 (387,4),
	 (201,5),
	 (624,4),
	 (223,1);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (527,5),
	 (114,3),
	 (252,4),
	 (247,3),
	 (170,4),
	 (43,2),
	 (242,5),
	 (174,5),
	 (665,4),
	 (337,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (230,1),
	 (166,3),
	 (661,1),
	 (247,1),
	 (413,3),
	 (401,3),
	 (514,1),
	 (4,4),
	 (30,5),
	 (388,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (464,2),
	 (208,3),
	 (270,3),
	 (273,3),
	 (430,2),
	 (130,1),
	 (144,4),
	 (652,1),
	 (305,4),
	 (633,3);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (548,5),
	 (50,3),
	 (417,4),
	 (606,2),
	 (60,1),
	 (306,5),
	 (446,2),
	 (191,2),
	 (79,4),
	 (539,2);
INSERT INTO public.acervosautores (codigoacervo,codigoautor) VALUES
	 (604,4),
	 (134,4),
	 (625,2),
	 (439,2),
	 (353,4),
	 (585,4),
	 (99,4);
