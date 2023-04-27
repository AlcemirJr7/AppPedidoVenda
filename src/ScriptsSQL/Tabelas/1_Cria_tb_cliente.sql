USE dbapppedidovendawk;

CREATE TABLE IF NOT EXISTS tb_cliente 
(
  codigo int NOT NULL AUTO_INCREMENT,
  nome varchar(200) NOT NULL,
  cidade varchar(150) NOT NULL,
  uf varchar(2) NOT NULL,
  PRIMARY KEY (codigo)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



