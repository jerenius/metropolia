const express = require('express');
const bodyParser = require('body-parser');
const query = require('./db/movies');

const app = express();
app.use(bodyParser.json());

const port = 3000;



app.get("/api/movies", query.getAllMovies);


app.listen(port, () => {
  console.log(`Server is running on port ${port}.`);
});