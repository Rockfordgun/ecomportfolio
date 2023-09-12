<?php
ob_start();
include_once "../include/header.php";
include_once "../include/config.php";

if (isset($_SESSION['username'])) {
  header("location: " . APPURL . "");
}

if (isset($_POST['submit'])) {
  if (empty($_POST['username']) || empty($_POST['email']) || empty($_POST['password'])) {
    echo "<script>alert('One Or More Input Are Empty')</script>";
  } else {
    $username = $_POST['username'];
    $password = password_hash($_POST['password'], PASSWORD_DEFAULT);
    $email = $_POST['email'];

    $insert = $pdo->prepare("INSERT INTO users (username, email, pwd)
    VALUES (:username, :email, :pwd)");

    $insert->execute([
      ":username" => $username,
      ":email" => $email,
      ":pwd" => $password,
    ]);

    header("location: " . APPURL . "");
  }
}

ob_end_flush();
