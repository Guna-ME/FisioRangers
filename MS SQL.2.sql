CREATE PROCEDURE insert_log
    @Cod_Agenda integer,
    @nomeUsuario char(50) OUTPUT,
    @tipoOperacao char(50) output
    
AS
BEGIN
    select @nomeUsuario = nome_usuario from Agenda ag
    inner join Usuario us
    ON ag.Cod_Usuario=us.Cod_Usuario
    inner join Tipo_Pagamento tp
    on tp.Cod_Tipo=Agenda.cod_tipo
    where cod_agenda= @Cod_Agenda;
    
    select @tipoOperacao = Tipo_Pagamento from Agenda ag
    inner join Usuario us
    ON ag.Cod_Usuario=us.Cod_Usuario
    inner join Tipo_Pagamento tp
    on tp.Cod_Tipo=Agenda.cod_tipo
    where cod_agenda= @Cod_Agenda;
  end;
  
