const db = require('./dbconfig');

// Get all customers
const getAllCustomers = (req, res) => {
  db.query('SELECT * FROM customers', (err, result) => {
    if (err)
      console.error(err);
    else
      res.json(result.rows)
  })
}

// Get Customer by id
const getCustomerById = (req, res) => {
  const query = {
    text: 'SELECT * FROM customers WHERE id = $1',
    values: [req.params.id],
  }

  db.query(query, (err, result) => {
    if (err) {
      return console.error('Error executing query', err.stack)
    }
    else {
      if (result.rows.length > 0)
        res.json(result.rows);
      else
        res.status(404).end();
    }
  })
}


// Add new Customer
const addCustomer = (req, res) => {
// Extract Customer from the request body and generate id
  const newCustomer = req.body;
  const query = {
    text: 'INSERT INTO customers (firstname, lastname, email, phone, street, zip, city, country) VALUES ($1, $2, $3, $4, $5, $6, $7, $8)',
    values: [newCustomer.firstname, newCustomer.lastname, newCustomer.email, newCustomer.phone, newCustomer.street, newCustomer.zip, newCustomer.city, newCustomer.country],

  }
  db.query(query, (err, res) => {
    if (err) {
      return console.error('Error executing query', err.stack)
    }
  })
  res.json(newCustomer);
}

//Delete Customer
const deleteCustomer = (req, res) => {
    const query = {
      text: 'DELETE FROM customers WHERE id = $1',
      values: [req.params.id],
    }
    db.query(query, (err, res) => {
      if (err) {
        return console.error('Error executing query', err.stack)
      }
    })
    res.status(204).end();
}

// Update Customer
const updateCustomer = (req, res) => {
    // Extract edited Customer from the request body
    const editedCustomer = req.body;
  
    const query = {
      text: 'UPDATE customers SET firstname=$1, lastname=$2, email=$3, phone=$4, street=$5, zip=$6, city=$7, country=$8 WHERE id = $9',
      values: [editedCustomer.firstname, editedCustomer.lastname, editedCustomer.email, editedCustomer.phone, editedCustomer.street, editedCustomer.zip, editedCustomer.city, editedCustomer.country, req.params.id],
      
    }
  
    db.query(query, (err, res) => {
      if (err) {
        return console.error('Error executing query', err.stack)
      }
    })
  
    res.json(editedCustomer);
  }



module.exports = {
  getAllCustomers: getAllCustomers,
  getCustomerById: getCustomerById,
  addCustomer: addCustomer,
  deleteCustomer: deleteCustomer,
  updateCustomer: updateCustomer
}