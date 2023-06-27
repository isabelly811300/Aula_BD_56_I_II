
use empresa_xpto;

#criar tabela com o nome de depatamento 
create table departamentos  (
id int auto_increment ,
nome varchar (60) ,
primary key ( id)
);

#inserir valores na tabela departamentos 
insert into departamentos values (null , 'Financeiro' );
insert into departamentos values (null , 'Vendas' );
insert into departamentos values ( null, 'Desenvolvimento de Produtos' );
insert into departamentos values ( null, 'Ti' );
insert into departamentos values (null , 'Jurídico' );
insert into departamentos values (null, 'Qualidade' );
insert into departamentos values (null , 'Administração' );
insert into departamentos values (null, 'Atendimento ao cliente ' );
insert into departamentos values (null , 'Recursos Humanos ' );
insert into departamentos values (null , 'Marketing' );
insert into departamentos values (null , 'Produção' );
insert into departamentos values (null , 'Executivo' );
insert into departamentos values (null , 'Gerente Financeiro' );
insert into departamentos values (null , 'Gerente de Markenting' );
insert into departamentos values (null , 'Gerente de Produção' );

# 26_06
#alterando a tabela funcionarios , adicionando uma coluna id_departamento com a chave estrangeira referente a tabela departamento.
alter table funcionarios 
add column id_departamentos int,
add constraint fk_funcionarios_departamentos
foreign key (id_departamentos) references departamentos(id);

#aparecer a tabela adicionada .
select * from funcionarios;

# atualizar o cadastro do funcionario q possui o id igual a 1 
update funcionarios set id_departamentos = 1 where id = 1;

#selecionar na tabela funcionarios o id igual 1
select * from funcionarios where id = 1;


# atualizar o cadastro do funcionarios para o setor de 'vendas'  q possui o id igual a 2 ou 3 ou 4 ou 5
update funcionarios set id_departamentos = 2 where id = 2 or id = 3 or id = 4 or id = 5;

# atualizar o cadastro do funcionarios para o setor de 'ti'  q possui o id igual a 6 ou 7 ou 8 ou 9
update funcionarios set id_departamentos = 4 where id = 6 or id = 7 or id = 8  or id = 9;


select * from departamentos;

# atualizar o cadastro do funcionarios para o setor de 'juritico'  q possui o id igual a 10 ou 11 ou 12 ou 13
update funcionarios set id_departamentos = 5 where id = 10 or id = 11 or id = 12  or id = 13;

# atualizar o cadastro do funcionarios para o setor de 'recursos humanos'  q possui o id igual a 14 ou 15 ou 16 ou 17
update funcionarios set id_departamentos = 9 where id = 14 or id = 15 or id = 16  or id = 17;

#selecionar o funcionario com o maior salario em ordem decrescente.
select * from funcionarios order by salario desc ;

# atualizar o cargo do funcionario com o maior salario para 'executivo'
update funcionarios set id_departamentos = 12 where id = 44;

select * from funcionarios order by salario desc  ;

#atualizar o cargo do funcionario com o segundo maior salario para 'gerente'
update funcionarios set id_departamentos = 13 where id = 413 ;

#atualizar o cargo do funcionario com o terceiro maior salario para 'gerente de producao '
 update funcionarios set  id_departamentos = 15 where id = 642;

#atualizar o cargo do funcionario com o quarto  maoir salario para 'gerente de marketing'
update funcionarios set  id_departamentos = 14 where id = 462;

