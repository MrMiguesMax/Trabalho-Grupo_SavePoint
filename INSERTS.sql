-- Exercicio 4 começo:
INSERT INTO info_pessoais_aluno (cpf, nome, tel_celular_resp, email_resp)
VALUES
('123.456.789-01', 'Fernando Pereira', '016995678901', 'fernando@email.com'),
('987.654.321-02', 'Juliana Santos Silva', '016995432102', 'juliana@email.com'),
('456.789.123-03', 'Mariana Silva Almeida', '016998912303', 'mariana@email.com'),
('789.123.456-04', 'Marcelo Mendes', '016997891234', 'marcelo@email.com'),
('234.567.890-05', 'Luana Oliveira', '016992345678', 'luana@email.com');

INSERT INTO aluno (data_inicio_aluno, cpf_aluno, email_aluno)
VALUES
('2022-01-10', '123.456.789-01', 'fernando1@emaileduc.com'),
('2022-06-01', '987.654.321-02', 'juliana22@emaileduc.com'),
('2021-01-15', '456.789.123-03', 'mariana32@emaileduc.com'),
('2023-01-10', '789.123.456-04', 'marcelo11@emaileduc.com'),
('2023-06-01', '234.567.890-05', 'luana123@emaileduc.com');
COMMIT;
SAVEPOINT antes_inserts;

INSERT INTO info_pessoais_aluno (cpf, nome, tel_celular_resp, email_resp)
VALUES
('390.847.677-90', 'Miguel Henrique', '019987563425', 'joanito@gmail.com'),
('578.907.456.44', 'Miguel Lima', '015987658976', 'kleberson@gmail.com'),
('623.546.789.91', 'Kaique Rodrigues', '689.432.110.06', 'kleber@gmail.com');
SELECT * FROM info_pessoais_aluno;

INSERT INTO aluno (data_inicio_aluno, cpf_aluno, email_aluno)
VALUES
('2023-01-23', '390.847.677-90', 'miguelh5@gmail.com'),
('2022-02-20', '578.907.456.44', 'miguell1@gmail.com'),
('2022-06-15', '623.546.789.91', 'kaiquer7@gmail.com');
SELECT * FROM aluno;

ROLLBACK TO antes_inserts;
SELECT * FROM  aluno;
-- Exercicio 4 fim.

-- Exercicio 3 começo:
INSERT INTO disciplina (nome_disc, ementa_disc)
VALUES
('Programação Web para Back-End', 'Tal disciplina aborda conceitos e técnicas para desenvolvimento de aplicativos web no lado do servidor, com foco em back-end.'),
('Programação Web para Front-End', 'Esta disciplina explora as tecnologias e práticas para desenvolvimento de aplicações web e com foco em front-end.'),
('Interface para Dispositivos Móveis', 'A disciplina aborda projetar e desenvolver interfaces de usuário para aplicativos móveis, com foco nos princípios de design e usabilidade.'),
('Banco de Dados', 'Tal disciplina contempla conceitos fundamentais de bancos de dados, modelagem de dados e linguagens de consulta SQL.'),
('Redes de Computadores', 'Esta disciplina aborda conceitos introdutórios sobre redes de computadores, topologias e padrões.'),
('Sistemas Operacionais', 'A disciplina contempla conceitos fundamentais sobre sistemas operacionais, apresentando as funcionalidades dos sistemas operacionais baseados nas plataformas Windows e Linux');

INSERT INTO disciplina (nome_disc, ementa_disc)
VALUES
('C', 'Tal disciplina aborda conceitos e técnicas para desenvolvimento de aplicativos web no lado do servidor, com foco em back-end.'),
('C++', 'Esta disciplina explora as tecnologias e práticas para desenvolvimento de aplicações web e com foco em front-end.'),
('Csharp', 'A disciplina aborda projetar e desenvolver interfaces de usuário para aplicativos móveis, com foco nos princípios de design e usabilidade.'),
('Python', 'Tal disciplina contempla conceitos fundamentais de bancos de dados, modelagem de dados e linguagens de consulta SQL.');
COMMIT;

UPDATE disciplina
SET nome_disc = 'Programação Web para Front-EnD'
WHERE codigo_disc = '2';
COMMIT;

SAVEPOINT savepoint_insert_disc;

INSERT INTO disciplina (nome_disc, ementa_disc)
VALUES
('JAVA', 'Tal disciplina contempla conceitos fundamentais de bancos de dados, modelagem de dados e linguagens de consulta SQL.');

ROLLBACK TO savepoint_insert_disc;
SELECT * FROM disciplina;	
-- Exercicio 3 fim.


-- exercicio 1 começo:
INSERT INTO professor (nome_prof, especialidade_prof, data_admissao_prof)
VALUES
('Eduardo Nascimento', 'Tecnologia da Informação', '2023-01-15'),
('Matheus Michilino', 'Mecatrônica e Interfaces Robóticas', '2020-01-01'),
('Rafael Selvagio', 'Tecnologia da Informação', '2023-06-01'),
('Rafael Rizzi', 'Eng. Elétrica', '2022-01-01'),
('Clara Almeida', 'Mecatrônica', '2023-06-11'),
('João Gomes', 'Elêtrica', ' 2021-10-10'),
('Fernando da Silva', 'Mecânica', ' 2023-01-01'),
('Bento Ramos', 'Elêtrica', ' 2022-02-02');
COMMIT;
SELECT * FROM professor;
-- Exercicio 1 fim.

-- exercicio 2 começo: 
UPDATE professor 
SET nome_prof = 'Clara de Almeida'
WHERE codigo_prof = '5';
COMMIT;

SELECT * FROM professor;


DELETE FROM professor
WHERE codigo_prof = '7';

SELECT * FROM professor;
-- Exercicio 2 fim.

-- Exercicio 5 começo:
INSERT INTO curso (nome_curso, duracao_curso)
VALUES
('Técnico em Analise de Desenvolvimento de Sistemas', 18),
('Técnico em Mecatrônica', 24),
('Técnico em Eletrônica', 24),
('Técnico em Administração', 18),
('Técnico em Mecânica', 20);
COMMIT;

INSERT INTO turma (qtd_alunos_tur, periodo_tur, semestre_tur)
VALUES
(35, 'Manhã', '2 Semestre'),
(35, 'Tarde', '2 Semestre'),
(18, 'Manhã', '2 Semestre'),
(20, 'Tarde', '4 Semestre'),
(20, 'Tarde', '1 Semestre'),
(36, 'Tarde', '2 Semestre');
COMMIT;
SAVEPOINT savepoint_inserts_curso;

INSERT INTO curso (nome_curso, duracao_curso)
VALUES
('Pedreiro', 70),
('Empilhadeira', 40);

SAVEPOINT savepoint_inserts_turma;

INSERT INTO curso (nome_curso, duracao_curso)
VALUES
('Eletricista', 80),
('Eletricista automotivo', 70),
('Soldador', 50);

INSERT INTO turma (qtd_alunos_tur, periodo_tur, semestre_tur)
VALUES
(35, 'Manhã', '2 Semestre'),
(35, 'Tarde', '2 Semestre'),
(18, 'Manhã', '2 Semestre'),
(20, 'Tarde', '4 Semestre');

ROLLBACK TO savepoint_inserts_turma;
SELECT * FROM curso;
SELECT * FROM turma;
-- Exercicio 5 fim.

INSERT INTO aula (codigo_professor, codigo_disciplina, codigo_turma, data_aula)
VALUES
(3, 1, 1, '2023-10-10'),
(1, 2, 2, '2023-10-11'),
(2, 3, 1, '2023-10-12'),
(1, 2, 1, '2023-10-13'),
(2, 3, 2, '2023-10-15'),
(3, 1, 2, '2023-10-16');

INSERT INTO matricula (codigo_curso, codigo_turma)
VALUES
(1, 1),	
(2, 2),
(1, 3),
(1, 4),
(2, 1);