<?php 

namespace App\Models;

use CodeIgniter\Model;

class AnimeSeasonModel extends Model
{
    protected $table = 'anime_season'; 
    protected $primaryKey = 'id';  


    protected $allowedFields = [  
        'id', 
        'main_id', 
        'season_id', 
        'season_name',
        ];


        public function deleteseason($id)
        {
            $builder = $this->db->table('anime_season');
            $builder->where('id', $id)->delete();
        }
}