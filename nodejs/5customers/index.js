const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = 3000;

app.use(bodyParser.json());

let customers = [
    {id: '1588323375416', firstName: 'John', lastName: 'Johnson', email: 'john@johnson.com', phone: '8233243'},
    {id: '1588323375417', firstName: 'Mary', lastName: 'Smith', email: 'mary@smith.com', phone: '6654113'},
    {id: '1588323375418', firstName: 'Peter', lastName: 'North', email: 'peter@north.com', phone: '901176'},
  ]


// GET /api/customers
// get all customers
app.get("/api/customers", (req, res) => {
  res.json(customers);
})

// GET /api/customers/{id}
// get customer by id
app.get("/api/customers/:id", (req, res) => {
    const customerID = req.params.id;
    console.log(customerID);
    const customer = customers.filter(customer => customer.id === customerID);
    if (customer.length > 0)
      res.json(customer);
    else
      res.status(404).end();
  })

// POST /api/customers
// Add new customer
app.post("/api/customers", (req, res) => { 
    var id = Date.now();
    id =  "${id}"
    var newcustomer = {...req.body};
    const index = customers.length
    //customers.splice(index , 1, newcustomer); 
    res.json(id);
    })

  // PUT /api/customers/{id}
  // Update customer by id
  app.put("/api/customers/:id", (req, res) => { 
    const id = req.params.id;
    const updatedcustomer = {'id': id, ...req.body};
    const index = customers.findIndex(customer => customer.id === id);
    customers.splice(index, 1, updatedcustomer); 
    res.json(updatedcustomer);
  })




// DELETE /api/customers/{id}
// Delete customer by id
app.delete("/api/customers/:id", (req, res) => { 
    const id = req.params.id;
    customers = customers.filter(customer => customer.id !== id);
    res.status(204).end();
  })



app.listen(port, () => {
  console.log(`Server is running on port ${port}.`);
});


