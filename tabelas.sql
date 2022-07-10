CREATE TABLE contratado (
                cnpj VARCHAR(20) NOT NULL,
                name VARCHAR(255) NOT NULL,
                PRIMARY KEY (cnpj)
);


CREATE TABLE contrato (
                id_contrato INT NOT NULL,
                numero_contrato VARCHAR(40) NOT NULL,
                situacao_contrato VARCHAR(255) NOT NULL,
                objeto VARCHAR(1000) NOT NULL,
                PRIMARY KEY (id_contrato)
);


CREATE TABLE orgao_superior (
                id_orgao_superior INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_orgao_superior)
);


CREATE TABLE orgao (
                id_orgao INT NOT NULL,
                id_orgao_superior INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_orgao),
                FOREIGN KEY (id_orgao_superior) REFERENCES orgao_superior (id_orgao_superior)
);


CREATE TABLE unidade_gestora (
                id_unidade_gestora INT NOT NULL,
                id_orgao INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_unidade_gestora),
                FOREIGN KEY (id_orgao) REFERENCES orgao (id_orgao)
);


CREATE TABLE contratacao (
                id_contratacao INT NOT NULL,
                id_contrato INT NOT NULL,
                id_unidade_gestora INT NOT NULL,
                cnpj VARCHAR(20) NOT NULL,
                data_inicio_vigencia DATE NOT NULL,
                data_fim_vigencia DATE NOT NULL,
                PRIMARY KEY (id_contratacao, id_contrato),
                FOREIGN KEY (cnpj) REFERENCES contratado (cnpj),
                FOREIGN KEY (id_contrato) REFERENCES contrato (id_contrato),
                FOREIGN KEY (id_unidade_gestora) REFERENCES unidade_gestora (id_unidade_gestora)
);


CREATE TABLE termo_aditivo (
                id_termo_aditivo INT NOT NULL,
                id_contrato INT NOT NULL,
                id_contratacao INT NOT NULL,
                data_publicao DATE NOT NULL,
                objeto VARCHAR(500) NOT NULL,
                PRIMARY KEY (id_termo_aditivo, id_contrato),
                FOREIGN KEY (id_contratacao, id_contrato) REFERENCES contratacao (id_contratacao, id_contrato)
);


CREATE TABLE item_comprado (
                id_item INT NOT NULL,
                id_contrato INT NOT NULL,
                id_contratacao INT NOT NULL,
                quatidade INT NOT NULL,
                valor_unitario DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (id_item),
                FOREIGN KEY (id_contratacao, id_contrato) REFERENCES contratacao (id_contratacao, id_contrato)
);

insert into orgao_superior(id_orgao_superior, nome) values (26000,'Ministério da Educação');
insert into orgao_superior(id_orgao_superior, nome) values (40000,'Ministério do Trabalho');
insert into orgao_superior(id_orgao_superior, nome) values (52000,'Ministério da Defesa');
insert into orgao_superior(id_orgao_superior, nome) values (44000,'Ministério do Meio Ambiente');
insert into orgao_superior(id_orgao_superior, nome) values (41000,'Ministério das Comunicações');
insert into orgao_superior(id_orgao_superior, nome) values (30000,'Ministério da Justiça e Segurança Pública');
insert into orgao_superior(id_orgao_superior, nome) values (36000,'Ministério da Saúde');
insert into orgao_superior(id_orgao_superior, nome) values (22000,'Ministério da Agricultura, Pecuária e Abastec');
insert into orgao_superior(id_orgao_superior, nome) values (55000,'Ministério da Cidadania');
insert into orgao_superior(id_orgao_superior, nome) values (54000,'Ministério do Turismo');
insert into orgao_superior(id_orgao_superior, nome) values (25000,'Ministério da Economia');
insert into orgao_superior(id_orgao_superior, nome) values (20000,'Presidência da República');
insert into orgao_superior(id_orgao_superior, nome) values (24000,'Ministério da Ciência, Tecnologia, Inovações');
insert into orgao_superior(id_orgao_superior, nome) values (39000,'Ministério da Infraestrutura');
insert into orgao_superior(id_orgao_superior, nome) values (53000,'Ministério do Desenvolvimento Regional');
insert into orgao_superior(id_orgao_superior, nome) values (63000,'Advocacia-Geral da União');
insert into orgao_superior(id_orgao_superior, nome) values (32000,'Ministério de Minas e Energia');
insert into orgao_superior(id_orgao_superior, nome) values (25201,'Banco Central do Brasil - Orçamento Fiscal e ');
insert into orgao_superior(id_orgao_superior, nome) values (81000,'Ministério da Mulher, Família e Direitos Huma');
insert into orgao_superior(id_orgao_superior, nome) values (35000,'Ministério das Relações Exteriores');
insert into orgao_superior(id_orgao_superior, nome) values (37000,'Controladoria-Geral da União');

insert into orgao(id_orgao_superior, id_orgao, nome) values
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26256, 'Centro Federal de Educação Tecnológica Celso ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (40000, 37202, 'Instituto Nacional do Seguro Social');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52121, 'Comando do Exército');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26282, 'Universidade Federal de Viçosa');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52111, 'Comando da Aeronáutica');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26443, 'Empresa Brasileira de Serviços Hospitalares');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26429, 'Instituto Federal de Educação, Ciência e Tecn');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26271, 'Fundação Universidade de Brasília');
insert into orgao(id_orgao_superior, id_orgao, nome) values (44000, 44207, 'Instituto Chico Mendes de Conservação da Biod');
insert into orgao(id_orgao_superior, id_orgao, nome) values (41000, 20415, 'Empresa Brasil de Comunicação');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26406, 'Instituto Federal do Espírito Santo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26405, 'Instituto Federal do Ceará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30911, 'Fundo Nacional de Segurança Pública');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26422, 'Instituto Federal Catarinense');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26408, 'Instituto Federal do Maranhão');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52131, 'Comando da Marinha');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26439, 'Instituto Federal de São Paulo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (36000, 36000, 'Ministério da Saúde - Unidades com vínculo di');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30108, 'Departamento de Polícia Federal');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26249, 'Universidade Federal Rural do Rio de Janeiro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26234, 'Universidade Federal do Espírito Santo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26274, 'Fundação Universidade Federal de Uberlândia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (36000, 36201, 'Fundação Oswaldo Cruz');
insert into orgao(id_orgao_superior, id_orgao, nome) values (41000, 41231, 'Agêncial Nacional de Telecomunicações');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26230, 'Fundação Universidade Federal do Vale do São ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (22000, 22000, 'Ministério da Agricultura, Pecuária e Abastec');
insert into orgao(id_orgao_superior, id_orgao, nome) values (55000, 55000, 'Ministério da Cidadania - Unidades com víncul');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26430, 'Instituto Federal do Sertão de Pernambuco');
insert into orgao(id_orgao_superior, id_orgao, nome) values (36000, 36212, 'Agência Nacional de Vigilância Sanitária');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30000, 'Ministério da Justiça e Segurança Pública - U');
insert into orgao(id_orgao_superior, id_orgao, nome) values (54000, 20411, 'Instituto do Patrimônio Histórico e Artístico');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26413, 'Instituto Federal do Triângulo Mineiro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26298, 'Fundo Nacional de Desenvolvimento da Educação');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 25000, 'Ministério da Economia - Unidades com vínculo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26258, 'Universidade Tecnológica Federal do Paraná');
insert into orgao(id_orgao_superior, id_orgao, nome) values (20000, 20101, 'Presidência da República');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26410, 'Instituto Federal do Norte de Minas Gerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26403, 'Instituto Federal do Amazonas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (24000, 20301, 'Comissão Nacional de Energia Nuclear');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26435, 'Instituto Federal do Rio Grande do Norte');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26414, 'Instituto Federal do Mato Grosso');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 25205, 'Fundação Instituto Brasileiro de Geografia e ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 39252, 'Departamento Nacional de Infraestrutura de Tr');
insert into orgao(id_orgao_superior, id_orgao, nome) values (44000, 20701, 'Instituto Brasileiro do Meio Ambiente e dos R');
insert into orgao(id_orgao_superior, id_orgao, nome) values (54000, 20408, 'Fundação Cultural Palmares');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26275, 'Fundação Universidade Federal do Acre');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 22204, 'Departamento Nacional de Obras Contra as Seca');
insert into orgao(id_orgao_superior, id_orgao, nome) values (63000, 63000, 'Advocacia-Geral da União - Unidades com víncu');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26402, 'Instituto Federal de Alagoas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26404, 'Instituto Federal Baiano');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30802, 'Departamento de Polícia Rodoviária Federal');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 39250, 'Agência Nacional de Transportes Terrestres');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26262, 'Universidade Federal de São Paulo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26409, 'Instituto Federal de Minas Gerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26432, 'Instituto Federal do Paraná');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26452, 'UNIVERSIDADE FEDERAL DE CATALAO');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26261, 'Universidade Federal de Itajubá');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52222, 'Fundação Osório');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26236, 'Universidade Federal Fluminense');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26264, 'Universidade Federal Rural do Semi-Árido');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26255, 'Universidade Federal dos Vales do Jequitinhon');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26243, 'Universidade Federal do Rio Grande do Norte');
insert into orgao(id_orgao_superior, id_orgao, nome) values (36000, 36211, 'Fundação Nacional de Saúde');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26438, 'Instituto Federal de Santa Catarina');
insert into orgao(id_orgao_superior, id_orgao, nome) values (32000, 32205, 'Agência Nacional do Petróleo, Gás Natural e B');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26418, 'Instituto Federal de Pernambuco');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 29209, 'VALEC Engenharia, Construções e Ferrovias S.A');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 25915, 'Fundo Constitucional do Distrito Federal');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25201, 25201, 'Banco Central do Brasil - Orçamento Fiscal e ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26237, 'Universidade Federal de Juiz de Fora');
insert into orgao(id_orgao_superior, id_orgao, nome) values (24000, 24000, 'Ministério da Ciência, Tecnologia, Inovações ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (36000, 36213, 'Agência Nacional de Saúde Suplementar');
insert into orgao(id_orgao_superior, id_orgao, nome) values (81000, 81000, 'Ministério da Mulher, Família e Direitos Huma');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26427, 'Instituto Federal da Bahia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (22000, 22201, 'Instituto Nacional de Colonização e Reforma A');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26352, 'Fundação Universidade Federal do ABC');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26424, 'Instituto Federal do Tocantins');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26417, 'Instituto Federal da Paraíba');
insert into orgao(id_orgao_superior, id_orgao, nome) values (54000, 20404, 'Fundação Biblioteca Nacional');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52000, 'Ministério da Defesa - Unidades com vínculo d');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52221, 'Indústria de Material Bélico do Brasil');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26245, 'Universidade Federal do Rio de Janeiro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 27201, 'Fundação Habitacional do Exército');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26235, 'Universidade Federal de Goiás');
insert into orgao(id_orgao_superior, id_orgao, nome) values (20000, 24208, 'Instituto Nacional de Tecnologia da Informaçã');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 68201, 'Agência Nacional de Transportes Aquaviários');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26428, 'Instituto Federal de Brasília');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 62201, 'Agência Nacional de Aviação Civil');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26350, 'Fundação Universidade Federal da Grande Doura');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26270, 'Fundação Universidade do Amazonas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 53000, 'Ministério do Desenvolvimento Regional - Unid');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30202, 'Fundação Nacional do Índio');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 30204, 'Instituto Nacional da Propriedade Industrial');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26407, 'Instituto Federal Goiano');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26280, 'Fundação Universidade Federal de São Carlos');
insert into orgao(id_orgao_superior, id_orgao, nome) values (22000, 22211, 'Companhia Nacional de Abastecimento');
insert into orgao(id_orgao_superior, id_orgao, nome) values (32000, 32396, 'Agência Nacional de Mineração');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26283, 'Fundação Universidade Federal do Mato Grosso ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26436, 'Instituto Federal Sul-rio-grandense');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26201, 'Colégio Pedro II');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26416, 'Instituto Federal do Pará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26426, 'Instituto Federal do Amapá');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26419, 'Instituto Federal do Rio Grande do Sul');
insert into orgao(id_orgao_superior, id_orgao, nome) values (35000, 35000, 'Ministério das Relações Exteriores - Unidades');
insert into orgao(id_orgao_superior, id_orgao, nome) values (44000, 44206, 'Instituto de Pesquisas Jardim Botânico do Rio');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26421, 'Instituto Federal de Rondônia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26351, 'Universidade Federal do Recôncavo da Bahia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 39253, 'Empresa de Planejamento e Logística S.A.');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26412, 'Instituto Federal do Sul de Minas Gerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30907, 'Fundo Penitenciário Nacional');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26411, 'Instituto Federal do Sudeste de Minas Gerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (24000, 24209, 'Centro Nacional de Tecnologia Eletrônica Avan');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26252, 'Universidade Federal de Campina Grande');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26239, 'Universidade Federal do Pará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26238, 'Universidade Federal de Minas Gerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (30000, 30211, 'Conselho Administrativo de Defesa Econômica');
insert into orgao(id_orgao_superior, id_orgao, nome) values (32000, 29208, 'Companhia de Pesquisa de Recursos Minerais');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26434, 'Instituto Federal Fluminense');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26420, 'Instituto Federal Farroupilha');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26246, 'Universidade Federal de Santa Catarina');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26257, 'Centro Federal de Educação Tecnológica de Min');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26431, 'Instituto Federal do Piauí');
insert into orgao(id_orgao_superior, id_orgao, nome) values (20000, 20116, 'Fundo de Imprensa Nacional');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26267, 'Universidade Federal da Integração Latino-Ame');
insert into orgao(id_orgao_superior, id_orgao, nome) values (24000, 20501, 'Conselho Nacional de Desenvolvimento Científi');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26232, 'Universidade Federal da Bahia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 61201, 'Instituto de Pesquisa Econômica Aplicada');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26292, 'Fundação Joaquim Nabuco');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26278, 'Fundação Universidade Federal de Pelotas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 52904, 'Fundo do Exército');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26447, 'Universidade Federal do Oeste da Bahia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26281, 'Fundação Universidade Federal de Sergipe');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26423, 'Instituto Federal de Sergipe');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26415, 'Instituto Federal do Mato Grosso do Sul');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26273, 'Universidade Federal do Rio Grande');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26231, 'Universidade Federal de Alagoas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26250, 'Universidade Federal de Roraima');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 20202, 'Fundação Escola Nacional de Administração Púb');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26433, 'Instituto Federal do Rio de Janeiro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26279, 'Fundação Universidade Federal do Piauí');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26276, 'Fundação Universidade Federal do Mato Grosso');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26253, 'Universidade Federal Rural da Amazônia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (52000, 31280, 'Caixa de Construções de Casas para o Pessoal ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26244, 'Universidade Federal do Rio Grande do Sul');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 29214, 'Companhia Brasileira de Trens Urbanos');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26263, 'Universidade Federal de Lavras');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26247, 'Universidade Federal de Santa Maria');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26284, 'Fundação Universidade Federal de Ciências da ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26425, 'Instituto Federal do Acre');
insert into orgao(id_orgao_superior, id_orgao, nome) values (54000, 54000, 'Ministério do Turismo - Unidades com vínculo ');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26285, 'Fundação Universidade Federal de São João Del');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 25203, 'Comissão de Valores Mobiliários');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26233, 'Universidade Federal do Ceará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26448, 'Universidade Federal do Sul e Sudeste do Pará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26269, 'Universidade Federal do Estado do Rio de Jane');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 53207, 'Superintendência de Desenvolvimento do Centro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (54000, 42207, 'Instituto Brasileiro de Museus');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26254, 'Universidade Federal do Triângulo Mineiro');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26241, 'Universidade Federal do Paraná');
insert into orgao(id_orgao_superior, id_orgao, nome) values (40000, 40000, 'Ministério do Trabalho - Unidades com vínculo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (40000, 37201, 'Fundação Jorge Duprat Figueiredo, de Seguranç');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 20603, 'Superintendência da Zona Franca de Manaus');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 53203, 'Superintendência do Desenvolvimento do Nordes');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26242, 'Universidade Federal de Pernambuco');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26277, 'Universidade Federal de Ouro Preto');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 44205, 'Agência Nacional de Águas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26240, 'Universidade Federal da Paraíba');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26454, 'UNIVERSIDADE FEDERAL DE RONDONOPOLIS');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26450, 'Universidade Federal do Sul da Bahia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26291, 'Fundação Coordenação de Aperfeiçoamento de Pe');
insert into orgao(id_orgao_superior, id_orgao, nome) values (40000, 33206, 'Superintendência Nacional de Previdência Comp');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26268, 'Fundação Universidade Federal de Rondônia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26272, 'Fundação Universidade do Maranhão');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26441, 'Universidade Federal do Oeste do Pará');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26000, 'Ministério da Educação - Unidades com vínculo');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26260, 'Universidade Federal de Alfenas');
insert into orgao(id_orgao_superior, id_orgao, nome) values (32000, 91081, 'Empresas de Energia');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 39000, 'Ministério da Infraestrutura - Unidades com v');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26437, 'Instituto Federal de Roraima');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26286, 'Fundação Universidade Federal do Amapá');
insert into orgao(id_orgao_superior, id_orgao, nome) values (37000, 37000, 'Controladoria-Geral da União - Unidades com v');
insert into orgao(id_orgao_superior, id_orgao, nome) values (25000, 30203, 'Instituto Nacional de Metrologia, Qualidade e');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26266, 'Fundação Universidade Federal do Pampa');
insert into orgao(id_orgao_superior, id_orgao, nome) values (32000, 32210, 'Agência Nacional de Energia Elétrica');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26442, 'Universidade da Integração Internacional da L');
insert into orgao(id_orgao_superior, id_orgao, nome) values (53000, 53202, 'Superintendência do Desenvolvimento da Amazôn');
insert into orgao(id_orgao_superior, id_orgao, nome) values (44000, 44000, 'Ministério do Meio Ambiente - Unidades com ví');
insert into orgao(id_orgao_superior, id_orgao, nome) values (26000, 26290, 'Instituto Nacional de Estudos e Pesquisas Edu');
insert into orgao(id_orgao_superior, id_orgao, nome) values (39000, 62901, 'Fundo Nacional de Aviação Civil');
insert into orgao(id_orgao_superior, id_orgao, nome) values (20000, 60000, 'Gabinete da Vice-Presidência da República';

