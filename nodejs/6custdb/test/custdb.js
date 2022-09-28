const chai = require('chai');
const chaihttp = require('chai-http');
const app = require('../index');
const query = require('../db/custdb');
const should = chai.should();

chai.use(chaihttp);

const testCustomer = {
  firstname: 'Seppo',
  lastname: 'Ilmarinen',
  email: 'seppo.ilmarinen@microsoft.com',
  phone: '+99945876876',
  street: 'Pajatie',
  zip: 2,
  city: 88800,
  country: 'Kalevala'
}

describe('/POST customers', () => {
  beforeEach((done) => {
    query.deleteAllMovies();
    done();
  });

  it('Add new customer', (done) => {
    chai.request(app)
      .post('/api/customers')
      .set('Content-Type', 'application/json')
      .send(JSON.stringify(testCustomer))
      .end((err, res) => {
        res.should.have.status(200);
        res.body.should.be.a('object');
        res.body.should.have.property('firstname');
        res.body.should.have.property('lastname');
        done();
       });
  });
});


describe('/GET customers', () => {
  it('Fetch all customers', (done) => {
    chai.request(app)
      .get('/api/customers') 
      .end((err, res) => {
         res.should.have.status(200);
         res.body.should.be.a('array');
         res.body.length.should.be.eql(1);
         done();
      });
  });
});