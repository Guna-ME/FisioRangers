create Table Pessoa (
  Cod_Pessoa int primary key,
  Nome char(50) ,
  Celular int ,
  Cidade char(50) 
);

create Table Usuario (
  Cod_Usuario int primary key,
  Tipo char(50) ,
  Nome char(50) ,
  Telefone int 
);

create Table Sala (
  Cod_Sala int primary key,
  Local char(50) ,
  Disposicao char(1) 
);

create Table Agenda (
  Cod_agenda int primary key,
  Cod_Fisio int ,
  Cod_Paciente int,
  Cod_Usuario int,
  Cod_Sala int ,
  Cod_Servico int,
  Horario datetime ,
  Cancelamento char(1) 
);

create Table Servico (
  Cod_Servico int primary key,
  Tipo_Servico char(50) ,
  Valor decimal(6,2) ,
  Cod_Pagamento int,
  Cod_Fisio int 
);

create Table Pagamento (
  Cod_Pagamento int primary key,
  Cod_Tipo int,
  Multa_Cancelamento decimal(6,2) 
);

create Table Tipo_Pagamento (
  Cod_Tipo int primary key,
  Tipo_Pagamento char(10) 
);

create Table log (
  Data datetime, 
  Nome_Usuario char(50),
  Tipo_Operacao char(50),
  Descricao char(100)
);

alter table Agenda Add CONSTRAINT fk_paciente_pessoas FOREIGN KEY (cod_paciente) references Pessoa(cod_pessoa);
alter table Servico Add CONSTRAINT fk_pagamento_pagamento FOREIGN KEY (cod_pagamento) references Pagamento(cod_pagamento);
alter table Agenda Add CONSTRAINT fk_ususrio_usuario FOREIGN KEY (cod_usuario) references Usuario(cod_usuario);
alter table Agenda Add CONSTRAINT fk_paciente_pessoas FOREIGN KEY (cod_paciente) references Pessoa(cod_pessoa);
ALTER TABLE Agenda ADD  CONSTRAINT fk_fisio_pessoa FOREIGN KEY (Cod_Fisio) REFERENCES Pessoa (Cod_Pessoa);
ALTER TABLE Agenda ADD CONSTRAINT fk_servico_servico FOREIGN KEY (Cod_Servico) REFERENCES Servico (Cod_Servico);
ALTER TABLE Pagamento ADD CONSTRAINT fk_tipo_pagamento FOREIGN KEY (Cod_Tipo) REFERENCES Tipo_Pagamento (Cod_Tipo);

