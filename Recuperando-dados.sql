-- recuperando dados

-- select simples

select * from cliente;
select *from mecanico;
select * from pedido;

-- select com where

Select * From veiculo WHERE marca Like "F%";

select * from pedido where aguardarAvaliacao = 'Veiculo em avaliação';

-- Crie expressões para gerar atributos derivados

select cliente.nomeCliente as 'Nome cliente', veiculo.idVeiculoCliente as 'id veiculo'
		from cliente, veiculo
where cliente.idCliente=veiculo.idVeiculoCliente;

-- Defina ordenações dos dados com ORDER BY;

select nomeCliente as Nome, celularCliente as Celular, enderecoCliente as Endereço from cliente
order by nomeCliente;

-- Condições de filtros aos grupos – HAVING Statement

select ordemDeServico.valorOs as 'Valor' from ordemDeServico
having ordemDeServico.valorOs > 1000;

-- Crie junções entre tabelas para fornecer uma perspectiva mais complexa dos dados

select nomeCliente as 'Nome', cpfCliente as 'CPF', enderecoCliente as 'Endereço' from cliente
		inner join veiculo  on idVeiculoCliente = idCliente;
        