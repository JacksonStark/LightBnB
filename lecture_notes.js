// SETTING UP SERVER

  const express = require('express');
  const app = express();
  const PORT = 8080;
  const bodyParser = require('body-parser');
  
  const dbClient = require('./db-connection.js');
  const dbHelpers = require('./db-helpers.js')(dbClient);
  const catsRouter  = require('./cats-router.js')
  
  app.use(bodyParser.urlencoded({extended: false}));
  app.listen(8080, () => console.log('Listening on PORT 8080'))

  app.use('/cats', catsRouter)

  dbHelpers.getCats()
  .then() // second .then() to exectue




// ROUTER // official way to do EVERYTHING we covered in the beginning

  const express = require('express');
  const router = express.Router();

  module.exports = (dbHelpers) => {  // all Route Handling!!
    router.get('/:name', (req, res) => {
      dbHelpers.getCat('mittens')
      res.json(cats)
    })
  }



// HELPERS (db-helpers.js)

module.exports = (dbConnection) => {  // exports functions
  // build all helper functions
  const getCat = (name) => {
    
    dbClient.query(`SELECT * FROM cats WHERE name = $1 AND id = $2`, [name, id])
    .then((response) => { // first .then() to execute
      console.log(response.rows[0]);
    })
    .catch((err) => console.log(err));
  }

  return {
    getCat
    // and other functions
  }

}




// CONNECTING TO DATABASE (db_connection.js)

  const pg = require('pg');
  const Client = pg.Client;
  require('dotenv').config(); // install dotenv

  const dbClient = new Client({
    host: process.env.DB_HOST, // create .env (DB=data) and .env.example (DB=) files
    user: process.env.DB_USER,
    database: process.env.DB_DATABASE,
  });

  dbClient.connect(()=>{
    consolte.log('connected to db');
  })

  module.exports = dbClient;





// GIT-IGNORE

node_modules
.env