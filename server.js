const express = require("express");
const app = express();
const mysql = require("mysql2");
const port = 4000;
const { readMatchjson, dropCreate } = require("./match.js");

const connection = mysql.createConnection({
  host: "127.0.0.1",
  user: "mkim225",
  password: "8bg5f4fz",
  database: "tftSqlDatabase",
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
// Start the Express server
app.listen(port, () => {
  dropCreate();
  readMatchjson();
  console.log(`Server is running on http://localhost:${port}`);
});
