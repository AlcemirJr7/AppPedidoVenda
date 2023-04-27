CREATE USER IF NOT EXISTS 'wk'@'localhost' IDENTIFIED WITH mysql_native_password BY 'testewk';
GRANT ALL PRIVILEGES ON dbapppedidovendawk.* TO 'wk'@'localhost';
FLUSH PRIVILEGES;