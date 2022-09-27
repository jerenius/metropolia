CREATE DATABASE custdb;

\c custdb;

CREATE TABLE customers (
  id serial PRIMARY KEY,
  firstname VARCHAR (250) NOT NULL,
  lastname VARCHAR (250) NOT NULL,
  email VARCHAR (250) NOT NULL,
  phone VARCHAR (250) NOT NULL,
  street VARCHAR (250) NOT NULL,
  zip VARCHAR(5) NOT NULL,
  city VARCHAR (250) NOT NULL,
  country VARCHAR (250) NOT NULL
);

INSERT INTO customers (firstname, lastname, email, phone, street, zip, city, country) VALUES ('Ahti', 'Lemminkäinen', 'ahti@lemminkainen.com', '0500445566','Kaukoniementie 8', '80802' , 'Kaukoniemi' ,'Kalevala');
INSERT INTO customers (firstname, lastname, email, phone, street, zip, city, country) VALUES ('Antero', 'Vipunen', 'antero@gmail.com', '044567567','Metsätie 4', '80830' , 'Metsä' ,'Kalevala');
