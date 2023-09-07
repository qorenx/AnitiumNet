<?php 

namespace App\Models;

use CodeIgniter\Model;

class FileModel extends Model
{
    protected $table = 'files';
    protected $primaryKey = 'id';
    protected $allowedFields = ['name', 'type', 'size', 'path'];

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    
}

