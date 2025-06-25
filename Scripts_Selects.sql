-- 1. Mentores com área de atuação e média de avaliação
SELECT 
    u.nome AS mentor_nome,
    a.descricao AS area_atuacao,
    p.avaliacao_media
FROM perfil_mentores p
JOIN usuarios u ON p.id_usuario = u.id
JOIN areas_atuacao a ON p.id_area = a.id
ORDER BY p.avaliacao_media DESC;

-- 2. Quantidade de mentorados por curso
SELECT 
    c.descricao AS curso,
    COUNT(p.id) AS total_mentorados
FROM perfil_mentorados p
JOIN cursos c ON p.id_curso = c.id
GROUP BY c.descricao
ORDER BY total_mentorados DESC;

-- 3. Quantidade de sessões por status
SELECT 
    status,
    COUNT(*) AS quantidade
FROM sessoes
GROUP BY status
ORDER BY quantidade DESC;

-- 4. Mentores com mais sessões concluídas
SELECT 
    u.nome AS mentor_nome,
    COUNT(s.id_) AS sessoes_concluidas
FROM sessoes s
JOIN perfil_mentores pm ON s.id_mentor = pm.id
JOIN usuarios u ON pm.id_usuario = u.id
WHERE s.status = 'concluída'
GROUP BY u.nome
ORDER BY sessoes_concluidas DESC;

-- 5. Mensagens trocadas entre usuários 1 e 2
SELECT 
    u1.nome AS remetente,
    u2.nome AS destinatario,
    m.conteudo,
    m.data_envio
FROM mensagens m
JOIN usuarios u1 ON m.id_remetente = u1.id
JOIN usuarios u2 ON m.id_destinatario = u2.id
WHERE (m.id_remetente = 1 AND m.id_destinatario = 2)
   OR (m.id_remetente = 2 AND m.id_destinatario = 1)
ORDER BY m.data_envio;

-- 6. Grupos de estudo com número de membros
SELECT 
    g.descricao AS grupo,
    COUNT(ug.id_usuario) AS total_membros
FROM grupos_estudo g
LEFT JOIN usuario_grupo ug ON g.id = ug.id_grupo
GROUP BY g.id, g.descricao
ORDER BY total_membros DESC;

-- 7. Usuários que mais enviaram mensagens
SELECT 
    u.nome,
    COUNT(m.id) AS total_mensagens
FROM mensagens m
JOIN usuarios u ON m.id_remetente = u.id
GROUP BY u.id, u.nome
ORDER BY total_mensagens DESC;

-- 8. Histórico de eventos com nome do usuário
SELECT 
    u.nome,
    l.tabela,
    l.data_evento,
    l.mac
FROM logs_eventos l
JOIN usuarios u ON l.id_usuario = u.id
ORDER BY l.data_evento DESC;

-- 9. Sessões futuras com nomes de mentor e mentorado
SELECT 
    mentor.nome AS mentor_nome,
    mentorado.nome AS mentorado_nome,
    s.data_hora,
    s.status
FROM sessoes s
JOIN perfil_mentores pm ON s.id_mentor = pm.id
JOIN usuarios mentor ON pm.id_usuario = mentor.id
JOIN perfil_mentorados pd ON s.id_mentorado = pd.id
JOIN usuarios mentorado ON pd.id_usuario = mentorado.id
WHERE s.data_hora > NOW()
ORDER BY s.data_hora;

-- 10. Usuários mais seguidos
SELECT 
    u.nome,
    COUNT(s.id_seguidor) AS total_seguidores
FROM seguidores s
JOIN usuarios u ON s.id_seguido = u.id
GROUP BY u.id, u.nome
ORDER BY total_seguidores DESC;
