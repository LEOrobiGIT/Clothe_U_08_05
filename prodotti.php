<link rel="stylesheet" href="../Clothe-u_Finale/css/styleProdottii.css"> 

<?php 

$productMgr = new ProductManager();
$products = $productMgr->getAll();

/*if(!empty($_POST['colore'])){
  foreach($_POST['colore'] as $colore){
    echo "value : ".$colore.'<br/>';
  }
}
if(!empty($_POST['brand'])){
  foreach($_POST['brand'] as $marca){
    echo "value : ".$marca.'<br/>';
  }
}
if(!empty($_POST['slider'])){
  foreach($_POST['slider'] as $prezzo){
    echo "value : ".$prezzo.'<br/>';
  }
}
*/
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
  if (!empty($_POST['colore'])){
    $_SESSION['colore'] = $_POST['colore']; 
  }else{
    $_SESSION['colore'] = [];
  }
  if (!empty($_POST['brand'])){
    $_SESSION['brand'] = $_POST['brand']; 
  }else{
    $_SESSION['brand'] = [];
  }
  if (!empty($_POST['inizio'])){
    $_SESSION['inizio'] = $_POST['inizio']; 
    $_SESSION['fine'] = $_POST['fine'];
  }else{
    $_SESSION['inizio'] = [];
    $_SESSION['inizio'] = [];
  } 
  $_SESSION['slider'] = $_POST['slider'];
}

$colori = [];
$marche = [];
$prezzi= [];

if (isset($_SESSION['colore'])) {
  $colori = $_SESSION['colore'];
}
if (isset($_SESSION['brand'])) {
  $marche = $_SESSION['brand'];
}
if (isset($_SESSION['slider'])) {
  $prezzi = $_SESSION['slider'];
}

if (!empty($_POST['brand']) || !empty($_POST['slider']) || !empty($_POST['colore']))  {
  
  if (!empty($_POST['colore'])){
    $filtro_colori = $_POST['colore']; 
  }else{
    $filtro_colori = [];
  }
  
  $filtro_brand = $_POST['brand'];
  $filtro_prezzo = $_POST['slider'];
  $products = $productMgr->getFiltered($filtro_colori,$filtro_brand,$filtro_prezzo);
}

?> 


<div class ="titolo">Prodotti</div>
<div class= "contenitore"> 
  <div class = "sinistra">
    <div class= "filtri">
      <div class="testo">Filtri</div>

      <form id="scelte" method="post">
      <b>Scelta del prezzo<br></b>
        <div class="slider-prezzo">
          

          <div class="price-content">
            <div>
              <label>Minimo</label>
              <p id="min-value"> <?php echo isset($_SESSION['slider']) ? $prezzi[0] : 10; ?></p>
            </div>
            <div>
              <label>Massimo</label>
              <p id="max-value"> <?php echo isset($_SESSION['slider']) ? $prezzi[1] : 250; ?></p>
            </div>
          </div>

          <div class="range-slider">
            <input type="range" id ="min-price" class="min-price" name ="slider[]" value="<?php echo isset($_SESSION['slider']) ? $prezzi[0] : 10; ?>" min="10" max="250" step="5">
            <input type="range" id ="max-price" class="max-price" name = "slider[]" value="<?php echo isset($_SESSION['slider']) ? $prezzi[1] : 250; ?>" min="10" max="250" step="5" <?php echo $prezzi[1]; ?>>
          </div>
        
        </div>

        <b>Scelta del colore<br></b>
        <div class = "insieme_colori">  
          <input class = "col_check" type="checkbox" name="colore[]" value="Blu" <?php if (in_array('Blu', $colori)) { echo 'checked'; } ?>>Blu<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Rosso" <?php if (in_array('Rosso', $colori)) { echo 'checked'; } ?>>Rosso<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Verde" <?php if (in_array('Verde', $colori)) { echo 'checked'; } ?>>Verde<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Giallo" <?php if (in_array('Giallo', $colori)) { echo 'checked'; } ?>>Giallo<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Arancione" <?php if (in_array('Arancione', $colori)) { echo 'checked'; } ?>>Arancione<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Viola" <?php if (in_array('Viola', $colori)) { echo 'checked'; } ?>>Viola<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Bianco" <?php if (in_array('Bianco', $colori)) { echo 'checked'; } ?>>Bianco<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Nero" <?php if (in_array('Nero', $colori)) { echo 'checked'; } ?>>Nero<br>
          <input class = "col_check" type="checkbox" name="colore[]" value="Rosa" <?php if (in_array('Rosa', $colori)) { echo 'checked'; } ?>>Rosa<br> 
        </div>

        <b>Scelta del Brand<br></b>
        <div class = "insieme_brand">   
          <input class = "col_check" type="checkbox" name="brand[]" value="Nike" <?php if (in_array('Nike', $marche)) { echo 'checked'; } ?>>Nike<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Adidas" <?php if (in_array('Adidas', $marche)) { echo 'checked'; } ?>>Adidas<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="NewBalance" <?php if (in_array('NewBalance', $marche)) { echo 'checked'; } ?>>New Balance<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Reebok" <?php if (in_array('Reebok', $marche)) { echo 'checked'; } ?>>Reebok<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Puma" <?php if (in_array('Puma', $marche)) { echo 'checked'; } ?>>Puma<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Jordan" <?php if (in_array('Jordan', $marche)) { echo 'checked'; } ?>>Jordan<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Converse" <?php if (in_array('Converse', $marche)) { echo 'checked'; } ?>>Converse<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Vans" <?php if (in_array('Vans', $marche)) { echo 'checked'; } ?>>Vans<br>
        </div>

        <b>Periodo del noleggio<br></b>
        <div class = "noleggio">
          <label for="inizio"> Da: </label>
          <input type="date" id="inizio" name="inizio">
          <label for="fine"> A: </label>
          <input type="date" id="fine" name="fine">
          <small [class.d-none] = ""> Inserisci inizio e fine</small>
        </div>

      </form>  
      <script src="../Clothe-u_Finale/js/sliderscript.js"></script>
      <input class = "filtra" type="button" value="Filtra" onclick="submitForms()" />
      <script>
        submitForms = function(){
          document.getElementById("scelte").submit();
          //document.getElementById("scelta_prezzo").submit();
        }
    </script>
    </div>  
  </div>    
  <div class = "destra">
    <div class = "row">
      <?php foreach($products as $product) : ?>
      <div class="card" style="width: 18rem;">
        <a href="<?php echo 'http://localhost/Clothe-u_Finale/?page=view-product.php&id='.$product ->id ?>" ><img src=" <?php echo $product -> foto?>" class="card-img-top" alt="..."></a>
        <div class="card-body">
          <h5 class="card-title"><?php echo $product -> nome?> </h5>
          <p class="card-text"><?php echo $product -> descrizione?></p>
        </div>
        <ul class="list-group list-group-flush">
          <li class="list-group-item"><?php echo $product -> prezzo ?> </li>
          <li class="list-group-item">Rating : <?php echo $product -> rating?></li>
          <li class="list-group-item">Brand :<?php echo $product -> marca?></li>
        </ul>
        <div class="card-body">
          <a href="" class="card-link">Aggiungi al carrello</a>
          <a href="" class="card-link">Aggiungi a whishlist</a>
        </div>
      </div>
      <?php endforeach;?>
    </div>
  </div>
</div>

<script>
  //window.location.href = "<?php echo 'http://localhost/Clothe-u_Finale/?page=prodotti.php'?>";
  window.onpopstate = function () { 
    history.pushState(null, null, 'http://localhost/Clothe-u_Finale/?page=homepage.php');
    history.go(0);
  };
</script>