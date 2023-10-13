CREATE DATABASE PetParadiseDB;
USE PetParadiseDB;
DROP DATABASE PetParadiseDB;

##- Liste todos os clientes.##
SELECT * FROM Clientes;
## - Liste todos os animais de estimação.##
SELECT * FROM Animais;
##- Liste todos os produtos disponíveis.##
SELECT * FROM Produtos;
##- Liste todos os agendamentos.##
SELECT * FROM Agendamento;
##- Liste todas as vendas.##
SELECT * FROM Vendas;

##  - Atualize o endereço de um cliente específico.##
UPDATE Clientes SET Endereco = 'R. A Troca, 987' WHERE ID = '2';

## - Atualize o preço de um produto específico.##
UPDATE Produtos SET Preco = '10.99' WHERE ID = '2';

##- Exclua um agendamento específico.##
DELETE FROM Agendamento WHERE ID = '3';

##- Tabela "Clientes" com campos: `ID`, `Nome`, `Endereço`, `Telefone`.##
CREATE TABLE Clientes(
	ID INT PRIMARY KEY AUTO_INCREMENT, 
	Nome VARCHAR(45), 
	Endereco VARCHAR(220), 
	Telefone INT
);
##- Tabela "Animais" com campos: `ID`, `Nome`, `Espécie`, `Idade`, `ID_Cliente` (chave estrangeira referenciando a tabela Clientes).
CREATE TABLE Animais(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(90),
    Especie VARCHAR(45),
    Idade INT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID)
);
##  - Tabela "Produtos" com campos: `ID`, `Nome`, `Descrição`, `Preço`.
CREATE TABLE Produtos(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	Nome VARCHAR(120),
	Descricao VARCHAR(250),
	Preco DOUBLE
);
## - Tabela "Agendamento" com campos: `ID`, `ID_Cliente` (chave estrangeira referenciando a tabela Clientes), `Data`, `Hora`, `Serviço`.
CREATE TABLE Agendamento(
	ID INT PRIMARY KEY AUTO_INCREMENT,
    ID_Cliente INT,
    FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
    Data_Agenda DATE,
    Hora TIME,
    Servico VARCHAR(220)
);
##- Tabela "Vendas" com campos: `ID`, `ID_Cliente` (chave estrangeira referenciando a tabela Clientes), `Data`, `Total`.
CREATE TABLE Vendas(
	ID INT PRIMARY KEY AUTO_INCREMENT,
	ID_Cliente INT,
	FOREIGN KEY (ID_Cliente) REFERENCES Clientes(ID),
	Data_venda DATE,
	Total DOUBLE
);


##3. Insira pelo menos 5 registros em cada uma das tabelas##
INSERT INTO CLientes(Nome, Endereco, Telefone) VALUES ('Antonio Jose', 'R. antonio bandeira, 349', '88889999');
INSERT INTO CLientes(Nome, Endereco, Telefone) VALUES ('Ana Maria', 'R. Raimundo filho, 123', '77771234');
INSERT INTO CLientes(Nome, Endereco, Telefone) VALUES ('Maria Aparecida', 'R. B, 987', '444422222');
INSERT INTO CLientes(Nome, Endereco, Telefone) VALUES ('Fabio Filho', 'R. Baixa Funda, 543', '12344567');
INSERT INTO CLientes(Nome, Endereco, Telefone) VALUES ('Suanny Lima', 'R. Depois da Curva, 623', '12344567');

##3. Insira pelo menos 5 registros em cada uma das tabelas##
INSERT INTO Animais(Nome, Especie, Idade, ID_Cliente) 
VALUES ('Rabicho', 'Coelho', '5', '1');
INSERT INTO Animais(Nome, Especie, Idade, ID_Cliente) 
VALUES ('Bob', 'Cachorro', '7', '2');
INSERT INTO Animais(Nome, Especie, Idade, ID_Cliente) 
VALUES ('Logan', 'Cachorro', '1', '3');
INSERT INTO Animais(Nome, Especie, Idade, ID_Cliente) 
VALUES ('Bixano', 'Gato', '3', '4');
INSERT INTO Animais(Nome, Especie, Idade, ID_Cliente) 
VALUES ('Louro', 'Papagaio', '23', '5');

##3. Insira pelo menos 5 registros em cada uma das tabelas##
INSERT INTO Produtos (Nome, Descricao, Preco) VALUES('Shampoo BaBy-Pet', 'Shampoo Para Filhotes', '15.99');
INSERT INTO Produtos (Nome, Descricao, Preco) VALUES('Mordedor', 'Brinquedo', '5.99');
INSERT INTO Produtos (Nome, Descricao, Preco) VALUES('Coleira G', 'Pet Grande Porte', '25.99');
INSERT INTO Produtos (Nome, Descricao, Preco) VALUES('Banho e Tosa', 'Banho do PET', '45.99');
INSERT INTO Produtos (Nome, Descricao, Preco) VALUES('Hospedagem', 'Diaria Pet', '25.99');

##3. Insira pelo menos 5 registros em cada uma das tabelas##
INSERT INTO Agendamento(ID_Cliente, Data_Agenda, Hora, Servico) 
VALUES ('1', '2023/10/10', '15:30', 'Banho e Tosa');
INSERT INTO Agendamento(ID_Cliente, Data_Agenda, Hora, Servico) 
VALUES ('2', '2023/10/15', '14:55', 'Exame Periodico');
INSERT INTO Agendamento(ID_Cliente, Data_Agenda, Hora, Servico) 
VALUES ('3', '2023/10/16', '13:45', 'Internação');
INSERT INTO Agendamento(ID_Cliente, Data_Agenda, Hora, Servico) 
VALUES ('4', '2023/10/15', '09:30', 'Hospedagem');
INSERT INTO Agendamento(ID_Cliente, Data_Agenda, Hora, Servico) 
VALUES ('5', '2023/10/15', '16:45', 'Visita');

##3. Insira pelo menos 5 registros em cada uma das tabelas##
INSERT INTO Vendas(ID_Cliente, Data_venda, Total) VALUES ('1', '2023/10/10','155.23');
INSERT INTO Vendas(ID_Cliente, Data_venda, Total) VALUES ('2', '2023/10/12','19.99');
INSERT INTO Vendas(ID_Cliente, Data_venda, Total) VALUES ('3', '2023/10/13','12.99');
INSERT INTO Vendas(ID_Cliente, Data_venda, Total) VALUES ('4', '2023/10/14','220.55');
INSERT INTO Vendas(ID_Cliente, Data_venda, Total) VALUES ('4', '2023/10/14','220.55');


