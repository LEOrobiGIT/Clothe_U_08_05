<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<?php 
    //crea variabili per informazioni sul prodotto e aggiunta al carrello
    if (isset($_POST['aggiungi_al_c'])){
        $productId = $_POST['id'];
        $size = $_POST['taglia'];
        $cm = new CartManager();
        $cartId = $cm->getCurrentCartId();
        $cm ->addtoCart($cartId,$productId,$size);
    }
    // crea variabile prodotto su id
    $id = trim($_GET['id']);
    $pm = new ProductManager();
    $product = $pm->get($id);
    if (!(property_exists($product,'id'))){
        echo "<script>location.href = '".ROOT_URL."';</script>";
        exit;
    }
    
?>

<?php if(isset($_GET['taglia']) ){
    $taglia = $_GET['taglia'];
    echo "
    <style>
        #".$taglia."{
            border: rgb(85, 39, 39) solid 2px;
            background-color: rgb(255, 255, 255);
            border-radius: 10px;
            margin-top: 5px;
            margin-left: 7px;
            background-color: rgb(155, 77, 77);
            color: white;
            width: 80px;
        }
    </style>
    ";} 
?>
<link rel="stylesheet" href="../Clothe-u_Finale/css/stylePaginaProdotto.css">
<section class="sproduct">
    <div class = "sinistra">
        <div class="immagine">
            <img src="<?php echo $product->foto?>" id="MainImg" alt="">
        </div>
        <div class="small-img-group">
            <div class="small-img">
                <img src="../images/nike1.webp" onclick="showImg(this.src)" class = "small-img" alt="">
            </div>
            <div class="small-img">
                <img src="../images/nike2.webp" onclick="showImg(this.src)" class = "small-img" alt="">
            </div>
            <div class="small-img">
                <img src="../images/nike3.webp" onclick="showImg(this.src)" class = "small-img" alt="">
            </div>
        </div>
    </div>
    <div class = "right">
        <div class="indirizzo" >Home > Prodotti > <?php echo $product->categoria?></div>
        <div class = "nomep"> <?php echo $product->nome?> </div> 
        <div class = "marca"> <?php echo $product->marca?> </div>  
        <div class="rating">
            <i class="fa fa-star fa-2xs" ></i>
            <i class="fa fa-star fa-2xs" ></i>
            <i class="fa fa-star fa-2xs" ></i>
            <i class="fa fa-star fa-2xs" ></i>
            <i class="fa fa-star fa-2xs" ></i>
        </div> 
        <div class="dettagli">Dettagli prodotto:</div>
        <div class="descrizione"> <d><?php echo $product->descrizione?></d></div>
        <div class="prezzo"> $ <?php echo $product->prezzo?> </div>  
        <div class="container">
            <n>Taglia:</n>
            <div class = "taglia" >  
                <button id = "b38" value = "38" class = "numeroscarpa" onclick="aggiorna(this.id)">38'</button>
                <button id = "b39" value = "39" class = "numeroscarpa" onclick="aggiorna(this.id)">39'</button>
                <button id = "b40" value = "40" class = "numeroscarpa" onclick="aggiorna(this.id)">40'</button>
                <button id = "b41" value = "41" class = "numeroscarpa" onclick="aggiorna(this.id)">41'</button>
                <button id = "b42" value = "42" class = "numeroscarpa" onclick="aggiorna(this.id)">42'</button>
                <button id = "b43" value = "43" class = "numeroscarpa" onclick="aggiorna(this.id)">43'</button>
                <button id = "b44" value = "44" class = "numeroscarpa" onclick="aggiorna(this.id)">44'</button>
                <button id = "b45" value = "45" class = "numeroscarpa" onclick="aggiorna(this.id)">45'</button>
            </div>
        </div>
        
        <!--<div class = "quantita">
            <n> Quantità:</n>
            <input name = "quan" type="number" value = "1">
        </div>-->
        <div class="btnshopping">
            <button class = "btnwish">Whishlist</button>
            <form method = "post"> 
                <input name ="id" type = "hidden" value ="<?php echo $product->id?>">
                <input name ="taglia" id = "formtaglia" type = "hidden" >
                <!--<input name ="id" type = "hidden" value ="<?php echo $product->id?>">
                <input name ="taglia" id = "38" type = "radio" value="38" >
                <label for = "38"> 38'</label><br>
                <input name ="taglia" id = "39" type = "radio" value="39" >
                <label for = "39"> 39'</label><br>
                <input name ="taglia" id = "40" type = "radio" value="40" >
                <label for = "40"> 40'</label><br>
                <input name ="taglia" id = "41" type = "radio" value="41" >
                <label for = "41"> 41'</label><br>
                <input name ="taglia" id = "42" type = "radio" value="42" >
                <label for = "42"> 42'</label><br>
                <input name ="taglia" id = "43" type = "radio" value="43" >
                <label for = "43"> 43'</label><br>-->
                <!--<input name ="quantita" class ="quantita" type = "number" value ="1">-->
                <input name = "aggiungi_al_c"type  ="submit" class = "btncarrello" value ="Aggiungi al carrello">
            </form>
            <script>

                function getParametroDaUrl(nomeParametro) {
                var url = new URL(window.location.href);
                var valore = url.searchParams.get(nomeParametro);
                return valore;
                }

                var id = getParametroDaUrl("taglia");
                let bottone = document.getElementById(id);
                let valore = bottone.value;
                let inputForm = document.getElementById("formtaglia");
                inputForm.setAttribute("value", valore);
            </script>
            
        </div>
    </div>
                
</section>


<section>
        <h1 class="heading">Prodotti simili</h1>
        <div class="box-container"> <!-- box container delle nostre scarpe-->
                <!-- inserisco il primo modello di scarpe-->
            <div class="row">
                <div class="image">
                    <img src="../images/nike1.webp">
                </div>
                <div class="content">
                    <div class="icons">
                        <a href="#" class="fas fa-heart"></a>
                        <a href="#" class="cart-btn">Aggiungi al carrello</a>
                        <a href="#" class="fas fa-share"></a>
                    </div>
                    Nike Dunk 
                    <div class="rating"> 
                        <i class="fa fa-star fa-2xs" ></i>
                        <i class="fa fa-star fa-2xs" ></i>
                        <i class="fa fa-star fa-2xs" ></i>
                        <i class="fa fa-star fa-2xs" ></i>
                        <i class="fa fa-star fa-2xs" ></i>
                    </div>
                <div class="price"> $12.99 / $15.99</div>
            </div>
        </div>
        <div class="row">
            <div class="image">
                <img src="../images/nike1.webp">
            </div>
                    <div class="content">
                        <div class="icons">
                            <a href="#" class="fas fa-heart"></a>
                            <a href="#" class="cart-btn">Aggiungi al carrello</a>
                            <a href="#" class="fas fa-share"></a>
                        </div>
                        Nike Dunk 
                        <div class="rating"> 
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                        </div>
                        <div class="price"> $12.99 / $15.99</div>
                    </div>
                </div>
                <div class="row">
                    <div class="image">
                        <img src="../images/nike1.webp">
                    </div>
                    <div class="content">
                        <div class="icons">
                            <a href="#" class="fas fa-heart"></a>
                            <a href="#" class="cart-btn">Aggiungi al carrello</a>
                            <a href="#" class="fas fa-share"></a>
                        </div>
                        Nike Dunk 
                        <div class="rating"> 
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                            <i class="fa fa-star fa-2xs" ></i>
                        </div>
                        <div class="price"> $12.99 / $15.99</div>
                    </div>
                </div>
                
            </div>
            

        </section>

<!----------inizio script---------------------------->

        <script>
            let immagine = document.querySelector('.immagine img');
            function showImg(pic){
                immagine.src = pic;
            }
        </script>
        <!--<script>
                $(document).ready(function(){
                    $('#38,#39,#40,#41,#42,#43,#44').click(function(){
                        $('#38,#39,#40,#41,#42,#43,#44').removeClass('numeroattivo');
                        $('#38,#39,#40,#41,#42,#43,#44').addClass('numero');
                        $(this).removeClass('numero');
                        $(this).addClass('numeroattivo');
                    });
                });      
        </script>-->
        <script> 
        
        function aggiorna(id_p) { 
            var button = document.getElementById(id_p);
            
            window.location.href = "<?php echo 'http://localhost/Clothe-u_Finale/?page=view-product.php&id='.$product ->id ?>" + "&taglia=" +button.id;
        }
        </script>
        
        