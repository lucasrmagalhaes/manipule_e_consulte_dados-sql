### SQL com Oracle Database: manipule e consulte dados

**História da Linguagem SQL**
- SEQUEL - Linguagem de Consulta Estruturada. Abreviada para SQL (Structure Query Language).
- SQL - 92 - Primeira versão realmente usada que guarda uma estrutura até hoje.
- Todos os softwares de banco de dados adotaram o SQL ANSI como padrão.
- SQL evoluiu a ser mais do que uma linguagem de consulta, suportando manutenção de dados e administração do banco.

**Vantagens do banco de dados relacional**
- Os bancos de dados relacionais armazenam os dados de forma mais otimizada, economizando espaço em disco.
- As regras de relacionamentos entre as entidades que compõem o banco de dados relacional podem ser programadas no próprio banco, enquanto nos bancos de dados sequenciais estas relações devem estar contidas no programa ou aplicação no qual elas estão acessando.

**Vantagens e desvantagens da padronização**
- Aprendizado
- Portabilidade
- Longevidade
- Comunicação
- Liberdade de escolha

**Desvantagens da Padronização do SQL**
- Falta de criatividade
- Falta de estrutura

**Grupo de comandos SQL**
- DDL (Data Definition Language) É o conjunto de comandos para criação das entidades do banco de dados relacional. CREATE, ALTER, TRUNCATE, DROP.
- DML: INSERT, UPDATE, DELETE, LOCK.
- DCL: COMMIT, ROLLBACK, SAVEPOINT.

**História da Oracle**
- 1977 - Projeto CIA
- 1978 - Criação da RSI
- 1979 - Primeira versão Assembler
- 1982 - Mudança no nome da Oracle
- 1983 - Primeira versão em C
- 1984 - Versão para PC
- 1987 - Maior empresa de Banco de Dados
- 1988 - Versão com bloqueio de linha
- 1992 - Versão V7
- 1993 - Interface GUI
- 1994 - Morte de um dos fundadores
- 1995 - 64 bits
- 1996 - Oracle 7.3
- 1997 - Oracle 8 Web
- 1998 - Oracle versão Linux
- 1999 - Oracle versão 8I
- 2000 - Oracle versão 9I
- 2003 - Oracle versão 10G GRID
- 2007 - Oracle 11G
- 2013 - Oracle 12C
- 2018 - Oracle 18/19C
- Versão atual - 21C

**Instalando o Oracle Express Edition**
- Versão enxuta do Oracle que é usada justamente para estudo, para desenvolvimento e é uma versão gratuita.

[Oracle Database 21c Express Edition](https://www.oracle.com/br/database/technologies/xe-downloads.html)

**Instalando o Oracle Developer**
- IDE - Integrated Developmente Environment
- Windows 64-bit with JDK 11 included

[Oracle Developer](https://www.oracle.com/database/sqldeveloper/technologies/download/)

**Criando a conexão**
- Criar uma Conexão Manualmente
- Name: CONEXÃO MÁQUINA LOCAL
- Nome do Usuário: system
- Senha: Senha da instalação
- [x] Salvar Senha
- Nome do Host: localhost
- Porta: 1521
- Salvar
- Conectar

**Significado de Localhost**
- Endereço da própria máquina.