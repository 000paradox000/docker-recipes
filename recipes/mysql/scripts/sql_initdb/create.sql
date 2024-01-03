CREATE TABLE IF NOT EXISTS customers (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    occupation VARCHAR(50),
    email VARCHAR(50),
    company VARCHAR(50),
    phone_number VARCHAR(20),
    age INT
);

CREATE TABLE IF NOT EXISTS agents (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS calls (
    call_id INT PRIMARY KEY,
    agent_id INT,
    customer_id INT,
    picked_up SMALLINT,
    duration INT,
    product_sold SMALLINT
);

LOAD DATA INFILE '/opt/data/csv/customers.csv'
INTO TABLE customers
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/opt/data/csv/agents.csv'
INTO TABLE agents
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

LOAD DATA INFILE '/opt/data/csv/calls.csv'
INTO TABLE calls
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;
