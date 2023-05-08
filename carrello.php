<?php

$cm = new CartManager();
$cartId = $cm->getCurrentCartId();

if (isset($_POST['meno'])){
  $productId = $_POST['id'];
  $size = $_POST['taglia'];
  $cm ->removefromCart($cartId,$productId,$size);
}
if(isset($_POST['piu'])){
  $productId = $_POST['id'];
  $size = $_POST['taglia'];
  $cm ->addtoCart($cartId,$productId,$size);
}

$totale_carrello = $cm->getTotaleCarrello($cartId);
$prod_car = $cm->getPrdottiCarrello($cartId);

?>


<link rel="stylesheet" href="../Clothe-u_Finale/css/styleCarrllo.css">
<div class="contenitore">
    <div class="sinistra" > 
        <?php if(count($prod_car) > 0) : ?>
        <h4 class="intestazione">
          <span class="titolo">Il tuo Carrello </span>
          <span class="quantita"><span class ="badge bg-black rounded-pill"><?php echo $totale_carrello['numero_p'] ?></span></span>
        </h4>
        <!--<div class ="categorie">
           <i class = "nomep"> Nome del prodotto</i> 
           <i class = "quan"> Quantità </i>
           <i class = "Costo"> Costo </i>
        </div>-->
        
        <ul class="gruppo">
          <?php foreach($prod_car as $item) :?>
            <li class="dacomprare">
              <div class ="immagine">
                <img src="<?php echo $item['foto'] ?>" alt="">
              </div>
              <div>
                <h6 class="nomep"><?php echo $item['nome'] ?></h6>
              </div>
              <div class = "taglia">
                <?php echo "Taglia:".$item['taglia'] ?>
              </div>
              <form method = "post">
                <div class ="btn-group" role = "group"> Quantità
                    <input type="hidden" name = "taglia" value = "<?php echo $item['taglia']?> "/>
                    <button name = "meno" type="submit" class="bmeno">-</button>
                    <span type="text-muted" class="bq"> <?php echo $item['quantita'] ?>  </span>
                    <button name ="piu" type="submit" class="bpiu">+</button>
                    <input type="hidden" name = "id" value="<?php echo $item['id'] ?>" />
                </div>
              </form>
              <span class="prezzo">  <?php echo "$". $item['prezzo'] ?></span>
            </li>
          <?php endforeach; ?>
        </ul>
        <div class="totale">
            <sp>Total (USD)</sp>
            <sp><strong><?php echo $totale_carrello['costo_totale'] ?></strong></sp>
        </div>
    </div>   
    <div class ="destra"> 
       <button class="acq">Procedi con l'acquisto.</button>
       <div class="accediacq"><a href="">Accedi</a> per acquistare.</div>
       <div class ="regacq"><a href = "">Registrati</a> se non hai un account.</div> 
    </div> 
    <?php else: ?>
      <p class = "lead"> Nessun elemento nel carrello.</p>
    <?php endif;?>   
</div>
      