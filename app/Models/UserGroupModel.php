<?php 

namespace App\Models;

use CodeIgniter\Model;

class UserGroupModel extends Model
{
    protected $table = 'auth_groups_users';  // the table name in the database
    protected $primaryKey = 'id';  // the primary key field name in the table


    protected $allowedFields = [  // the fields that can be modified by the model
        'id', 
        'user_id', 
        'group', 
        'created_at'
        ];
}







