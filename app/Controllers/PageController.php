<?php

namespace App\Controllers; 
use App\Models\ProfileModel;

class PageController extends BaseController 
{ 
    public function home()  
    {
        $profileModel = new ProfileModel();
        $profiles = $profileModel->findAll(); // Ambil semua data profil dari database

        return view('home', ['profiles' => $profiles]);
    } 
    public function about() 
    { 
        return view('about'); 
    }
    public function login() 
    { 
        return view('login'); 
    }    
    public function test() 
    { 
        return view('test'); 
    }    
    
}