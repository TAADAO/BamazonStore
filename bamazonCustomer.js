var mysql = require ("mysql");
var inquirer = require ("inquirer");

var connection = mysql.createConnection ({
    host: "localhost",
    port: 8000,
    user: "root",
    password: "trebor",
    database: "bamazon_db"
});

connection.connect(function(err) {
if (err) throw err; 

products();
});

function products () {
    connection.query("SELECT * FROM PRODUCTS", function (err,res) {
        if (err) throw err;

        console.log (" ");
        console.log ("-------------Inventory-----------");
        console.log (" ");

        for (var i = 0; i < res.length; i++) {
            console.log ("Item ID: " + res[i].id);
            console.log ("Product: " + res[i].product);
            console.log ("Department: " + res[i].department);
            console.log("Price: " + res[i].price);
            console.log("Quantity Left: " + res[i].quantity);
            console.log (" ");
            console.log (" ");

        }
    });
}