
 CREATE TABLE Pizza_pedido(
 id_pizzaPedido SERIAL PRIMARY KEY,
 id_pizza INT NOT NULL,
 id_pedido INT NOT NULL,
 quantidade NUMERIC(2,0),
 valor NUMERIC(5,2),
 FOREIGN KEY(id_pizza) REFERENCES Pizza(id_pizza),
 FOREIGN KEY(id_pedido) REFERENCES Pedido(id_pedido)
 );