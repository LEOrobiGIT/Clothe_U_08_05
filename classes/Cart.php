<?php
class CartManager extends DBManager{

    public $clientId;
    
    public function __construct(){
        parent::__construct();
        $this->columns = array( 'id_carrello', 'utente' );
        $this->tableName = 'carrello';
        $this -> _initializeClientIdFromSession();
      }

    //ritorna il totale dei pezzi nel carrello e il loro costo
    public function getTotaleCarrello($cartId){
        $result = $this->db->query("
        SELECT SUM(c.quantita) AS numero_p, SUM(p.prezzo * c.quantita) AS costo_totale
        FROM prodotti p JOIN prod_carrello c ON p.id = c.id_prodotto
        WHERE c.id_carrello = $cartId;
        ");
        return $result[0];
    }

    //ritorna l'insieme dei prodotti del carrello speicificato
    public function getPrdottiCarrello($cartId){
        return $this->db->query("
        SELECT prodotti.nome, prodotti.foto, prod_carrello.taglia, prodotti.prezzo, prod_carrello.quantita,prodotti.id
        FROM prodotti INNER JOIN prod_carrello ON prodotti.id = prod_carrello.id_prodotto
        WHERE prod_carrello.id_carrello = $cartId;
        ");
    }

    //aggiunge un prodotto al carrello
    public function addtoCart($cartId,$productId,$size){
        $quantita = 0;
        $result = $this -> db->query("SELECT quantita FROM prod_carrello WHERE id_carrello = $cartId AND id_prodotto = $productId AND taglia = $size");
        if (count($result) >0){
            $quantita = $result[0]['quantita'];
        }
        $quantita = $quantita + 1;
        if (count($result) >0){
            $this -> db->execute("UPDATE prod_carrello SET quantita = $quantita WHERE id_carrello = $cartId AND id_prodotto = $productId AND taglia = $size ");
        } else{
            $cartItemManager = new CartItemManager();
            $newId = $cartItemManager -> create([
                'id_carrello' =>$cartId,
                'id_prodotto' =>$productId,
                'taglia' => $size,
                'quantita'=>$quantita
            ]);
        }
        
    }

    public function removefromCart($cartId,$productId,$size){
        $quantita = 0;
        $result = $this -> db->query("SELECT quantita,id FROM prod_carrello WHERE id_carrello = $cartId AND id_prodotto = $productId AND taglia = $size");
        $prod_car_id = $result[0]['id'];
        if (count($result) >0){
            $quantita = $result[0]['quantita'];
        }
        $quantita = $quantita - 1;
        if ($quantita >0){
            $this -> db->execute("UPDATE prod_carrello SET quantita = $quantita WHERE id_carrello = $cartId AND id_prodotto = $productId AND taglia = $size ");
        } else{
            $cartItemManager = new CartItemManager();
            $newId = $cartItemManager -> delete($prod_car_id);
        }
    }

    
    //restituisce l'id del carrello dell'utente clientid
    public function getCurrentCartId(){
        $cartId = 0;
        if (isset($_SESSION['user'])){
            $utente =$_SESSION['user'] ;
            $result = $this -> db->query("SELECT * FROM carrello WHERE utente = '$utente'");
        }else{
            $result = $this -> db->query("SELECT * FROM carrello WHERE utente = '$this->clientId'");
        }
        if (count($result) > 0) {
            $cartId = $result[0]['id_carrello'];
        }else{
            $cartId = $this ->create([
                'utente' => $this -> clientId
            ]);
        }
        return $cartId;
    }

    //funzione per il random da associare alla sessione
    private function random_stringa(){
        return 1232434343443;
    }

    //inizializza client id
    private function _initializeClientIdFromSession(){
        if (isset($_SESSION['client_id'])){
            $this ->clientId = $_SESSION['client_id'];
        }else{
            $num = 1234354646;
            $str = strval($num);
            $_SESSION['client_id'] = $str;
            $this ->clientId = $str;
        }
    }
    public function mergeCarts(){
        $utente = $_SESSION['user'];
        $oldUserCart = $this->db->query("SELECT id_carrello FROM carrello where utente = '$utente'");
        $oldClientCart = $this->db->query("SELECT id_carrello FROM carrello where utente = '$this->clientId'");
        
        //var_dump($oldUserCart, $oldClientCart, $this->userId, $this->clientId); die;
        if (count($oldClientCart) > 0 AND count($oldUserCart) == 0){
            var_dump($this->clientId, $utente);
        ////cambia update con insert_one per non eliminare vecchio carrello client.----------------------------------------------------------------------------
          $result = $this->db->query("UPDATE carrello SET utente = $utente WHERE utente = '$this->clientId'");
        }
  
        else if (count($oldClientCart) > 0 AND count($oldUserCart) > 0 ) {
  
          $userCartId = $oldUserCart[0]['id_carrello'];
          $userCartItems = $this->getPrdottiCarrello($userCartId);
  
          $clientCartId = $oldClientCart[0]['id_carrello'];
          $clientCartItems = $this->getPrdottiCarrello($clientCartId);
          
  
          foreach($clientCartItems as $clientItem){
            
            $isAlreadyInCart = false;
            $clientProductId = $clientItem['id_prodotto'];
  
            foreach($userCartItems as $userItem){
              if ($userItem['id_prodotto'] == $clientProductId){
                $isAlreadyInCart = true;
                $newQuantity = $userItem['quantita'] + $clientItem['quantita'];
                $this->db->query("UPDATE prod_carrello SET quantita = $newQuantity  WHERE id_carrello = $userCartId AND id_prodotto = $clientProductId");
                $this->db->query("DELETE FROM prod_carrello WHERE id_carrello = $clientCartId AND id_prodotto = $clientProductId");
                break;
              }
            }
  
            if (!$isAlreadyInCart) {
              $this->db->query("UPDATE prod_carrello SET id_carrello = $userCartId  WHERE id_carrello = $clientCartId AND id_prodotto = $clientProductId");
            }
          }
  
          $result = $this->db->query("DELETE FROM carrello WHERE id_carrello = $clientCartId");
        }
  
        unset($_SESSION['client_id']);
        return $result;
      }
    
}


class CartItemManager extends DBManager{
    public function __construct(){
        parent::__construct();
        $this->columns = array( 'id', 'id_carrello', 'id_prodotto','taglia','quantita' );
        $this->tableName = 'prod_carrello';
      }
}
?>