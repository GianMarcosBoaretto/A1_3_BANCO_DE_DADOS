DELIMITER $$

CREATE PROCEDURE cancelar_sessoes_expiradas()
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION
    BEGIN
        ROLLBACK;
        UNLOCK TABLES;
    END;

    START TRANSACTION;

    -- Bloqueia a tabela sessoes para escrita por outros usuários
    LOCK TABLES sessoes WRITE;

    -- Atualiza sessões pendentes com data passada
    UPDATE sessoes
    SET status = 'cancelada'
    WHERE status = 'pendente' AND data_hora < NOW();

    COMMIT;

    -- Libera as tabelas
    UNLOCK TABLES;
END $$

DELIMITER ;
