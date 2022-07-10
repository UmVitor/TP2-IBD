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
