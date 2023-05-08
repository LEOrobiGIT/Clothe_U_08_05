<?php

$email = '';
$password = '';
$nome_utente = '';
$nome = '';
$cognome ='';
$indirizzo = '';
$civico = '';
$cap = '';
$telefono = '';

/*if($loggedInUser){

    echo '<script>location.href = "'.ROOT_URL.'?page=homepage.php"</script>';

}*/
if (isset($_POST['register'])) {

  $email = $_POST['email'];
  $password = $_POST['password'];
  $nome_utente = $_POST['nome_utente'];
  $nome = $_POST['nome'];
  $cognome =$_POST['cognome'];
  $indirizzo = $_POST['indirizzo'];
  $civico = $_POST['civico'];
  $cap = $_POST['cap'];
  $telefono = $_POST['telefono'];

  $userMgr = new UserManager();

  $userObj = $userMgr->register($email, $password);
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

<h1>Registrati</h1>

<form method="post" class="mb-4">
  <div class="form-group">
    <label for="email">Email</label>
    <input name="email" id="email" type="text" class="form-control" value="<?php echo $email; ?>">
  </div>
  <div class="form-group">
    <label for="nome_utente">Nome Utente</label>
    <input name="nome_utente" id="nome_utente" type="text" class="form-control" value="<?php echo $nome_utente; ?>">
  </div>
  <div class="form-group">
    <label for="nome">Nome </label>
    <input name="nome" id="nome" type="text" class="form-control" value="<?php echo $nome; ?>">
  </div>
  <div class="form-group">
    <label for="cognome">Cognome </label>
    <input name="cognome" id="cognome" type="text" class="form-control" value="<?php echo $cognome; ?>">
  </div>
  <div class="form-group">
    <label for="indirizzo">Indirizzo </label>
    <input name="indirizzo" id="indirizzo" type="text" class="form-control" value="<?php echo $indirizzo; ?>">
  </div>
  <div class="form-group">
    <label for="civico">Civico </label>
    <input name="civico" id="civico" type="text" class="form-control" value="<?php echo $civico; ?>">
  </div>
  <div class="form-group">
    <label for="cap">CAP </label>
    <input name="cap" id="cap" type="text" class="form-control" value="<?php echo $cap; ?>">
  </div>
  <div class="form-group">
    <label for="telefono">Telefono </label>
    <input name="telefono" id="telefono" type="text" class="form-control" value="<?php echo $telefono; ?>">
  </div>
  <div class="form-group">
    <label for="name">Password</label>
    <input name="password" id="password" type="password" class="form-control" value="<?php echo $password; ?>">
  </div>
  <input class="btn btn-primary right" type="submit" value="Register" name="register">
</form>


