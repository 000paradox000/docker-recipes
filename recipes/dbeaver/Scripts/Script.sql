SELECT 
	agents.name,
	customer_id
FROM 
	calls
JOIN
	agents ON agents.id = calls.agent_id
#JOIN LEFT
#	customers ON customers.id = calls.customer_id
;

SELECT * FROM agents WHERE id in (SELECT agent_id FROM calls);
SELECT customer_id FROM calls;
SELECT id FROM customers;