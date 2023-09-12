<?php
// Include necessary files and configure your database connection (already done in your code).
include_once '../include/header.php';
include_once '../include/config.php';

// Retrieve cart items from the database.
$cartItems = $pdo->query("SELECT * FROM cart")->fetchAll(PDO::FETCH_OBJ);
$totalPrice = 0;

$paymentSuccessful = true; // Replace with your actual payment check

if ($paymentSuccessful) {
    // Clear the cart data (e.g., delete records from the cart table).
    $pdo->exec("DELETE FROM cart"); // Example: Delete all records from the 'cart' table
}
?>

<!-- Cart page HTML -->
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- ... Your head section ... -->
</head>

<body>

    <div class="container">
        <section id="breadcrumbHeader" class="container-xxl">
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.htm">Home</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Cart</li>
                </ol>
            </nav>

        </section>
        <div class="row">
            <table class="table">

                <thead class="table-primary">
                    <tr>

                        <th scope="col ">Name</th>
                        <th scope="col ">Quantity</th>
                        <th scope="col ">Price</th>
                        <th scope="col ">Remove</th>
                    </tr>
                </thead>
                <?php foreach ($cartItems as $cartItem) : ?>
                    <tbody>
                        <tr>

                            <td><?php echo $cartItem->name; ?></td>
                            <td><?php echo $cartItem->quantity; ?></td>
                            <td><?php echo $cartItem->price; ?></td>
                            <td>
                                <form action="<?php echo APPURL; ?>/shopPages/remove_from_cart.php" method="POST">
                                    <input type="hidden" name="product_id" value="<?php echo $cartItem->id; ?>">
                                    <button type="submit" name="remove" class="btn btn-secondary text-white btn-sm">Remove</button>
                                </form>
                            </td>



                        </tr>
                        <?php
                        // Calculate the product total (price multiplied by quantity) and add it to the total price
                        $productTotal = $cartItem->price * $cartItem->quantity;
                        $totalPrice += $productTotal;
                        ?>
                    </tbody>
                <?php endforeach; ?>
                <thead class="table-secondary">
                    <tr>
                        <th scope="col">Total</th>
                        <th scope="col"></th>
                        <th scope="col"></th>
                        <th scope="col"></th>

                    </tr>
                </thead>

                <tr>

                    <td colspan="2"></td>
                    <td>R<?php echo number_format($totalPrice, 2); ?></td>
                    <td>
                        <div id="paypal-button-container"></div>
                    </td>
                </tr>

            </table>


        </div>
    </div>
    <script>
        document.addEventListener('DOMContentLoaded', function() {
            // Render the PayPal button
            paypal.Buttons({
                createOrder: function(data, actions) {
                    return actions.order.create({
                        purchase_units: [{
                            amount: {
                                currency_code: 'USD', // Change to your currency code
                                value: <?php echo $totalPrice; ?>, // Use the total price from PHP
                            },
                        }, ],
                    });
                },
                onApprove: function(data, actions) {
                    return actions.order.capture().then(function(details) {
                        // Handle a successful payment (e.g., redirect to a thank you page)
                        window.location.href = 'your-thank-you-page.php';
                    });
                },
            }).render('#paypal-button-container');
        })
    </script>



</body>

</html>