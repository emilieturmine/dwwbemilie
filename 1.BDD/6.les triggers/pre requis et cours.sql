/*
Les déclencheurs ne peuvent s'appliquer que sur des tables dont le moteur de stockage est dit transactionnel.

Le moteur de stockage par défaut lorsqu'une table est créée est MyIsam, qui ne supporte pas les transactions. L'autre moteur de stockage le plus utilisé supportant les transactions est le moteur InnoDB, il faut donc utiliser celui-ci.


*/
ALTER TABLE categories ENGINE=InnoDB;
ALTER TABLE countries ENGINE=InnoDB;
ALTER TABLE customers ENGINE=InnoDB;
ALTER TABLE departments ENGINE=InnoDB;
ALTER TABLE employees ENGINE=InnoDB;
ALTER TABLE orders ENGINE=InnoDB;
ALTER TABLE orders_details ENGINE=InnoDB;
ALTER TABLE posts ENGINE=InnoDB;
ALTER TABLE products ENGINE=InnoDB;
ALTER TABLE shops ENGINE=InnoDB;
ALTER TABLE suppliers ENGINE=InnoDB;