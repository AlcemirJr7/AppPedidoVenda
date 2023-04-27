USE dbapppedidovendawk;

CREATE TABLE IF NOT EXISTS tb_produto 
(
  codigo int NOT NULL AUTO_INCREMENT,
  descricao varchar(300) NOT NULL,
  preco_venda decimal(20,2) NOT NULL,
  PRIMARY KEY (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


