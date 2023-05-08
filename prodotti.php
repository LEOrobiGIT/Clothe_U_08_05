

<?php 

$productMgr = new ProductManager();
$products = $productMgr->getAll();

?>      

<div class = "row">
  <?php foreach($products as $product) : ?>

<div class="card" style="width: 18rem;">
  <img src=" <?php echo $product -> foto?>" class="card-img-top" alt="...">
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
    <a href="<?php echo 'http://localhost/Clothe-u_Finale/?page=view-product.php&id='.$product ->id ?>" class="card-link">Card link</a>
    <a href="" class="card-link">Another link</a>
  </div>
</div>

    <?php endforeach;?>
</div>


