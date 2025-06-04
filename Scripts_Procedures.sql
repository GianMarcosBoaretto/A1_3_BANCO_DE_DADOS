DELIMITER $$

CREATE PROCEDURE cadastrar_usuario (
    IN p_nome VARCHAR(100),
    IN p_email VARCHAR(100),
    IN p_senha VARCHAR(255),
    IN p_tipo_usuario CHAR(1),
    IN p_data_cadastro DATE
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO usuarios (nome, email, senha, tipo_usuario, data_cadastro)
    VALUES (p_nome, p_email, p_senha, p_tipo_usuario, p_data_cadastro);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE cadastrar_perfil_mentor (
    IN p_id_usuario INT,
    IN p_id_area INT,
    IN p_curriculo_url VARCHAR(255)
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO perfil_mentores (id_usuario, id_area, curriculo_url)
    VALUES (p_id_usuario, p_id_area, p_curriculo_url);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE cadastrar_perfil_mentorado (
    IN p_id_usuario INT,
    IN p_id_curso INT,
    IN p_periodo CHAR(1),
    IN p_objetivo_academico TEXT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO perfil_mentorados (id_usuario, id_curso, periodo, objetivo_academico)
    VALUES (p_id_usuario, p_id_curso, p_periodo, p_objetivo_academico);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE cadastrar_sessao (
    IN p_id_mentor INT,
    IN p_id_mentorado INT,
    IN p_data_hora DATETIME,
    IN p_duracao INT,
    IN p_status ENUM('pendente', 'confirmada', 'concluída', 'cancelada'),
    IN p_feedback TEXT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO sessoes (id_mentor, id_mentorado, data_hora, duracao, status, feedback)
    VALUES (p_id_mentor, p_id_mentorado, p_data_hora, p_duracao, p_status, p_feedback);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE enviar_mensagem (
    IN p_id_remetente INT,
    IN p_id_destinatario INT,
    IN p_conteudo TEXT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO mensagens (id_remetente, id_destinatario, conteudo)
    VALUES (p_id_remetente, p_id_destinatario, p_conteudo);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE cadastrar_grupo_estudo (
    IN p_descricao VARCHAR(255),
    IN p_id_curso INT,
    IN p_data_criacao DATE
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO grupos_estudo (descricao, id_curso, data_criacao)
    VALUES (p_descricao, p_id_curso, p_data_criacao);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE seguir_usuario (
    IN p_id_seguidor INT,
    IN p_id_seguido INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO seguidores (id_seguidor, id_seguido)
    VALUES (p_id_seguidor, p_id_seguido);

    COMMIT;
END $$

DELIMITER ;

DELIMITER $$

CREATE PROCEDURE bloquear_usuario (
    IN p_id_bloqueador INT,
    IN p_id_bloqueado INT
)
BEGIN
    DECLARE EXIT HANDLER FOR SQLEXCEPTION 
    BEGIN
        ROLLBACK;
    END;

    START TRANSACTION;

    INSERT INTO bloqueados (id_bloqueador, id_bloqueado)
    VALUES (p_id_bloqueador, p_id_bloqueado);

    COMMIT;
END $$

DELIMITER ;
