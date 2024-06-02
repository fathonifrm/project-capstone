<?php

namespace App\Models;

use CodeIgniter\Model;

class AuthModel extends Model
{
    protected $table = 'user'; // Tambahkan properti $table

    public function get_data_login($email) {
        return $this->where('email', $email)->first();
    }
}
