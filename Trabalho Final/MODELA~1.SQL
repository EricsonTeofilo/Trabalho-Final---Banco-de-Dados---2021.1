create database Equipe548349;
use Equipe548349;

create table departamento (
    numero int unsigned not null,
    nome varchar(45),
    primary key (numero)
);
create table disciplina (
    codigo int unsigned not null,
    nome varchar(45),
    ementa varchar(45),
    creditos int,
    cod_dep int unsigned not null,
    primary key (codigo),
    foreign key (cod_dep)
        references departamento (numero)
        on delete no action
        on update cascade
);


create table orientador (
    numero int unsigned not null,
    nome varchar(45),
    cod_dep int unsigned not null,
    primary key (numero),
    foreign key (cod_dep)
        references departamento (numero)
        on delete no action
        on update cascade
);
 
 create table aluno (
	matricula int unsigned not null,
    nome varchar(45),
    endereço varchar(200),
    tipo_aluno enum('graduacao', 'posgraduacao') not null,
    primary key (matricula)
);


create table telefone(
	numero int,
    descricao varchar(45),
    matricula int unsigned not null,
    primary key(numero),
    foreign key(matricula)
		references aluno (matricula)
        on delete no action 
        on update cascade
);
create table aluno_graduacao (
    matricula int unsigned not null,
    ano_ingresso int,
    primary key (matricula),
    foreign key (matricula)
        references aluno (matricula)
        on delete cascade
);
create table aluno_posgraduacao (
    matricula int unsigned not null,
    formacao_escolar varchar(200),
    numero_orientador int unsigned,
    primary key (matricula),
    foreign key (matricula)
        references aluno (matricula)
        on delete cascade,
    foreign key (numero_orientador)
        references orientador (numero)
        on delete set null
);
create table cursa (
    matricula int unsigned not null,
    codigo_disciplina int unsigned not null,
    media_final decimal(5,2),
    frequencia decimal(5,2),
    primary key (matricula, codigo_disciplina),
    foreign key (matricula)
        references aluno (matricula)
        on delete cascade,
    foreign key (codigo_disciplina)
        references disciplina (codigo)
        on delete cascade
);
create table prerequisito (
    codigo_disciplina int unsigned not null,
    codigo_pre_requisito int unsigned not null,
    primary key (codigo_disciplina, codigo_pre_requisito),
    foreign key (codigo_disciplina)
        references disciplina (codigo)
        on delete cascade,
    foreign key (codigo_pre_requisito)
        references disciplina (codigo)
        on delete cascade
);

