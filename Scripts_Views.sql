CREATE VIEW vw_perfis_completos AS
SELECT 
    u.id AS id_usuario,
    u.nome,
    u.email,
    u.tipo_usuario,
    u.data_cadastro,

    pm.id AS id_mentor,
    a.descricao AS area_atuacao,
    pm.curriculo_url,
    pm.avaliacao_media,

    pd.id AS id_mentorado,
    c.descricao AS curso,
    pd.periodo,
    pd.objetivo_academico

FROM usuarios u
LEFT JOIN perfil_mentores pm ON u.id = pm.id_usuario
LEFT JOIN areas_atuacao a ON pm.id_area = a.id
LEFT JOIN perfil_mentorados pd ON u.id = pd.id_usuario
LEFT JOIN cursos c ON pd.id_curso = c.id;

CREATE VIEW vw_sessoes_detalhadas AS
SELECT 
    s.id_ AS id_sessao,
    s.data_hora,
    s.duracao,
    s.status,
    s.feedback,

    m.id_usuario AS id_mentor_usuario,
    um.nome AS nome_mentor,
    a.descricao AS area_mentor,

    me.id_usuario AS id_mentorado_usuario,
    ue.nome AS nome_mentorado,
    c.descricao AS curso_mentorado

FROM sessoes s
JOIN perfil_mentores m ON s.id_mentor = m.id
JOIN usuarios um ON m.id_usuario = um.id
JOIN areas_atuacao a ON m.id_area = a.id
JOIN perfil_mentorados me ON s.id_mentorado = me.id
JOIN usuarios ue ON me.id_usuario = ue.id
JOIN cursos c ON me.id_curso = c.id;
