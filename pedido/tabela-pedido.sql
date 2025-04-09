
 SELECT * FROM cliente;
 SELECT * FROM pedido;
 
 --Tabela PEDIDO
 CREATE TABLE Pedido (
  id_pedido SERIAL PRIMARY KEY,  
  valor NUMERIC(4,2),
  data_pedido timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  id_cliente INT NOT NULL,
  FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente)
  );


 