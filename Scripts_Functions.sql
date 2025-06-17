DELIMITER $$

CREATE FUNCTION nome_grupo(p_id INT)
RETURNS VARCHAR(100)
DETERMINISTIC
BEGIN
    DECLARE v_nome VARCHAR(100);

    SELECT nome INTO v_nome FROM grupos_estudo WHERE id = p_id;

    RETURN IFNULL(v_nome, 'Grupo não encontrado');
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION total_grupos_usuario(p_usuario_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_total INT;

    SELECT COUNT(*) INTO v_total FROM usuarios_grupos WHERE usuario_id = p_usuario_id;

    RETURN v_total;
END$$

DELIMITER ;
