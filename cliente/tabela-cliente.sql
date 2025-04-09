-- Tabela CLIENTE
 CREATE TABLE Cliente (
 id_cliente SERIAL PRIMARY KEY,  
 telefone VARCHAR(15),
 nome VARCHAR(30),
 logradouro VARCHAR(30),
 numero NUMERIC(5,0),
 complemento VARCHAR(30),
 bairro VARCHAR(30),
 cidade VARCHAR(30),
 estado CHAR(2),
 cep NUMERIC(8,0),
 referencia VARCHAR(30)
 );
 
 SELECT * FROM cliente;
 SELECT * FROM pedido;
 SELECT * FROM pizza;
 SELECT * FROM Pizza_pedido;
 
 --Tabela PEDIDO
 CREATE TABLE Pedido (
  id_pedido SERIAL PRIMARY KEY,  
  valor NUMERIC(4,2),
  data_pedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  id_cliente INT NOT NULL,
  FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente)
  );

   DROP TABLE IF EXISTS pedido;
   DROP TABLE IF EXISTS Pizza_pedido;
   
   CREATE TABLE Pizza(
     id_pizza SERIAL PRIMARY KEY,
	 nome VARCHAR(30),
	 descricao VARCHAR(30),
	 valor NUMERIC(3,2)
   );

 CREATE TABLE Pizza_pedido(
 id_pizzaPedido SERIAL PRIMARY KEY,
 id_pizza INT NOT NULL,
 id_pedido INT NOT NULL,
 quantidade NUMERIC(2,0),
 valor NUMERIC(5,2),
 FOREIGN KEY(id_pizza) REFERENCES Pizza(id_pizza),
 FOREIGN KEY(id_pedido) REFERENCES Pedido(id_pedido)
 );