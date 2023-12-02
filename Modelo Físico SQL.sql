CREATE TABLE `Pessoa` (
  `Cod_Pessoa` int PRIMARY KEY,
  `Nome` char(50),
  `Celular` int(11),
  `Cidade` char(50)
);

CREATE TABLE `Usuario` (
  `Cod_Usuario` int PRIMARY KEY,
  `Tipo` char(50),
  `Nome` char(50),
  `Telefone` int(11)
);

CREATE TABLE `Sala` (
  `Cod_Sala` int PRIMARY KEY,
  `Local` char(50),
  `Disposicao` char(1)
);

CREATE TABLE `Agenda` (
  `Cod_agenda` int PRIMARY KEY,
  `Cod_Fisio` int,
  `Cod_Paciente` int,
  `Cod_Usuario` int,
  `Cod_Sala` int,
  `Cod_Servico` int,
  `Horario` datetime,
  `Cancelamento` char(1)
);

CREATE TABLE `Servico` (
  `Cod_Servico` int PRIMARY KEY,
  `Tipo_Servico` char(50),
  `Valor` float(6.2),
  `Cod_Pagamento` int,
  `Cod_Fisio` int
);

CREATE TABLE `Pagamento` (
  `Cod_Pagamento` int PRIMARY KEY,
  `Cod_Tipo` int,
  `Multa_Cancelamento` float(6.2)
);

CREATE TABLE `Tipo_Pagamento` (
  `Cod_Tipo` int PRIMARY KEY,
  `Tipo_Pagamento` char(10)
);

CREATE TABLE `log` (
  `Data` datetime,
  `Nome_Usuario` char(50),
  `Tipo_Operacao` char(50),
  `Descricao` char(100)
);

ALTER TABLE `Agenda` ADD FOREIGN KEY (`Cod_Paciente`) REFERENCES `Pessoa` (`Cod_Pessoa`);

ALTER TABLE `Servico` ADD FOREIGN KEY (`Cod_Pagamento`) REFERENCES `Pagamento` (`Cod_Pagamento`);

ALTER TABLE `Agenda` ADD FOREIGN KEY (`Cod_Usuario`) REFERENCES `Usuario` (`Cod_Usuario`);

ALTER TABLE `Agenda` ADD FOREIGN KEY (`Cod_Sala`) REFERENCES `Sala` (`Cod_Sala`);

ALTER TABLE `Agenda` ADD FOREIGN KEY (`Cod_Fisio`) REFERENCES `Pessoa` (`Cod_Pessoa`);

ALTER TABLE `Servico` ADD FOREIGN KEY (`Cod_Servico`) REFERENCES `Agenda` (`Cod_Servico`);

ALTER TABLE `Tipo_Pagamento` ADD FOREIGN KEY (`Cod_Tipo`) REFERENCES `Pagamento` (`Cod_Tipo`);

ALTER TABLE `Servico` ADD FOREIGN KEY (`Cod_Fisio`) REFERENCES `Agenda` (`Cod_Fisio`);
