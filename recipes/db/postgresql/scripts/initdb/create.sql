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
    id INT PRIMARY KEY,
    agent_id INT,
    customer_id INT,
    picked_up SMALLINT,
    duration INT,
    product_sold SMALLINT,
    FOREIGN KEY (agent_id) REFERENCES agents(id),
    FOREIGN KEY (customer_id) REFERENCES customers(id)
);

COPY customers FROM '/opt/data/csv/customers.csv' DELIMITER ',' CSV HEADER;
COPY agents FROM '/opt/data/csv/agents.csv' DELIMITER ',' CSV HEADER;
COPY calls FROM '/opt/data/csv/calls.csv' DELIMITER ',' CSV HEADER;
