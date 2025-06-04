CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL,
    tipo_usuario CHAR(1) NOT NULL,
    data_cadastro DATE NOT NULL
);

CREATE TABLE areas_atuacao (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
	descricao VARCHAR(255) NOT NULL
);

CREATE TABLE perfil_mentores (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_usuario INT NOT NULL,
    id_area INT NOT NULL,
    curriculo_url VARCHAR(255),
    avaliacao_media DECIMAL(3,2) DEFAULT 0.0,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
	FOREIGN KEY (id_area) REFERENCES areas_atuacao(id) ON DELETE CASCADE
);

CREATE TABLE cursos (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    duracao_semestres INT NOT NULL
);

CREATE TABLE disciplinas (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_curso INT NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE
);

CREATE TABLE perfil_mentorados (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_usuario INT NOT NULL,
    id_curso INT NOT NULL,
    periodo CHAR(1),
    objetivo_academico TEXT,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_curso) REFERENCES cursos(id) ON DELETE CASCADE
);

CREATE TABLE sessoes (
    id_ INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_mentor INT NOT NULL,
    id_mentorado INT NOT NULL,
    data_hora DATETIME NOT NULL,
    duracao INT,
    status ENUM('pendente', 'confirmada', 'concluída', 'cancelada') DEFAULT 'pendente',
    feedback TEXT,
    FOREIGN KEY (id_mentor) REFERENCES perfil_mentores(id) ON DELETE CASCADE,
    FOREIGN KEY (id_mentorado) REFERENCES perfil_mentorados(id) ON DELETE CASCADE
);

CREATE TABLE mensagens (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_remetente INT NOT NULL,
    id_destinatario INT NOT NULL,
    conteudo TEXT NOT NULL,
    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_remetente) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_destinatario) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE grupos_estudo (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    id_curso INT NOT NULL,
    data_criacao DATE NOT NULL
);

CREATE TABLE usuario_grupo (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_usuario INT NOT NULL,
    id_grupo INT NOT NULL,
    data_entrada DATE NOT NULL,
    nivel_participacao ENUM('membro', 'moderador', 'fundador') DEFAULT 'membro',
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (id_grupo) REFERENCES grupos_estudo(id) ON DELETE CASCADE
);

CREATE TABLE notificacoes (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_usuario INT NOT NULL,
    mensagem TEXT NOT NULL,
    visualizado BOOLEAN DEFAULT FALSE,
    data_envio DATETIME DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE logs_eventos (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    tabela VARCHAR(255) NOT NULL,
    data_evento DATETIME NOT NULL,
    mac VARCHAR(17) NOT NULL,
    id_usuario INT NOT NULL,
	FOREIGN KEY (id_usuario) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE seguidores (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_seguidor INT NOT NULL,
    id_seguido INT NOT NULL,
    FOREIGN KEY (id_seguidor) REFERENCES usuarios(id) ON DELETE CASCADE,
	FOREIGN KEY (id_seguido) REFERENCES usuarios(id) ON DELETE CASCADE
);

CREATE TABLE bloqueados (
	id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    id_bloqueador INT NOT NULL,
    id_bloqueado INT NOT NULL,
    FOREIGN KEY (id_bloqueador) REFERENCES usuarios(id) ON DELETE CASCADE,
	FOREIGN KEY (id_bloqueado) REFERENCES usuarios(id) ON DELETE CASCADE
);