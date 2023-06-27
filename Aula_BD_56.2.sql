#deletar todos os funcionarios 
delete from funcionarios;

#desativar 
set sql_safe_updates=0;

#selecionar p/ conferir 
select * from funcionarios;

#contagem da quantidade de funcionarios agrupados por departamento.
select id_departamentos , count(*) as total_funcionarios 
from funcionarios
group by id_departamentos;

#contagem da quantidade de funcionario agrupados por departamento q recebem acima de 10000
select id_departamentos , count(*) as total_funcionarios 
from funcionarios where salario > 10000
group by id_departamentos;

#contagem da quantidade de funcionario agrupados por departamento q recebem entre 5000 e 10000
select id_departamentos , count(*) as total_funcionarios 
from funcionarios where salario between 5000 and 10000
group by id_departamentos;

#soma dos salarios agrupados por departamento.
 select id_departamentos, sum(salario) as  soma_salario 
from funcionarios group by id_departamentos;

#selecionar o salario medio em departamentos.
select id_departamentos, avg(salario) as  media_salario 
from funcionarios group by id_departamentos;
