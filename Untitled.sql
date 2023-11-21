CREATE TABLE [Pessoa] (
  [Cod_Pessoa] int PRIMARY KEY,
  [Nome] char(50),
  [Celular] int(11),
  [Cidade] char(50)
)
GO

CREATE TABLE [Usuario] (
  [Cod_Usuario] int PRIMARY KEY,
  [Tipo] char(50),
  [Nome] char(50),
  [Telefone] int(11)
)
GO

CREATE TABLE [Sala] (
  [Cod_Sala] int PRIMARY KEY,
  [Local] char(50),
  [Disposicao] char(1)
)
GO

CREATE TABLE [Agenda] (
  [Cod_agenda] int PRIMARY KEY,
  [Cod_Fisio] int,
  [Cod_Paciente] int,
  [Cod_Usuario] int,
  [Cod_Sala] int,
  [Cod_Servico] int,
  [Horario] datetime,
  [Cancelamento] char(1)
)
GO

CREATE TABLE [Servico] (
  [Cod_Servico] int PRIMARY KEY,
  [Tipo_Servico] char(50),
  [Valor] float(6.2),
  [Cod_Pagamento] int,
  [Cod_Fisio] int
)
GO

CREATE TABLE [Pagamento] (
  [Cod_Pagamento] int PRIMARY KEY,
  [Cod_Tipo] int,
  [Multa_Cancelamento] float(6.2)
)
GO

CREATE TABLE [Tipo_Pagamento] (
  [Cod_Tipo] int PRIMARY KEY,
  [Tipo_Pagamento] char(10)
)
GO

CREATE TABLE [log] (
  [Data] datetime,
  [Nome_Usuario] char(50),
  [Tipo_Operacao] char(50),
  [Descricao] char(100)
)
GO

ALTER TABLE [Agenda] ADD FOREIGN KEY ([Cod_Paciente]) REFERENCES [Pessoa] ([Cod_Pessoa])
GO

ALTER TABLE [Servico] ADD FOREIGN KEY ([Cod_Pagamento]) REFERENCES [Pagamento] ([Cod_Pagamento])
GO

ALTER TABLE [Agenda] ADD FOREIGN KEY ([Cod_Usuario]) REFERENCES [Usuario] ([Cod_Usuario])
GO

ALTER TABLE [Agenda] ADD FOREIGN KEY ([Cod_Sala]) REFERENCES [Sala] ([Cod_Sala])
GO

ALTER TABLE [Agenda] ADD FOREIGN KEY ([Cod_Fisio]) REFERENCES [Pessoa] ([Cod_Pessoa])
GO

ALTER TABLE [Servico] ADD FOREIGN KEY ([Cod_Servico]) REFERENCES [Agenda] ([Cod_Servico])
GO

ALTER TABLE [Tipo_Pagamento] ADD FOREIGN KEY ([Cod_Tipo]) REFERENCES [Pagamento] ([Cod_Tipo])
GO
