# Notes

## Issues with original CSV

### agents.csv

Headers were modified:
- agentid with id 

### customers.csv

Headers were modified:
- customerid with id
- phonenumber with phone
- Age with age

### calls.csv

Headers were modified:
- callid with id
- agentid with agent_id
- customerid with customer_id
- pickedup with picked_id
- productsold with product_sold

Customer id 1000: in multiple lines of calls.csv there were customer_id with
value of 1000, i replaced them with the value 999.

Agent id -1: in one line of calls.csv there were an agent_id with value of -1,
i replaced it with the value of 0.