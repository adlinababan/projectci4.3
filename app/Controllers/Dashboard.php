<?php

namespace App\Controllers;

use App\Models\ProfileModel;

class Dashboard extends BaseController
{
    public function index()
    {
        if (!session()->get('logged_in')) {
            return redirect()->to('/login');
        }

        $profileModel = new ProfileModel();
        $totalProfiles = $profileModel->countAll(); // Hitung semua data profil

        return view('dashboard/index', [
            'totalProfiles' => $totalProfiles
        ]);
    }
}

