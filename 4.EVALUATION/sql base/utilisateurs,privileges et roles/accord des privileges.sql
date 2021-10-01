CREATE USER 'util1'@'localhost' IDENTIFIED BY 'Ikase1';
GRANT ALL PRIVILEGES ON gescom_afpa.* TO 'util1'@'localhost' IDENTIFIED BY 'Ikase1';

CREATE USER 'util2'@'localhost' IDENTIFIED BY 'Ikase2';
GRANT SELECT ON gescom_afpa.* TO 'util1'@'localhost' IDENTIFIED BY 'Ikase2';

CREATE USER 'util3'@'localhost' IDENTIFIED BY 'Ikase3';
GRANT SELECT ON gescom_afpa.suppliers* TO 'util3'@'localhost' IDENTIFIED BY 'Ikase3';