DELIMITER $$

CREATE FUNCTION deletar_usuario(p_id INT)
RETURNS TINYINT
DETERMINISTIC
BEGIN
    DECLARE v_count INT;

    -- Verifica se o usuário existe
    SELECT COUNT(*) INTO v_count FROM usuarios WHERE id = p_id;

    IF v_count = 0 THEN
        RETURN 0; -- Não encontrou usuário para deletar
    ELSE
        DELETE FROM usuarios WHERE id = p_id;
        RETURN 1; -- Deletou com sucesso
    END IF;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION deletar_grupo_estudo(p_id INT)
RETURNS TINYINT
DETERMINISTIC
BEGIN
    DECLARE v_count INT;

    -- Verifica se o grupo existe
    SELECT COUNT(*) INTO v_count FROM grupos_estudo WHERE id = p_id;

    IF v_count = 0 THEN
        RETURN 0; -- Grupo não encontrado
    ELSE
        DELETE FROM grupos_estudo WHERE id = p_id;
        RETURN 1; -- Deletado com sucesso
    END IF;
END$$

DELIMITER ;
