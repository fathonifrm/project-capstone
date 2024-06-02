<?php

namespace App\Controllers;

use App\Models\UserModel;
use App\Models\AuthModel;

class Auth extends BaseController
{
    public function indexLogin(): string
    {
        return view('auth/login');
    }

    public function indexRegister(): string
    {
        return view('auth/register');
    }

    public function register()
    {
        $data = array(
            'name' => $this->request->getVar('name'),
            'email' => $this->request->getVar('email'),
            'password' => password_hash($this->request->getVar('password'), PASSWORD_DEFAULT)
        );
        $model = new UserModel;
        $model->insert($data);
        session()->setFlashdata('success', 'Registration Successful, Please Login!');
        return redirect()->to('/login');
    }

    public function login()
    {
        $model = new AuthModel;
        $email = $this->request->getVar('email');
        $password = $this->request->getVar('password');
        
        // Validasi input
        if (empty($email) || empty($password)) {
            session()->setFlashdata('pesan', 'Email and Password must be filled in');
            return redirect()->to('/login');
        }

        $row = $model->get_data_login($email);
        if ($row === NULL) {
            session()->setFlashdata('pesan', 'Login Failed');
            return redirect()->to('/login');
        }

        if (password_verify($password, $row['password'])) {
            $data = [
                'log' => TRUE,
                'id' => $row['id'],
                'name' => $row['name'],
                'email' => $row['email']
            ];
            session()->set($data);
            session()->setFlashdata('success', 'Login Successful');
            // dd(session('log'));
            return redirect()->to('/mydashboard');
        } else {
            session()->setFlashdata('pesan', 'Login Failed');
            return redirect()->to('/login');
        }
    }

    public function logout()
    {
        session()->destroy();
        session()->setFlashdata('success', 'Logout Successful');
        return redirect()->to('/');
    }
}
