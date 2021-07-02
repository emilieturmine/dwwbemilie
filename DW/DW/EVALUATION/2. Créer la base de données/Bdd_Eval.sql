
DROP DATABASE IF EXISTS gescom_eval;

/*
supprime la base de données "gescom_eval" si elle existe deja 
*/

CREATE DATABASE gescom_eval;

/*
 cree la base de données " gescom_eval" 
 */

USE gescom_eval;

/*
utilise la bdd mentionnée pour la suite
*/

CREATE TABLE sale_representative(
   id_sale_repr INT,
   sal_name VARCHAR(20) NOT NULL,
   sal_surname VARCHAR(20) NOT NULL,
  CONSTRAINT sale_representative_pk PRIMARY KEY(id_sale_repr)
);

/*
Cree une table "nom de la table" ( noms des valeurs de la tables séparées par des virgules);

+pour chaque valeur à integrer on indique le type de valeur acceptée par exemple INT pour les nombres entiers,
varchar pour les chaines de caracteres ,pour celles-ci on indique en plus le nombre de caractere autorisée.

+ on indique ensuite une contrainte en l'occurence une clé primaire et on la nomme.

+ NOT NULL indique que l'on doit obligatoirement avoir les valeurs demandées pour enregistrer de nouvelles informations ds la table.

la clé primaire est forcement not null et unique ( ne peut pas avoir deux valeurs identique dans la mm table)
*/

CREATE TABLE customer(
   id_customer INT,
   cus_surname VARCHAR(30) NOT NULL,
   cus_name VARCHAR(20) NOT NULL,
   cus_adress VARCHAR(50) NOT NULL,
   cus_postcode INT NOT NULL,
   cus_town VARCHAR(20) NOT NULL,
   cus_country VARCHAR(20) NOT NULL,
   cus_password VARCHAR(10) NOT NULL,
   cus_inclusion DATETIME NOT NULL,
   cus_change_date DATETIME,
   cus_data_history TEXT,
   CONSTRAINT customer_pk PRIMARY KEY(id_customer)

   /*
   DATETIME est un type de donnée permettant d'inquer que l'on souhaite une date et une heure comme valeur;

   TEXT quant a lui est utilisé lorsque les informations peuvent être tres volumineuse,il permet d'enregistrer les données dans une page dédiée
   */

);

CREATE TABLE bill(
   id_bill INT,
   bill_payment DECIMAL(15,2) NOT NULL,
   bill_delivery_date DATE NOT NULL,
   id_customer INT NOT NULL,
   CONSTRAINT bill_pk PRIMARY KEY(id_bill)

   /*
   DECIMAL est un type de donner permettant d'entrer des valeurs decimal , on indique entre parenthese le nombre de chiffre acceptée avant et apres la virgule.

   DATE indique que la valeur doit être une date
   */
);

CREATE TABLE employees(
   id_employee INT,
   emp_surname VARCHAR(30) NOT NULL,
   emp_name VARCHAR(20) NOT NULL,
   emp_date_of_birth DATE NOT NULL,
   emp_sex VARCHAR(10) NOT NULL,
   emp_number_of_child INT NOT NULL,
   emp_work_position VARCHAR(50) NOT NULL,
   emp_id_shop INT NOT NULL,
   emp_departement VARCHAR(20) NOT NULL,
   emp_annual_gross_wage INT NOT NULL,
   id_customer INT NOT NULL,
  CONSTRAINT employee_pk PRIMARY KEY(id_employee)
);

CREATE TABLE products(
   id_products INT,
   pro_ean_code INT NOT NULL,
   pro_class VARCHAR(20) NOT NULL,
   pro_worded VARCHAR(10) NOT NULL,
   pro_description TEXT,
   pro_color VARCHAR(10) NOT NULL,
   pro_price_out_of_taxe INT NOT NULL,
   pro_inclusion DATE NOT NULL,
   pro_change_date DATE,
   pro_name_picture_file VARCHAR(50) NOT NULL,
   pro_physical_stock INT NOT NULL,
   pro_alert_stock VARCHAR(10) NOT NULL,
   id_sale_repr INT NOT NULL,
   CONSTRAINT products_pk PRIMARY KEY(id_products)
   
);

CREATE TABLE suppliers(
   id_suppliers INT,
   sup_name VARCHAR(20) NOT NULL,
   sup_adress VARCHAR(50) NOT NULL,
   sup_physical_stock INT NOT NULL,
   sup_stock_alert INT NOT NULL,
   id_sale_repr INT NOT NULL,
   CONSTRAINT suppliers_pk PRIMARY KEY(id_suppliers)
   
);

CREATE TABLE deliver(
   id_products INT,
   del_out_of_stock INT NOT NULL,
   del_id VARCHAR(50) NOT NULL,
   id_suppliers INT NOT NULL,
   CONSTRAINT deliver_pk PRIMARY KEY(del_id)
   );

CREATE TABLE store(
   id_products INT,
   id_employee INT
   
);

CREATE TABLE charge(
   id_bill INT,
   cha_vat INT NOT NULL,
   cha_discount INT,
   id_products INT NOT NULL,
   CONSTRAINT charge_pk PRIMARY KEY(cha_vat)
  
);
/*
    L'integration des cles etrangeres dans une base donnée est complexe.
    En effet, avant de pouvoir etre une cles etrangere,la valeur doit avant tout être une clé primaire dans une autre table,
ainsi afin d'eviter toute erreur et perte de temps inutile il est plus logique de créer les clés etrangeres,
une fois toutes les tables crées en utilisant, ALTER TABLE qui permet de modifier une table apres sa creation.
Du coup puisque toutes les clés primaires sont deja crée, il suffit d'ajouter (ADD CONSTRAINT) les clés clées etrangeres (FOREIGN KEYS)

ALTER TABLE "nom de la table a modifier"
ADD CONSTRAINT "fk"(pour clés etrangere)_"nom de la table a modifier"_"nom de la table originel de la clés etrangere"
FOREIGN KEY ("nom de la clé") REFERENCES " nom de la table originel"("nom de la clé")" 
*/
ALTER TABLE bill 
ADD CONSTRAINT fk_bill_customer FOREIGN KEY(id_customer) REFERENCES customer(id_customer);

ALTER TABLE charge
ADD CONSTRAINT fk_charge_bill  FOREIGN KEY(id_bill) REFERENCES bill(id_bill);

ALTER TABLE charge
ADD CONSTRAINT fk_charge_products FOREIGN KEY(id_products) REFERENCES products(id_products);

ALTER TABLE store 
ADD CONSTRAINT fk_store_products FOREIGN KEY(id_products) REFERENCES products(id_products);

ALTER TABLE store
ADD CONSTRAINT fk_store_employees FOREIGN KEY(id_employee) REFERENCES employees(id_employee);

 ALTER TABLE deliver
 ADD CONSTRAINT fk_deliver_products FOREIGN KEY(id_products) REFERENCES products(id_products);
  
ALTER TABLE deliver
ADD CONSTRAINT fk_deliver_suppliers FOREIGN KEY(id_suppliers) REFERENCES suppliers(id_suppliers);

ALTER TABLE suppliers
ADD CONSTRAINT fk_suppliers_sale_representative FOREIGN KEY(id_sale_repr) REFERENCES sale_representative(id_sale_repr);

ALTER TABLE products 
ADD CONSTRAINT fk_products_sale_representative FOREIGN KEY(id_sale_repr) REFERENCES sale_representative(id_sale_repr);

ALTER TABLE employees
ADD CONSTRAINT fk_employees_customer  FOREIGN KEY(id_customer) REFERENCES customer(id_customer);


