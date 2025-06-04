# 📚 Banco de Dados MySQL: Rede Social Acadêmica

Este repositório contém todos os scripts SQL para criação e manipulação do banco de dados da **rede social acadêmica**. O projeto inclui estrutura de tabelas, dados de exemplo, procedures, funções, triggers, views, índices, cursors e transações, visando uma aplicação robusta e performática.

---

## 🗂 Organização dos Scripts

Os arquivos estão organizados conforme o tipo de modificação, seguindo o padrão:

| Arquivo                      | Descrição                                             |
|-----------------------------|-------------------------------------------------------|
| `SCRIPTS_CREATE.sql`         | Criação das tabelas e relacionamentos                 |
| `SCRIPTS_INSERTS.sql`         | População inicial das tabelas com dados de exemplo    |
| `SCRIPTS_PROCEDURES.sql`      | Procedures para inserção encapsulada                   |
| `SCRIPTS_FUNCTIONS.sql`       | Funções para deleção controlada com retorno de status |
| `SCRIPTS_TRIGGERS.sql`        | Triggers para logs automáticos e notificações          |
| `SCRIPTS_VIEWS.sql`           | Views para consultas simplificadas e encapsuladas      |
| `SCRIPTS_INDEX.sql`          | Criação de índices para otimização                      |
| `SCRIPTS_CURSOR.sql`         | Exemplo de cursor para processamento em lote           |
| `SCRIPTS_LOCK.sql`          | Exemplos de uso de bloqueios (LOCK TABLE)               |
| MER_A1_3.mwb                | Modelagem de Entidade e Relacionamento                 |

---

## 🚀 Funcionalidades SQL

- **Estrutura completa** das tabelas com chaves primárias, estrangeiras e relacionamentos em cascata.
- **População** com pelo menos 10 registros em cada tabela para testes.
- **Procedures** para encapsular inserções, garantindo consistência.
- **Funções** para deleções com confirmação de sucesso/falha.
- **Triggers** para registrar logs em todas as alterações e criar notificações em eventos importantes.
- **Views** que consolidam informações de usuários, perfis de mentor e mentorado.
- **Índices** para melhorar a performance de consultas frequentes.
- **Cursor** para processamento batch e manutenção.
- **Transações** com `START TRANSACTION`, `COMMIT` e `ROLLBACK` para operações críticas.
- **Bloqueios explícitos** usando `LOCK TABLES` para garantir integridade em operações concorrentes.

---

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

1. Crie um banco no seu SGBD MySQL.
2. Execute os scripts na ordem recomendada (01 a 09).
3. Use as procedures e funções para interagir com o banco de forma encapsulada.

---

## 📌 Requisitos

- MySQL 8.x ou compatível.
- Um cliente de banco de dados (MySQL Workbench, etc.)

---

## 🤝 Contribuição

Sinta-se à vontade para sugerir melhorias, novas rotinas, ou reportar problemas via *Issues* ou *Pull Requests*.

---

## 🧠 Autor

Projeto acadêmico desenvolvido por [Gian Marcos Boaretto, João Vitor Albuquerque Mendes Dantas , Fernando Grahl Zuffo e Pedro Arthur da Cruz Diniz], com foco em práticas avançadas de banco de dados relacional.
