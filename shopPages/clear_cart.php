<?php
// Include necessary files and configure your database connection.
include_once '../include/config.php';

// Clear the cart data (e.g., delete records from the cart table).
$pdo->exec("DELETE FROM cart"); // Example: Delete all records from the 'cart' table
