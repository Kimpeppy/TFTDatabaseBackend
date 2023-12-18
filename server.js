const express = require("express");
const app = express();
const mysql = require("mysql2");
const port = 4000;
const { readMatchjson, dropCreate } = require("./match.js");

const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "Sugar129!!",
  database: "tft_database",
});

// Create a route for the API endpoint
app.get("/api/select/champions", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM champions", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

// Create a route for the API endpoint
app.get("/api/select/game", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM game", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

// Create a route for the API endpoint
app.get("/api/select/champion_abilities", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM champion_abilities", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/participant", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM participant", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/teamComps", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM teamComps", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/items", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    // Execute the query
    connection.query("SELECT * FROM items", (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/champion", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const champ_name = req.query.champName;
    console.log(champ_name)
    
    const query = "SELECT * FROM champions WHERE name = ?"
    // Execute the query
    connection.query(query, [champ_name], (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/cost", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const cost = req.query.cost;
    var tempCost = new Array(5);
    console.log(cost);

    for (i = 0; i < 5; i++) {
      if (i > cost.length - 1) {
        tempCost[i] = 0;
      } else {
        tempCost[i] = cost[i]
      }
    }

    console.log(tempCost);
    
    const query = "CALL showCost (?, ?, ?, ?, ?)"
    // Execute the query
    connection.query(query, [tempCost[0], tempCost[1], tempCost[2], tempCost[3], tempCost[4]], (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/origin", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const origin = req.query.origin;
    var tempOrigin = new Array(15);

    for (i = 0; i < 15; i++) {
      if (i > origin.length - 1) {
        tempOrigin[i] = '';
      } else {
        tempOrigin[i] = origin[i]
      }
    }
    
    const query = "CALL showOrigin (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    // Execute the query
    connection.query(query, [tempOrigin[0], tempOrigin[1], tempOrigin[2], tempOrigin[3], tempOrigin[4], tempOrigin[5], tempOrigin[6], tempOrigin[7], tempOrigin[8], tempOrigin[9], tempOrigin[10], tempOrigin[11], tempOrigin[12], tempOrigin[13], tempOrigin[14]], (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/class", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const class0 = req.query.class;
    var temClass = new Array(13);

    for (i = 0; i < 13; i++) {
      if (i > class0.length - 1) {
        tempClass[i] = '';
      } else {
        tempClass[i] = class0[i]
      }
    }
    
    const query = "CALL showClass (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    // Execute the query
    connection.query(query, [tempClass[0], tempClass[1], tempClass[2], tempClass[3], tempClass[4], tempClass[5], tempClass[6], tempClass[7], tempClass[8], tempClass[9], tempClass[10], tempClass[11], tempClass[12]], (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});

app.get("/api/select/COC", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const cost = req.query.cost;
    const origin = req.query.origin;
    const class0 = req.query.class;

    var tempCost = new Array(5);
    var tempOrigin = new Array(15);
    var tempClass = new Array(13);

    for (i = 0; i < 5; i++) {
      if (i > cost.length - 1) {
        tempCost[i] = 0;
      } else {
        tempCost[i] = cost[i]
      }
    }
    
    for (i = 0; i < 15; i++) {
      if (i > origin.length - 1) {
        tempOrigin[i] = '';
      } else {
        tempOrigin[i] = origin[i]
      }
    }
    
    for (i = 0; i < 13; i++) {
      if (i > class0.length - 1) {
        tempClass[i] = '';
      } else {
        tempClass[i] = class0[i]
      }
    }
    
    const query = "CALL showCOC (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)"
    // Execute the query
    connection.query(query, [tempCost[0], tempCost[1], tempCost[2], tempCost[3], tempCost[4], tempOrigin[0], tempOrigin[1], tempOrigin[2], tempOrigin[3], tempOrigin[4], tempOrigin[5], tempOrigin[6], tempOrigin[7], tempOrigin[8], tempOrigin[9], tempOrigin[10], tempOrigin[11], tempOrigin[12], tempOrigin[13], tempOrigin[14], tempClass[0], tempClass[1], tempClass[2], tempClass[3], tempClass[4], tempClass[5], tempClass[6], tempClass[7], tempClass[8], tempClass[9], tempClass[10], tempClass[11], tempClass[12]], (queryError, results) => {
      // Handle query error
      if (queryError) {
        console.error("Error executing query:", queryError);
        res.status(500).json({ error: "Internal Server Error" });
        return;
      }

      // Send the results as JSON
      res.json(results);

    });
  });
});
// Start the Express server
app.listen(port, () => {
  dropCreate();
  readMatchjson();
  console.log(`Server is running on http://localhost:${port}`);
});
