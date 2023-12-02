CREATE or alter PROCEDURE insert_log
    @Cod_Agenda integer,
    @nomeUsuario char(50) OUTPUT,
    @tipoOperacao char(50) output
    
AS
BEGIN
    select @nomeUsuario = nome from Agenda ag
    inner join Usuario us
    ON ag.Cod_Usuario=us.Cod_Usuario
    where cod_agenda= @Cod_Agenda;
    
    select @tipoOperacao = Tipo_Pagamento from Tipo_Pagamento tp
    inner join Servico S
    on tp.cod_servico= S.Cod_Servico
    inner join agenda A
    on a.cod_servico= s.cod_servico
    where cod_agenda=@cod_Agenda;
  end;
  
