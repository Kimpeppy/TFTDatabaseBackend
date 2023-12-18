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
    var tempClass = new Array(13);

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

app.get("/api/select/showGbyP", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const pID = req.query.pID;
    const place = req.query.place;
    var tempPlace = new Array(8);

    for (i = 0; i < 8; i++) {
      if (i > place.length - 1) {
        tempPlace[i] = 0;
      } else {
        tempPlace[i] = place[i]
      }
    }
    
    const query = "CALL showGbyP(?, ?, ?, ?, ?, ?, ?, ?, ?);"
    // Execute the query
    connection.query(query, [pID, tempPlace[0], tempPlace[1], tempPlace[2], tempPlace[3], tempPlace[4], tempPlace[5], tempPlace[6], tempPlace[7]], (queryError, results) => {
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

app.get("/api/select/showGbyC", (req, res) => {
  // Connect to MySQL
  connection.connect((err) => {
    if (err) {
      console.error("Error connecting to MySQL:", err);
      res.status(500).json({ error: "Internal Server Error" });
      return;
    }

    const pID = req.query.pID;
    const champion = req.query.champion;
    var tempChampion = new Array(60);

    for (i = 0; i < 60; i++) {
      if (i > champion.length - 1) {
        tempChampion[i] = 0;
      } else {
        tempChampion[i] = champion[i]
      }
    }
    
    const query = "CALL showGbyC(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?);"
    // Execute the query
    connection.query(query, [pID, tempChampion[0], tempChampion[1], tempChampion[2], tempChampion[3], tempChampion[4], tempChampion[5], tempChampion[6], tempChampion[7], tempChampion[8], tempChampion[9],
      tempChampion[10], tempChampion[11], tempChampion[12], tempChampion[13], tempChampion[14], tempChampion[15], tempChampion[16], tempChampion[17], tempChampion[18], tempChampion[19],
      tempChampion[20], tempChampion[21], tempChampion[22], tempChampion[23], tempChampion[24], tempChampion[25], tempChampion[26], tempChampion[27], tempChampion[28], tempChampion[29],
      tempChampion[30], tempChampion[31], tempChampion[32], tempChampion[33], tempChampion[34], tempChampion[35], tempChampion[36], tempChampion[37], tempChampion[38], tempChampion[39],
      tempChampion[40], tempChampion[41], tempChampion[42], tempChampion[43], tempChampion[44], tempChampion[45], tempChampion[46], tempChampion[47], tempChampion[48], tempChampion[49],
      tempChampion[50], tempChampion[51], tempChampion[52], tempChampion[53], tempChampion[54], tempChampion[55], tempChampion[56], tempChampion[57], tempChampion[58], tempChampion[59]], (queryError, results) => {
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
