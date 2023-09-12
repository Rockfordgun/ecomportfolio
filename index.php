<?php
include_once './include/header.php';
include_once "./include/config.php";

//Projects
$projects = $pdo->query("SELECT * FROM projects WHERE status = 1");
$projects->execute();

$allProjects = $projects->fetchAll(PDO::FETCH_OBJ);






?>



<section class="home-slider owl-carousel">
  <div class="slider-item" style="background-image: url(./img/bannerdonut.jpg)">
    <div class="container">
      <div class="row py-5">
        <div class="col text-center">
          <img src="./img/donut/Donut logo.png" alt="" srcset="" class="dLogo" />
          <p class="fs-1 fw-bold">
            Donut Shop. "Delicious Donuts, Baked with
          </p>
          <p class="hero_text">
            <span class="hero1">Code Magic</span> in
            <span class="hero2">PHP!</span>
          </p>

        </div>
      </div>
    </div>
  </div>

  <div class="slider-item" style="background-image: url(./img/bannerecom.jpg)">
    <div class="container">
      <div class="row py-5">
        <div class="col-lg-6">
          <img src="./img/ecom/Royal Logo.svg" alt="" srcset="" class="dLogo" />
          <p class="fs-1 fw-bold text-white">
            "Shop the Future:
          </p>
          <p class="hero_text text-white">
            <span class="hero1 ">Unleash the Power of JavaScript </span> in our <br>
            <span class="hero2 ">Online Store!</span>
          </p>

        </div>
      </div>
    </div>
  </div>

  <div class="slider-item" style="background-image: url(./img/bannerHotel.jpg)">
    <div class="container">
      <div class="row d-flex justfify-content-end align-items-center py-5" style="height: 700px;">
        <div class="col-lg-6"></div>
        <div class="col-lg-6 ">
          <img src="./img/hotelapp/PE Logo.png" alt="" srcset="" class=" dLogo " />
          <p class="fs-1 fw-bold text-white">
            Seamless Hotel Bookings
          </p>
          <p class="hero_text">
            <span class="hero1">with</span>
            <span class="hero2">PHP!</span>
          </p>

        </div>

      </div>
    </div>
  </div>
</section>

<section class="logoContainer bg-secondary bg-opacity-25 py-5">


  <div id="owl-example" class="owl-carousel">
    <div class="col-lg-5">
      <img src="./img/icons/BootstrapLogo.svg" alt="" srcset="" / class="langimg img-fluid">
    </div>
    <div class="col-lg-5">
      <img src="./img/icons/css3.svg" alt="" srcset="" / class="langimg
              img-fluid">
    </div>
    <div class="col-lg-5">
      <img src="./img/icons/html-5-logo-svgrepo-com.svg" alt="" srcset="" / class="langimg img-fluid ">
    </div>
    <div class="col-lg-5">
      <img src="./img/icons/Javascriptlogo.svg" alt="" srcset="" / class="langimg img-fluid">
    </div>
    <div class="col-lg-5">
      <img src="./img/icons/mysql-official.svg" alt="" srcset="" / class="langimg img-fluid">
    </div>
    <div class="col-lg-5">
      <img src="./img/icons/php.svg" alt="" srcset="" / class="langimg
              img-fluid ms-auto">
    </div>


  </div>


</section>


<section class="productsMain">
  <div class="container-fluid">
    <div class="row">

      <?php foreach ($allProjects as $projects) : ?>
        <div class="col-lg-3 " style="padding: 0">
          <div class="card custom-card border-0 " style="height: 710; width: 100%">
            <a href="<?php echo APPURL; ?>/shopPages/singleProduct.php?id=<?php echo $projects->id; ?>" class="stretched-link"></a>
            <img src="<?php echo APPURL; ?>/img/<?php echo $projects->banner; ?>" class="card-img-top" alt="..." />

          </div>
        </div>
      <?php endforeach ?>


    </div>

  </div>
</section>

<section class="bootstrap_banner">
  <div style="background-image: url(./img/bootstrapBanner.jpg)">
    <div class="container">
      <div class="row d-flex justfify-content-end align-items-center py-5" style="height: 750px;">
        <div class="col-lg-6 text-center">
          <img src="./img/icons/bootstrap-logo-vector.svg" alt="" srcset="" class="w-75" />
          <h1 class="display-7 fw-bold text-uppercase">
            from
          </h1>
          <p class="hero_text">
            <span class="hero1">ZERO</span> to
            <span class="hero2">SASS</span>
          </p>

        </div>
      </div>
    </div>
  </div>
</section>

<section>
  <div id="owl-graphicsBanner" class="owl-carousel owl-theme">
    <div class="item">
      <img src="./img/design/carecom.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/vector Shoe.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/s81card.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/Diamond Brochure.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/email signature.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/hermes.jpg" alt="" srcset="" />
    </div>
    <div class="item">
      <img src="./img/design/syncronaughts.jpg" alt="" srcset="" />
    </div>
  </div>
</section>


<?php
include_once './include/footer.php';
?>