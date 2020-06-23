<?php
class EtudiantLoger extends EtudiantBoursier{
    
    public function __construct($row=null){
        $this->profil="Admin";
        if($row!=null){
            $this->hydrate($row);
        }
    }
    //Redefinition
    public function setProfil($profil){
        
    }
}