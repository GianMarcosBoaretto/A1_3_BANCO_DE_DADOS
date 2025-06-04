
-- Usuários
INSERT INTO usuarios (id, nome, email, senha, tipo_usuario, data_cadastro) VALUES
(1, 'Thiago Rocha', 'thiago.rocha15@example.com', 'rL!osuvX@0Gp', 'M', '2024-10-09'),
(2, 'Renan Martins', 'renan.martins10@example.com', 'N2r#qUksvtd9', 'M', '2024-09-20'),
(3, 'Carlos Silva', 'carlos.silva68@example.com', 'ZG1$91sB!qnh', 'M', '2024-08-04'),
(4, 'Beatriz Almeida', 'beatriz.almeida79@example.com', '2x#Q1Uw4CjN8', 'M', '2024-07-14'),
(5, 'Marcos Vieira', 'marcos.vieira99@example.com', 'j32@Kd0bRgzH', 'M', '2024-09-27'),
(6, 'Juliana Costa', 'juliana.costa43@example.com', 'MH8#Jk0we9p!', 'M', '2024-06-14'),
(7, 'Letícia Ramos', 'leticia.ramos2@example.com', '9m@zFq2N$Ep!', 'M', '2024-06-27'),
(8, 'Roberta Ferreira', 'roberta.ferreira25@example.com', 'kP4!zOtx7LW9', 'M', '2024-08-11'),
(9, 'Daniel Pires', 'daniel.pires17@example.com', 'Yt7@qXpeL#r8', 'M', '2024-07-01'),
(10, 'Vinicius Barros', 'vinicius.barros34@example.com', '5p@R7XeBLz!9', 'M', '2024-09-10'),
(11, 'Lucas Gomes', 'lucas.gomes90@example.com', 'bN6$RpOv!xQ3', 'A', '2024-07-11'),
(12, 'Fernanda Oliveira', 'fernanda.oliveira23@example.com', 'aZ9!vFyLtR#4', 'A', '2024-06-25'),
(13, 'Ricardo Nascimento', 'ricardo.nascimento47@example.com', '3q$EoXvT!9Hp', 'A', '2024-08-18'),
(14, 'Camila Souza', 'camila.souza72@example.com', 'Kr1@0GpE!mw3', 'A', '2024-09-05'),
(15, 'Paulo Henrique', 'paulo.henrique53@example.com', 'Pq@0LtR3#sK9', 'A', '2024-10-02'),
(16, 'Aline Duarte', 'aline.duarte85@example.com', 'V7p@NmTqE#x1', 'A', '2024-08-06'),
(17, 'Felipe Moraes', 'felipe.moraes30@example.com', '6p@ZqErN!91B', 'A', '2024-09-29'),
(18, 'Natália Teixeira', 'natalia.teixeira77@example.com', '3z!LtK9pEr#M', 'A', '2024-06-30'),
(19, 'Gabriel Ribeiro', 'gabriel.ribeiro91@example.com', '8w!QzEpR@4Lt', 'A', '2024-07-17'),
(20, 'Tatiane Martins', 'tatiane.martins31@example.com', '1q!VxRtLp7#o', 'A', '2024-10-01');

-- Áreas de Atuação
INSERT INTO areas_atuacao (id, descricao) VALUES
(1, 'Desenvolvimento de Software'),
(2, 'Engenharia Elétrica'),
(3, 'Design Gráfico'),
(4, 'Marketing Digital'),
(5, 'Inteligência Artificial'),
(6, 'Gestão de Projetos'),
(7, 'Banco de Dados'),
(8, 'Cibersegurança'),
(9, 'Redes de Computadores'),
(10, 'Educação Tecnológica');

-- Cursos
INSERT INTO cursos (id, descricao, duracao_semestres) VALUES
(1, 'Engenharia da Computação', 10),
(2, 'Ciência da Computação', 8),
(3, 'Engenharia Civil', 10),
(4, 'Publicidade e Propaganda', 8),
(5, 'Administração de Empresas', 8),
(6, 'Design Digital', 6),
(7, 'Redes de Computadores', 6),
(8, 'Sistemas de Informação', 8),
(9, 'Engenharia de Produção', 10),
(10, 'Pedagogia Digital', 8);

-- POVOAMENTO COMPLETO DO BANCO DE DADOS DA PLATAFORMA

-- Tabela usuarios
INSERT INTO usuarios (nome, email, senha, tipo_usuario, data_cadastro) VALUES
('Alice Lima', 'alice@plataforma.com', '123senha', 'M', '2024-01-10'),
('Bruno Costa', 'bruno@plataforma.com', 'abc123', 'M', '2024-02-11'),
('Carlos Dias', 'carlos@plataforma.com', 'senha@321', 'M', '2024-03-15'),
('Daniela Souza', 'daniela@plataforma.com', '1234', 'O', '2024-01-20'),
('Eduarda Nunes', 'eduarda@plataforma.com', 'senha123', 'M', '2024-04-10'),
('Felipe Rocha', 'felipe@plataforma.com', 'segredo', 'O', '2024-04-12'),
('Gabriela Melo', 'gabriela@plataforma.com', 'minhasenha', 'M', '2024-02-22'),
('Henrique Braga', 'henrique@plataforma.com', '123senha', 'O', '2024-02-25'),
('Isadora Cunha', 'isadora@plataforma.com', 'senha123', 'M', '2024-03-30'),
('João Victor', 'joao@plataforma.com', 'abc123', 'M', '2024-05-01');

-- Tabela areas_atuacao
INSERT INTO areas_atuacao (descricao) VALUES
('Matemática'),
('Física'),
('Programação'),
('Redação'),
('Química'),
('Biologia'),
('História'),
('Geografia'),
('Inglês'),
('Empreendedorismo');

-- Tabela cursos
INSERT INTO cursos (descricao, duracao_semestres) VALUES
('Engenharia de Computação', 10),
('Direito', 10),
('Medicina', 12),
('Administração', 8),
('Psicologia', 10),
('Pedagogia', 8),
('Arquitetura', 10),
('Jornalismo', 8),
('Enfermagem', 10),
('Ciência da Computação', 8);

-- Tabela disciplinas
INSERT INTO disciplinas (id_curso, descricao) VALUES
(1, 'Algoritmos'),
(1, 'Cálculo I'),
(1, 'Estrutura de Dados'),
(2, 'Direito Constitucional'),
(2, 'Direito Penal'),
(3, 'Anatomia Humana'),
(3, 'Fisiologia'),
(4, 'Marketing'),
(4, 'Administração Financeira'),
(5, 'Psicologia Social');

-- Tabela perfil_mentores
INSERT INTO perfil_mentores (id_usuario, id_area, curriculo_url, avaliacao_media) VALUES
(1, 3, 'https://curriculos.com/alice.pdf', 4.7),
(2, 1, 'https://curriculos.com/bruno.pdf', 4.5),
(3, 2, 'https://curriculos.com/carlos.pdf', 4.3),
(5, 4, 'https://curriculos.com/eduarda.pdf', 4.6),
(7, 5, 'https://curriculos.com/gabriela.pdf', 4.8),
(9, 6, 'https://curriculos.com/isadora.pdf', 4.4),
(10, 7, 'https://curriculos.com/joao.pdf', 4.2),
(1, 8, 'https://curriculos.com/alice2.pdf', 4.9),
(3, 9, 'https://curriculos.com/carlos2.pdf', 4.1),
(7, 10, 'https://curriculos.com/gabriela2.pdf', 4.6);

-- Tabela perfil_mentorados
INSERT INTO perfil_mentorados (id_usuario, id_curso, periodo, objetivo_academico) VALUES
(4, 1, '2', 'Melhorar em lógica de programação'),
(6, 2, '3', 'Aprimorar leitura constitucional'),
(8, 3, '1', 'Entender fundamentos da anatomia'),
(2, 4, '4', 'Desenvolver projetos práticos'),
(9, 5, '5', 'Melhorar performance em provas'),
(5, 6, '3', 'Dominar metodologias de ensino'),
(10, 7, '2', 'Projetar melhor'),
(1, 8, '1', 'Aprender a produzir conteúdo'),
(3, 9, '6', 'Aprimorar habilidades clínicas'),
(7, 10, '2', 'Desenvolver em backend');

-- Tabela sessoes
INSERT INTO sessoes (id_mentor, id_mentorado, data_hora, duracao, status, feedback) VALUES
(1, 1, '2024-06-01 10:00:00', 60, 'concluída', 'Ótima sessão'),
(2, 2, '2024-06-02 14:00:00', 45, 'concluída', 'Muito útil'),
(3, 3, '2024-06-03 09:00:00', 30, 'pendente', NULL),
(4, 4, '2024-06-04 16:00:00', 60, 'cancelada', 'Problema técnico'),
(5, 5, '2024-06-05 11:00:00', 60, 'confirmada', NULL),
(6, 6, '2024-06-06 13:00:00', 50, 'pendente', NULL),
(7, 7, '2024-06-07 15:00:00', 40, 'confirmada', NULL),
(8, 8, '2024-06-08 10:00:00', 60, 'concluída', 'Excelente'),
(9, 9, '2024-06-09 08:00:00', 30, 'concluída', 'Bom'),
(10, 10, '2024-06-10 18:00:00', 90, 'pendente', NULL);

-- Tabela mensagens
INSERT INTO mensagens (id_remetente, id_destinatario, conteudo) VALUES
(1, 2, 'Oi, podemos marcar uma mentoria?'),
(2, 1, 'Claro! Quando estiver disponível.'),
(3, 4, 'Você pode revisar meu projeto?'),
(4, 3, 'Posso sim, envie por e-mail.'),
(5, 6, 'Vamos nos reunir amanhã.'),
(6, 5, 'Confirmado, até amanhã.'),
(7, 8, 'Gostaria de discutir o último conteúdo.'),
(8, 7, 'Com certeza, podemos marcar.'),
(9, 10, 'Obrigado pela ajuda!'),
(10, 9, 'Disponha!');

-- Tabela grupos_estudo
INSERT INTO grupos_estudo (descricao, id_curso, data_criacao) VALUES
('Estudos de Programação', 1, '2024-05-01'),
('Grupo de Direito Penal', 2, '2024-05-02'),
('Anatomia para iniciantes', 3, '2024-05-03'),
('Gestão e Negócios', 4, '2024-05-04'),
('Psicologia Clínica', 5, '2024-05-05'),
('Ensino Infantil', 6, '2024-05-06'),
('Urbanismo Moderno', 7, '2024-05-07'),
('Jornalismo Investigativo', 8, '2024-05-08'),
('Cuidados de Enfermagem', 9, '2024-05-09'),
('Desenvolvimento Web', 10, '2024-05-10');

-- Tabela usuario_grupo
INSERT INTO usuario_grupo (id_usuario, id_grupo, data_entrada, nivel_participacao) VALUES
(1, 1, '2024-05-01', 'fundador'),
(2, 2, '2024-05-02', 'moderador'),
(3, 3, '2024-05-03', 'membro'),
(4, 4, '2024-05-04', 'membro'),
(5, 5, '2024-05-05', 'fundador'),
(6, 6, '2024-05-06', 'membro'),
(7, 7, '2024-05-07', 'moderador'),
(8, 8, '2024-05-08', 'fundador'),
(9, 9, '2024-05-09', 'membro'),
(10, 10, '2024-05-10', 'membro');

-- Tabela notificacoes
INSERT INTO notificacoes (id_usuario, mensagem, visualizado) VALUES
(1, 'Sua sessão foi confirmada.', FALSE),
(2, 'Você recebeu uma nova mensagem.', TRUE),
(3, 'Nova atividade no grupo.', FALSE),
(4, 'Sessão agendada.', TRUE),
(5, 'Mentor respondeu sua dúvida.', FALSE),
(6, 'Você foi adicionado a um grupo.', TRUE),
(7, 'Alerta de sessão próxima.', FALSE),
(8, 'Nova sessão disponível.', TRUE),
(9, 'Você tem nova avaliação.', FALSE),
(10, 'Nova mensagem recebida.', TRUE);

-- Tabela logs_eventos
INSERT INTO logs_eventos (tabela, data_evento, mac, id_usuario) VALUES
('usuarios', '2024-06-01 09:00:00', '00:1A:2B:3C:4D:5E', 1),
('mensagens', '2024-06-01 09:15:00', '00:1A:2B:3C:4D:5F', 2),
('sessoes', '2024-06-01 10:00:00', '00:1A:2B:3C:4D:60', 3),
('notificacoes', '2024-06-01 10:05:00', '00:1A:2B:3C:4D:61', 4),
('usuarios', '2024-06-01 10:10:00', '00:1A:2B:3C:4D:62', 5),
('grupos_estudo', '2024-06-01 10:15:00', '00:1A:2B:3C:4D:63', 6),
('disciplinas', '2024-06-01 10:20:00', '00:1A:2B:3C:4D:64', 7),
('perfil_mentores', '2024-06-01 10:25:00', '00:1A:2B:3C:4D:65', 8),
('perfil_mentorados', '2024-06-01 10:30:00', '00:1A:2B:3C:4D:66', 9),
('areas_atuacao', '2024-06-01 10:35:00', '00:1A:2B:3C:4D:67', 10);

-- Tabela seguidores
INSERT INTO seguidores (id_seguidor, id_seguido) VALUES
(1, 2), (2, 3), (3, 1), (4, 5), (5, 6),
(6, 7), (7, 8), (8, 9), (9, 10), (10, 1);

-- Tabela bloqueados
INSERT INTO bloqueados (id_bloqueador, id_bloqueado) VALUES
(1, 3), (2, 4), (5, 1), (6, 2), (7, 6),
(8, 5), (9, 7), (3, 9), (4, 8), (10, 2);
