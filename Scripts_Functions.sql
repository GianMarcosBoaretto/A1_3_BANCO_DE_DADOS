DELIMITER $$

CREATE FUNCTION total_grupos_usuario(p_usuario_id INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE v_total INT;

    SELECT COUNT(*) INTO v_total
    FROM usuario_grupo
    WHERE id_usuario = p_usuario_id;

    RETURN v_total;
END$$

DELIMITER ;

DELIMITER $$

CREATE FUNCTION nome_curso_grupo(p_grupo_id INT)
RETURNS VARCHAR(255)
DETERMINISTIC
BEGIN
    DECLARE v_nome_curso VARCHAR(255);

    SELECT c.descricao INTO v_nome_curso
    FROM grupos_estudo g
    JOIN cursos c ON g.id_curso = c.id
    WHERE g.id = p_grupo_id;

    RETURN IFNULL(v_nome_curso, 'Curso não encontrado');
END$$

DELIMITER ;
