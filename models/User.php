<?php
class User implements Interfaces {
    //Attributs
       //Encapsulation
        protected  $matricule;
        protected  $nomComplet;
        protected  $email;
        protected  $telephone;
        protected  $dateNaissance;
// public abstract  function hydrate($row);
  
     public   function __construct($row=null){
         if($row!=null){
             $this->hydrate($row);
         }

     }
    
     public  function hydrate($row){
        $this->matricule=$row['matricule']; 
        $this->nomComplet=$row['nomComplet'];
     }
      //Methodes
        //Getters
        public function getMatricule(){
            return $this->matricule;
        }
        public function getNomComplet(){
            return $this->nomComplet;
        }

        public function getEmail(){
            return $this->email;
        }

        public function getTelephone(){
            return $this->telephone;
        }

        public function getDate(){
            return $this->dateNaissance;
        }

        public function getAvatar(){
            return $this->avatar;
        }

        public function getProfil(){
            return $this->profil;
        }

        //Setters
    
        public function setmatricule($matricule){
             $this->matricule=$matricule;
        }
        public function setNomComplet($nomComplet){
             $this->nomComplet=$nomComplet;
        }

        public function setemail($email){
            $this->email=$email;
        }

        public function settelephone($telephone){
             $this->telephone=$telephone;
        }

        public function setStatut($statut){
           $this->statut=$statut;
        }

        public function setAvatar($avatar){
            $this->avatar=$avatar;
        }

        public function setProfil($profil){
            $this->profil=$profil;
        }
}