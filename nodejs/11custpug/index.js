const express = require('express');
const bodyParser = require('body-parser');

const app = express();
const port = 3000;



app.listen(port, () => {
  console.log(`Server is running on port ${port}.`);
});

app.use(bodyParser.urlencoded({ extended: true }));

app.set('view engine', 'pug');

app.get("/addcustomer", (req, res) => {
    res.render("addcustomer");
})



app.get("/customers", (req, res) => {
 res.render("customers", {customers: customers});
})

app.post("/addcustomer", (req, res) => {
  var pvm = Date.now()
  const newCustomer = {id: pvm, firstname: req.body.firstname, lastname: req.body.lastname, email: req.body.email, phone: req.body.phone };
  customers = [...customers, newCustomer];
  res.redirect("/customers");
})


app.post("/addcustomer", (req, res) => {
  var pvm = Date.now()
  const newCustomer = {id: pvm, firstname: req.body.firstname, lastname: req.body.lastname, email: req.body.email, phone: req.body.phone };
  customers = [...customers, newCustomer];
  res.redirect("/customers");
})




let customers = [
  {id: '1588323375416', firstname: 'John', lastname: 'Johnson', email: 'john@johnson.com', phone: '8233243'},
  {id: '1588323375417', firstname: 'Mary', lastname: 'Smith', email: 'mary@smith.com', phone: '6654113'},
  {id: '1588323375418', firstname: 'Peter', lastname: 'North', email: 'peter@north.com', phone: '901176'},
]