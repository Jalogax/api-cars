<?php

namespace App\Controllers;

class Home extends BaseController
{
    public function index(): string
    {
        return $this->response->setJSON(["mensaje" => "Bienvenido a CodeIgniter 4 en Vercel"]);
    }
}
