<?php

$email = '';
$password = '';

/*if($loggedInUser){

    echo '<script>location.href = "'.ROOT_URL.'?page=homepage.php"</script>';

}*/
if (isset($_POST['login'])) {

  $email = $_POST['email'];
  $password = $_POST['password'];

  $userMgr = new UserManager();

  $userObj = $userMgr->login($email, $password);
  $errMsg = '';

  if ($userObj) {
    $_SESSION['user'] = serialize($userObj);
    if (isset($_SESSION['client_id'])) {
      $cartMgr = new CartManager();
      //var_dump($_SESSION); die;
      $cartMgr->mergeCarts();
    }
    echo "<script>location.href='".ROOT_URL."user?page=dashboard';</script>";
    exit;
  } else {
    $errMsg = 'Credenziali non corrette';
  }
}
?>

<h1>Login</h1>

<form method="post" class="mb-4">
  <div class="form-group">
    <label for="email">Email</label>
    <input name="email" id="email" type="text" class="form-control" value="<?php echo $email; ?>">
  </div>
  <div class="form-group">
    <label for="name">Password</label>
    <input name="password" id="password" type="password" class="form-control" value="<?php echo $password; ?>">
  </div>
  <input class="btn btn-primary right" type="submit" value="Login" name="login">
  <a class="underline" href="<?php echo ROOT_URL; ?>?page=register.php">Non hai un account? Registrati</a>
</form>
<div class = "text.danger"><?php echo $errMsg ?> </div>
<button class = "bottone-logout" onclick= " window.location.href='http://localhost/Clothe-u_Finale/?page=logout.php'"> Esci</button>

