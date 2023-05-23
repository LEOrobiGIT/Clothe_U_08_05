<?php

$email = '';
$password = '';
$errMsg = False;
var_dump( $_SESSION );
/*if($loggedInUser){

    echo '<script>location.href = "'.ROOT_URL.'?page=homepage.php"</script>';

}*/
if (isset($_POST['login'])) {

  $email = $_POST['email'];
  $password = $_POST['password'];
  $encr_password = md5($password);
  $userMgr = new UserManager();
  echo $encr_password;
  
  $userObj = $userMgr->login($email, $encr_password);
  

  if ($userObj) {
    if (isset($_SESSION['client_id'])) {
      $cartMgr = new CartManager();
      //var_dump($_SESSION); die;
      $cartMgr->mergeCarts();
    }
    echo "<script>location.href='".ROOT_URL."?page=profilo.php';</script>";
    exit;
  } else {
    $errMsg = True;
  
  }
}
?>

<h1>Login</h1>

<form method="post" class="mb-4">
  <div class="form-group">
    <label for="email">Email</label>
    <input name="email" id="email" type="email" class="form-control" value="<?php echo $email; ?>">
  </div>
  <div class="form-group">
    <label for="name">Password</label>
    <input name="password" id="password" type="password" class="form-control" value="<?php echo $password; ?>">
  </div>
  <?php 
    if($errMsg) { 
      echo "Credenziali non corrette !!!"; 
    }
  ?>
  <input class="btn btn-primary right" type="submit" value="Login" name="login">
  <a class="underline" href="<?php echo ROOT_URL; ?>?page=register.php">Non hai un account? Registrati</a>
</form>

<button class = "bottone-logout" onclick= " window.location.href='http://localhost/Clothe-u_Finale/?page=logout.php'"> Esci</button>

