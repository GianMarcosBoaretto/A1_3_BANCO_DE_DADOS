DELIMITER $$

-- Tabela usuarios
CREATE TRIGGER log_insert_usuarios AFTER INSERT ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuarios', NOW(), '00:00:00:00:00:00', NEW.id);
END$$

CREATE TRIGGER log_update_usuarios AFTER UPDATE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuarios', NOW(), '00:00:00:00:00:00', NEW.id);
END$$

CREATE TRIGGER log_delete_usuarios AFTER DELETE ON usuarios
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuarios', NOW(), '00:00:00:00:00:00', OLD.id);
END$$

-- Tabela perfil_mentores
CREATE TRIGGER log_insert_perfil_mentores AFTER INSERT ON perfil_mentores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentores', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_update_perfil_mentores AFTER UPDATE ON perfil_mentores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentores', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_delete_perfil_mentores AFTER DELETE ON perfil_mentores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentores', NOW(), '00:00:00:00:00:00', OLD.id_usuario);
END$$

-- Tabela perfil_mentorados
CREATE TRIGGER log_insert_perfil_mentorados AFTER INSERT ON perfil_mentorados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentorados', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_update_perfil_mentorados AFTER UPDATE ON perfil_mentorados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentorados', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_delete_perfil_mentorados AFTER DELETE ON perfil_mentorados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('perfil_mentorados', NOW(), '00:00:00:00:00:00', OLD.id_usuario);
END$$

-- Tabela sessoes
CREATE TRIGGER log_insert_sessoes AFTER INSERT ON sessoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('sessoes', NOW(), '00:00:00:00:00:00', NEW.id_mentorado);
END$$

CREATE TRIGGER log_update_sessoes AFTER UPDATE ON sessoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('sessoes', NOW(), '00:00:00:00:00:00', NEW.id_mentorado);
END$$

CREATE TRIGGER log_delete_sessoes AFTER DELETE ON sessoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('sessoes', NOW(), '00:00:00:00:00:00', OLD.id_mentorado);
END$$

-- Tabela mensagens
CREATE TRIGGER log_insert_mensagens AFTER INSERT ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('mensagens', NOW(), '00:00:00:00:00:00', NEW.id_remetente);
END$$

CREATE TRIGGER log_update_mensagens AFTER UPDATE ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('mensagens', NOW(), '00:00:00:00:00:00', NEW.id_remetente);
END$$

CREATE TRIGGER log_delete_mensagens AFTER DELETE ON mensagens
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('mensagens', NOW(), '00:00:00:00:00:00', OLD.id_remetente);
END$$

-- Tabela grupos_estudo
CREATE TRIGGER log_insert_grupos_estudo AFTER INSERT ON grupos_estudo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('grupos_estudo', NOW(), '00:00:00:00:00:00', NULL);
END$$

CREATE TRIGGER log_update_grupos_estudo AFTER UPDATE ON grupos_estudo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('grupos_estudo', NOW(), '00:00:00:00:00:00', NULL);
END$$

CREATE TRIGGER log_delete_grupos_estudo AFTER DELETE ON grupos_estudo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('grupos_estudo', NOW(), '00:00:00:00:00:00', NULL);
END$$

-- Tabela usuario_grupo
CREATE TRIGGER log_insert_usuario_grupo AFTER INSERT ON usuario_grupo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuario_grupo', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_update_usuario_grupo AFTER UPDATE ON usuario_grupo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuario_grupo', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_delete_usuario_grupo AFTER DELETE ON usuario_grupo
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('usuario_grupo', NOW(), '00:00:00:00:00:00', OLD.id_usuario);
END$$

-- Tabela notificacoes
CREATE TRIGGER log_insert_notificacoes AFTER INSERT ON notificacoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('notificacoes', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_update_notificacoes AFTER UPDATE ON notificacoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('notificacoes', NOW(), '00:00:00:00:00:00', NEW.id_usuario);
END$$

CREATE TRIGGER log_delete_notificacoes AFTER DELETE ON notificacoes
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('notificacoes', NOW(), '00:00:00:00:00:00', OLD.id_usuario);
END$$

-- Tabela seguidores
CREATE TRIGGER log_insert_seguidores AFTER INSERT ON seguidores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('seguidores', NOW(), '00:00:00:00:00:00', NEW.id_seguidor);
END$$

CREATE TRIGGER log_update_seguidores AFTER UPDATE ON seguidores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('seguidores', NOW(), '00:00:00:00:00:00', NEW.id_seguidor);
END$$

CREATE TRIGGER log_delete_seguidores AFTER DELETE ON seguidores
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('seguidores', NOW(), '00:00:00:00:00:00', OLD.id_seguidor);
END$$

-- Tabela bloqueados
CREATE TRIGGER log_insert_bloqueados AFTER INSERT ON bloqueados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('bloqueados', NOW(), '00:00:00:00:00:00', NEW.id_bloqueador);
END$$

CREATE TRIGGER log_update_bloqueados AFTER UPDATE ON bloqueados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('bloqueados', NOW(), '00:00:00:00:00:00', NEW.id_bloqueador);
END$$

CREATE TRIGGER log_delete_bloqueados AFTER DELETE ON bloqueados
FOR EACH ROW
BEGIN
    INSERT INTO logs_eventos(tabela, data_evento, mac, id_usuario)
    VALUES('bloqueados', NOW(), '00:00:00:00:00:00', OLD.id_bloqueador);
END$$

DELIMITER ;

DELIMITER $$

-- Notificar ao ser seguido
CREATE TRIGGER notificar_seguido AFTER INSERT ON seguidores
FOR EACH ROW
BEGIN
    INSERT INTO notificacoes (id_usuario, mensagem)
    VALUES (
        NEW.id_seguido,
        CONCAT('Você foi seguido por um novo usuário (ID ', NEW.id_seguidor, ').')
    );
END$$

-- Notificar ao ser bloqueado
CREATE TRIGGER notificar_bloqueado AFTER INSERT ON bloqueados
FOR EACH ROW
BEGIN
    INSERT INTO notificacoes (id_usuario, mensagem)
    VALUES (
        NEW.id_bloqueado,
        CONCAT('Você foi bloqueado por um usuário (ID ', NEW.id_bloqueador, ').')
    );
END$$

-- Notificar entrada em grupo
CREATE TRIGGER notificar_entrada_grupo AFTER INSERT ON usuario_grupo
FOR EACH ROW
BEGIN
    INSERT INTO notificacoes (id_usuario, mensagem)
    VALUES (
        NEW.id_usuario,
        CONCAT('Você entrou no grupo de estudo (ID ', NEW.id_grupo, ').')
    );
END$$

DELIMITER ;

-- Notificar saída de grupo
CREATE TRIGGER notificar_saida_grupo AFTER DELETE ON usuario_grupo
FOR EACH ROW
BEGIN
    INSERT INTO notificacoes (id_usuario, mensagem)
    VALUES (
        OLD.id_usuario,
        CONCAT('Você saiu do grupo de estudo (ID ', OLD.id_grupo, ').')
	);
END$$

DELIMITER ;