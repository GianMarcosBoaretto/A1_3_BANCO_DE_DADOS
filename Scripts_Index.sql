-- Índice para busca por email (login frequente)
CREATE INDEX idx_email ON usuarios(email);

-- Índice para pesquisas por id_area em perfil_mentores
CREATE INDEX idx_area_mentor ON perfil_mentores(id_area);

-- Índice para melhorar joins em sessoes
CREATE INDEX idx_sessoes_mentor ON sessoes(id_mentor);
CREATE INDEX idx_sessoes_mentorado ON sessoes(id_mentorado);

-- Índice para buscas em notificações por id_usuario e visualizado
CREATE INDEX idx_notificacoes_usuario ON notificacoes(id_usuario, visualizado);
