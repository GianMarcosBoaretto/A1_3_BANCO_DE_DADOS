DELIMITER $$

CREATE PROCEDURE notificar_sessoes_pendentes()
BEGIN
    DECLARE done INT DEFAULT FALSE;
    DECLARE v_id_mentorado INT;
    DECLARE v_data DATETIME;
    DECLARE cur CURSOR FOR
        SELECT id_mentorado, data_hora 
        FROM sessoes 
        WHERE status = 'pendente' AND data_hora < NOW() - INTERVAL 7 DAY;
        
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

    OPEN cur;

    read_loop: LOOP
        FETCH cur INTO v_id_mentorado, v_data;
        IF done THEN
            LEAVE read_loop;
        END IF;

        INSERT INTO notificacoes (id_usuario, mensagem)
        VALUES (
            v_id_mentorado,
            CONCAT('Você tem uma sessão pendente desde ', DATE(v_data), '. Por favor, verifique sua agenda.')
        );
    END LOOP;

    CLOSE cur;
END$$

DELIMITER ;
