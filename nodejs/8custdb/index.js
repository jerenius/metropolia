process.env.SECRET_KEY = "";

const express = require('express');
const bodyParser = require('body-parser');
const query = require('./db/custdb');
const auth = require('./services/authenticate');


const app = express();
app.use(bodyParser.json());

const port = 3000;

app.get("/api/customers", auth.authenticate, query.getAllCustomers);
app.get("/api/customers/:id", auth.authenticate, query.getCustomerById);
app.post("/api/customers", auth.authenticate, query.addCustomer);
app.delete("/api/customers/:id", auth.authenticate, query.deleteCustomer);
app.put("/api/customers/:id", auth.authenticate, query.updateCustomer);
app.post("/login", auth.login);

app.listen(port, () => {
  console.log(`Server is running on port ${port}.`);
});

module.exports = app;