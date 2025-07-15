
-- # Dado um numero de matricula:
-- 1.1: Quais disciplinas esta matriculado
select d.nome 
from aluno a, cursa c, disciplina d
where a.matricula = c.matricula and c. codigo_disciplina = d.codigo and a.matricula = '01'; -- exemplo de matricula

-- 1.2: Quais disciplinas já concluiu
select a.nome as aluno, d.nome as disciplina
from cursa c
join aluno a on c.matricula = a.matricula
join disciplina d on c.codigo_disciplina = d.codigo
where c.matricula = '1' and c.media_final !=0;

-- 1.3: Qual seu curso
select c.nome
from curso c, aluno a
where a.cod_curso = c.codigo and matricula= '01'; -- exemplo de matricula

-- 1.4: Dados pessoais
select *
from aluno
where matricula= '02'; -- exemplo de matricula

-- # Dado o codigo do departamento
-- 2.1: Cursos sob responsabilidade do departamento
select c.nome
from departamento d, curso c
where c.cod_dep = d.numero and d.numero= '01';

-- 2.2: Detalhes sobre o departamento
select *
from departamento
where numero= '01';

-- # Dado um determinado curso:
-- 3.1: Disciplinas obrigatorias 
select d.nome as disciplina, d.tipo
from disciplina d
join curso c on d.cod_curso = c.codigo
where d.tipo = 'obrigatoria' and c.codigo = 1;

-- 3.2: Disciplinas optativas
select d.nome as disciplina, d.tipo
from disciplina d
join curso c on d.cod_curso = c.codigo
where d.tipo = 'optativa' and c.codigo = 02;

-- 3.3: Alunos do curso
select a.nome as aluno, a.matricula
from aluno a
join curso c on a.cod_curso = c.codigo
where c.codigo = 1;

-- 3.4: Alunos que ja concluiram as disciplinas obrigatorias
--      (exemplo para o curso de eng de computacao)
select a.nome as aluno, a.matricula
from aluno a
where not exists (
    select 1
    from disciplina d
    join curso c on d.cod_curso = c.codigo
    where d.tipo = 'obrigatoria'
    and c.codigo = 1
    and d.codigo not in (
        select c.codigo_disciplina
        from cursa c
        where c.matricula = a.matricula
    )
);

-- 3.5: Alunos que nao concluiram nenhuma disciplina optativa
select a.nome as aluno, a.matricula
from aluno a
where not exists (
    select 1
    from cursa c
    join disciplina d on c.codigo_disciplina = d.codigo
    where d.tipo = 'optativa' and c.matricula = a.matricula
);

-- # Dado uma disciplina:
-- 4.1: Alunos matriculados
select a.nome as aluno, a.matricula, c.nome as curso
from aluno a
join curso c on a.cod_curso = c.codigo;

-- 4.2: pre requisito da disciplina
select d.nome as disciplina, dp.nome as pre_requisito
from prerequisito p
join disciplina d on p.codigo_disciplina = d.codigo
join disciplina dp on p.codigo_pre_requisito = dp.codigo
where d.codigo = 3;

-- 4.3: disciplinas para as quais a mesma é pré-requisito
select dp.nome as disciplina, d.nome as requer
from prerequisito p
join disciplina d on p.codigo_disciplina = d.codigo
join disciplina dp on p.codigo_pre_requisito = dp.codigo
where dp.codigo = 4;

-- # Dado um orientador:
-- 5.1: Alunos orientados
select a.nome as nome_alunos, a.matricula as matriculas_alunos
from aluno a, orientador o, curso c, departamento d
where a.cod_curso = c.codigo and c.cod_dep = d.numero and d.numero = o.cod_dep and o.numero= '02'; -- exemplo de codigo de orientador

-- 5.2: Disciplinas ministradas:
select d.nome as nome_disciplinas
from disciplina d, orientador o
where d.num_orientador = o.numero and o.nome like '_arcos';

-- 5.3: Total de creditos das disciplinas
select sum(d.creditos) as total_de_creditos
from orientador o, disciplina d
where o.numero = d.num_orientador and o.nome like '_afael'; -- exemplo de nome rafael ou Rafael