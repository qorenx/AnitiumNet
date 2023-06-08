<?php 

namespace App\Models;

use CodeIgniter\Model;

class AnimeReportsModel extends Model
{
    protected $table = 'reports'; 
    protected $primaryKey = 'id';  
    protected $allowedFields = [  
        'id', 
        'url', 
        'created_at'
    ];
}