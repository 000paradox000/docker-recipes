CREATE DATABASE mydb;
GO

USE mydb;
GO

CREATE LOGIN myuser WITH PASSWORD = 'P@ssw0rd';
GO
CREATE USER myuser FOR LOGIN myuser;
GO

CREATE TABLE customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    occupation VARCHAR(50),
    email VARCHAR(50),
    company VARCHAR(50),
    phone_number VARCHAR(20),
    age INT
);
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON customers TO myuser;
GO

CREATE TABLE agents(
    id INT PRIMARY KEY,
    name VARCHAR(50)
);
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON agents TO myuser;
GO

CREATE TABLE calls (
    id INT PRIMARY KEY,
    agent_id INT,
    customer_id INT,
    picked_up SMALLINT,
    duration INT,
    product_sold SMALLINT,
    FOREIGN KEY (agent_id) REFERENCES agents(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);
GO
GRANT SELECT, INSERT, UPDATE, DELETE ON calls TO myuser;
GO

BULK INSERT agents
FROM '/opt/data/csv/agents.csv'
WITH
(
    FIRSTROW = 2,
	FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
	FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT customers
FROM '/opt/data/csv/customers.csv'
WITH
(
    FIRSTROW = 2,
	FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
	FIELDQUOTE = '"',
    TABLOCK
);
GO

BULK INSERT calls
FROM '/opt/data/csv/calls.csv'
WITH
(
    FIRSTROW = 2,
	FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
	FIELDQUOTE = '"',
    TABLOCK
);
GO
