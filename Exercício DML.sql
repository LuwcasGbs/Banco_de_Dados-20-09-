CREATE DATABASE empresa3_1e;
USE empresa3_1e;

CREATE TABLE departamento(
	dcodigo int auto_increment primary key,
    dnome varchar(50)
);

CREATE TABLE funcionario(
	funcodigo int auto_increment primary key,
	dcodigo int,
	nome varchar(50),
    nascimento date,
    salario decimal(10,2),
    foreign key(dcodigo) references departamento(dcodigo)
);

CREATE TABLE dependente(1
	depcodigo int auto_increment primary key,
	funcodigo int,
    depnome varchar(50),
    foreign key(funcodigo) references funcionario(funcodigo)
);

INSERT INTO departamento(dnome)
	values
		("alimentício"),
        ("infantil"),
        ("administrativo"),
        ("financeiro"),
        ("comercial"),
		("jurídico"),
        ("RH"),
        ("pessoal"),
        ("marketing"),
        ("produção");
        
INSERT INTO funcionario(dcodigo, nome, nascimento, salario)
	values
		(1, "Lusca", "2007-10-22", 10000.00),
        (2, "Luscas", "2008-10-22", 3500.00),
        (3, "Lucas", "2007-01-22", 1.00),
        (4, "Luquinhas", "2003-12-22", 100000.00),
        (5, "Lusqua", "1976-02-22", 1527.43),
        (6, "Luk", "2003-07-22", 500.00),
        (7, "Luska", "1800-10-22", 00.03),
        (8, "Lucks", "2023-10-22", 350000.40),
        (9, "L", "2000-05-22", 1807.00),
        (10, "Lusquack", "1930-10-22", 99.99);
        
INSERT INTO dependente(funcodigo, depnome)
	values
		(1, "julia"),
        (2, "julia Júnior"),
        (3, "julia Júnior III"),
        (4, "batata"),
        (5, "j"),
        (6, "predo"),
        (7, "pedro Júnior XVII"),
        (8, "batata II"),
        (9, "batx"),
        (10, "julian");

	SELECT * FROM departamento;
    SELECT * FROM funcionario;
    SELECT * FROM dependente;
    
     DELETE FROM dependente
    WHERE funcodigo = 1;
     DELETE FROM dependente
    WHERE funcodigo = 2;
    DELETE FROM dependente
    WHERE funcodigo = 3;
    DELETE FROM dependente
    WHERE funcodigo = 4;
    DELETE FROM dependente
    WHERE funcodigo = 5;
    DELETE FROM dependente
    WHERE funcodigo = 6;
    DELETE FROM dependente
    WHERE funcodigo = 7;
    DELETE FROM dependente
    WHERE funcodigo = 8;
    DELETE FROM dependente
    WHERE funcodigo = 9;
    DELETE FROM dependente
    WHERE funcodigo = 10;