# Relatório de Aula Prática — Bancos de Dados em Nuvem

Repositório acadêmico com o script SQL desenvolvido para a atividade prática da disciplina **Bancos de Dados em Nuvem**, do curso **Superior de Tecnologia em Ciência de Dados — UNOPAR**.

A atividade contempla a criação de um banco MySQL, a definição de tabelas e relacionamentos e a utilização de um serviço de banco de dados em nuvem.

## Dados acadêmicos

| Informação | Descrição |
|---|---|
| Aluno | Mateus Neres da Silva |
| Curso | Superior de Tecnologia em Ciência de Dados |
| Disciplina | Bancos de Dados em Nuvem |
| Professor | Romulo de Almeida Neves |
| Cidade | Guarabira |
| Período | Outubro de 2026 |

## Objetivo

Implementar o banco de dados `aula`, aplicando os conceitos de modelagem relacional, chaves primárias, chaves estrangeiras e integridade referencial, com exemplos de relacionamentos **um para um (1:1)**, **um para muitos (1:N)** e **muitos para muitos (N:N)**.

## Tecnologias utilizadas

- **MySQL:** sistema de gerenciamento do banco de dados.
- **MySQL Workbench:** ferramenta para conexão, execução do script e consulta às estruturas.
- **Aiven:** provedor utilizado para hospedar o serviço MySQL em nuvem.
- **SQL:** linguagem utilizada na criação do banco e das tabelas.

## Arquivo principal

O arquivo [`relatorio-de-aula-pratica-bancos-de-dados-em-nuvem.sql`](./relatorio-de-aula-pratica-bancos-de-dados-em-nuvem.sql) contém o código SQL da atividade.

## Estrutura do banco de dados

O banco `aula` possui sete tabelas:

| Tabela | Finalidade |
|---|---|
| `cliente` | Armazenar os dados dos clientes. |
| `endereco` | Armazenar o endereço associado ao cliente. |
| `empresa` | Armazenar os dados das empresas. |
| `funcionario` | Armazenar os funcionários vinculados às empresas. |
| `curso` | Armazenar os cursos. |
| `estudante` | Armazenar os estudantes. |
| `curso_estudante` | Associar estudantes aos cursos. |

## Relacionamentos

### Cliente e endereço — 1:1

O vínculo entre cliente e endereço utiliza uma chave estrangeira com restrição `UNIQUE`, limitando a associação a um endereço por cliente.

### Empresa e funcionário — 1:N

Uma empresa pode possuir vários funcionários, enquanto cada funcionário está vinculado a uma empresa.

### Curso e estudante — N:N

Um estudante pode participar de vários cursos, e um curso pode possuir vários estudantes. Esse relacionamento é implementado pela tabela associativa `curso_estudante`.

## Como executar

### 1. Preparar o ambiente

Instale o **MySQL Workbench** e tenha acesso a um servidor MySQL local ou em nuvem, com permissões para executar os comandos do script.

### 2. Configurar a conexão

No MySQL Workbench, crie uma conexão com os dados fornecidos pelo servidor:

- Host;
- Porta;
- Usuário;
- Senha;
- Configuração SSL/TLS, quando exigida pelo provedor.

Para utilizar o Aiven, consulte os dados de conexão no painel do serviço e configure o certificado conforme as orientações do provedor.

> Não publique senhas, certificados privados ou outros dados sensíveis neste repositório.

### 3. Abrir e executar o script

1. Baixe ou clone este repositório.
2. Abra o MySQL Workbench e conecte-se ao servidor.
3. Acesse **File → Open SQL Script**.
4. Selecione `relatorio-de-aula-pratica-bancos-de-dados-em-nuvem.sql`.
5. Revise os comandos e execute o script.
6. Atualize a lista de schemas para visualizar o banco `aula`.

### 4. Validar a criação das tabelas

Execute:

```sql
SHOW TABLES FROM aula;
```

O resultado deve apresentar:

```text
cliente
curso
curso_estudante
empresa
endereco
estudante
funcionario
```

Para consultar a definição de uma tabela, utilize:

```sql
SHOW CREATE TABLE aula.endereco;
```

Repita a consulta para as demais tabelas quando necessário.

## Execução em nuvem

A prática foi realizada com um serviço MySQL no **Aiven**, acessado pelo **MySQL Workbench**.

As evidências da conexão, da criação das tabelas e das estruturas estão apresentadas no relatório acadêmico. As condições comerciais do serviço devem ser verificadas diretamente no painel do provedor.

## Conceitos aplicados

- Criação de banco de dados e tabelas;
- Definição de chaves primárias;
- Definição de chaves estrangeiras;
- Uso da restrição `UNIQUE`;
- Integridade referencial;
- Relacionamentos 1:1, 1:N e N:N;
- Conexão a um banco de dados em nuvem.

## Autor

**Mateus Neres da Silva**

Projeto desenvolvido para fins acadêmicos na disciplina **Bancos de Dados em Nuvem**.
