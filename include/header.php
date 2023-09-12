<?php
session_start();
define("APPURL", "http://localhost/ecomportfolio");

include_once 'config.php';

//Projects
$projects = $pdo->query("SELECT * FROM projects WHERE status = 1");
$projects->execute();

$allProjects = $projects->fetchAll(PDO::FETCH_OBJ);

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['update_quantity'])) {
        $item_id = $_POST['item_id'];
        $new_quantity = $_POST['new_quantity'];

        // Update the quantity of the selected item in the cart table.
        $stmt = $pdo->prepare("UPDATE cart SET quantity = ? WHERE id = ?");
        $stmt->execute([$new_quantity, $item_id]);
    } elseif (isset($_POST['remove_item'])) {
        $item_id = $_POST['item_id'];

        // Remove the selected item from the cart table.
        $stmt = $pdo->prepare("DELETE FROM cart WHERE id = ?");
        $stmt->execute([$item_id]);
    }
}

// Retrieve cart items from the database.
$cartItems = $pdo->query("SELECT * FROM cart")->fetchAll(PDO::FETCH_OBJ);

$totalPrice = 0;

?>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/fontawesome.css" />
    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/bootstrap.css" />
    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/owl.theme.default.min.css" />
    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/animate.css" />
    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/carousel.css" />
    <script src="https://www.paypal.com/sdk/js?client-id=AU610SX2ZPQfu-tYDE5J0MTNTkz0kNsn0HPZoVumjzPMva1AndAZJIul8FP_0-SQ44hMcVnaBIrrg-SX&currency=USD"></script> <!-- Set up a container element for the button -->

    <link rel="stylesheet" href="<?php echo APPURL; ?>/css/style.css" />

    <title>ThemePlanet</title>
</head>

<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container-xxl">
            <a href="<?php echo APPURL; ?>" class="navbar-brand">
                <img src="<?php echo APPURL; ?>/img/logostudio.png" alt="" width="225" />
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDropdown">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNavDropdown">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a href="<?php echo APPURL; ?>/index.php" class="nav-link fw-semibold text-success">Home</a>
                    </li>

                    <li class="nav-item">
                        <a href="<?php echo APPURL; ?>/about.php" class="nav-link fw-semibold text-success">About <span class="text-primary"> Me</span></a>
                    </li>



                    <?php if (!isset($_SESSION['username'])) : ?>
                        <div class="dropdown menuDropdown">
                            <button type="button" class="btn fw-semibold text-primary" data-bs-toggle="dropdown" aria-expanded="false" data-bs-auto-close="outside">
                                Login
                            </button>
                            <div class="dropdown-menu dropdown-menu-center  custom-dropdown-menu p-4">
                                <form action="<?php echo APPURL; ?>/auth/login.php" method="post">
                                    <div class="mb-3">
                                        <input type="email" name="email" class="form-control" id="exampleDropdownFormEmail2" placeholder="email@example.com">
                                    </div>
                                    <div class="mb-3">
                                        <input type="password" name="password" class="form-control" id="exampleDropdownFormPassword2" placeholder="Password">
                                    </div>
                                    <div class="mb-3">
                                        <div class="form-check">
                                            <input type="checkbox" class="form-check-input" id="dropdownCheck2">
                                            <label class="form-check-label" for="dropdownCheck2">
                                                Remember me
                                            </label>
                                        </div>
                                    </div>

                                    <div class="d-grid">
                                        <button type="submit" name="submit" class="btn btn-primary text-white fw-bold">Sign in</button>
                                    </div>




                                    <p class="mt-3">Not Signed up? <button type="button" class="btn text-primary fw-bold" data-bs-toggle="modal" data-bs-target="#exampleModal">
                                            Sign Up here
                                        </button></p>
                                    <!-- Button trigger modal -->

                            </div>
                            </form>
                        </div>
                    <?php else : ?>
                        <li class="nav-item dropdown">
                            <a class="nav-link text-secondary fw-bold text-capitalize " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                <?php echo  $_SESSION['username']; ?>
                            </a>
                            <ul class="dropdown-menu">

                        </li>
                        <li><a class="dropdown-item" href="<?php echo APPURL; ?>/auth/logout.php">Log Out</a></li>
                </ul>
                </li>

                <li class="nav-item dropdown me-3">
                    <a class="nav-link text-primary fw-semibold text-success" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        <i class="fa-solid fa-bag-shopping"></i>
                    </a>
                    <ul class="dropdown-menu border-0 p-4" style="width: 425px;">
                        <?php foreach ($cartItems as $cartItem) : ?>
                            <li>
                                <div class="d-flex justify-content-between align-items-center ">
                                    <span style="pointer-events: none; color: #888;"><?php echo $cartItem->name; ?></span>
                                    <span style="pointer-events: none; color: #888;" class="ms-4 me-3 text-primary fw-bold">R<?php echo $cartItem->price; ?></span>
                                    <span>
                                        <form action="<?php echo APPURL; ?>/shopPages/remove_from_cart.php" method="POST">
                                            <input type="hidden" name="product_id" value="<?php echo $cartItem->id; ?>">
                                            <button type="submit" name="remove" class="btn btn-secondary text-white btn-sm">Remove</button>
                                        </form>
                                    </span>
                                </div>
                            </li>

                            <?php
                            // Calculate the product total (price multiplied by quantity) and add it to the total price
                            $productTotal = $cartItem->price * $cartItem->quantity;
                            $totalPrice += $productTotal;
                            ?>

                        <?php endforeach; ?>



                        <div class="mt-4">
                            <hr>
                            <p class="text-primary fw-bold">Total: R<?php echo number_format($totalPrice, 2); ?></p>
                        </div>
                        <div class="d-flex justify-content-between">
                            <li>
                                <a class="dropdown-item bg-primary text-white text-uppercase" href="<?php echo APPURL; ?>/shopPages/cart.php">View Cart</a>
                            </li>

                            <li>
                                <a class="dropdown-item bg-secondary text-white text-uppercase" href="<?php echo APPURL; ?>/shopPages/checkout.php">Checkout</a>
                            </li>
                        </div>

                    </ul>
                </li>

            <?php endif; ?>





            </ul>
            <form class="d-flex ms-2" action="<?php echo APPURL; ?>/include/search.php" method="GET" role="search">
                <input class="form-control me-2" type="text" name="query" placeholder="Search" aria-label="Search" />
                <button class="btn btn-outline-success border-0 " type="submit">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </button>
            </form>
            </div>
        </div>
    </nav>

    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog rounded-0">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="<?php echo APPURL; ?>/auth/register.php" method="POST">
                        <h3 class="mb-3 text-primary">Create An Account</h3>
                        <div class="row">
                            <div class="col-md-12 mt-2">
                                <div class="form-group">
                                    <input type="text" name="username" class="form-control" placeholder="Username">
                                </div>
                            </div>
                            <div class="col-md-12 mt-2">
                                <div class="form-group">
                                    <input type="text" name="email" class="form-control" placeholder="Email">
                                </div>
                            </div>
                            <div class="col-md-12 mt-2">
                                <div class="form-group">
                                    <input type="password" name="password" class="form-control" placeholder="Password">
                                </div>
                            </div>



                            <div class="col-md-12 mt-5">
                                <div class="form-group d-grid">
                                    <input type="submit" name="submit" value="Register" class="btn btn-primary py-3 px-4 text-white rounded-0">
                                </div>
                            </div>
                        </div>
                    </form>
                </div>

            </div>
        </div>
    </div>