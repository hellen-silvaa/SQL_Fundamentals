USE carros;

-- criando tabelas marcas

CREATE TABLE marcas (
	id INT NOT NULL AUTO_INCREMENT,
	nome_marca VARCHAR(255) NOT NULL,
    origem VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);
-- alterando a propriedade de uma tabela (marcas)
-- ALTER TABLE marcas ADD origem VARCHAR(255)  

CREATE TABLE inventario (
	id INT NOT NULL AUTO_INCREMENT,
    modelo VARCHAR(255) NOT NULL,
	transmissao VARCHAR(255) NOT NULL,
    motor VARCHAR(255) NOT NULL,
    combustivel VARCHAR(255) NOT NULL,
    marcas_id INT NOT NULL,
    PRIMARY KEY (id),
    -- modelo de carro tem que estar associado a marcas, estamos referenciando para ela usar os mesmos valores de marcas
    FOREIGN KEY (marcas_id) REFERENCES marcas(id)
);


CREATE TABLE clientes (
	id INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255) NOT NULL,
	sobrenome VARCHAR(255) NOT NULL,	
	endereco VARCHAR(255) NOT NULL,
    PRIMARY KEY (id)
);

-- para inserir os dados na tabela tem que respeitar a ordem dos elementos
-- ex table clientes: nome, sobrenome, endereco o id não precisa porque ele é auto increment

-- inserindo primeiro cliente
INSERT INTO clientes (nome, sobrenome, endereco)
VALUES
	('Hellen', 'Silva', 'Rua 1'),
	('Ruan', 'Souza', 'Rua 1'),
	('Andre', 'Iacono', 'Rua 2'),
	('Andreia', 'Andress', 'Rua 3'),
	('Lucia', 'Silva', 'Rua 4');
    
-- adicionei Hellen duas vezes, vamos apagar
DELETE FROM clientes
WHERE nome = 'Hellen' 
  AND sobrenome = 'Silva' 
  AND endereco = 'Rua 1';
  
  -- desativar temporariamente o modo de atualização segura para executar sua consulta. 
  SET SQL_SAFE_UPDATES = 0;
  
  -- Ativar novamente o modo seguro 
  SET SQL_SAFE_UPDATES = 1;
  
  INSERT INTO marcas (nome_marca, origem)
  VALUES
  ('Aston_Martin', 'Inglaterra'),
  ('Jaguar', 'Inglaterra'),
  ('Lamborghini', 'Itália'),
  ('Rolls Royce', 'Alemanha'),
  ('Volvo', 'Suécia'),
  ('Mercedes-Benz ', 'Alemanha');
  
 INSERT INTO inventario (
	modelo,
    transmissao,
    motor,
    combustivel,
    marcas_id
 ) 
 VALUES 
	('EX90 Excellence', 'Automática', ' Elétrico', 'Bateria', 5),
	('DBX707 ', 'Automática', ' V8 biturbo', 'Gasolina', 1),
	('Aventador LP 780-4 Ultimae', 'Automática', 'V12', 'Gasolina', 3),
	('E-Pace', 'Automática', '2.0', 'Disel', 2),
	('Maybach Classe S', 'Automática', 'V12', 'Gasolina', 6),
    ('Wraith', 'Automática', 'V12', 'Gasolina', 4);
    
    
    
    
    
    
    
    

