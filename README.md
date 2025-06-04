# 📚 Banco de Dados: Rede Social Acadêmica

Este repositório contém o projeto completo do banco de dados para uma **rede social acadêmica** que conecta mentores e mentorados, permitindo sessões de mentoria, mensagens, grupos de estudo, seguidores, bloqueios, notificações e controle de eventos do sistema.

---

## 🗂 Estrutura do Projeto

O projeto está organizado em arquivos SQL com diferentes responsabilidades:

- `01_ddl_criacao_tabelas.sql`: Criação das tabelas principais e relacionamentos.
- `02_dml_inserts_exemplo.sql`: Exemplos de inserts para testes.
- `03_procedures.sql`: Procedures para encapsular operações de inserção.
- `04_functions.sql`: Funções com retorno para deleção controlada.
- `05_triggers_logs_notificacoes.sql`: Triggers para logs automáticos e notificações.
- `06_views.sql`: Views para facilitar consultas encapsuladas.
- `07_cursor_e_bloqueios.sql`: Exemplo de cursor e uso de LOCK TABLE.
- `08_indices_otimizacoes.sql`: Análise e criação de índices otimizados.
- `09_transacoes.sql`: Exemplo de uso de transações e tratamento de falhas.

---

## 🚀 Funcionalidades SQL Implementadas

### 🔧 Procedures
- Inserção de usuários, mentores, mentorados, sessões, mensagens, seguidores, bloqueios e grupos.

### ⚙️ Functions
- Deleção com verificação e retorno de sucesso/falha.

### 🔁 Triggers
- Geração de logs automáticos em qualquer alteração nas tabelas.
- Notificações ao entrar/sair de grupos, seguir ou bloquear alguém.

### 👁 Views
- Visão consolidada de usuários com perfis de mentor e mentorado.

### 🔄 Cursor
- Exemplo de cursor para atualização em lote.

### 🔒 Bloqueios
- Uso de `LOCK TABLES` em operações críticas para garantir integridade.

### 🔁 Transações
- Uso de `START TRANSACTION`, `COMMIT`, `ROLLBACK` para segurança de dados.

---

## 💡 Como Executar

1. Crie um banco no seu SGBD MySQL/MariaDB.
2. Execute os scripts na ordem recomendada (01 a 09).
3. Use as procedures e funções para interagir com o banco de forma encapsulada.

---

## 📌 Requisitos

- MySQL 8.x ou MariaDB compatível.
- Um cliente de banco de dados (como DBeaver, MySQL Workbench, etc.)

---

## 🤝 Contribuição

Sinta-se à vontade para sugerir melhorias, novas rotinas, ou reportar problemas via *Issues* ou *Pull Requests*.

---

## 🧠 Autor

Projeto acadêmico desenvolvido por [Seu Nome], com foco em práticas avançadas de banco de dados relacional.
