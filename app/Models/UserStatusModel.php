<?php 

namespace App\Models;

use CodeIgniter\Model;

class UserStatusModel extends Model
{
    protected $table = 'anime_status';  // the table name in the database
    protected $primaryKey = 'id';  // the primary key field name in the table

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';


    protected $allowedFields = [  // the fields that can be modified by the model
        'id', 
        'user_id', 
        'anime_uid', 
        'user_status',
        'created_at',
        'updated_at',
        'deleted_at'
        ];
}







