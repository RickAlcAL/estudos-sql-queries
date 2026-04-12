CREATE DATABASE catalogacao_e_emprestimos;
USE catalogacao_e_emprestimos;

CREATE TABLE IF NOT exists CATEGORIES  ( -- Criando Tabela de Categorias e seus atributos
	CategoryID int auto_increment primary key not null,
    CategoryName VARCHAR (100) not null,
    DescriptionCategories VARCHAR (1000) not null
);

CREATE TABLE IF NOT exists COSTUMERS ( -- Criando Tabela de Costumers e seus atributos
	CustomerID Integer auto_increment primary key not null,
    CustomerName VARCHAR (100) not null,
    ContactName VARCHAR (13) not null,
    AddresCityCostumers VARCHAR (200) not null,
    PostalCodeCostumers VARCHAR (8) not null,
    CountryCostumers VARCHAR (30) not null
);

CREATE TABLE IF NOT EXISTS Shippers ( -- Criando Tabela de Shippers e seus atributos
	ShipperID Integer auto_increment primary key not null,
    ShipperName VARCHAR (100) not null,
    PhoneShipper VARCHAR (13) not null
);

CREATE TABLE IF NOT EXISTS Employees ( -- Criando Tabela de Employees e seus atributos
	EmployessID Integer auto_increment primary key not null,
    LastName VARCHAR (30) not null,
    FirstName VARCHAR (30) not null,
    BirthDate DATE not null,
    Photo BLOB ,
    Notes VARCHAR (100) not null
);

CREATE TABLE IF NOT EXISTS Orders ( -- Criando Tabela de Orders e seus atributos
	OrderID Integer auto_increment primary key not null,
    CustomerID Integer not null,
    FOREIGN KEY (CustomerID) REFERENCES COSTUMERS(CustomerID),
    EmployeeID  INTEGER not null,
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployessID),
    OrderData DATE not null,
    ShipperID Integer not null,
    FOREIGN KEY (ShipperID) REFERENCES Shippers(ShipperID)
);

CREATE TABLE IF NOT EXISTS Supplies ( -- Criando Tabela de Supplies e seus atributos
	SupplerID Integer auto_increment primary key not null,
    SupplierName VARCHAR (100) not null,
    ContactName VARCHAR (13) not null,
    AddressSupplies VARCHAR (100) not null,
    CitySupplies VARCHAR (100) not null,
    PostalCodeSupplies VARCHAR (8) not null,
    CountrySupplies VARCHAR (50) not null,
    PhoneSupplies VARCHAR (13) not null
);

CREATE TABLE IF NOT EXISTS Products ( -- Criando Tabela de Products e seus atributos
	ProductID Integer auto_increment primary key not null,
    ProductName VARCHAR (100) not null,
    SupplerID Integer not null,
    FOREIGN KEY (SupplerID) REFERENCES Supplies(SupplerID),
    CategoryID Integer not null,
    FOREIGN KEY (CategoryID) REFERENCES CATEGORIES(CategoryID),
    Unit Integer not null,
    Price Float not null
);

CREATE TABLE IF NOT EXISTS OrderDetalis ( -- Criando Tabela de OrderDetails e seus atributos
	OrderDetailID  Integer auto_increment primary key not null,
    OrderID Integer not null,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    ProductID Integer not null,
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID),
    Quantity Integer not null
);

-- CATEGORIAS (15 registros)
INSERT INTO CATEGORIES (CategoryName, DescriptionCategories) VALUES 
('Eletrônicos', 'Dispositivos, gadgets e hardware'),
('Alimentos', 'Produtos perecíveis e mercearia'),
('Vestuário', 'Roupas, calçados e acessórios'),
('Limpeza', 'Produtos para manutenção e higiene doméstica'),
('Móveis', 'Itens de decoração e mobiliário'),
('Brinquedos', 'Jogos educativos e entretenimento infantil'),
('Beleza', 'Maquiagem e cuidados pessoais'),
('Esportes', 'Equipamentos e acessórios esportivos'),
('Papelaria', 'Material escolar e para escritório'),
('Pet Shop', 'Rações e acessórios para animais'),
('Ferramentas', 'Utensílios para reforma e construção'),
('Jardim', 'Plantas e cuidados externos'),
('Livros', 'Literatura nacional e estrangeira'),
('Saúde', 'Suplementos e itens médicos'),
('Automotivo', 'Peças e acessórios para veículos');

-- CLIENTES (30 registros)
INSERT INTO COSTUMERS (CustomerName, ContactName, AddresCityCostumers, PostalCodeCostumers, CountryCostumers) VALUES 
('Loja do André', 'André Silva', 'São Paulo', '01001000', 'Brasil'),
('Tech Import', 'Maria Souza', 'Curitiba', '80010000', 'Brasil'),
('Farma Total', 'Marcos Dias', 'São Paulo', '01002000', 'Brasil'),
('Pet Love', 'Julia Porto', 'Rio de Janeiro', '20000000', 'Brasil'),
('Constru Bem', 'Ricardo Lima', 'Belo Horizonte', '30110002', 'Brasil'),
('Esporte Vida', 'Fabio Melo', 'Porto Alegre', '90010001', 'Brasil'),
('Livraria ABC', 'Sonia Abrantes', 'Recife', '50010001', 'Brasil'),
('Auto Peças Z', 'Beto Silva', 'Curitiba', '80010001', 'Brasil'),
('Beleza Pura', 'Clara Nunes', 'Salvador', '40010000', 'Brasil'),
('Tech Mundi', 'Igor Gomes', 'Campinas', '13010000', 'Brasil'),
('Mundo Infantil', 'Paula Teix', 'Fortaleza', '60010000', 'Brasil'),
('Horta Viva', 'Sérgio Reis', 'Brasília', '70010000', 'Brasil'),
('Moda Real', 'Gisele B.', 'Florianópolis', '88010000', 'Brasil'),
('Click Fotos', 'Hugo Viana', 'Vitória', '29010000', 'Brasil'),
('Som & Tom', 'Lara Luz', 'Goiânia', '74010000', 'Brasil'),
('Casa & Cor', 'Otávio Mes', 'Manaus', '69010000', 'Brasil'),
('Bio Saúde', 'Nara Costa', 'Belém', '66010000', 'Brasil'),
('Pão Quente', 'Vitor Hugo', 'Natal', '59010000', 'Brasil'),
('Tudo Limpo', 'Rosa Maria', 'João Pessoa', '58010000', 'Brasil'),
('Office Max', 'Yuri Lima', 'Maceió', '57010000', 'Brasil'),
('Vinho & Cia', 'Dante Alig', 'São Bento', '89280000', 'Brasil'),
('Grãos Nobres', 'Caio Castro', 'Cuiabá', '78010000', 'Brasil'),
('Cine Tech', 'Erik Rocha', 'Aracaju', '49010000', 'Brasil'),
('Game Zone', 'Alex Souza', 'Santos', '11010000', 'Brasil'),
('Baby Care', 'Nina Rosa', 'Niterói', '24010000', 'Brasil'),
('Eco Bike', 'Luiz Luan', 'Joinville', '89200000', 'Brasil'),
('Aero Model', 'Theo Cruz', 'Uberlândia', '38400000', 'Brasil'),
('Arte Final', 'Luna Azul', 'Londrina', '86010000', 'Brasil'),
('Super Cold', 'Kadu Ferraz', 'Teresina', '64010000', 'Brasil'),
('Fast Food', 'Ruy Barbo', 'Osasco', '06010000', 'Brasil');

-- SHIPPERS (33 registros)
INSERT INTO Shippers (ShipperName, PhoneShipper) VALUES 
('Logística Rápida', '11 98888-7777'), ('Correio Global', '11 91111-2222'), ('TransCarga', '11 92222-3333'),
('Logística Sul', '51 97777-6666'), ('Expresso Norte', '91 96666-5555'), ('TransLeste S.A', '11 95555-4444'),
('Vôo Ágil Ar', '21 94444-3333'), ('Marítima Real', '13 93333-2222'), ('Flash Entregas', '31 92222-1111'),
('Rota 66 Transp', '62 91111-0000'), ('Cargo Master', '41 90000-9999'), ('Rapidão Brasil', '81 98888-8888'),
('Puma Logística', '11 97777-7777'), ('Águia de Prata', '27 96666-6666'), ('Jet Express', '11 95555-5555'),
('Brasil Cargas', '61 94444-4444'), ('Eco Fretes', '48 93333-3333'), ('Sky Shipping', '11 92222-2222'),
('Estrada Real', '32 91111-1111'), ('Veloz Serviços', '19 90000-0000'), ('Total Log', '11 99999-0001'),
('Direct Cargo', '21 99999-0002'), ('União Fretes', '31 99999-0003'), ('Box Delivery', '11 99999-0004'),
('Moto Flash', '11 99999-0005'), ('InterEstadual', '67 99999-0006'), ('Prime Log', '11 99999-0007'),
('Click Entregas', '21 99999-0008'), ('Transporte VIP', '41 99999-0009'), ('Global Ship', '13 99999-0010'),
('Mega Truck', '11 99999-0011'), ('Star Freight', '11 99999-0012'), ('Swift Cargo', '11 99999-0013');

-- EMPLOYEES (15 registros)
INSERT INTO Employees (LastName, FirstName, BirthDate, Notes) VALUES 
('Oliveira', 'Carlos', '1990-05-15', 'Vendas Corp'), ('Santos', 'Ana', '1985-11-20', 'Gerente'),
('Ferreira', 'João', '1985-03-12', 'Sênior'), ('Pereira', 'Carla', '1993-04-20', 'Financeiro'),
('Souza', 'Marcos', '1988-12-30', 'Logística'), ('Mendes', 'Fernanda', '1995-06-15', 'Atendimento'),
('Almeida', 'Ricardo', '1982-08-05', 'Supervisor'), ('Nunes', 'Patrícia', '1990-09-22', 'Vendas'),
('Lopes', 'Gabriel', '1997-02-11', 'Estagiário'), ('Costa', 'Juliana', '1989-03-14', 'RH'),
('Gomes', 'Thiago', '1986-07-08', 'Vendas'), ('Martins', 'Aline', '1994-10-10', 'Suporte'),
('Barbosa', 'Daniel', '1981-05-19', 'Diretor'), ('Cardoso', 'Beatriz', '1998-11-25', 'Vendas'),
('Teixeira', 'Felipe', '1992-01-30', 'Expedição');

-- SUPPLIES
INSERT INTO Supplies (SupplierName, ContactName, AddressSupplies, CitySupplies, PostalCodeSupplies, CountrySupplies, PhoneSupplies) VALUES 
('Distribuidora Norte', 'André Silva', 'Av. Industrial, 500', 'São Paulo', '01001000', 'Brasil', '11 3333-4444'),
('Atacado SP', 'Marcos Dias', 'Rua A', 'São Paulo', '01002000', 'Brasil', '11 3333-1111'),
('Rio Distribuidora', 'Julia Porto', 'Rua B', 'Rio de Janeiro', '20000000', 'Brasil', '21 3333-2222'),
('Minas Atacado', 'Ricardo Lima', 'Rua C', 'Belo Horizonte', '30110002', 'Brasil', '31 3333-3333'),
('Sul Tech', 'Fabio Melo', 'Rua D', 'Porto Alegre', '90010001', 'Brasil', '51 3333-4444');

-- PRODUCTS
INSERT INTO Products (ProductName, SupplerID, CategoryID, Unit, Price) VALUES 
('Smartphone X', 1, 1, 50, 2500.00), ('Monitor 24 Pol', 1, 1, 30, 850.50), ('Camiseta Algodão', 1, 3, 100, 49.90),
('Notebook Pro', 1, 1, 10, 4500.00), ('Mouse Sem Fio', 1, 1, 100, 89.90), ('Arroz 5kg', 2, 2, 50, 25.50),
('Cadeira Gamer', 1, 5, 15, 1200.00), ('Shampoo Anticaspa', 2, 7, 20, 15.90), ('Ração Cão 10kg', 3, 10, 10, 120.00),
('Bola de Futebol', 3, 8, 15, 89.00), ('Teclado Mecânico', 1, 1, 25, 350.00), ('Azeite Extra Virgem', 2, 2, 40, 35.00),
('Mesa Escritório', 4, 5, 5, 450.00), ('Livro SQL', 5, 13, 50, 75.00), ('Vitamina C', 2, 14, 100, 19.90);

-- ORDERS (Pedidos 1 a 50)
INSERT INTO Orders (CustomerID, EmployeeID, OrderData, ShipperID) VALUES 
(1, 1, '2024-03-01', 1), (2, 2, '2024-03-02', 33), (3, 3, '2024-03-03', 15),
(4, 4, '2024-03-04', 7), (5, 5, '2024-03-05', 21), (6, 6, '2024-03-06', 4),
(7, 7, '2024-03-07', 5), (8, 8, '2024-03-08', 6), (9, 9, '2024-03-09', 8),
(10, 10, '2024-03-10', 9), (11, 11, '2024-03-11', 10), (12, 12, '2024-03-12', 11),
(13, 13, '2024-03-13', 12), (14, 14, '2024-03-14', 13), (15, 15, '2024-03-15', 14),
(16, 1, '2024-03-16', 16), (17, 2, '2024-03-17', 17), (18, 3, '2024-03-18', 18),
(19, 4, '2024-03-19', 19), (20, 5, '2024-03-20', 20), (21, 6, '2024-03-21', 22),
(22, 7, '2024-03-22', 23), (23, 8, '2024-03-23', 24), (24, 9, '2024-03-24', 25),
(25, 10, '2024-03-25', 26), (26, 11, '2024-03-26', 27), (27, 12, '2024-03-27', 28),
(28, 13, '2024-03-28', 29), (29, 14, '2024-03-29', 30), (30, 15, '2024-03-30', 31),
(1, 3, '2024-04-01', 32), (2, 5, '2024-04-02', 2), (3, 8, '2024-04-03', 4),
(4, 10, '2024-04-04', 6), (5, 12, '2024-04-05', 8), (6, 1, '2024-04-06', 10),
(7, 2, '2024-04-07', 12), (8, 4, '2024-04-08', 14), (9, 6, '2024-04-09', 16),
(10, 7, '2024-04-10', 18), (11, 9, '2024-04-11', 20), (12, 11, '2024-04-12', 22),
(13, 13, '2024-04-13', 24), (14, 15, '2024-04-14', 26), (15, 2, '2024-04-15', 28),
(16, 4, '2024-04-16', 30), (17, 6, '2024-04-17', 32), (18, 8, '2024-04-18', 1),
(19, 10, '2024-04-19', 3), (20, 12, '2024-04-20', 5);

-- ORDER DETAILS (Vinculados aos IDs 1-50 de Orders e 1-15 de Products)
INSERT INTO OrderDetalis (OrderID, ProductID, Quantity) VALUES 
(1, 1, 1), (1, 2, 1), (2, 4, 1), (3, 14, 2), (4, 7, 1), (5, 11, 2),
(6, 3, 10), (7, 5, 2), (8, 8, 1), (9, 10, 4), (10, 12, 1),
(11, 15, 20), (12, 1, 1), (13, 2, 2), (14, 4, 1), (15, 6, 10),
(16, 7, 1), (17, 9, 3), (18, 11, 2), (19, 13, 1), (20, 14, 5),
(21, 1, 2), (22, 3, 15), (23, 5, 4), (24, 8, 2), (25, 10, 1),
(26, 12, 3), (27, 15, 5), (28, 2, 1), (29, 4, 1), (30, 6, 12),
(31, 11, 2), (32, 1, 1), (33, 7, 2), (34, 14, 1), (35, 9, 10),
(36, 13, 1), (37, 2, 4), (38, 5, 2), (39, 8, 3), (40, 15, 6),
(41, 1, 1), (42, 3, 8), (43, 6, 2), (44, 10, 1), (45, 12, 5),
(46, 4, 2), (47, 7, 1), (48, 11, 4), (49, 14, 2), (50, 9, 1);