# sql-repo

# Testing

You can run this query open the following site:

- https://sqliteonline.com/syntax/create_table

And inserting the following data:

```sql
create table produtos (
  id integer primary key AUTOINCREMENT,
  nome varchar(255),
  preco integer 
  );
  
  INSERT INTO produtos (nome, preco) values('Carne', 40);
  INSERT INTO produtos (nome, preco) values('Leite em pó', 5);
  INSERT INTO produtos (nome, preco) values('Leite desnatado', 9);
  INSERT INTO produtos (nome, preco) values('Arroz', 5);
  INSERT INTO produtos (nome, preco) values('Feijão', 8);
  INSERT INTO produtos (nome, preco) values('Batata', 2);
  INSERT INTO produtos (nome, preco) values('Leite condensado', 10);
  INSERT INTO produtos (nome, preco) values('Leite de coco', 50);
  INSERT INTO produtos (nome, preco) VALUES('Banana', 1);

  Create table usuario (
  id integer PRIMARY key AUTOINCREMENT,
  nome varchar(255)
  );

insert into usuario(nome) values('Caio');
insert into usuario(nome) values('Luiz');

create table compra(
  id integer PRIMARY KEY AUTOINCREMENT,
  data DATE,
  id_usuario INTEGER,
  CONSTRAINT fk_usuario
    FOREIGN KEY (id_usuario)
    REFERENCES usuario(id)
  );

insert into compra (id_usuario, data) values(1, '2021-04-17');
insert into compra (id_usuario, data) values(1, '2021-05-17');
insert into compra (id_usuario, data) values(1, '2021-06-17');
insert into compra (id_usuario, data) values(1, '2021-06-18');
insert into compra (id_usuario, data) values(1, '2021-06-19');

insert into compra (id_usuario, data) values(2, '2021-04-17');
insert into compra (id_usuario, data) values(2, '2021-04-18');
insert into compra (id_usuario, data) values(2, '2021-04-19');

create table item_compra(
  id integer PRIMARY KEY AUTOINCREMENT,
  id_compra INTEGER,
  id_produto INTEGER,
  CONSTRAINT fk_compra
    FOREIGN KEY (id_compra)
    REFERENCES compra(id),
  CONSTRAINT fk_produto
    FOREIGN KEY (id_produto)
    REFERENCES produtos(id)
  );


  insert into item_compra(id_compra, id_produto) values (1, 5);
insert into item_compra(id_compra, id_produto) values (1, 7);
insert into item_compra(id_compra, id_produto) values (1, 7);
insert into item_compra(id_compra, id_produto) values (1, 7);

insert into item_compra(id_compra, id_produto) values (2, 8);

insert into item_compra(id_compra, id_produto) values (3, 8);

insert into item_compra(id_compra, id_produto) values (6, 8);
insert into item_compra(id_compra, id_produto) values (7, 8);
insert into item_compra(id_compra, id_produto) values (8, 8);
```

And then executing the query specified in the file `get_users_that_buy_a_lot.sql`
