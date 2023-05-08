<?php
$cm = new CartManager();
$cartId = $cm->getCurrentCartId();
$totale_carrello = $cm->getTotaleCarrello($cartId);
?>


<div class = "container">
        <footer >
            <hr><p > Copyright &copy; 2019 </p>
        </footer>
</div>
<script src = "./js/main.js"></script>
<script>
    $(document).ready(function(){
        $('.js-prodottitotali').html('<?php echo $totale_carrello['numero_p'] ?>');
    });
</script>
</body>
</html>