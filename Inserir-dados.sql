use oficina;

-- inserindo clientes
insert into cliente (idCliente, nomeCliente, cpfCliente, celularCliente, enderecoCliente) values
			(1,'Leonardo', 12345678901, 21993071254, 'Rua dez, 234'),
            (2,'Alexandre', 12345678923, 21945711654, 'Rua vinte, 123'),
            (3,'Julia', 12343175901, 21953371250, 'Rua trinta, 54'),
            (4,'Davi', 42345478961, 21953016257, 'Rua quarenta, 56');
            
-- inserindo veículo
insert into veiculo (idVeiculo, idVeiculoCliente, placa, marca, cor, numeracaoVeiculo) values
			(1, 1, '1234567', 'Ford', 'Azul', '1234'),
            (2, 2, '1534368', 'Fiat', 'Branco', '3434'),
            (3, 3, '1134509', 'Chevrolet', 'Preto', '9876'),
            (4, 4, '4234640', 'Ferrari', 'Vermelha', '5432');
            
-- inserindo na tabela pedido
insert into pedido (idPedido, aguardarAvaliacao) values
			(1, 'Veiculo em avaliação'),
            (2, 'Veiculo em manutenção'),
            (3, 'Veiculo em avaliação'),
            (4, 'Veiculo em manutenção');
            
-- inserindo na tabela peça
insert into peca (idPeca, valorPeca) values
			(8, '400 reais'),
            (9, '100 reais'),
            (10, '600 reais'),
            (11, '1000 reais');
            
-- inserindo na tabela ordem de serviço (os)
insert into ordemDeServico (idOs, numeroDaOs, valorOs, statusOs) values
			(10, '1020', 1000, 'pronto para retirada'),
            (11, '1030', 2000, 'em manutenção'),
            (12, '1040', 1500, 'pronto para retirada'),
            (13, '1050', 1700, 'em manutenção');
            
-- inserindo na tabela pagamento
insert into pagamento(idPagamento, tipoPagamento) values
			(1, 'pix'),
            (2, 'cartao'),
            (3, 'pix'),
            (4, 'cartao');
            
-- inserindo na tabela mecanico
insert into mecanico (idMecanico, nomeMecanico, codigoMecanico, especiallidade) values
			(1, 'Claudio', '123', 'motor'),
            (2, 'André', '321', 'Suspensão'),
            (3, 'José', '987', 'motor');
            
-- inserindo na tabela oficina
insert into oficina (idOficina, avaliacao, mecanicos) values
			(1, 'pronto para entrega', 'André'),
            (2, 'pronto para entrega', 'Claudio'),
            (3, 'pronto para entrega', 'José'),
            (4, 'pronto para entrega', 'André')