const express = require("express");

const app = express();
const port = 8080;

const { Pool } = require("pg");

const db = new Pool({
  user: "postgres",
  host: "localhost",
  database: "cyf_energiser",
  password: "",
  port: 5432,
});

app.get("/energisers/:category", function (req, res) {
    const category = req.params.category;
    db.query("SELECT * FROM energisers WHERE category = $1", [category])
    .then((result) => {
      res.status(200).json({ energiser: result.rows });
    })
    .catch((err) => {
      console.log(err);
    });

    res.status(200);
    
});


app.get("/energisers", function (req, res) {
    const keyword = req.query.keyword;
    db.query("select * from energisers where category ilike '%$1%' or title ilike '%$2%' or description ilike '%$3%'",[keyword,keyword,keyword])
    .then((result) => {
      res.status(200).json({ energiser: result.rows });
    })
    .catch((err) => {
      console.log(err);
    });

    res.status(200);
    
});


// notice .post (not .get)
app.post("/energisers", function (req, res) {
    const cat = req.params.category;
    const title = req.params.title;
    const desc = req.params.description;
     db.query("INSERT INTO energisers (cat, title, desc) VALUES ($1, $2, $3)", [cat, title, desc])
        .then((result) => {
     res.status(200).json({message:"well done!" });
          })
          .catch((err) => {
            console.log(err);
          });
      });
      

//     res.status(200).send({cat})
// });




app.listen(port, function () {
    console.log(`Server is listening on port ${port}. Ready to accept requests!`);
});
  