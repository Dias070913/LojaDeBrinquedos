drop database if exists dbLojaDeBrinquedos;

-- CRIANDO O BANCO DE DADOS
create database dbLojaDeBrinquedos;

-- USANDO O BANCO DE DADOS
use dbLojaDeBrinquedos;

-- CRIANDO AS TABELAS DO BANCO DE DADOS
create table produtos(
	Id int primary key auto_increment,
    Nome varchar(50),
    Descricao varchar(100),
    Preco decimal(10,2),
    ImageUrl varchar(255),
    Estoque int
);

create table pedido(
	Id int primary key auto_increment,
    DataPedido datetime,
    Total decimal(10,2),
    StatusPedido varchar(50),
    Endereco varchar(100),
    FormaPagamento varchar(100),
    Frete decimal(10,2)
);

create table itemPedido(
	Id int primary key auto_increment,
    PedidoId int,
    ProdutoId int,
    Quantidade int,
    PrecoUnitario decimal(10,2)
);

-- CONSULTANDO AS TABELAS DO BANCO
select * from produtos;
select * from pedido;
select * from itemPedido;

insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Trator Traçado 30,5cm','A linha Trator Tracado e uma linha de tratores com design super moderno',
			59.99, 'Images/tratortraçado.jpg',20);

insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Elka Dino Papa Tudo','O dinossauro que papa tudo',92.72, 'Images/dinopapatudo.jpg',15);
    
insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Boneco Olympus Homem-Aranha','Um homem que se tornou uma aranha',89.99, 'Images/homemaranha.jpg',30);
    
insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Mrs Potato Head','Uma senhora cabeça de batata gringa',49.99, 'Images/potatohead.jpg',30);
    
insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Tchuco Blocks 77 Peças','Blocos para montar coisas',39.99, 'Images/tchucoblocks.jpg',25);
    
insert into produtos(Nome,Descricao,Preco,ImageUrl,Estoque)
	values('Caminhão Tópi Sabidinho','Brinquedo educativo do caminhão sabidinho',59.90, 'Images/caminhaosabidinho.jpg',60);