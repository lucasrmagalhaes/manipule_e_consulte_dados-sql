### SQL com Oracle Database: manipule e consulte dados

**História da Linguagem SQL**
- SEQUEL
    - Linguagem de Consulta Estruturada. Abreviada para SQL (Structure Query Language).
- SQL - 92
    - Primeira versão realmente usada que guarda uma estrutura até hoje.
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
- DDL (Data Definition Language) 
    - É o conjunto de comandos para criação das entidades do banco de dados relacional. CREATE, ALTER, TRUNCATE, DROP.
- DML
    - INSERT, UPDATE, DELETE, LOCK.
- DCL
    - COMMIT, ROLLBACK, SAVEPOINT.

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
- Nome do Usuário: SYS, SYSTEM e PDBADMIN
- Senha: Senha da instalação
- [x] Salvar Senha
- Nome do Host: localhost
- Porta: 1521
- Salvar
- Conectar

**Significado de Localhost**
- Endereço da própria máquina.

**Entidades de um banco de dados**
- Tablespace
    - Tabelas
    - Visões (Views)
    - Procedures ou Funções (PL/SQL)
    - TRIGGER

Tabela
- Linhas e colunas.
- Número de linhas quantas o espaço em disco comportar.
- Número de colunas é limitado. 
    - Associado a definição da tabela.
- Chamamos estas colunas de CAMPOS.
- As linhas chamamos de REGISTROS ou LINHAS.
- CAMPOS possuem definições rígidas. 
    - TIPO deve ser único.
- CHAVE PRIMÁRIA (NÃO É OBRIGATÓRIO)
    - É a referência a colunas (campos) cujos valores não podem se repetir em outras linhas da mesma tabela.
    - Colunas cujos valores não podem se repetir nas linhas da tabela.
- CHAVE ESTRANGEIRA 
    - Faz a ligação entre dois campos de duas tabelas diferentes.
    - Os campos devem ter as mesmas propriedades.
    - O campo no qual a chave estrangeira se liga deve ser uma chave primária.
- Índice
    - Ajuda a fazer buscar mais rápidas associadas aquela coluna.
    - Toda a chave primária vai ter um índice criado.
    - Podemos ter colunas que não sejam chaves primárias mas que tenham índices.

Visão
- Consulta
    - Visão

**Tipos de campos**

Campos Textos
- CHAR
    - Armazena cadeias de caracteres de comprimento fixo. A criar um campo CHAR precimos definir o comprimento deste campo (1 a 2000 caracteres).
    - O valor é fixo. Se temos um campo CHAR(10) e inserimos um texto de 5 caracteres, o Oracle irá preencher o campo com mais 5 vazios.
    - Se o valor for muito grande haverá um retorno de erro.
- VARCHAR e VARCHAR2
    - Armazena cadeias de caracteres de comprimento variável. A criar um campo CHAR precisamos definir o comprimento deste campo ( 1 a 4000 caracteres).
    - O valor é variável. Se temos um campo VARCHAR(10) e inserimos um texto de 5 caracteres, o Oracle irá preencher o campo somente com os 5 caracteres.
    - Se o valor for muito grande haverá um retorno de erro.
    - VARCHAR e VARCHAR2 são sinônimos. Use sempre VARCHAR2.
- NCHAR, NVARCHAR e NVARCHAR2
    - Armazena cadeias de caracteres de comprimento fixo ou variável, mas são caracteres Unicode.
    - Respeita as caraterísticas do CHAR, VARCHAR e VARCHAR2.
    - Unicode - Fornece um único conjunto de caracteres contendo os idiomas do mundo.
- CLOB e NLOB
    - São campos longos que podem armazenar até 8 Terabytes de dados, por campo.
    - CLOB e NLOB correspondem a VARCHAR2 e NVARCHAR2.
    - Existem um tipo chamado LONG mas que não deve ser mais usado nas versões atuais. Ele existe apenas para manter compatibilidade com bancos de dados Oracle antigos.
- NUMBER
    - Armazena números de tamanho fixo e de ponto flutuante. Qualquer número pode ser armazenado neste campo, até 38 dígitos de precisão.
    - Números positivos, negativos e zero.
    - Opcionalmente podemos determinar a precisão incluindo a escala e a precisão.
    - EX.: Number(10,2)

Campos Numéricos
    - INTEGER
    - SHORTINTEGER
    - LONGINTEGER
    - DECIMAL
    - SHORTDECIMAL

Campos Datas
- DATE
    - O campo DATE armazena dados no formato data e hora.
    - O próprio Oracle tem sua forma interna de armazenar a data. Ela é exibida, na sua foma padrão como: DD-MM-YY.
    - Na hora de incluir dados o campo usa como padrão 00:00:00AM como hora na data. A não ser que isso seja explicitamente especificado.
- Curiosidade
    - O Oracle é inteligente a desprezar datas que não existem:
        - Quando o calendário Juliano foi implementado 10 dias foram suprimidos.
        - Ele deu um pulo entre a data 04-10-1582 e 10-10-1582.
        - Logo, para o Oracle, o dia seguinte a 04-10-1582 será 10-10-1582 e este saldo é incluído em todas as funções de data internas.
- TIMESTAMP
- TIMESTAMP WITH TIME ZONE
- TIMESTAMP WITH LOCAL TIMEZONE
    - São tipos especiais que levam em conta milésimos de segundos, fusos horários e, inclusive, horário de verão.

Campos Binários
- BLOB
    - Armazena dados binários não estruturados no banco de dados. BLOBs pode armazenar até 128 terabytes de dados binários.
- BFILE
    - Armazena dados binários não estruturados em arquivos do sistema operacional fora do banco de dados.

**VARCHAR vs NVARCHAR**
- NVARCHAR usa uma tabela de códigos de caracteres entendida, comportando diversos idiomas, enquanto a VARCHAR usa uma tabela reduzida, para identificação dos caracteres do texto.

**Conhecendo o SQL Developer**
* [conhecendo_sql_developer](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/conhecendo_sql_developer.sql)

**Preparando o banco a ser criado**
- Modelo Relacional
    - Conhecer o negócio;
    - Diagrama de entidades;
    - Modelo de entidade e relacionamentos; e
    - Metadados.

- Cadastro de Clientes
    - CPF do cliente
    - O nome completo
    - Endereço (Rua, bairro, cidade, estado e CEP)
    - Data de nascimento
    - A idade
    - O sexo
    - O limite de crédito para ele comprar produtos
    - O volume mínimo de sucos que ele pode comprar
    - Se ele já realizou a primeira compra

**Criando a primeira tabela**
* [criando_primeira_tabela](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/criando_primeira_tabela.sql)

**Criando uma tabela usando o assistente**
* [tabela_produtos](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/tabela_produtos.sql)

**Apagando tabelas**
* [apagando_tabelas](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/apagando_tabelas.sql)

**Inserindo registros na tabela**
- Arquivo
    - Novo
        - Arquivos de Banco de Dados

[inserindo_registros_na_tabela](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/inserindo_registros_na_tabela.sql)

**Incluindo o primeiro vendedor**
* [primeiro_vendedor](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/primeiro_vendedor.sql)

**Inserindo vários registros na tabela**
* [inserindo_varios_registros](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/inserindo_varios_registros.sql)

**Incluindo outros vendedores**
* [incluindo_outros_vendedores](https://github.com/lucasrmagalhaes/oracle-sql/blob/main/incluindo_outros_vendedores.sql)

**Alterando dados da tabela**
* [alterando_dados_tabela](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/alterando_dados_tabela.sql)

**Alterando comissões de vendedores**
* [alterando_comissoes_vendedores](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/alterando_comissoes_vendedores.sql)

**Excluindo registros**
* [excluindo_registros](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/excluindo_registros.sql)

**Excluindo um vendedor**
* [excluindo_um_vendedor](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/excluindo_um_vendedor.sql)

**Incluindo a chave primária na tabela**
* [incluindo_chave_primaria](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/incluindo_chave_primaria.sql)

**Criação de chave primária para vendedores**
* [criacao_chave_primaria_vendedores](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/criacao_chave_primaria_vendedores.sql)

**Manipulando campos de datas**
* [manipulando_campos_datas](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/manipulando_campos_datas.sql)

**Novos vendedores**
* [novos_vendedores](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/novos_vendedores.sql)

**Recriando a base de dados**
* [recriando_base_dados](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/recriando_base_dados.sql)

**Filtrando o resultado das consultas**
* [filtrando_resultados](https://github.com/lucasrmagalhaes/manipule_e_consulte_dados-sql/blob/main/filtrando_resultados.sql)

**Filtros condicionais**
* [filtros_condicionais]()