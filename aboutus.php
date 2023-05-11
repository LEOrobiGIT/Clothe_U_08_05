<form  id ="scelta_brand" method="post"> 
          <input class = "col_check" type="checkbox" name="brand[]" value="Nike">Nike<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Adidas">Adidas<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="NewBalance">New Balance<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Reebok">Reebok<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Puma">Puma<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Jordan">Jordan<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Converse">Converse<br>
          <input class = "col_check" type="checkbox" name="brand[]" value="Vans">Vans<br>
</form>

<input type="button" value="Filtra" onclick="submitForms()" />
      <script>
        submitForms = function(){
            
            document.getElementById("scelta_brand").submit();
            
        }
      </script>

<?php if(!empty($_POST['brand'])){

        if(!empty($_POST['brand'])) {    
            foreach($_POST['brand'] as $value){
                echo "value : ".$value.'<br/>';
            }
        }

} ?>
