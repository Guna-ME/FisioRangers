CREATE TRIGGER Register  ON Agenda AFTER INSERT, UPDATE AS 
declare @nameUsuario char (50);
declare @tipoOperacao char(50);
declare @descricao char(50);
BEGIN
exec insert_log @Cod_agenda= cod_agenda,@nomeUsuario=@nameUsuario,@tipoOperacao=@tipoOperacao

	insert into log (data,nome_usuario,tipo_operacao,descricao)
    			values(GetDate(),@nameUsuario,@tipoOperacao,@descricao);
END;
