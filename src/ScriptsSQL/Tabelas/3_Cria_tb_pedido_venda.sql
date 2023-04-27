USE dbapppedidovendawk;

CREATE TABLE IF NOT EXISTS tb_pedido_venda 
(
  numero_pedido int NOT NULL AUTO_INCREMENT,
  data_emissao date NOT NULL,
  codigo_cliente int NOT NULL,
  valor_total decimal(30,2) NOT NULL,
  PRIMARY KEY (numero_pedido),
  KEY fk_tb_pedido_venda (codigo_cliente),
  CONSTRAINT fk_tb_pedido_venda FOREIGN KEY (codigo_cliente) REFERENCES tb_cliente (codigo) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;