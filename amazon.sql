create database amazon;
USE amozon;
create table amazon(id INT, name VARCHAR(100), category VARCHAR(50), price INT, quantity INT,brand VARCHAR(50), description VARCHAR(255), seller_id INT, seller_name VARCHAR(100), rating INT,created_date VARCHAR(15), last_updated_date VARCHAR(20));

select * from amazon;

/*add 3coloumn*/
ALTER TABLE amazon ADD COLUMN color VARCHAR(10);

alter table amazon ADD COLUMN weight INT;

alter table amazon ADD COLUMN warranty INT;

-- Removed 1 column
ALTER TABLE amazon DROP COLUMN last_updated_date;

-- Renamed 5 columns
ALTER TABLE amazon RENAME COLUMN id TO product_id;
alter table amazon RENAME COLUMN name TO product_name;
alter table amazon RENAME COLUMN warranty TO warranty_in_years;
alter table amazon RENAME COLUMN brand TO brand_name;
alter table amazon RENAME COLUMN description TO product_description;

-- Modified 4 columns
ALTER TABLE amazon MODIFY COLUMN price BIGINT;
alter table amazon MODIFY COLUMN created_date VARCHAR(20);
alter table amazon MODIFY COLUMN product_name VARCHAR(150);
alter table amazon MODIFY COLUMN category VARCHAR(100);

-- Describe the Structure of the table
DESC amazon;