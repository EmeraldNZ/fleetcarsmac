USE Master
Go

If EXISTS(select * from sys.databases where name = 'FleetDB')
DROP DATABASE FleetDB
Go

CREATE DATABASE FleetDB
Go

USE FleetDB
Go

CREATE TABLE "Cars" (
  "id" int NOT NULL PRIMARY KEY IDENTITY(100, 1),
  "model" varchar(255) NOT NULL,
  "manufacturer" varchar(255) NOT NULL,
)

INSERT INTO Cars (model, manufacturer) VALUES ('Corolla', 'Toyota');
INSERT INTO Cars (model, manufacturer) VALUES ('Camry', 'Toyota');
INSERT INTO Cars (model, manufacturer) VALUES ('Hilux','Toyota');