create table curso (
    codigo int unsigned not null,
    nome varchar(45),
    min_creditos int,
    cod_dep int unsigned not null,
    primary key (codigo),
    foreign key (cod_dep) references departamento(numero) on delete cascade on update cascade
);

alter table disciplina drop foreign key disciplina_ibfk_1; -- removendo restrição 

alter table disciplina drop column cod_dep; -- removendo codigo do departamento para pôr o do curso

alter table disciplina
add column cod_curso int unsigned not null;

alter table disciplina
add constraint fk_disciplina_curso  -- adicionando a restrição para a chave estrangeira
foreign key (cod_curso)
references curso (codigo)
on delete no action
on update cascade;

alter table disciplina
add column tipo enum('obrigatoria','optativa');

alter table disciplina
add column num_orientador int unsigned not null;

alter table disciplina
add constraint fk_orientador_curso
foreign key (num_orientador)
references orientador (numero)
on delete no action
on update cascade;

alter table aluno
add column cod_curso int unsigned not null;

alter table aluno
add constraint fk_aluno_curso
foreign key (cod_curso)
references curso (codigo)
on delete cascade
on update cascade;
