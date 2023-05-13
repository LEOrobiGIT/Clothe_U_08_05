<link rel="stylesheet" href="../Clothe-u_Finale/css/styleAcquisto.css">

<?php
$cm = new CartManager();
$cartId = $cm->getCurrentCartId();

$totale_carrello = $cm->getTotaleCarrello($cartId);
$prod_car = $cm->getProdottiCarrello($cartId);

?>




<div class= "contenitore"> 
    <title>Form Pagamento</title> 
    <div class ="contenitore2">
        <div class ="compila">
        <h2>Compila il form per il pagamento</h2>
            <form class ="form" method="post" action=""> 
                <label>Nome:</label> 
                <input type="text" name="nome"><br><br> 
                <label>Cognome:</label> 
                <input type="text" name="cognome"><br><br> 
                <label>Indirizzo:</label> 
                <input type="text" name="indirizzo"><br><br> 
                <label>Civico:</label> 
                <input type="text" name="civico"><br><br> 
                <label>CAP:</label> 
                <input type="text" name="cap"><br><br> 
                <label>Inizio noleggio: </label> 
                <input type="date" name="data_spedizione"><br><br> 
                <label>Fine noleggio: </label> 
                <input type="date" name="data_spedizione"><br><br> 
                <!--<label>Scegli l'opzione di spedizione:</label><br><br> -->
                <div class = "scelta">
                    <input type="radio" name="opzione_spedizione" value="ritira_punto_raccolta">Ritira in un punto di raccolta<br><br> 
                    <input type="radio" name="opzione_spedizione" value="ricevi_casa">Ricevi a casa<br><br> 
                </div>
                
                <input type="submit" value="Paga"> 
            </form> 
        </div>
        <div class="recap">
            <div class = "prodotti">
                <span class="titolo">Il tuo Carrello </span>
                <span class="quantita"><span class ="badge bg-black rounded-pill"><?php echo $totale_carrello['numero_p'] ?></span></span>
                </h4>
                <ul class="gruppo">
                    <?php foreach($prod_car as $item) :?>
                    <li class="nelcarrello">
                        <div class="nomep">
                            <?php echo $item['nome'] ?>
                        </div>
                        <div class = "taglia">
                            <?php echo "Taglia: ".$item['taglia'] ?>
                        </div>
                        <span class="prezzo">  
                            <?php echo "$". $item['prezzo'] ?>
                        </span>
                        <div class = "colore">
                            <?php echo "".$item['colore'] ?>
                        </div>
                    </li>
                    <?php endforeach; ?>
                </ul>
                <div class = "totale">
                    <div class = "tot">
                        Totale (USD)
                    </div>
                    <div class = "costo" >
                        <sp><strong><?php echo "$".$totale_carrello['costo_totale'] ?></strong></sp>
                    </div>
                </div>
            </div>
            <div class = "costi">

            </div>

        </div>
    </div>
</div>

