<?php 

namespace App\Models;

use CodeIgniter\Model;

class AnimeSeasonModel extends Model
{
    protected $table = 'animeseason'; 
    protected $primaryKey = 'id';  


    protected $useTimestamps = true;
    protected $createdField  = 'created_at';
    protected $updatedField  = 'updated_at';
    protected $deletedField  = 'deleted_at';


    protected $allowedFields = [  
        'id', 
        'uid', 
        'sname', 
        'suid'
        ];


        public function deleteseason($id)
        {
            $builder = $this->db->table('animeseason');
            $builder->where('id', $id)->delete();
        }
}