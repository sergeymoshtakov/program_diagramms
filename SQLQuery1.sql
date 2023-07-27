USE Publishment

CREATE TABLE Themes(
		id int primary key identity(1,1),
		name nvarchar(50))

INSERT Themes(name)
VALUES ('Thriller')

CREATE TABLE Country(
		id int primary key identity(1,1),
		name nvarchar(50))

INSERT Country(name)
VALUES ('Ukraine')

CREATE TABLE Authors(
		id int primary key identity(1,1),
		firstname nvarchar(50),
		lastname nvarchar(50),
		id_country int references Country(id))

CREATE TABLE Shops(
		id int primary key identity(1,1),
		name nvarchar(50),
		id_country int references Country(id))

CREATE TABLE Books(
		id int primary key identity(1,1),
		name nvarchar(50),
		id_theme int references Themes(id),
		id_author int references Authors(id),
		price int,
		date_of_publish DATE,
		pages int)

CREATE TABLE Sales(
		id int primary key identity(1,1),
		id_book int references Books(id),
		date_of_sale DATE,
		price float,
		quantity int,
		id_shop int references Shops(id))