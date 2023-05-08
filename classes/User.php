<?php 

class UserManager extends DBManager{
    public function __costruct(){
        parent::__costruct();
        $this->tableName = "profili";
        $this->columns = ['id_utente','nome_utente','email','nome','cognome',
        'indirizzo','civico','cap','password','telefono','iscrizione'];
    }

    public function login($email,$password){
        $result = $this->db->query("
            SELECT *
            FROM profili
            WHERE email = '$email' AND password = '$password';
        ");

        if (count($result) > 0 ){
            $user = (object)$result[0];
            $user = (object)[
                'id_utente' => $user->id_utente,
                'nome_utente' => $user->nome_utente,
                'email' => $user->email,
                'nome' => $user->nome,
                'cognome' => $user->cognome,
                'indirizzo' => $user->indirizzo,
                'civico' => $user->civico,
                'cap' => $user->cap,
                'password' => $user->password,
                'telefono' => $user->telefono,
                'iscrizione'=> $user->iscrizione
            ];
            return true;
        }
        return false;
    
    }


    private function _setUser(){
        $user = (object)$result[0];
                $user = (object)[
                    'id_utente' => $user->id_utente,
                    'nome_utente' => $user->nome_utente,
                    'email' => $user->email,
                    'nome' => $user->nome,
                    'cognome' => $user->cognome,
                    'indirizzo' => $user->indirizzo,
                    'civico' => $user->civico,
                    'cap' => $user->cap,
                    'password' => $user->password,
                    'telefono' => $user->telefono,
                    'iscrizione'=> $user->iscrizione
                ];
    }
}

?>
