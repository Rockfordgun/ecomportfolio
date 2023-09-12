<?php


include_once '../include/header.php';
include_once '../include/config.php';


if (isset($_GET['id'])) {
  $id = $_GET['id'];
  $projects = $pdo->query("SELECT * FROM projects WHERE status = 1 AND id = '$id'");
  $projects->execute();

  $singleProject = $projects->fetch(PDO::FETCH_OBJ);

  $projectId = $singleProject->id;

  $_SESSION['price'] = $singleProject->price;


  if (isset($_POST['add_to_cart'])) {
    $product_name = $singleProject->name;
    $product_price = $singleProject->price;
    $payment = $singleProject->price;

    // Insert the selected product into the cart table.
    $stmt = $pdo->prepare("INSERT INTO cart (name, quantity, price) VALUES (?, 1, ?)");
    $stmt->execute([$product_name, $product_price]);

    // Redirect to the cart page or show a success message.

    echo '<script>window.location.href = "' . APPURL . '/shopPages/cart.php";</script>';
    exit();
  }
}

?>



<section id="breadcrumbHeader" class="container-xxl">
  <nav aria-label="breadcrumb">
    <ol class="breadcrumb">
      <li class="breadcrumb-item"><a href="<?php echo APPURL; ?>">Home</a></li>
      <li class="breadcrumb-item active" aria-current="page"><?php echo $singleProject->breadcrumb; ?></li>
    </ol>
  </nav>
  <h3 class="text-success fw-bold">
    <?php echo $singleProject->name; ?>
  </h3>
</section>

<section id="mainContent">
  <div class="container-xxl">
    <div class="row my-5">
      <div class="col-lg-8 text-center bg-success py-5 px-5 bg-opacity-25">
        <img src="<?php echo APPURL; ?>/img/<?php echo $singleProject->imageBanner; ?>" alt="" srcset="" / class="w-100 mb-3">
        <div id="owl-graphicsBanner" class="owl-carousel owl-theme">
          <div class="item">
            <img src="<?php echo APPURL; ?>/img/<?php echo $singleProject->carouselImage1; ?>" alt="" srcset="" />
          </div>
          <div class="item">
            <img src="<?php echo APPURL; ?>/img/<?php echo $singleProject->carouselImage2; ?>" alt="" srcset="" />
          </div>
          <div class="item">
            <img src="<?php echo APPURL; ?>/img/<?php echo $singleProject->carouselImage3; ?>" alt="" srcset="" />
          </div>
          <div class="item">
            <img src="<?php echo APPURL; ?>/img/<?php echo $singleProject->carouselImage4; ?>" alt="" srcset="" />
          </div>
        </div>

        <a href="<?php echo $singleProject->livelink; ?>">
          <button class="btn btn-secondary text-uppercase text-white px-4 my-5 fw-bold rounded-0" type="submit">
            Live preview
          </button>
        </a>

        <h3 class="text-primary fw-bold"><?php echo $singleProject->title; ?></h3>
        <p>
          <?php echo $singleProject->description; ?>
        </p>
      </div>
      <div class="col-lg-4 px-5">
        <div>
          <table class="table">
            <tbody>
              <tr>
                <td>Date Uploaded</td>
                <td><?php echo $singleProject->created_at; ?></td>
              </tr>
              <tr>
                <td>Compatible Browsers</td>
                <td>
                  <?php echo $singleProject->compatibility; ?>
                </td>
              </tr>
              <tr>
                <td>Version</td>
                <td> <?php echo $singleProject->version; ?></td>
              </tr>
              <tr>
                <td>Files Included</td>
                <td><?php echo $singleProject->files; ?></td>
              </tr>
              <tr>
                <td>Languages Used</td>
                <td><?php echo $singleProject->language; ?></td>
              </tr>
              <tr>
                <td>Readme</td>
                <td><?php echo $singleProject->readme; ?></td>
              </tr>
              <tr>
                <td>Layout</td>
                <td><?php echo $singleProject->layout; ?></td>
              </tr>
            </tbody>
          </table>
        </div>
        <div class="my-6">
          <table class="table">
            <tbody>
              <tr>
                <td>BUY NOW</td>
                <td>
                  <h4 class="text-primary fw-bold">R<?php echo $singleProject->price; ?></h4>
                </td>
              </tr>
            </tbody>
          </table>
          <form method="post">
            <div class="d-grid">
              <button class="btn btn-secondary text-uppercase text-white px-4 my-5 fw-bold rounded-0" type="submit" name="add_to_cart">
                Add to Cart
              </button>
            </div>
          </form>
        </div>

        <div>
          <div class="headerTop d-flex justify-content-between my-4">
            <h5 class="text-success text-uppercase fw-bold">
              About the author
            </h5>
            <img src="../img/logostudio.png" alt="" srcset="" class="w-25" />
          </div>
          <p>
            The author is a creative individual with a profound passion for
            graphic design. They embarked on a dynamic career journey,
            gaining experience in graphic design roles for a car magazine
            and a medical company. An adventurous foray into freelancing at
            a signage company had its challenges, leading them back to call
            centers briefly. Eventually, they transitioned into the
            electrical field but continued to nurture their creative side by
            exploring web development. This fusion of skills helped them
            evolve into a more versatile full-stack developer, determined to
            blend their graphic design expertise with web development for a
            promising future.
          </p>

          <div class="d-grid">
            <button class="btn btn-primary text-uppercase text-white px-4 my-5 fw-bold rounded-0" type="submit">
              more on this author
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<?php
include '../include/footer.php';


?>