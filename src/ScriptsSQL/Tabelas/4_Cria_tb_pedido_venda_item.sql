USE dbapppedidovendawk;

CREATE TABLE IF NOT EXISTS tb_pedido_venda_item 
(
  id int NOT NULL AUTO_INCREMENT,
  numero_pedido int NOT NULL,
  produto_codigo int NOT NULL,
  quantidade decimal(25,2) NOT NULL,
  valor_unitario decimal(30,2) NOT NULL,
  valor_total decimal(30,2) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY uk_tb_pedido_venda_item (numero_pedido,id),
  KEY fk_tb_pedido_venda_item_produto (produto_codigo),
  CONSTRAINT fk_tb_pedido_venda_item_pedido_venda FOREIGN KEY (numero_pedido) REFERENCES tb_pedido_venda (numero_pedido) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT fk_tb_pedido_venda_item_produto FOREIGN KEY (produto_codigo) REFERENCES tb_produto (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
