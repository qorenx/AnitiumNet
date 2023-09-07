<?php

namespace App\Models;

use CodeIgniter\Model;

class UserModelUP extends Model
{
    protected $table = 'users';  // the table name in the database
    protected $primaryKey = 'id';  // the primary key field name in the table

    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';


    protected $allowedFields = [  // the fields that can be modified by the model
        'id',
        'avatar',
        'schedule_status',
        'raw_status',
        'sub_status',
        'dub_status',
        'turk_status'
    ];


    public function updateuser($id, $data)
    {
        $builder = $this->db->table('users');
        $builder->where('id', $id);
        $builder->set($data);
        $builder->update();
    }

    public function getUserCount() {
        $query = $this->db->query('SELECT COUNT(*) as count FROM users');
        $result = $query->getRow();
        return $result->count;
    }
}
