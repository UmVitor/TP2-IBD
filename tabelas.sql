

CREATE TABLE [contratado] (
                cnpj VARCHAR(20) NOT NULL,
                name VARCHAR(255) NOT NULL,
                PRIMARY KEY (cnpj)
);


CREATE TABLE [contrato] (
                numero_contrato VARCHAR(40) NOT NULL,
                situacao_contrato VARCHAR(255) NOT NULL,
                objeto VARCHAR(1000) NOT NULL,
                PRIMARY KEY (numero_contrato)
);


CREATE TABLE [orgao_superior] (
                id_orgao_superior INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_orgao_superior)
);


CREATE TABLE [orgao] (
                id_orgao INT NOT NULL,
                id_orgao_superior INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_orgao)
);


CREATE TABLE [unidade_gestora] (
                id_unidade_gestora INT NOT NULL,
                id_orgao INT NOT NULL,
                nome VARCHAR(255) NOT NULL,
                PRIMARY KEY (id_unidade_gestora)
);


CREATE TABLE [contratacao] (
                id_contratacao INT NOT NULL,
                numero_contrato VARCHAR(40) NOT NULL,
                id_unidade_gestora INT NOT NULL,
                cnpj VARCHAR(20) NOT NULL,
                data_inicio_vigencia DATE NOT NULL,
                data_fim_vigencia DATE NOT NULL,
                PRIMARY KEY (id_contratacao, numero_contrato)
);


CREATE TABLE [termo_aditivo] (
                id_termo_aditivo INT NOT NULL,
                id_contratacao INT NOT NULL,
                data_publicao DATE NOT NULL,
                objeto VARCHAR(500) NOT NULL,
                PRIMARY KEY (id_termo_aditivo)
);


CREATE TABLE [item_comprado] (
                id_item INT NOT NULL,
                id_contratacao INT NOT NULL,
                descricao VARCHAR(255) NOT NULL,
                quatidade INT NOT NULL,
                valor_unitario DOUBLE PRECISION NOT NULL,
                PRIMARY KEY (id_item)
);


ALTER TABLE [contratacao] ADD CONSTRAINT contratado_contratacao_fk
FOREIGN KEY (cnpj)
REFERENCES [contratado] (cnpj)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [contratacao] ADD CONSTRAINT contrato_contratacao_fk
FOREIGN KEY (numero_contrato)
REFERENCES [contrato] (numero_contrato)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [orgao] ADD CONSTRAINT orgao_superior_orgao_fk
FOREIGN KEY (id_orgao_superior)
REFERENCES [orgao_superior] (id_orgao_superior)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [unidade_gestora] ADD CONSTRAINT orgao_unidade_gestora_fk
FOREIGN KEY (id_orgao)
REFERENCES [orgao] (id_orgao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [contratacao] ADD CONSTRAINT unidade_gestora_contratacao_fk
FOREIGN KEY (id_unidade_gestora)
REFERENCES unidade_gestora (id_unidade_gestora)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [item_comprado] ADD CONSTRAINT contratacao_item_comprado_fk
FOREIGN KEY (id_contratacao)
REFERENCES [contratacao] (id_contratacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE [termo_aditivo] ADD CONSTRAINT contratacao_termo_aditivo_fk
FOREIGN KEY (id_contratacao)
REFERENCES [contratacao] (id_contratacao)
ON DELETE NO ACTION
ON UPDATE NO ACTION;