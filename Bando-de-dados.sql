create database oficina;
use oficina;

-- criando tabela clientes
create table cliente (
	idCliente int primary key auto_increment,
    nomeCliente varchar(45),
    cpfCliente char(11) unique not null,
    celularCliente char(11),
    enderecoCliente varchar(200)
);

-- criando tabela veículo
create table veiculo(
	idVeiculo int primary key auto_increment,
    idVeiculoCliente int,
    placa char(7) not null unique,
    marca varchar(45),
    cor varchar(40),
    numeracaoVeiculo varchar(45),
    constraint fk_id_cliente foreign key (idVeiculoCliente) references cliente(idCliente)
);

-- criando tabela pedido
create table pedido(
	idPedido int primary key auto_increment,
    idPedidoCliente int,
    aguardarAvaliacao varchar(45),
    constraint fk_pedido_cliente foreign key (idPedidoCliente) references cliente(idCliente)
);

-- criando a tabela peça
create table peca(
	idPeca int primary key auto_increment,
    valorPeca varchar (20)
);

-- criando tabela ordem de serviço (os)
create table ordemDeServico(
	idOs int primary key auto_increment,
    idOsPedido int,
    idOsPeca int,
    numeroDaOs varchar(40),
    valorOs float,
    statusOs varchar(45),
    constraint fk_os_pedido foreign key (idOsPedido) references pedido (idPedido),
    constraint fk_peca foreign key (idOsPeca) references peca (idPeca)
);

-- criando tabela pagamento
create table pagamento(
	idPagamento int primary key auto_increment,
    idPagamentoOs int,
    tipoPagamento enum('pix', 'cartao'),
    constraint fk_pagamento_os foreign key (idPagamentoOs) references ordemDeServico (idOs)
);

-- criando tabela mecanico
create table mecanico(
	idMecanico int primary key auto_increment,
    nomeMecanico varchar(100),
    codigoMecanico varchar(10),
    especiallidade varchar (30)
);

-- criando tabela oficina
create table oficina(
	idOficina int primary key auto_increment,
    idOfMecanico int,
    idPedidos int,
    idOfPagamento int,
    avaliacao varchar(45),
    mecanicos varchar(45),
    constraint fk_oficina_mecanico foreign key (idOfMecanico) references mecanico (idMecanico),
    constraint fk_oficina_pedidos foreign key (idPedidos) references pedido (idPedido),
    constraint fk_oficina_pagamento foreign key (idOfPagamento) references pagamento (idPagamento)
);