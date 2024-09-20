CREATE DATABASE gerVenda_1e;
USE gerVenda_1e;

CREATE TABLE produtos(
	produto_id int auto_increment primary key,
	nome varchar(50),
	preco decimal(10,2),
	estoque int
);


CREATE TABLE vendas(
	venda_id int auto_increment primary key,
	produto_id int,
	quantidade int,
	data_venda date,
	foreign key(produto_id) references produtos(produto_id)
);

insert into produtos(nome , preco , estoque)
	values
	("Notebook Dell",7000.00,35), 
	("Notebook positivo",5000.00,13),
	("Notebook Lenovo",6500.00,20),
    ("Televisão LG",9300.99,5),
    ("Geladeira Brastemp",3000.00,2);
    
    
insert into vendas(produto_id , quantidade , data_venda)
	values
	(1,5,"2024-09-20"),
    (2,3,"2024-09-13"),
    (3,9,"2024-08-24"),
    (4,1,"2024-07-03"),
    (5,19,"2024-02-28");
    
    UPDATE produtos 
    SET preco = 6500.00
    WHERE produto_id = 1;
    
    UPDATE vendas
    SET quantidade = 63
    WHERE venda_id = 1;
    
    DELETE FROM produtos 
    WHERE produto_id = 5;
    
    DELETE FROM vendas
    WHERE venda_id = 1;
    
    SELECT * FROM produtos;
    SELECT nome, estoque FROM produtos;
    
    SELECT * FROM vendas;
    SELECT quantidade, data_venda FROM vendas;
    
    
    SELECT * FROM vendas
    WHERE venda_id = 2;
    
select * from produtos;
select * from vendas;