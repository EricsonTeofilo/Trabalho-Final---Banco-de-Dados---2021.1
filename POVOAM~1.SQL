

insert into departamento(numero, nome) VALUES (01, 'engenharia');
insert into departamento(numero, nome) VALUES (02, 'odontologia');
insert into departamento(numero, nome) VALUES (03, 'medicina');

insert into curso(codigo, nome, min_creditos, cod_dep) values (01, 'engenharia da computação', 25, 01);
insert into curso(codigo, nome, min_creditos, cod_dep) values (02, 'engenharia elétrica', 26, 01);
insert into curso(codigo, nome, min_creditos, cod_dep) values (03, 'funcionamento dentário', 25, 02);

insert into orientador(numero, nome, cod_dep) VAlUES(01, 'Marcos', 01);
insert into orientador(numero, nome, cod_dep) VAlUES(02, 'Rafael', 02);
insert into orientador(numero, nome, cod_dep) VAlUES(03, 'Maria', 03);

insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (01, 'Banco de Dados', 'eBancodeDados', '64', 01,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (02, 'Fisica 1', 'eFisica1', '64', 01,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (03, 'Fisica 2', 'eFisica2', '64', 01,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo,  num_orientador) VALUES (04, 'Calculo 1', 'eCalculo1', '64', 01,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (05, 'Calculo 2', 'eCalculo2', '64', 01,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (06, 'Anatomia 1', 'eAnatomia1', '73', 02,'obrigatoria', 01);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (07, 'Anatomia 2', 'eAnatomia2', '73', 02,'optativa', 02);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (08, 'Genetica e Evolucao', 'eGeneticaeEvolucao', '54', 02,'optativa', 02);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (09, 'Fisiologia Humana', 'eFisiologiaHumana', '72', 03,'optativa', 02);
insert into disciplina(codigo, nome, ementa, creditos, cod_curso, tipo, num_orientador) VALUES (10, 'Bioquimica', 'eBioquimica', '108', 03,'obrigatoria', 03);

insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(01,'João', 'rua 1', 'graduacao', 01);
insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(02,'José', 'rua 1', 'graduacao', 01);
insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(03,'Lucas', 'rua 2', 'graduacao', 02);
insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(04,'Ana', 'rua 5', 'posgraduacao', 03);
insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(05,'Julia', 'rua 4', 'posgraduacao', 03);
insert into aluno(matricula, nome, endereço, tipo_aluno, cod_curso) VALUES(06,'Henrique', 'rua 5', 'graduacao', 02);

insert into telefone(numero, descricao, matricula) VALUES(992572938, 'celular', 01);
insert into telefone(numero, descricao, matricula) VALUES(974892742, 'celular', 02);
insert into telefone(numero, descricao, matricula) VALUES(983742947, 'fixo', 03);
insert into telefone(numero, descricao, matricula) VALUES(948295732, 'celular', 04);
insert into telefone(numero, descricao, matricula) VALUES(947592937, 'fixo', 05);
insert into telefone(numero, descricao, matricula) VALUES(958938294, 'fixo', 06);

insert into aluno_graduacao(matricula, ano_ingresso) VALUES(01,2020);
insert into aluno_graduacao(matricula, ano_ingresso) VALUES(02,2021);
insert into aluno_graduacao(matricula, ano_ingresso) VALUES(03,2021);

insert into aluno_posgraduacao(matricula, formacao_escolar, numero_orientador) VALUES(04, 'UniUFC', 01);
insert into aluno_posgraduacao(matricula, formacao_escolar, numero_orientador) VALUES(05, 'UniUFC', 03);

insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(01,01,9,100);
insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(01,03,8,80);
insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(02,02,8,85);
insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(02,04,9,95);
insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(03,10,8,100);
insert into cursa(matricula, codigo_disciplina, media_final, frequencia) VALUES(05,07,10,100);

insert into prerequisito(codigo_disciplina, codigo_pre_requisito) Values(03,02);
insert into prerequisito(codigo_disciplina, codigo_pre_requisito) Values(05,04);
insert into prerequisito(codigo_disciplina, codigo_pre_requisito) Values(07,06);
insert into prerequisito(codigo_disciplina, codigo_pre_requisito) Values(05,02);
insert into prerequisito(codigo_disciplina, codigo_pre_requisito) Values(03,04);
