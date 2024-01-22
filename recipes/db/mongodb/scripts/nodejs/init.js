const mydb = db.getSiblingDB("mydb");

mydb.createCollection("agents");
mydb.createCollection("customers");
mydb.createCollection("calls");
