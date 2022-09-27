const express = require('express');
const router = express.Router();
const Cars = require('./models/cars');


// Fetch all cars
router.get("/cars", async (req, res) => {
  try {
    const cars = await Cars.find();
    res.send(cars)
  } catch(err) {
    return res.status(500).json({ message: err.message });
  }
})

// Add Cars
router.post("/cars", async (req, res) => {
    const cars = new Cars({
      brand: req.body.brand,
      model: req.body.model,
      color: req.body.color,
      year: req.body.year
    });
  
    try {
      const newCars = await cars.save();
      res.status(201).json({ newCars });
    } catch(err) {
      return res.status(500).json({ message: err.message });
    }
  })

// Delete Cars by title
router.delete("/cars", async (req, res) => {
    await Cars.deleteOne({_id: req.body.id}, (err, result) => {
      if (err) {
        return res.status(500).json({ message: err.message });
      }
      else {
        res.status(200).json(result);
      }
    });
  })

  // Update Cars by id
router.put("/cars/:id", async (req, res) => {
    await Cars.findOneAndUpdate({ _id: req.params.id }, req.body, {new: true}, (err, result) => { 
      if (err){ 
        return res.status(500).json({ message: err.message });
      } 
      else{ 
        res.status(200).json({ result });
      } 
    }); 
  })


module.exports = router;