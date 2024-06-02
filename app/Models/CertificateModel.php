<?php

namespace App\Models;

use CodeIgniter\Model;

class CertificateModel extends Model
{
    protected $table = 'certificate';
    protected $useTimestamps = true;
    protected $allowedFields = ['name_certificate', 'full_name', 'events', 'name_of_signatory', 'certificate_png', 'user_id'];

    public function getCertificate($id) {
        return $this->where(['id' => $id])->first();
    }
}
