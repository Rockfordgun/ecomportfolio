<?php

include_once '../include/header.php';
include_once '../include/config.php';

?>

<div class="container">
    <!-- Replace "test" with your own sandbox Business account app client ID -->
    <script src="https://www.paypal.com/sdk/js?client-id=AU610SX2ZPQfu-tYDE5J0MTNTkz0kNsn0HPZoVumjzPMva1AndAZJIul8FP_0-SQ44hMcVnaBIrrg-SX&currency=USD"></script> <!-- Set up a container element for the button -->
    <div id="paypal-button-container"></div>
    <script>
        paypal.Buttons({
            // Sets up the transaction when a payment button is clicked
            createOrder: (data, actions) => {
                return actions.order.create({
                    purchase_units: [{
                        amount: {
                            value: '300' // Can also reference a variable or function
                        }
                    }]
                });
            },
            // Finalize the transaction after payer approval
            onApprove: (data, actions) => {
                return actions.order.capture().then(function(orderData) {

                    window.location.href = 'index.php';
                });
            }
        }).render('#paypal-button-container');
    </script>

</div>
</div>
</div>


<body>

    </html>

    </div>
    </div>



    <?php
    include_once "../include/footer.php";
    ?>